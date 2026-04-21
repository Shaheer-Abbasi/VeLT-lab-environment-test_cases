; ModuleID = 'src/mkdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mkdir_options = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mode_change = type { i8, i8, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [75 x i8] c"  -m, --mode=MODE\0A         set file mode (as in chmod), not a=rwx - umask\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [142 x i8] c"  -p, --parents\0A         no error if existing, make parent directories as needed,\0A         with their file modes unaffected by any -m option\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [69 x i8] c"  -v, --verbose\0A         print a message for each created directory\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [99 x i8] c"  -Z\0A         set SELinux security context of each created directory\0A         to the default type\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !57
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [6 x i8] c"pm:vZ\00", align 1, !dbg !72
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.58, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.62, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.63, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !74
@optarg = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1, !dbg !151
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1, !dbg !156
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !161
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !166
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !171
@.str.21 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1, !dbg !175
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !177
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !179
@.str.23 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !261
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !266
@.str.25 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !268
@.str.26 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !273
@.str.40 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !313
@.str.41 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !315
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !317
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !322
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !327
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !332
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !337
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !339
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !341
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !343
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !354
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !356
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !361
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !366
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !371
@.str.58 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !376
@.str.59 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !378
@.str.60 = private unnamed_addr constant [8 x i8] c"parents\00", align 1, !dbg !380
@.str.61 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !382
@.str.62 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !384
@.str.63 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !386
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1, !dbg !408
@.str.27 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !411
@Version = dso_local local_unnamed_addr global ptr @.str.27, align 8, !dbg !414
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !418
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !431
@.str.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !423
@.str.1.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !425
@.str.2.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !427
@.str.3.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !429
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !433
@stderr = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !439
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !470
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !441
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !460
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !462
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !464
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !466
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !468
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !472
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !474
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !476
@.str.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !481
@.str.1.51 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1, !dbg !484
@.str.2.52 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !486
@.str.3.53 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1, !dbg !488
@.str.4.54 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1, !dbg !493
@.str.5.55 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1, !dbg !498
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !500
@.str.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !506
@.str.1.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !508
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !510
@.str.68 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !541
@.str.1.69 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !544
@.str.2.70 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !546
@.str.3.71 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !551
@.str.4.72 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !553
@.str.5.73 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !555
@.str.6.74 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !557
@.str.7.75 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !559
@.str.8.76 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !561
@.str.9.77 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !563
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.68, ptr @.str.1.69, ptr @.str.2.70, ptr @.str.3.71, ptr @.str.4.72, ptr @.str.5.73, ptr @.str.6.74, ptr @.str.7.75, ptr @.str.8.76, ptr @.str.9.77, ptr null], align 16, !dbg !565
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !578
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !592
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !630
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !637
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !594
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !639
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !582
@.str.10.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !599
@.str.11.78 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !601
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !603
@.str.13.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !605
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !607
@.str.93 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1, !dbg !645
@.str.1.92 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1, !dbg !651
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1, !dbg !653
@.str.2.91 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !658
@.str.3.94 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1, !dbg !660
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1, !dbg !665
@.str.4.95 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1, !dbg !670
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1, !dbg !675
@.str.5.90 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !678
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1, !dbg !680
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !685
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !688
@.str.2.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !690
@.str.3.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !692
@.str.4.102 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !694
@.str.5.103 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !696
@.str.6.104 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !701
@.str.7.105 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !706
@.str.8.106 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !708
@.str.9.107 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !713
@.str.10.108 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !715
@.str.11.109 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !717
@.str.12.110 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !719
@.str.13.111 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !721
@.str.14.112 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !726
@.str.15.113 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !731
@.str.16.114 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !736
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !739
@.str.18.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !741
@.str.19.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !743
@.str.20.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !745
@.str.21.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !747
@.str.22.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !749
@.str.23.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !751
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !756
@exit_failure = dso_local global i32 1, align 4, !dbg !764
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !770
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !773
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !775
@.str.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !777
@internal_state = internal global %struct.savewd zeroinitializer, align 4, !dbg !780
@.str.1.166 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !795
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !798

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !958 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !962, metadata !DIExpression()), !dbg !963
  %2 = icmp eq i32 %0, 0, !dbg !964
  br i1 %2, label %8, label %3, !dbg !966

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !967, !tbaa !969
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !967
  %6 = load ptr, ptr @program_name, align 8, !dbg !967, !tbaa !969
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !967
  br label %39, !dbg !967

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !973
  %10 = load ptr, ptr @program_name, align 8, !dbg !973, !tbaa !969
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !973
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !975
  %13 = load ptr, ptr @stdout, align 8, !dbg !975, !tbaa !969
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !975
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !976
  %16 = load ptr, ptr @stdout, align 8, !dbg !976, !tbaa !969
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !976
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !979
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !979
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !980
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !980
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !981
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !981
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !982
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !982
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !983
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !983
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !984
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !984
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !985
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !985
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !986, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata !1005, metadata !999, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr poison, metadata !998, metadata !DIExpression()), !dbg !1003
  tail call void @emit_bug_reporting_address() #40, !dbg !1006
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1007
  call void @llvm.dbg.value(metadata ptr %25, metadata !1001, metadata !DIExpression()), !dbg !1003
  %26 = icmp eq ptr %25, null, !dbg !1008
  br i1 %26, label %34, label %27, !dbg !1010

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #41, !dbg !1011
  %29 = icmp eq i32 %28, 0, !dbg !1011
  br i1 %29, label %34, label %30, !dbg !1012

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !1013
  %32 = load ptr, ptr @stdout, align 8, !dbg !1013, !tbaa !969
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1013
  br label %34, !dbg !1015

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !998, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1002, metadata !DIExpression()), !dbg !1003
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #40, !dbg !1016
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #40, !dbg !1016
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #40, !dbg !1017
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #40, !dbg !1017
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1018
  unreachable, !dbg !1018
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1019 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1023 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1029 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1032 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !181 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !185, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !186, metadata !DIExpression()), !dbg !1036
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1037, !tbaa !1038
  %3 = icmp eq i32 %2, -1, !dbg !1040
  br i1 %3, label %4, label %16, !dbg !1041

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #40, !dbg !1042
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !187, metadata !DIExpression()), !dbg !1043
  %6 = icmp eq ptr %5, null, !dbg !1044
  br i1 %6, label %14, label %7, !dbg !1045

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1046, !tbaa !1047
  %9 = icmp eq i8 %8, 0, !dbg !1046
  br i1 %9, label %14, label %10, !dbg !1048

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1049, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !1055, metadata !DIExpression()), !dbg !1056
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #41, !dbg !1058
  %12 = icmp eq i32 %11, 0, !dbg !1059
  %13 = zext i1 %12 to i32, !dbg !1048
  br label %14, !dbg !1048

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1060, !tbaa !1038
  br label %16, !dbg !1061

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1062
  %18 = icmp eq i32 %17, 0, !dbg !1062
  br i1 %18, label %22, label %19, !dbg !1064

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1065, !tbaa !969
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1065
  br label %124, !dbg !1067

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !190, metadata !DIExpression()), !dbg !1036
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #41, !dbg !1068
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1069
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1036
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1070
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !193, metadata !DIExpression()), !dbg !1036
  %26 = icmp eq ptr %25, null, !dbg !1071
  br i1 %26, label %54, label %27, !dbg !1072

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1073
  br i1 %28, label %54, label %29, !dbg !1074

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !194, metadata !DIExpression()), !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !1075
  %30 = icmp ult ptr %24, %25, !dbg !1076
  br i1 %30, label %31, label %54, !dbg !1077

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1036
  %33 = load ptr, ptr %32, align 8, !tbaa !969
  br label %34, !dbg !1077

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !194, metadata !DIExpression()), !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !198, metadata !DIExpression()), !dbg !1075
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1078
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !194, metadata !DIExpression()), !dbg !1075
  %38 = load i8, ptr %35, align 1, !dbg !1078, !tbaa !1047
  %39 = sext i8 %38 to i64, !dbg !1078
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1078
  %41 = load i16, ptr %40, align 2, !dbg !1078, !tbaa !1079
  %42 = freeze i16 %41, !dbg !1081
  %43 = lshr i16 %42, 13, !dbg !1081
  %44 = and i16 %43, 1, !dbg !1081
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1082
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !198, metadata !DIExpression()), !dbg !1075
  %47 = icmp ult ptr %37, %25, !dbg !1076
  %48 = icmp ult i64 %46, 2, !dbg !1083
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1083
  br i1 %49, label %34, label %50, !dbg !1077, !llvm.loop !1084

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1086
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1088
  %53 = zext i1 %51 to i8, !dbg !1088
  br label %54, !dbg !1088

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1036
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !190, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !193, metadata !DIExpression()), !dbg !1036
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.26) #41, !dbg !1089
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !199, metadata !DIExpression()), !dbg !1036
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1090
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !200, metadata !DIExpression()), !dbg !1036
  br label %59, !dbg !1091

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1036
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !190, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !200, metadata !DIExpression()), !dbg !1036
  %62 = load i8, ptr %60, align 1, !dbg !1092, !tbaa !1047
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1093

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1094
  %65 = load i8, ptr %64, align 1, !dbg !1097, !tbaa !1047
  %66 = icmp eq i8 %65, 45, !dbg !1098
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1099
  br label %68, !dbg !1099

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !190, metadata !DIExpression()), !dbg !1036
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1100
  %71 = load ptr, ptr %70, align 8, !dbg !1100, !tbaa !969
  %72 = sext i8 %62 to i64, !dbg !1100
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1100
  %74 = load i16, ptr %73, align 2, !dbg !1100, !tbaa !1079
  %75 = and i16 %74, 8192, !dbg !1100
  %76 = icmp eq i16 %75, 0, !dbg !1100
  br i1 %76, label %92, label %77, !dbg !1102

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1103
  br i1 %78, label %94, label %79, !dbg !1106

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1107
  %81 = load i8, ptr %80, align 1, !dbg !1107, !tbaa !1047
  %82 = sext i8 %81 to i64, !dbg !1107
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1107
  %84 = load i16, ptr %83, align 2, !dbg !1107, !tbaa !1079
  %85 = and i16 %84, 8192, !dbg !1107
  %86 = icmp eq i16 %85, 0, !dbg !1107
  br i1 %86, label %87, label %94, !dbg !1108

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1109
  %89 = icmp ne i8 %88, 0, !dbg !1109
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1111
  br i1 %91, label %92, label %94, !dbg !1111

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1112
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !200, metadata !DIExpression()), !dbg !1036
  br label %59, !dbg !1091, !llvm.loop !1113

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1115
  %96 = load ptr, ptr @stdout, align 8, !dbg !1115, !tbaa !969
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1115
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1049, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata !1005, metadata !1055, metadata !DIExpression()), !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !256, metadata !DIExpression()), !dbg !1036
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #41, !dbg !1136
  %99 = icmp eq i32 %98, 0, !dbg !1136
  br i1 %99, label %103, label %100, !dbg !1138

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #41, !dbg !1139
  %102 = icmp eq i32 %101, 0, !dbg !1139
  br i1 %102, label %103, label %106, !dbg !1140

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1141
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !1141
  br label %109, !dbg !1143

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1144
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !1144
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1146, !tbaa !969
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %110), !dbg !1146
  %112 = load ptr, ptr @stdout, align 8, !dbg !1147, !tbaa !969
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %112), !dbg !1147
  %114 = ptrtoint ptr %60 to i64, !dbg !1148
  %115 = sub i64 %114, %95, !dbg !1148
  %116 = load ptr, ptr @stdout, align 8, !dbg !1148, !tbaa !969
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1148
  %118 = load ptr, ptr @stdout, align 8, !dbg !1149, !tbaa !969
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %118), !dbg !1149
  %120 = load ptr, ptr @stdout, align 8, !dbg !1150, !tbaa !969
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %120), !dbg !1150
  %122 = load ptr, ptr @stdout, align 8, !dbg !1151, !tbaa !969
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1151
  br label %124, !dbg !1152

124:                                              ; preds = %109, %19
  ret void, !dbg !1152
}

; Function Attrs: nounwind
declare !dbg !1153 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1157 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1161 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1163 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1166 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1169 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1172 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1175 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1181 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1182 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1188 {
  %3 = alloca %struct.mkdir_options, align 8, !DIAssignID !1226
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1198, metadata !DIExpression(), metadata !1226, metadata ptr %3, metadata !DIExpression()), !dbg !1227
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1193, metadata !DIExpression()), !dbg !1227
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1194, metadata !DIExpression()), !dbg !1227
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1195, metadata !DIExpression()), !dbg !1227
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1197, metadata !DIExpression()), !dbg !1227
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #40, !dbg !1228
  call void @llvm.dbg.assign(metadata ptr null, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1229, metadata ptr %3, metadata !DIExpression()), !dbg !1227
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 3, !dbg !1230
  store i32 511, ptr %4, align 8, !dbg !1231, !tbaa !1232, !DIAssignID !1234
  call void @llvm.dbg.assign(metadata i32 511, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32), metadata !1234, metadata ptr %4, metadata !DIExpression()), !dbg !1227
  %5 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 4, !dbg !1235
  call void @llvm.dbg.assign(metadata i32 0, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32), metadata !1236, metadata ptr %5, metadata !DIExpression()), !dbg !1227
  %6 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 6, !dbg !1237
  call void @llvm.dbg.assign(metadata ptr null, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64), metadata !1236, metadata ptr %6, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.assign(metadata ptr null, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !1236, metadata ptr %3, metadata !DIExpression(DW_OP_plus_uconst, 24)), !dbg !1227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false), !dbg !1238, !DIAssignID !1236
  %7 = load ptr, ptr %1, align 8, !dbg !1239, !tbaa !969
  tail call void @set_program_name(ptr noundef %7) #40, !dbg !1240
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #40, !dbg !1241
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #40, !dbg !1242
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #40, !dbg !1243
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1244
  br label %12, !dbg !1245

12:                                               ; preds = %22, %2
  %13 = phi i1 [ false, %2 ], [ true, %22 ]
  %14 = phi ptr [ null, %2 ], [ @make_ancestor, %22 ]
  %15 = phi ptr [ null, %2 ], [ %18, %22 ]
  %16 = phi ptr [ null, %2 ], [ %21, %22 ]
  br label %17, !dbg !1245

17:                                               ; preds = %12, %26
  %18 = phi ptr [ %15, %12 ], [ %27, %26 ]
  %19 = phi ptr [ %16, %12 ], [ %21, %26 ]
  br label %20, !dbg !1245

20:                                               ; preds = %17, %24
  %21 = phi ptr [ %19, %17 ], [ %25, %24 ]
  br label %22, !dbg !1245

22:                                               ; preds = %33, %20
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1195, metadata !DIExpression()), !dbg !1227
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1197, metadata !DIExpression()), !dbg !1227
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !1196, metadata !DIExpression()), !dbg !1227
  switch i32 %23, label %39 [
    i32 -1, label %40
    i32 112, label %12
    i32 109, label %24
    i32 118, label %26
    i32 90, label %28
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !1245, !llvm.loop !1247

24:                                               ; preds = %22
  %25 = load ptr, ptr @optarg, align 8, !dbg !1249, !tbaa !969
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1195, metadata !DIExpression()), !dbg !1227
  br label %20, !dbg !1252, !llvm.loop !1247

26:                                               ; preds = %22
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1253
  call void @llvm.dbg.assign(metadata ptr %27, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64), metadata !1254, metadata ptr %6, metadata !DIExpression()), !dbg !1227
  br label %17, !dbg !1255, !llvm.loop !1247

28:                                               ; preds = %22
  %29 = load ptr, ptr @optarg, align 8, !dbg !1256, !tbaa !969
  %30 = icmp eq ptr %29, null, !dbg !1256
  br i1 %30, label %33, label %31, !dbg !1260

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1261
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #40, !dbg !1261
  br label %33, !dbg !1263

33:                                               ; preds = %31, %28
  br label %22, !dbg !1227, !llvm.loop !1247

34:                                               ; preds = %22
  tail call void @usage(i32 noundef 0) #44, !dbg !1264
  unreachable, !dbg !1264

35:                                               ; preds = %22
  %36 = load ptr, ptr @stdout, align 8, !dbg !1265, !tbaa !969
  %37 = load ptr, ptr @Version, align 8, !dbg !1265, !tbaa !969
  %38 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #40, !dbg !1265
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %37, ptr noundef %38, ptr noundef null) #40, !dbg !1265
  tail call void @exit(i32 noundef 0) #42, !dbg !1265
  unreachable, !dbg !1265

39:                                               ; preds = %22
  tail call void @usage(i32 noundef 1) #44, !dbg !1266
  unreachable, !dbg !1266

40:                                               ; preds = %22
  store ptr %18, ptr %6, align 8, !dbg !1267, !tbaa !1268, !DIAssignID !1254
  store ptr %14, ptr %3, align 8, !dbg !1269, !tbaa !1270, !DIAssignID !1271
  %41 = load i32, ptr @optind, align 4, !dbg !1272, !tbaa !1038
  %42 = icmp eq i32 %41, %0, !dbg !1274
  br i1 %42, label %43, label %45, !dbg !1275

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1276
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %44) #40, !dbg !1276
  tail call void @usage(i32 noundef 1) #44, !dbg !1278
  unreachable, !dbg !1278

45:                                               ; preds = %40
  %46 = icmp ne ptr %21, null
  %47 = select i1 %13, i1 true, i1 %46, !dbg !1279
  br i1 %47, label %48, label %69, !dbg !1279

48:                                               ; preds = %45
  %49 = tail call i32 @umask(i32 noundef 0) #40, !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1217, metadata !DIExpression()), !dbg !1281
  %50 = and i32 %49, -193, !dbg !1282
  %51 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 1, !dbg !1283
  store i32 %50, ptr %51, align 8, !dbg !1284, !tbaa !1285, !DIAssignID !1286
  call void @llvm.dbg.assign(metadata i32 %50, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32), metadata !1286, metadata ptr %51, metadata !DIExpression()), !dbg !1227
  br i1 %46, label %52, label %63, !dbg !1287

52:                                               ; preds = %48
  %53 = tail call noalias ptr @mode_compile(ptr noundef nonnull %21) #40, !dbg !1288
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !1220, metadata !DIExpression()), !dbg !1289
  %54 = icmp eq ptr %53, null, !dbg !1290
  br i1 %54, label %55, label %58, !dbg !1292

55:                                               ; preds = %52
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1293
  %57 = tail call ptr @quote(ptr noundef nonnull %21) #40, !dbg !1293
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %56, ptr noundef %57) #40, !dbg !1293
  unreachable, !dbg !1293

58:                                               ; preds = %52
  %59 = call i32 @mode_adjust(i32 noundef 511, i1 noundef zeroext true, i32 noundef %49, ptr noundef nonnull %53, ptr noundef nonnull %5) #41, !dbg !1294
  store i32 %59, ptr %4, align 8, !dbg !1295, !tbaa !1232, !DIAssignID !1296
  call void @llvm.dbg.assign(metadata i32 %59, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32), metadata !1296, metadata ptr %4, metadata !DIExpression()), !dbg !1227
  %60 = xor i32 %59, -1, !dbg !1297
  %61 = and i32 %49, %60, !dbg !1298
  %62 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1299
  store i32 %61, ptr %62, align 4, !dbg !1300, !tbaa !1301, !DIAssignID !1302
  call void @llvm.dbg.assign(metadata i32 %61, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !1302, metadata ptr %62, metadata !DIExpression()), !dbg !1227
  call void @free(ptr noundef nonnull %53) #40, !dbg !1303
  br label %65, !dbg !1304

63:                                               ; preds = %48
  store i32 511, ptr %4, align 8, !dbg !1305, !tbaa !1232, !DIAssignID !1307
  call void @llvm.dbg.assign(metadata i32 511, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32), metadata !1307, metadata ptr %4, metadata !DIExpression()), !dbg !1227
  %64 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1308
  store i32 %49, ptr %64, align 4, !dbg !1309, !tbaa !1301, !DIAssignID !1310
  call void @llvm.dbg.assign(metadata i32 %49, metadata !1198, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !1310, metadata ptr %64, metadata !DIExpression()), !dbg !1227
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %49, %63 ], [ %61, %58 ], !dbg !1311
  %67 = call i32 @umask(i32 noundef %66) #40, !dbg !1312
  %68 = load i32, ptr @optind, align 4, !dbg !1313, !tbaa !1038
  br label %69, !dbg !1314

69:                                               ; preds = %45, %65
  %70 = phi i32 [ %41, %45 ], [ %68, %65 ], !dbg !1313
  %71 = sub nsw i32 %0, %70, !dbg !1315
  %72 = sext i32 %70 to i64, !dbg !1316
  %73 = getelementptr inbounds ptr, ptr %1, i64 %72, !dbg !1316
  %74 = call i32 @savewd_process_files(i32 noundef %71, ptr noundef nonnull %73, ptr noundef nonnull @process_dir, ptr noundef nonnull %3) #40, !dbg !1317
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #40, !dbg !1318
  ret i32 %74, !dbg !1319
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !1320 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1323 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1324 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @make_ancestor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 !dbg !1327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1329, metadata !DIExpression()), !dbg !1339
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1330, metadata !DIExpression()), !dbg !1339
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1331, metadata !DIExpression()), !dbg !1339
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1332, metadata !DIExpression()), !dbg !1339
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1340
  %5 = load ptr, ptr %4, align 8, !dbg !1340, !tbaa !1342
  %6 = icmp eq ptr %5, null, !dbg !1343
  br i1 %6, label %9, label %7, !dbg !1344

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1345, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %1, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 16384, metadata !1352, metadata !DIExpression()), !dbg !1353
  %8 = tail call ptr @__errno_location() #43, !dbg !1355
  store i32 95, ptr %8, align 4, !dbg !1356, !tbaa !1038
  br label %9, !dbg !1357

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 1, !dbg !1358
  %11 = load i32, ptr %10, align 8, !dbg !1358, !tbaa !1285
  %12 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 2, !dbg !1360
  %13 = load i32, ptr %12, align 4, !dbg !1360, !tbaa !1301
  %14 = icmp eq i32 %11, %13, !dbg !1361
  br i1 %14, label %17, label %15, !dbg !1362

15:                                               ; preds = %9
  %16 = tail call i32 @umask(i32 noundef %11) #40, !dbg !1363
  br label %17, !dbg !1363

17:                                               ; preds = %15, %9
  %18 = tail call i32 @mkdir(ptr noundef %1, i32 noundef 511) #40, !dbg !1364
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1335, metadata !DIExpression()), !dbg !1339
  %19 = load i32, ptr %10, align 8, !dbg !1365, !tbaa !1285
  %20 = load i32, ptr %12, align 4, !dbg !1366, !tbaa !1301
  %21 = icmp eq i32 %19, %20, !dbg !1367
  br i1 %21, label %26, label %22, !dbg !1368

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #43, !dbg !1369
  %24 = load i32, ptr %23, align 4, !dbg !1369, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1336, metadata !DIExpression()), !dbg !1370
  %25 = tail call i32 @umask(i32 noundef %20) #40, !dbg !1371
  store i32 %24, ptr %23, align 4, !dbg !1372, !tbaa !1038
  br label %26, !dbg !1373

26:                                               ; preds = %22, %17
  %27 = icmp eq i32 %18, 0, !dbg !1374
  br i1 %27, label %28, label %38, !dbg !1376

28:                                               ; preds = %26
  %29 = load i32, ptr %10, align 8, !dbg !1377, !tbaa !1285
  %30 = lshr i32 %29, 8, !dbg !1379
  %31 = and i32 %30, 1, !dbg !1379
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1335, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata ptr %0, metadata !1380, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %2, metadata !1385, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %2, metadata !1386, metadata !DIExpression()), !dbg !1387
  %32 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 6, !dbg !1389
  %33 = load ptr, ptr %32, align 8, !dbg !1389, !tbaa !1268
  %34 = icmp eq ptr %33, null, !dbg !1391
  br i1 %34, label %38, label %35, !dbg !1392

35:                                               ; preds = %28
  %36 = load ptr, ptr @stdout, align 8, !dbg !1393, !tbaa !969
  %37 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #40, !dbg !1394
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %36, ptr noundef nonnull %33, ptr noundef %37) #40, !dbg !1395
  br label %38, !dbg !1395

38:                                               ; preds = %35, %28, %26
  %39 = phi i32 [ %18, %26 ], [ %31, %28 ], [ %31, %35 ], !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1335, metadata !DIExpression()), !dbg !1339
  ret i32 %39, !dbg !1396
}

; Function Attrs: nounwind
declare !dbg !1397 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1403 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1407 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal noundef i32 @process_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10 !dbg !1410 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1415, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1416, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1417, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1418, metadata !DIExpression()), !dbg !1420
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1421
  %5 = load ptr, ptr %4, align 8, !dbg !1421, !tbaa !1342
  %6 = icmp ne ptr %5, null, !dbg !1423
  %7 = load ptr, ptr %2, align 8, !dbg !1424, !tbaa !1270
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false, !dbg !1425
  br i1 %9, label %10, label %12, !dbg !1425

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1345, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %0, metadata !1351, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 16384, metadata !1352, metadata !DIExpression()), !dbg !1426
  %11 = tail call ptr @__errno_location() #43, !dbg !1430
  store i32 95, ptr %11, align 4, !dbg !1431, !tbaa !1038
  br label %12, !dbg !1432

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 3, !dbg !1433
  %14 = load i32, ptr %13, align 8, !dbg !1433, !tbaa !1232
  %15 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 4, !dbg !1434
  %16 = load i32, ptr %15, align 4, !dbg !1434, !tbaa !1435
  %17 = tail call zeroext i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %2, i32 noundef %14, ptr noundef nonnull @announce_mkdir, i32 noundef %16, i32 noundef -1, i32 noundef -1, i1 noundef zeroext true) #40, !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1419, metadata !DIExpression()), !dbg !1420
  br i1 %17, label %18, label %26, !dbg !1437

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !1439, !tbaa !1342
  %20 = icmp eq ptr %19, null, !dbg !1440
  br i1 %20, label %26, label %21, !dbg !1441

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8, !dbg !1442, !tbaa !1270
  %23 = icmp eq ptr %22, null, !dbg !1443
  br i1 %23, label %26, label %24, !dbg !1444

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata ptr %19, metadata !1445, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata ptr poison, metadata !1450, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i1 false, metadata !1451, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1452
  %25 = tail call ptr @__errno_location() #43, !dbg !1456
  store i32 95, ptr %25, align 4, !dbg !1457, !tbaa !1038
  br label %26, !dbg !1458

26:                                               ; preds = %24, %21, %18, %12
  %27 = xor i1 %17, true, !dbg !1436
  %28 = zext i1 %27 to i32, !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1419, metadata !DIExpression()), !dbg !1420
  ret i32 %28, !dbg !1459
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1460 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @announce_mkdir(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !dbg !1381 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1380, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1385, metadata !DIExpression()), !dbg !1464
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1386, metadata !DIExpression()), !dbg !1464
  %3 = getelementptr inbounds %struct.mkdir_options, ptr %1, i64 0, i32 6, !dbg !1465
  %4 = load ptr, ptr %3, align 8, !dbg !1465, !tbaa !1268
  %5 = icmp eq ptr %4, null, !dbg !1466
  br i1 %5, label %9, label %6, !dbg !1467

6:                                                ; preds = %2
  %7 = load ptr, ptr @stdout, align 8, !dbg !1468, !tbaa !969
  %8 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #40, !dbg !1469
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %7, ptr noundef nonnull %4, ptr noundef %8) #40, !dbg !1470
  br label %9, !dbg !1470

9:                                                ; preds = %6, %2
  ret void, !dbg !1471
}

; Function Attrs: nofree nounwind
declare !dbg !1472 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1475 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1515, metadata !DIExpression(), metadata !1527, metadata ptr %3, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1513, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1514, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !1529
  %4 = load ptr, ptr @program_name, align 8, !dbg !1530, !tbaa !969
  %5 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef nonnull %0), !dbg !1530
  %6 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.20, ptr noundef nonnull %0), !dbg !1531
  call void @llvm.va_start(ptr nonnull %3), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %0, metadata !1533, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %1, metadata !1540, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %3, metadata !1541, metadata !DIExpression()), !dbg !1542
  %7 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #40, !dbg !1544
  call void @llvm.va_end(ptr nonnull %3), !dbg !1545
  call void @llvm.dbg.value(metadata i32 10, metadata !1546, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata ptr %0, metadata !1552, metadata !DIExpression()), !dbg !1553
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1555
  %9 = load ptr, ptr %8, align 8, !dbg !1555, !tbaa !1556
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1555
  %11 = load ptr, ptr %10, align 8, !dbg !1555, !tbaa !1559
  %12 = icmp ult ptr %9, %11, !dbg !1555
  br i1 %12, label %15, label %13, !dbg !1555, !prof !1560

13:                                               ; preds = %2
  %14 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #40, !dbg !1555
  br label %17, !dbg !1555

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !1555
  store ptr %16, ptr %8, align 8, !dbg !1555, !tbaa !1556
  store i8 10, ptr %9, align 1, !dbg !1555, !tbaa !1047
  br label %17, !dbg !1555

17:                                               ; preds = %13, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !1561
  ret void, !dbg !1561
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

declare !dbg !1562 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

declare !dbg !1565 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1568 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1570, metadata !DIExpression()), !dbg !1571
  store ptr %0, ptr @file_name, align 8, !dbg !1572, !tbaa !969
  ret void, !dbg !1573
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !1574 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1578, metadata !DIExpression()), !dbg !1579
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1580, !tbaa !1581
  ret void, !dbg !1583
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1584 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1589, !tbaa !969
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1590
  %3 = icmp eq i32 %2, 0, !dbg !1591
  br i1 %3, label %22, label %4, !dbg !1592

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1593, !tbaa !1581, !range !1594, !noundef !1005
  %6 = icmp eq i8 %5, 0, !dbg !1593
  br i1 %6, label %11, label %7, !dbg !1595

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1596
  %9 = load i32, ptr %8, align 4, !dbg !1596, !tbaa !1038
  %10 = icmp eq i32 %9, 32, !dbg !1597
  br i1 %10, label %22, label %11, !dbg !1598

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1.31, i32 noundef 5) #40, !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1586, metadata !DIExpression()), !dbg !1600
  %13 = load ptr, ptr @file_name, align 8, !dbg !1601, !tbaa !969
  %14 = icmp eq ptr %13, null, !dbg !1601
  %15 = tail call ptr @__errno_location() #43, !dbg !1603
  %16 = load i32, ptr %15, align 4, !dbg !1603, !tbaa !1038
  br i1 %14, label %19, label %17, !dbg !1604

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1605
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.32, ptr noundef %18, ptr noundef %12) #40, !dbg !1605
  br label %20, !dbg !1605

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.33, ptr noundef %12) #40, !dbg !1606
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1607, !tbaa !1038
  tail call void @_exit(i32 noundef %21) #42, !dbg !1608
  unreachable, !dbg !1608

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1609, !tbaa !969
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1611
  %25 = icmp eq i32 %24, 0, !dbg !1612
  br i1 %25, label %28, label %26, !dbg !1613

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1614, !tbaa !1038
  tail call void @_exit(i32 noundef %27) #42, !dbg !1615
  unreachable, !dbg !1615

28:                                               ; preds = %22
  ret void, !dbg !1616
}

; Function Attrs: noreturn
declare !dbg !1617 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1619 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1623, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1624, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1625, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1626, metadata !DIExpression()), !dbg !1627
  tail call fastcc void @flush_stdout(), !dbg !1628
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1629, !tbaa !969
  %6 = icmp eq ptr %5, null, !dbg !1629
  br i1 %6, label %8, label %7, !dbg !1631

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1632
  br label %12, !dbg !1632

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1633, !tbaa !969
  %10 = tail call ptr @getprogname() #41, !dbg !1633
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %10) #40, !dbg !1633
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1635
  ret void, !dbg !1636
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1637 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1639, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i32 1, metadata !1641, metadata !DIExpression()), !dbg !1646
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1649
  %2 = icmp slt i32 %1, 0, !dbg !1650
  br i1 %2, label %6, label %3, !dbg !1651

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1652, !tbaa !969
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1652
  br label %6, !dbg !1652

6:                                                ; preds = %3, %0
  ret void, !dbg !1653
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1654 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1660
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1656, metadata !DIExpression()), !dbg !1661
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1657, metadata !DIExpression()), !dbg !1661
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !1661
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1659, metadata !DIExpression()), !dbg !1661
  %6 = load ptr, ptr @stderr, align 8, !dbg !1662, !tbaa !969
  call void @llvm.dbg.value(metadata ptr %6, metadata !1663, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata ptr %2, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata ptr %3, metadata !1704, metadata !DIExpression()), !dbg !1705
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1707
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1708, !tbaa !1038
  %9 = add i32 %8, 1, !dbg !1708
  store i32 %9, ptr @error_message_count, align 4, !dbg !1708, !tbaa !1038
  %10 = icmp eq i32 %1, 0, !dbg !1709
  br i1 %10, label %20, label %11, !dbg !1711

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1712, metadata !DIExpression(), metadata !1660, metadata ptr %5, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %1, metadata !1715, metadata !DIExpression()), !dbg !1720
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1722
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1723
  call void @llvm.dbg.value(metadata ptr %12, metadata !1716, metadata !DIExpression()), !dbg !1720
  %13 = icmp eq ptr %12, null, !dbg !1724
  br i1 %13, label %14, label %16, !dbg !1726

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #40, !dbg !1727
  call void @llvm.dbg.value(metadata ptr %15, metadata !1716, metadata !DIExpression()), !dbg !1720
  br label %16, !dbg !1728

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1720
  call void @llvm.dbg.value(metadata ptr %17, metadata !1716, metadata !DIExpression()), !dbg !1720
  %18 = load ptr, ptr @stderr, align 8, !dbg !1729, !tbaa !969
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %17) #40, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1730
  br label %20, !dbg !1731

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1732, !tbaa !969
  call void @llvm.dbg.value(metadata i32 10, metadata !1733, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata ptr %21, metadata !1738, metadata !DIExpression()), !dbg !1739
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1741
  %23 = load ptr, ptr %22, align 8, !dbg !1741, !tbaa !1556
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1741
  %25 = load ptr, ptr %24, align 8, !dbg !1741, !tbaa !1559
  %26 = icmp ult ptr %23, %25, !dbg !1741
  br i1 %26, label %29, label %27, !dbg !1741, !prof !1560

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !1741
  br label %31, !dbg !1741

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1741
  store ptr %30, ptr %22, align 8, !dbg !1741, !tbaa !1556
  store i8 10, ptr %23, align 1, !dbg !1741, !tbaa !1047
  br label %31, !dbg !1741

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1742, !tbaa !969
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !1742
  %34 = icmp eq i32 %0, 0, !dbg !1743
  br i1 %34, label %36, label %35, !dbg !1745

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !1746
  unreachable, !dbg !1746

36:                                               ; preds = %31
  ret void, !dbg !1747
}

; Function Attrs: nounwind
declare !dbg !1748 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1751 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1754 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1758 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1770
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1765, metadata !DIExpression(), metadata !1770, metadata ptr %4, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1762, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1763, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1764, metadata !DIExpression()), !dbg !1771
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !1772
  call void @llvm.va_start(ptr nonnull %4), !dbg !1773
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1774
  call void @llvm.va_end(ptr nonnull %4), !dbg !1775
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !1776
  ret void, !dbg !1776
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !443 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !454, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !455, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !456, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !457, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !458, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !459, metadata !DIExpression()), !dbg !1777
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1778, !tbaa !1038
  %8 = icmp eq i32 %7, 0, !dbg !1778
  br i1 %8, label %23, label %9, !dbg !1780

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1781, !tbaa !1038
  %11 = icmp eq i32 %10, %3, !dbg !1784
  br i1 %11, label %12, label %22, !dbg !1785

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1786, !tbaa !969
  %14 = icmp eq ptr %13, %2, !dbg !1787
  br i1 %14, label %36, label %15, !dbg !1788

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1789
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1790
  br i1 %18, label %19, label %22, !dbg !1790

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1791
  %21 = icmp eq i32 %20, 0, !dbg !1792
  br i1 %21, label %36, label %22, !dbg !1793

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1794, !tbaa !969
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1795, !tbaa !1038
  br label %23, !dbg !1796

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1797
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1798, !tbaa !969
  %25 = icmp eq ptr %24, null, !dbg !1798
  br i1 %25, label %27, label %26, !dbg !1800

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !1801
  br label %31, !dbg !1801

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1802, !tbaa !969
  %29 = tail call ptr @getprogname() #41, !dbg !1802
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %29) #40, !dbg !1802
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1804, !tbaa !969
  %33 = icmp eq ptr %2, null, !dbg !1804
  %34 = select i1 %33, ptr @.str.3.41, ptr @.str.2.42, !dbg !1804
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !1804
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1805
  br label %36, !dbg !1806

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1806
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1807 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1816, metadata !DIExpression(), metadata !1817, metadata ptr %6, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1811, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1812, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1813, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1814, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1815, metadata !DIExpression()), !dbg !1818
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !1819
  call void @llvm.va_start(ptr nonnull %6), !dbg !1820
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1821
  call void @llvm.va_end(ptr nonnull %6), !dbg !1822
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !1823
  ret void, !dbg !1823
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1824 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1827, !tbaa !969
  ret ptr %1, !dbg !1828
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #10 !dbg !1829 {
  %11 = alloca %struct.stat, align 8, !DIAssignID !1904
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1858, metadata !DIExpression(), metadata !1904, metadata ptr %11, metadata !DIExpression()), !dbg !1905
  %12 = alloca [2 x i32], align 4, !DIAssignID !1906
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1895, metadata !DIExpression(), metadata !1906, metadata ptr %12, metadata !DIExpression()), !dbg !1907
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1835, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1836, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1837, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1838, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1839, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1840, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1841, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1842, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1843, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1908
  %13 = load i8, ptr %0, align 1, !dbg !1909, !tbaa !1047
  %14 = icmp eq i8 %13, 47, !dbg !1909
  br i1 %14, label %22, label %15, !dbg !1909

15:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1910, metadata !DIExpression()), !dbg !1917
  %16 = load i32, ptr %1, align 4, !dbg !1919, !tbaa !1920
  %17 = icmp ult i32 %16, 4, !dbg !1922
  br i1 %17, label %22, label %18, !dbg !1923

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.savewd, ptr %1, i64 0, i32 1, !dbg !1924
  %20 = load i32, ptr %19, align 4, !dbg !1925, !tbaa !1047
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1845, metadata !DIExpression()), !dbg !1908
  %21 = icmp eq i32 %20, 0, !dbg !1926
  br i1 %21, label %22, label %119, !dbg !1927

22:                                               ; preds = %15, %10, %18
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1846, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1849, metadata !DIExpression()), !dbg !1928
  %23 = icmp eq ptr %2, null, !dbg !1929
  br i1 %23, label %32, label %24, !dbg !1931

24:                                               ; preds = %22
  %25 = tail call i64 @mkancesdirs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1849, metadata !DIExpression()), !dbg !1928
  %26 = icmp slt i64 %25, 0, !dbg !1934
  br i1 %26, label %27, label %32, !dbg !1936

27:                                               ; preds = %24
  %28 = icmp eq i64 %25, -1, !dbg !1937
  br i1 %28, label %29, label %123, !dbg !1940

29:                                               ; preds = %27
  %30 = tail call ptr @__errno_location() #43, !dbg !1941
  %31 = load i32, ptr %30, align 4, !dbg !1941, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1845, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1849, metadata !DIExpression()), !dbg !1928
  br label %119, !dbg !1942

32:                                               ; preds = %24, %22
  %33 = phi i64 [ 0, %22 ], [ %25, %24 ]
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1849, metadata !DIExpression()), !dbg !1928
  %34 = and i32 %8, %7, !dbg !1943
  %35 = icmp eq i32 %34, -1, !dbg !1943
  tail call void @llvm.dbg.value(metadata i1 %35, metadata !1850, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1944
  %36 = and i32 %6, 3072, !dbg !1945
  %37 = and i32 %4, 512, !dbg !1946
  %38 = or disjoint i32 %36, %37, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1853, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1944
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1854, metadata !DIExpression()), !dbg !1944
  %39 = and i32 %4, -64, !dbg !1948
  %40 = icmp eq i32 %38, 0, !dbg !1948
  %41 = and i32 %4, -19, !dbg !1948
  %42 = select i1 %40, i32 %4, i32 %41, !dbg !1948
  %43 = select i1 %35, i32 %42, i32 %39, !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1854, metadata !DIExpression()), !dbg !1944
  %44 = getelementptr inbounds i8, ptr %0, i64 %33, !dbg !1949
  %45 = tail call i32 @mkdir(ptr noundef nonnull %44, i32 noundef %43) #40, !dbg !1950
  %46 = icmp eq i32 %45, 0, !dbg !1951
  br i1 %46, label %47, label %53, !dbg !1952

47:                                               ; preds = %32
  %48 = and i32 %4, 511, !dbg !1953
  %49 = and i32 %48, %6, !dbg !1954
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1855, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1955
  tail call void %5(ptr noundef nonnull %0, ptr noundef %3) #40, !dbg !1956
  %50 = or disjoint i32 %38, %49, !dbg !1957
  %51 = icmp eq i32 %50, 0, !dbg !1957
  %52 = and i1 %35, %51, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 3, metadata !1846, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1854, metadata !DIExpression()), !dbg !1944
  tail call void @llvm.dbg.value(metadata i1 %52, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1908
  br i1 %52, label %123, label %77, !dbg !1958

53:                                               ; preds = %32
  %54 = tail call ptr @__errno_location() #43, !dbg !1959
  %55 = load i32, ptr %54, align 4, !dbg !1959, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1845, metadata !DIExpression()), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1846, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1854, metadata !DIExpression()), !dbg !1944
  switch i32 %55, label %56 [
    i32 20, label %119
    i32 2, label %119
  ], !dbg !1961

56:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1908
  br i1 %9, label %57, label %77, !dbg !1958

57:                                               ; preds = %56
  %58 = icmp eq i32 %55, 0, !dbg !1962
  br i1 %58, label %123, label %59, !dbg !1964

59:                                               ; preds = %57
  br i1 %23, label %119, label %60, !dbg !1965

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #40, !dbg !1966
  %61 = call i32 @stat(ptr noundef nonnull %44, ptr noundef nonnull %11) #40, !dbg !1967
  %62 = icmp eq i32 %61, 0, !dbg !1969
  br i1 %62, label %63, label %68, !dbg !1970

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.stat, ptr %11, i64 0, i32 3, !dbg !1971
  %65 = load i32, ptr %64, align 8, !dbg !1971, !tbaa !1974
  %66 = and i32 %65, 61440, !dbg !1971
  %67 = icmp eq i32 %66, 16384, !dbg !1971
  br i1 %67, label %75, label %76, !dbg !1977

68:                                               ; preds = %60
  %69 = icmp eq i32 %55, 17, !dbg !1978
  br i1 %69, label %70, label %76, !dbg !1980

70:                                               ; preds = %68
  %71 = load i32, ptr %54, align 4, !dbg !1981, !tbaa !1038
  switch i32 %71, label %72 [
    i32 2, label %76
    i32 20, label %76
  ], !dbg !1982

72:                                               ; preds = %70
  %73 = tail call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1.51, i32 noundef 5) #40, !dbg !1983
  %74 = tail call ptr @quote(ptr noundef nonnull %0) #40, !dbg !1983
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %73, ptr noundef %74) #40, !dbg !1983
  br label %75, !dbg !1985

75:                                               ; preds = %72, %63
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #40, !dbg !1986
  br label %123

76:                                               ; preds = %63, %68, %70, %70
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #40, !dbg !1986
  br label %119

77:                                               ; preds = %47, %56
  %78 = phi i32 [ %43, %47 ], [ -1, %56 ]
  %79 = phi i32 [ 3, %47 ], [ 2, %56 ]
  %80 = phi i32 [ 0, %47 ], [ %55, %56 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #40, !dbg !1987
  %81 = call i32 @savewd_chdir(ptr noundef %1, ptr noundef nonnull %44, i32 noundef %79, ptr noundef nonnull %12) #40, !dbg !1988
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1898, metadata !DIExpression()), !dbg !1907
  %82 = icmp slt i32 %81, -1, !dbg !1989
  br i1 %82, label %117, label %83, !dbg !1990

83:                                               ; preds = %77
  %84 = icmp eq i32 %81, 0, !dbg !1991
  br i1 %84, label %89, label %85, !dbg !1992

85:                                               ; preds = %83
  %86 = tail call ptr @__errno_location() #43, !dbg !1993
  %87 = load i32, ptr %86, align 4, !dbg !1993, !tbaa !1038
  %88 = icmp eq i32 %87, 13, !dbg !1994
  br i1 %88, label %89, label %108, !dbg !1995

89:                                               ; preds = %85, %83
  %90 = phi ptr [ %44, %85 ], [ @.str.2.52, %83 ], !dbg !1996
  tail call void @llvm.dbg.value(metadata i1 %84, metadata !1899, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1997
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1903, metadata !DIExpression()), !dbg !1997
  %91 = load i32, ptr %12, align 4, !dbg !1998, !tbaa !1038
  %92 = call i32 @dirchownmod(i32 noundef %91, ptr noundef %90, i32 noundef %78, i32 noundef %7, i32 noundef %8, i32 noundef %4, i32 noundef %6) #40, !dbg !2000
  %93 = icmp eq i32 %92, 0, !dbg !2001
  br i1 %93, label %117, label %94, !dbg !2002

94:                                               ; preds = %89
  %95 = icmp eq i32 %80, 0, !dbg !2003
  br i1 %95, label %96, label %98, !dbg !2005

96:                                               ; preds = %94
  %97 = tail call ptr @__errno_location() #43, !dbg !2006
  br label %102, !dbg !2005

98:                                               ; preds = %94
  br i1 %23, label %115, label %99, !dbg !2008

99:                                               ; preds = %98
  %100 = tail call ptr @__errno_location() #43, !dbg !2009
  %101 = load i32, ptr %100, align 4, !dbg !2009, !tbaa !1038
  switch i32 %101, label %102 [
    i32 2, label %115
    i32 20, label %115
  ], !dbg !2010

102:                                              ; preds = %96, %99
  %103 = phi ptr [ %97, %96 ], [ %100, %99 ], !dbg !2006
  %104 = load i32, ptr %103, align 4, !dbg !2006, !tbaa !1038
  %105 = select i1 %35, ptr @.str.3.53, ptr @.str.4.54, !dbg !2006
  %106 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull %105, i32 noundef 5) #40, !dbg !2006
  %107 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !2006
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %104, ptr noundef %106, ptr noundef %107) #40, !dbg !2006
  br label %117, !dbg !2011

108:                                              ; preds = %85
  %109 = icmp eq i32 %80, 0, !dbg !2012
  %110 = select i1 %109, i32 %87, i32 %80, !dbg !2015
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1845, metadata !DIExpression()), !dbg !1908
  %111 = load i32, ptr %12, align 4, !dbg !2016, !tbaa !1038
  %112 = icmp sgt i32 %111, -1, !dbg !2018
  br i1 %112, label %113, label %115, !dbg !2019

113:                                              ; preds = %108
  %114 = call i32 @close(i32 noundef %111) #40, !dbg !2020
  br label %115, !dbg !2020

115:                                              ; preds = %113, %108, %99, %99, %98
  %116 = phi i32 [ %80, %99 ], [ %80, %99 ], [ %80, %98 ], [ %110, %108 ], [ %110, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1845, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #40, !dbg !2021
  br label %119

117:                                              ; preds = %102, %89, %77
  %118 = phi i1 [ true, %77 ], [ false, %102 ], [ true, %89 ], !dbg !2022
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1845, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #40, !dbg !2021
  br label %123

119:                                              ; preds = %59, %53, %53, %76, %115, %29, %18
  %120 = phi i32 [ %20, %18 ], [ %116, %115 ], [ %55, %53 ], [ %55, %59 ], [ %55, %76 ], [ %55, %53 ], [ %31, %29 ], !dbg !2023
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1845, metadata !DIExpression()), !dbg !1908
  %121 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.5.55, i32 noundef 5) #40, !dbg !2024
  %122 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !2024
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %120, ptr noundef %121, ptr noundef %122) #40, !dbg !2024
  br label %123, !dbg !2025

123:                                              ; preds = %47, %27, %117, %75, %57, %119
  %124 = phi i1 [ false, %119 ], [ true, %27 ], [ %118, %117 ], [ true, %57 ], [ %62, %75 ], [ true, %47 ], !dbg !1908
  ret i1 %124, !dbg !2026
}

; Function Attrs: nofree nounwind
declare !dbg !2027 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !2032 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !2033 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2045, metadata !DIExpression()), !dbg !2075
  %2 = load i8, ptr %0, align 1, !dbg !2076, !tbaa !1047
  %3 = and i8 %2, -8, !dbg !2077
  %4 = icmp eq i8 %3, 48, !dbg !2077
  br i1 %4, label %5, label %34, !dbg !2077

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !2078
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !2080
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !2080
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2046, metadata !DIExpression()), !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2049, metadata !DIExpression()), !dbg !2080
  %9 = shl i32 %7, 3, !dbg !2081
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2046, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2080
  %10 = zext nneg i8 %6 to i32, !dbg !2078
  %11 = add i32 %9, -48, !dbg !2082
  %12 = add nsw i32 %11, %10, !dbg !2083
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2049, metadata !DIExpression()), !dbg !2080
  %13 = icmp ugt i32 %12, 4095, !dbg !2084
  br i1 %13, label %139, label %14, !dbg !2086

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !2087
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !2046, metadata !DIExpression()), !dbg !2080
  %16 = load i8, ptr %15, align 1, !dbg !2088, !tbaa !1047
  %17 = and i8 %16, -8, !dbg !2089
  %18 = icmp eq i8 %17, 48, !dbg !2089
  br i1 %18, label %5, label %19, !dbg !2089, !llvm.loop !2090

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !2093
  br i1 %20, label %21, label %139, !dbg !2095

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2050, metadata !DIExpression()), !dbg !2080
  %22 = ptrtoint ptr %15 to i64, !dbg !2096
  %23 = ptrtoint ptr %0 to i64, !dbg !2096
  %24 = sub i64 %22, %23, !dbg !2096
  %25 = icmp slt i64 %24, 5, !dbg !2097
  %26 = or i32 %12, 1023, !dbg !2098
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !2098
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2051, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i32 %12, metadata !2099, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %27, metadata !2104, metadata !DIExpression()), !dbg !2106
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #46, !dbg !2108
  call void @llvm.dbg.value(metadata ptr %28, metadata !2105, metadata !DIExpression()), !dbg !2106
  store i8 61, ptr %28, align 4, !dbg !2109, !tbaa !2110
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !2112
  store i8 1, ptr %29, align 1, !dbg !2113, !tbaa !2114
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !2115
  store i32 4095, ptr %30, align 4, !dbg !2116, !tbaa !2117
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !2118
  store i32 %12, ptr %31, align 4, !dbg !2119, !tbaa !2120
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !2121
  store i32 %27, ptr %32, align 4, !dbg !2122, !tbaa !2123
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !2124
  store i8 0, ptr %33, align 1, !dbg !2125, !tbaa !2114
  br label %139, !dbg !2126

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !2127
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !2129
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !2130
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !2055, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2053, metadata !DIExpression()), !dbg !2129
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !2132

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #47, !dbg !2133
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !2052, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2057, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2058, metadata !DIExpression()), !dbg !2075
  br label %46, !dbg !2134

40:                                               ; preds = %34
  br label %41, !dbg !2135

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !2053, metadata !DIExpression()), !dbg !2129
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2137
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !2055, metadata !DIExpression()), !dbg !2131
  %45 = load i8, ptr %44, align 1, !dbg !2127, !tbaa !1047
  br label %34, !dbg !2138, !llvm.loop !2139

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %122, %134 ], !dbg !2141
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2066, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !2058, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !2057, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression()), !dbg !2144
  br label %49, !dbg !2145

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !2146
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !2144
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !2059, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !2058, metadata !DIExpression()), !dbg !2075
  %52 = load i8, ptr %50, align 1, !dbg !2147, !tbaa !1047
  switch i8 %52, label %138 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !2150

53:                                               ; preds = %49, %49, %49
  br label %63, !dbg !2151

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2059, metadata !DIExpression()), !dbg !2144
  br label %60, !dbg !2154

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !2059, metadata !DIExpression()), !dbg !2144
  br label %60, !dbg !2156

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2059, metadata !DIExpression()), !dbg !2144
  br label %60, !dbg !2158

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !2159
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !2059, metadata !DIExpression()), !dbg !2144
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !2058, metadata !DIExpression()), !dbg !2075
  br label %49, !dbg !2161, !llvm.loop !2162

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %52, %53 ], [ %132, %133 ], !dbg !2165
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !2075
  %66 = phi ptr [ %50, %53 ], [ %115, %133 ], !dbg !2146
  %67 = phi i32 [ %51, %53 ], [ %121, %133 ], !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2066, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !2059, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata ptr %66, metadata !2058, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !2057, metadata !DIExpression()), !dbg !2075
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !2058, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata i8 %64, metadata !2064, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2067, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i8 3, metadata !2068, metadata !DIExpression()), !dbg !2143
  %69 = load i8, ptr %68, align 1, !dbg !2168, !tbaa !1047
  switch i8 %69, label %94 [
    i8 48, label %70
    i8 49, label %70
    i8 50, label %70
    i8 51, label %70
    i8 52, label %70
    i8 53, label %70
    i8 54, label %70
    i8 55, label %70
    i8 117, label %88
    i8 103, label %90
    i8 111, label %92
  ], !dbg !2151

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !2169

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !2170
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !2143
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !2172
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !2069, metadata !DIExpression()), !dbg !2172
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !2058, metadata !DIExpression()), !dbg !2075
  %75 = shl i32 %74, 3, !dbg !2173
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !2058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2075
  %76 = zext nneg i8 %72 to i32, !dbg !2170
  %77 = add i32 %75, -48, !dbg !2174
  %78 = add nsw i32 %77, %76, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !2069, metadata !DIExpression()), !dbg !2172
  %79 = icmp ugt i32 %78, 4095, !dbg !2176
  br i1 %79, label %138, label %80, !dbg !2178

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !2179
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !2058, metadata !DIExpression()), !dbg !2075
  %82 = load i8, ptr %81, align 1, !dbg !2180, !tbaa !1047
  %83 = and i8 %82, -8, !dbg !2181
  %84 = icmp eq i8 %83, 48, !dbg !2181
  br i1 %84, label %71, label %85, !dbg !2181, !llvm.loop !2182

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0, !dbg !2184
  br i1 %86, label %87, label %138, !dbg !2186

87:                                               ; preds = %85
  switch i8 %82, label %138 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !2187

88:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 448, metadata !2066, metadata !DIExpression()), !dbg !2143
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2188
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !2058, metadata !DIExpression()), !dbg !2075
  br label %114, !dbg !2189

90:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 56, metadata !2066, metadata !DIExpression()), !dbg !2143
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !2058, metadata !DIExpression()), !dbg !2075
  br label %114, !dbg !2191

92:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 7, metadata !2066, metadata !DIExpression()), !dbg !2143
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2192
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !2058, metadata !DIExpression()), !dbg !2075
  br label %114, !dbg !2193

94:                                               ; preds = %63, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %63 ], !dbg !2194
  %96 = phi ptr [ %112, %109 ], [ %68, %63 ], !dbg !2143
  %97 = phi i32 [ %110, %109 ], [ 0, %63 ], !dbg !2197
  %98 = phi i8 [ %111, %109 ], [ 1, %63 ], !dbg !2198
  tail call void @llvm.dbg.value(metadata i8 %98, metadata !2068, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !2066, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !2058, metadata !DIExpression()), !dbg !2075
  switch i8 %95, label %114 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !2199

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !2066, metadata !DIExpression()), !dbg !2143
  br label %109, !dbg !2202

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !2203
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2066, metadata !DIExpression()), !dbg !2143
  br label %109, !dbg !2204

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !2066, metadata !DIExpression()), !dbg !2143
  br label %109, !dbg !2206

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !2207
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !2066, metadata !DIExpression()), !dbg !2143
  br label %109, !dbg !2208

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !2066, metadata !DIExpression()), !dbg !2143
  br label %109, !dbg !2210

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !2197
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !2068, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !2066, metadata !DIExpression()), !dbg !2143
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !2211
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !2058, metadata !DIExpression()), !dbg !2075
  %113 = load i8, ptr %112, align 1, !dbg !2194, !tbaa !1047
  br label %94, !dbg !2212, !llvm.loop !2213

114:                                              ; preds = %94, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %81, %87 ], [ %81, %87 ], [ %96, %94 ], !dbg !2143
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %94 ], !dbg !2166
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %78, %87 ], [ %78, %87 ], [ %97, %94 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %94 ], !dbg !2216
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %94 ], !dbg !2216
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %98, %94 ], !dbg !2143
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !2068, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !2067, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !2066, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !2059, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !2058, metadata !DIExpression()), !dbg !2075
  %121 = freeze i32 %116, !dbg !2217
  %122 = add i64 %65, 1, !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2057, metadata !DIExpression()), !dbg !2075
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !2219
  tail call void @llvm.dbg.value(metadata ptr %123, metadata !2073, metadata !DIExpression()), !dbg !2143
  store i8 %64, ptr %123, align 4, !dbg !2220, !tbaa !2110
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !2221
  store i8 %120, ptr %124, align 1, !dbg !2222, !tbaa !2114
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !2223
  store i32 %121, ptr %125, align 4, !dbg !2224, !tbaa !2117
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !2225
  store i32 %117, ptr %126, align 4, !dbg !2226, !tbaa !2120
  %127 = icmp eq i32 %121, 0, !dbg !2217
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !2217
  %129 = and i32 %128, %117, !dbg !2217
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !2217
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !2227
  store i32 %130, ptr %131, align 4, !dbg !2228, !tbaa !2123
  %132 = load i8, ptr %115, align 1, !dbg !2229, !tbaa !1047
  switch i8 %132, label %138 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !2230

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !2143

134:                                              ; preds = %114
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2066, metadata !DIExpression()), !dbg !2143
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !2058, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2057, metadata !DIExpression()), !dbg !2075
  %135 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !2231
  tail call void @llvm.dbg.value(metadata ptr %135, metadata !2058, metadata !DIExpression()), !dbg !2075
  br label %46, !dbg !2232, !llvm.loop !2233

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %122, i32 1, !dbg !2236
  store i8 0, ptr %137, align 1, !dbg !2239, !tbaa !2114
  br label %139, !dbg !2240

138:                                              ; preds = %49, %85, %87, %114, %71
  call void @llvm.dbg.label(metadata !2074), !dbg !2241
  tail call void @free(ptr noundef nonnull %39) #40, !dbg !2242
  br label %139, !dbg !2243

139:                                              ; preds = %5, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %5 ]
  ret ptr %140, !dbg !2244
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !2245 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !2270
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2248, metadata !DIExpression(), metadata !2270, metadata ptr %2, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2247, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #40, !dbg !2272
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #40, !dbg !2273
  %4 = icmp eq i32 %3, 0, !dbg !2275
  br i1 %4, label %5, label %14, !dbg !2276

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !2277
  %7 = load i32, ptr %6, align 8, !dbg !2277, !tbaa !1974
  call void @llvm.dbg.value(metadata i32 %7, metadata !2099, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 4095, metadata !2104, metadata !DIExpression()), !dbg !2278
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #46, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %8, metadata !2105, metadata !DIExpression()), !dbg !2278
  store i8 61, ptr %8, align 4, !dbg !2281, !tbaa !2110
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !2282
  store i8 1, ptr %9, align 1, !dbg !2283, !tbaa !2114
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !2284
  store i32 4095, ptr %10, align 4, !dbg !2285, !tbaa !2117
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !2286
  store i32 %7, ptr %11, align 4, !dbg !2287, !tbaa !2120
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !2288
  store i32 4095, ptr %12, align 4, !dbg !2289, !tbaa !2123
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !2290
  store i8 0, ptr %13, align 1, !dbg !2291, !tbaa !2114
  br label %14, !dbg !2292

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !2271
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #40, !dbg !2293
  ret ptr %15, !dbg !2293
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !2294 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2301, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !2302, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2303, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2304, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2305, metadata !DIExpression()), !dbg !2317
  %6 = and i32 %0, 4095, !dbg !2318
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2306, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2307, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2304, metadata !DIExpression()), !dbg !2317
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !2319
  %8 = load i8, ptr %7, align 1, !dbg !2319, !tbaa !2114
  %9 = icmp eq i8 %8, 0, !dbg !2320
  br i1 %9, label %78, label %10, !dbg !2321

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !2321

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2304, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2306, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !2307, metadata !DIExpression()), !dbg !2317
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !2322
  %20 = load i32, ptr %19, align 4, !dbg !2322, !tbaa !2117
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2308, metadata !DIExpression()), !dbg !2323
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !2324
  %22 = load i32, ptr %21, align 4, !dbg !2324, !tbaa !2123
  %23 = xor i32 %22, -1, !dbg !2325
  %24 = and i32 %11, %23, !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !2312, metadata !DIExpression()), !dbg !2323
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !2327
  %26 = load i32, ptr %25, align 4, !dbg !2327, !tbaa !2120
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2313, metadata !DIExpression()), !dbg !2323
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !2328

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !2329
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2313, metadata !DIExpression()), !dbg !2323
  %29 = and i32 %28, 292, !dbg !2331
  %30 = icmp eq i32 %29, 0, !dbg !2332
  %31 = select i1 %30, i32 0, i32 292, !dbg !2332
  %32 = and i32 %28, 146, !dbg !2333
  %33 = icmp eq i32 %32, 0, !dbg !2334
  %34 = select i1 %33, i32 0, i32 146, !dbg !2334
  %35 = and i32 %28, 73, !dbg !2335
  %36 = icmp eq i32 %35, 0, !dbg !2336
  %37 = select i1 %36, i32 0, i32 73, !dbg !2336
  %38 = or disjoint i32 %34, %31, !dbg !2337
  %39 = or disjoint i32 %38, %37, !dbg !2338
  %40 = or i32 %39, %28, !dbg !2338
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !2313, metadata !DIExpression()), !dbg !2323
  br label %47, !dbg !2339

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !2340
  %43 = or i32 %42, %12, !dbg !2342
  %44 = icmp eq i32 %43, 0, !dbg !2342
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !2343
  br label %47, !dbg !2343

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !2313, metadata !DIExpression()), !dbg !2323
  %49 = icmp eq i32 %20, 0, !dbg !2344
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !2344
  %51 = xor i32 %24, -1, !dbg !2345
  %52 = and i32 %50, %51, !dbg !2346
  %53 = and i32 %52, %48, !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !2313, metadata !DIExpression()), !dbg !2323
  %54 = load i8, ptr %16, align 4, !dbg !2348, !tbaa !2110
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !2349

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !2350
  %57 = select i1 %49, i32 0, i32 %56, !dbg !2350
  %58 = or i32 %57, %24, !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !2314, metadata !DIExpression()), !dbg !2352
  %59 = and i32 %58, 4095, !dbg !2353
  %60 = xor i32 %59, 4095, !dbg !2353
  %61 = or i32 %60, %18, !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !2307, metadata !DIExpression()), !dbg !2317
  %62 = and i32 %58, %17, !dbg !2355
  %63 = or i32 %53, %62, !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !2306, metadata !DIExpression()), !dbg !2317
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !2357
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !2307, metadata !DIExpression()), !dbg !2317
  %66 = or i32 %53, %17, !dbg !2358
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !2306, metadata !DIExpression()), !dbg !2317
  br label %71, !dbg !2359

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !2360
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !2307, metadata !DIExpression()), !dbg !2317
  %69 = xor i32 %53, -1, !dbg !2361
  %70 = and i32 %17, %69, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !2306, metadata !DIExpression()), !dbg !2317
  br label %71, !dbg !2363

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !2317
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !2306, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !2307, metadata !DIExpression()), !dbg !2317
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !2364
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2304, metadata !DIExpression()), !dbg !2317
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !2319
  %76 = load i8, ptr %75, align 1, !dbg !2319, !tbaa !2114
  %77 = icmp eq i8 %76, 0, !dbg !2320
  br i1 %77, label %78, label %14, !dbg !2321, !llvm.loop !2365

78:                                               ; preds = %71, %5
  %79 = phi i32 [ 0, %5 ], [ %72, %71 ], !dbg !2367
  %80 = phi i32 [ %6, %5 ], [ %73, %71 ], !dbg !2368
  %81 = icmp eq ptr %4, null, !dbg !2369
  br i1 %81, label %83, label %82, !dbg !2371

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !2372, !tbaa !1038
  br label %83, !dbg !2373

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !2374
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2375 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2377, metadata !DIExpression()), !dbg !2380
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2378, metadata !DIExpression()), !dbg !2380
  %3 = icmp eq ptr %2, null, !dbg !2382
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2382
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2382
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2379, metadata !DIExpression()), !dbg !2380
  %6 = ptrtoint ptr %5 to i64, !dbg !2383
  %7 = ptrtoint ptr %0 to i64, !dbg !2383
  %8 = sub i64 %6, %7, !dbg !2383
  %9 = icmp sgt i64 %8, 6, !dbg !2385
  br i1 %9, label %10, label %19, !dbg !2386

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2387
  call void @llvm.dbg.value(metadata ptr %11, metadata !2388, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 7, metadata !2394, metadata !DIExpression()), !dbg !2395
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.64, i64 7), !dbg !2397
  %13 = icmp eq i32 %12, 0, !dbg !2398
  br i1 %13, label %14, label %19, !dbg !2399

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2377, metadata !DIExpression()), !dbg !2380
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.65, i64 noundef 3) #41, !dbg !2400
  %16 = icmp eq i32 %15, 0, !dbg !2403
  %17 = select i1 %16, i64 3, i64 0, !dbg !2404
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2404
  br label %19, !dbg !2404

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2380
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2379, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2377, metadata !DIExpression()), !dbg !2380
  store ptr %20, ptr @program_name, align 8, !dbg !2405, !tbaa !969
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2406, !tbaa !969
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2407, !tbaa !969
  ret void, !dbg !2408
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2409 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !512 {
  %3 = alloca i32, align 4, !DIAssignID !2410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !522, metadata !DIExpression(), metadata !2410, metadata ptr %3, metadata !DIExpression()), !dbg !2411
  %4 = alloca %struct.savewd, align 8, !DIAssignID !2412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !527, metadata !DIExpression(), metadata !2412, metadata ptr %4, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !519, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !520, metadata !DIExpression()), !dbg !2411
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2413
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !521, metadata !DIExpression()), !dbg !2411
  %6 = icmp eq ptr %5, %0, !dbg !2414
  br i1 %6, label %7, label %14, !dbg !2416

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2417
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %4, metadata !2419, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata ptr %4, metadata !2428, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 8, metadata !2435, metadata !DIExpression()), !dbg !2436
  store i64 0, ptr %4, align 8, !dbg !2438
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2439
  %9 = icmp eq i64 %8, 2, !dbg !2441
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2442
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2411
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2443
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2443
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2411
  ret ptr %15, !dbg !2443
}

; Function Attrs: nounwind
declare !dbg !2444 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2455, metadata !DIExpression()), !dbg !2458
  %2 = tail call ptr @__errno_location() #43, !dbg !2459
  %3 = load i32, ptr %2, align 4, !dbg !2459, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2456, metadata !DIExpression()), !dbg !2458
  %4 = icmp eq ptr %0, null, !dbg !2460
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2460
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #48, !dbg !2461
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2457, metadata !DIExpression()), !dbg !2458
  store i32 %3, ptr %2, align 4, !dbg !2462, !tbaa !1038
  ret ptr %6, !dbg !2463
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !2464 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2470, metadata !DIExpression()), !dbg !2471
  %2 = icmp eq ptr %0, null, !dbg !2472
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2472
  %4 = load i32, ptr %3, align 8, !dbg !2473, !tbaa !2474
  ret i32 %4, !dbg !2476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2477 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2483
  %3 = icmp eq ptr %0, null, !dbg !2484
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2484
  store i32 %1, ptr %4, align 8, !dbg !2485, !tbaa !2474
  ret void, !dbg !2486
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2487 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2491, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2493, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2494, metadata !DIExpression()), !dbg !2499
  %4 = icmp eq ptr %0, null, !dbg !2500
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2500
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2501
  %7 = lshr i8 %1, 5, !dbg !2502
  %8 = zext nneg i8 %7 to i64, !dbg !2502
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2503
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2495, metadata !DIExpression()), !dbg !2499
  %10 = and i8 %1, 31, !dbg !2504
  %11 = zext nneg i8 %10 to i32, !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2497, metadata !DIExpression()), !dbg !2499
  %12 = load i32, ptr %9, align 4, !dbg !2505, !tbaa !1038
  %13 = lshr i32 %12, %11, !dbg !2506
  %14 = and i32 %13, 1, !dbg !2507
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2498, metadata !DIExpression()), !dbg !2499
  %15 = xor i32 %13, %2, !dbg !2508
  %16 = and i32 %15, 1, !dbg !2508
  %17 = shl nuw i32 %16, %11, !dbg !2509
  %18 = xor i32 %17, %12, !dbg !2510
  store i32 %18, ptr %9, align 4, !dbg !2510, !tbaa !1038
  ret i32 %14, !dbg !2511
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2512 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2517, metadata !DIExpression()), !dbg !2519
  %3 = icmp eq ptr %0, null, !dbg !2520
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2522
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2516, metadata !DIExpression()), !dbg !2519
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2523
  %6 = load i32, ptr %5, align 4, !dbg !2523, !tbaa !2524
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i32 %1, ptr %5, align 4, !dbg !2525, !tbaa !2524
  ret i32 %6, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2527 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2532, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2533, metadata !DIExpression()), !dbg !2534
  %4 = icmp eq ptr %0, null, !dbg !2535
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2537
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2531, metadata !DIExpression()), !dbg !2534
  store i32 10, ptr %5, align 8, !dbg !2538, !tbaa !2474
  %6 = icmp ne ptr %1, null, !dbg !2539
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2541
  br i1 %8, label %10, label %9, !dbg !2541

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2542
  unreachable, !dbg !2542

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2543
  store ptr %1, ptr %11, align 8, !dbg !2544, !tbaa !2545
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2546
  store ptr %2, ptr %12, align 8, !dbg !2547, !tbaa !2548
  ret void, !dbg !2549
}

; Function Attrs: noreturn nounwind
declare !dbg !2550 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2551 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2555, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2556, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2557, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2558, metadata !DIExpression()), !dbg !2563
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2559, metadata !DIExpression()), !dbg !2563
  %6 = icmp eq ptr %4, null, !dbg !2564
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2564
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2560, metadata !DIExpression()), !dbg !2563
  %8 = tail call ptr @__errno_location() #43, !dbg !2565
  %9 = load i32, ptr %8, align 4, !dbg !2565, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2561, metadata !DIExpression()), !dbg !2563
  %10 = load i32, ptr %7, align 8, !dbg !2566, !tbaa !2474
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2567
  %12 = load i32, ptr %11, align 4, !dbg !2567, !tbaa !2524
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2568
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2569
  %15 = load ptr, ptr %14, align 8, !dbg !2569, !tbaa !2545
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2570
  %17 = load ptr, ptr %16, align 8, !dbg !2570, !tbaa !2548
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i32 %9, ptr %8, align 4, !dbg !2572, !tbaa !1038
  ret i64 %18, !dbg !2573
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2574 {
  %10 = alloca i32, align 4, !DIAssignID !2642
  %11 = alloca %struct.savewd, align 8, !DIAssignID !2643
  %12 = alloca i32, align 4, !DIAssignID !2644
  %13 = alloca %struct.savewd, align 8, !DIAssignID !2645
  %14 = alloca %struct.savewd, align 8, !DIAssignID !2646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2646, metadata ptr %14, metadata !DIExpression()), !dbg !2647
  %15 = alloca i32, align 4, !DIAssignID !2648
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2623, metadata !DIExpression(), metadata !2648, metadata ptr %15, metadata !DIExpression()), !dbg !2649
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2580, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2582, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2583, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2584, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2585, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2586, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2587, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2588, metadata !DIExpression()), !dbg !2650
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2651
  %17 = icmp eq i64 %16, 1, !dbg !2652
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2592, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2593, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2650
  %18 = trunc i32 %5 to i8, !dbg !2653
  %19 = lshr i8 %18, 1, !dbg !2653
  %20 = and i8 %19, 1, !dbg !2653
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2595, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2650
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2654

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2655
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2656
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2657
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2658
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2650
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2659
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2660
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2597, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2595, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2594, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2593, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2592, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2583, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2588, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2587, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2584, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.label(metadata !2598), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2599, metadata !DIExpression()), !dbg !2650
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
  ], !dbg !2662

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2595, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2584, metadata !DIExpression()), !dbg !2650
  br label %114, !dbg !2663

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2595, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2584, metadata !DIExpression()), !dbg !2650
  %43 = and i8 %37, 1, !dbg !2664
  %44 = icmp eq i8 %43, 0, !dbg !2664
  br i1 %44, label %45, label %114, !dbg !2663

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2666
  br i1 %46, label %114, label %47, !dbg !2669

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2666, !tbaa !1047
  br label %114, !dbg !2666

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !2644, metadata ptr %12, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2645, metadata ptr %13, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr @.str.11.78, metadata !613, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 %29, metadata !614, metadata !DIExpression()), !dbg !2670
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.11.78, i32 noundef 5) #40, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %49, metadata !615, metadata !DIExpression()), !dbg !2670
  %50 = icmp eq ptr %49, @.str.11.78, !dbg !2675
  br i1 %50, label %51, label %60, !dbg !2677

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2678
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %13, metadata !2680, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %13, metadata !2688, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 0, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 8, metadata !2692, metadata !DIExpression()), !dbg !2693
  store i64 0, ptr %13, align 8, !dbg !2695
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2696
  %53 = icmp eq i64 %52, 3, !dbg !2698
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2699
  %57 = icmp eq i32 %29, 9, !dbg !2699
  %58 = select i1 %57, ptr @.str.10.80, ptr @.str.12.81, !dbg !2699
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2700
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2670
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2587, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !2642, metadata ptr %10, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2643, metadata ptr %11, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr @.str.12.81, metadata !613, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %29, metadata !614, metadata !DIExpression()), !dbg !2701
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.12.81, i32 noundef 5) #40, !dbg !2703
  call void @llvm.dbg.value(metadata ptr %62, metadata !615, metadata !DIExpression()), !dbg !2701
  %63 = icmp eq ptr %62, @.str.12.81, !dbg !2704
  br i1 %63, label %64, label %73, !dbg !2705

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2706
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2707
  call void @llvm.dbg.value(metadata ptr %11, metadata !2680, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %11, metadata !2688, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 0, metadata !2691, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 8, metadata !2692, metadata !DIExpression()), !dbg !2710
  store i64 0, ptr %11, align 8, !dbg !2712
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2713
  %66 = icmp eq i64 %65, 3, !dbg !2714
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2715
  %70 = icmp eq i32 %29, 9, !dbg !2715
  %71 = select i1 %70, ptr @.str.10.80, ptr @.str.12.81, !dbg !2715
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2716
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2716
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2588, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2587, metadata !DIExpression()), !dbg !2650
  %76 = and i8 %37, 1, !dbg !2717
  %77 = icmp eq i8 %76, 0, !dbg !2717
  br i1 %77, label %78, label %93, !dbg !2718

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2600, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2590, metadata !DIExpression()), !dbg !2650
  %79 = load i8, ptr %74, align 1, !dbg !2720, !tbaa !1047
  %80 = icmp eq i8 %79, 0, !dbg !2722
  br i1 %80, label %93, label %81, !dbg !2722

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2600, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2590, metadata !DIExpression()), !dbg !2650
  %85 = icmp ult i64 %84, %40, !dbg !2723
  br i1 %85, label %86, label %88, !dbg !2726

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2723
  store i8 %82, ptr %87, align 1, !dbg !2723, !tbaa !1047
  br label %88, !dbg !2723

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2590, metadata !DIExpression()), !dbg !2650
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2727
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2600, metadata !DIExpression()), !dbg !2719
  %91 = load i8, ptr %90, align 1, !dbg !2720, !tbaa !1047
  %92 = icmp eq i8 %91, 0, !dbg !2722
  br i1 %92, label %93, label %81, !dbg !2722, !llvm.loop !2728

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2594, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2592, metadata !DIExpression()), !dbg !2650
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2593, metadata !DIExpression()), !dbg !2650
  br label %114, !dbg !2732

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2594, metadata !DIExpression()), !dbg !2650
  br label %98, !dbg !2733

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2594, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2595, metadata !DIExpression()), !dbg !2650
  br label %98, !dbg !2734

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2658
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2595, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2594, metadata !DIExpression()), !dbg !2650
  %101 = and i8 %100, 1, !dbg !2735
  %102 = icmp eq i8 %101, 0, !dbg !2735
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2737
  br label %104, !dbg !2737

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2650
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2653
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2595, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2594, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2584, metadata !DIExpression()), !dbg !2650
  %107 = and i8 %106, 1, !dbg !2738
  %108 = icmp eq i8 %107, 0, !dbg !2738
  br i1 %108, label %109, label %114, !dbg !2740

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2741
  br i1 %110, label %114, label %111, !dbg !2744

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2741, !tbaa !1047
  br label %114, !dbg !2741

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2595, metadata !DIExpression()), !dbg !2650
  br label %114, !dbg !2745

113:                                              ; preds = %28
  call void @abort() #42, !dbg !2746
  unreachable, !dbg !2746

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2730
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.80, %45 ], [ @.str.10.80, %47 ], [ @.str.10.80, %42 ], [ %34, %28 ], [ @.str.12.81, %109 ], [ @.str.12.81, %111 ], [ @.str.12.81, %104 ], [ @.str.10.80, %41 ], !dbg !2650
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2650
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2650
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2595, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2594, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2593, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2592, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2588, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2587, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2584, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2605, metadata !DIExpression()), !dbg !2747
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
  br label %138, !dbg !2748

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2730
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2655
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2659
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2660
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2749
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2750
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2597, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2583, metadata !DIExpression()), !dbg !2650
  %147 = icmp eq i64 %139, -1, !dbg !2751
  br i1 %147, label %148, label %152, !dbg !2752

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2753
  %150 = load i8, ptr %149, align 1, !dbg !2753, !tbaa !1047
  %151 = icmp eq i8 %150, 0, !dbg !2754
  br i1 %151, label %612, label %154, !dbg !2755

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2756
  br i1 %153, label %612, label %154, !dbg !2755

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2611, metadata !DIExpression()), !dbg !2757
  br i1 %128, label %155, label %170, !dbg !2758

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2760
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2761
  br i1 %157, label %158, label %160, !dbg !2761

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2762
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2583, metadata !DIExpression()), !dbg !2650
  br label %160, !dbg !2763

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2583, metadata !DIExpression()), !dbg !2650
  %162 = icmp ugt i64 %156, %161, !dbg !2764
  br i1 %162, label %170, label %163, !dbg !2765

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2766
  call void @llvm.dbg.value(metadata ptr %164, metadata !2767, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %119, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %120, metadata !2771, metadata !DIExpression()), !dbg !2772
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2774
  %166 = icmp ne i32 %165, 0, !dbg !2775
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2776
  %168 = xor i1 %166, true, !dbg !2776
  %169 = zext i1 %168 to i8, !dbg !2776
  br i1 %167, label %170, label %666, !dbg !2776

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2757
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2607, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2583, metadata !DIExpression()), !dbg !2650
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2777
  %175 = load i8, ptr %174, align 1, !dbg !2777, !tbaa !1047
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2612, metadata !DIExpression()), !dbg !2757
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
  ], !dbg !2778

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2779

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2780

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2610, metadata !DIExpression()), !dbg !2757
  %179 = and i8 %144, 1, !dbg !2784
  %180 = icmp eq i8 %179, 0, !dbg !2784
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2784
  br i1 %181, label %182, label %198, !dbg !2784

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2786
  br i1 %183, label %184, label %186, !dbg !2790

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2786
  store i8 39, ptr %185, align 1, !dbg !2786, !tbaa !1047
  br label %186, !dbg !2786

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2590, metadata !DIExpression()), !dbg !2650
  %188 = icmp ult i64 %187, %146, !dbg !2791
  br i1 %188, label %189, label %191, !dbg !2794

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2791
  store i8 36, ptr %190, align 1, !dbg !2791, !tbaa !1047
  br label %191, !dbg !2791

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2590, metadata !DIExpression()), !dbg !2650
  %193 = icmp ult i64 %192, %146, !dbg !2795
  br i1 %193, label %194, label %196, !dbg !2798

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2795
  store i8 39, ptr %195, align 1, !dbg !2795, !tbaa !1047
  br label %196, !dbg !2795

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2599, metadata !DIExpression()), !dbg !2650
  br label %198, !dbg !2799

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2650
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2590, metadata !DIExpression()), !dbg !2650
  %201 = icmp ult i64 %199, %146, !dbg !2800
  br i1 %201, label %202, label %204, !dbg !2803

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2800
  store i8 92, ptr %203, align 1, !dbg !2800, !tbaa !1047
  br label %204, !dbg !2800

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2590, metadata !DIExpression()), !dbg !2650
  br i1 %125, label %206, label %476, !dbg !2804

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2806
  %208 = icmp ult i64 %207, %171, !dbg !2807
  br i1 %208, label %209, label %465, !dbg !2808

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2809
  %211 = load i8, ptr %210, align 1, !dbg !2809, !tbaa !1047
  %212 = add i8 %211, -48, !dbg !2810
  %213 = icmp ult i8 %212, 10, !dbg !2810
  br i1 %213, label %214, label %465, !dbg !2810

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2811
  br i1 %215, label %216, label %218, !dbg !2815

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2811
  store i8 48, ptr %217, align 1, !dbg !2811, !tbaa !1047
  br label %218, !dbg !2811

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2590, metadata !DIExpression()), !dbg !2650
  %220 = icmp ult i64 %219, %146, !dbg !2816
  br i1 %220, label %221, label %223, !dbg !2819

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2816
  store i8 48, ptr %222, align 1, !dbg !2816, !tbaa !1047
  br label %223, !dbg !2816

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2590, metadata !DIExpression()), !dbg !2650
  br label %465, !dbg !2820

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2821

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2822

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2823

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2825

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2827
  %231 = icmp ult i64 %230, %171, !dbg !2828
  br i1 %231, label %232, label %465, !dbg !2829

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2830
  %234 = load i8, ptr %233, align 1, !dbg !2830, !tbaa !1047
  %235 = icmp eq i8 %234, 63, !dbg !2831
  br i1 %235, label %236, label %465, !dbg !2832

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2833
  %238 = load i8, ptr %237, align 1, !dbg !2833, !tbaa !1047
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
  ], !dbg !2834

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2835

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2605, metadata !DIExpression()), !dbg !2747
  %241 = icmp ult i64 %140, %146, !dbg !2837
  br i1 %241, label %242, label %244, !dbg !2840

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2837
  store i8 63, ptr %243, align 1, !dbg !2837, !tbaa !1047
  br label %244, !dbg !2837

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2590, metadata !DIExpression()), !dbg !2650
  %246 = icmp ult i64 %245, %146, !dbg !2841
  br i1 %246, label %247, label %249, !dbg !2844

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2841
  store i8 34, ptr %248, align 1, !dbg !2841, !tbaa !1047
  br label %249, !dbg !2841

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2590, metadata !DIExpression()), !dbg !2650
  %251 = icmp ult i64 %250, %146, !dbg !2845
  br i1 %251, label %252, label %254, !dbg !2848

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2845
  store i8 34, ptr %253, align 1, !dbg !2845, !tbaa !1047
  br label %254, !dbg !2845

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2590, metadata !DIExpression()), !dbg !2650
  %256 = icmp ult i64 %255, %146, !dbg !2849
  br i1 %256, label %257, label %259, !dbg !2852

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2849
  store i8 63, ptr %258, align 1, !dbg !2849, !tbaa !1047
  br label %259, !dbg !2849

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2590, metadata !DIExpression()), !dbg !2650
  br label %465, !dbg !2853

261:                                              ; preds = %170
  br label %272, !dbg !2854

262:                                              ; preds = %170
  br label %272, !dbg !2855

263:                                              ; preds = %170
  br label %270, !dbg !2856

264:                                              ; preds = %170
  br label %270, !dbg !2857

265:                                              ; preds = %170
  br label %272, !dbg !2858

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2859

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2860

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2863

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2865

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2866
  call void @llvm.dbg.label(metadata !2613), !dbg !2867
  br i1 %133, label %272, label %655, !dbg !2868

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2866
  call void @llvm.dbg.label(metadata !2616), !dbg !2870
  br i1 %124, label %520, label %476, !dbg !2871

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2872

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2873, !tbaa !1047
  %277 = icmp eq i8 %276, 0, !dbg !2875
  br i1 %277, label %278, label %465, !dbg !2876

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2877
  br i1 %279, label %280, label %465, !dbg !2879

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2611, metadata !DIExpression()), !dbg !2757
  br label %281, !dbg !2880

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2611, metadata !DIExpression()), !dbg !2757
  br i1 %133, label %465, label %655, !dbg !2881

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2611, metadata !DIExpression()), !dbg !2757
  br i1 %132, label %284, label %465, !dbg !2883

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2884

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2887
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2889
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2889
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2591, metadata !DIExpression()), !dbg !2650
  %291 = icmp ult i64 %140, %290, !dbg !2890
  br i1 %291, label %292, label %294, !dbg !2893

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2890
  store i8 39, ptr %293, align 1, !dbg !2890, !tbaa !1047
  br label %294, !dbg !2890

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2590, metadata !DIExpression()), !dbg !2650
  %296 = icmp ult i64 %295, %290, !dbg !2894
  br i1 %296, label %297, label %299, !dbg !2897

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2894
  store i8 92, ptr %298, align 1, !dbg !2894, !tbaa !1047
  br label %299, !dbg !2894

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2590, metadata !DIExpression()), !dbg !2650
  %301 = icmp ult i64 %300, %290, !dbg !2898
  br i1 %301, label %302, label %304, !dbg !2901

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2898
  store i8 39, ptr %303, align 1, !dbg !2898, !tbaa !1047
  br label %304, !dbg !2898

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2599, metadata !DIExpression()), !dbg !2650
  br label %465, !dbg !2902

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2903

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2617, metadata !DIExpression()), !dbg !2904
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !2905
  %309 = load ptr, ptr %308, align 8, !dbg !2905, !tbaa !969
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2905
  %312 = load i16, ptr %311, align 2, !dbg !2905, !tbaa !1079
  %313 = and i16 %312, 16384, !dbg !2907
  %314 = icmp ne i16 %313, 0, !dbg !2907
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2619, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2904
  br label %355, !dbg !2908

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2909
  call void @llvm.dbg.value(metadata ptr %14, metadata !2680, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %14, metadata !2688, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 0, metadata !2691, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i64 8, metadata !2692, metadata !DIExpression()), !dbg !2912
  store i64 0, ptr %14, align 8, !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2617, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2619, metadata !DIExpression()), !dbg !2904
  %316 = icmp eq i64 %171, -1, !dbg !2915
  br i1 %316, label %317, label %319, !dbg !2917

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2583, metadata !DIExpression()), !dbg !2650
  br label %319, !dbg !2919

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2583, metadata !DIExpression()), !dbg !2650
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2920
  %321 = sub i64 %320, %145, !dbg !2921
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2627, metadata !DIExpression()), !dbg !2649
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2923

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2617, metadata !DIExpression()), !dbg !2904
  %324 = icmp ult i64 %145, %320, !dbg !2924
  br i1 %324, label %326, label %351, !dbg !2926

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2619, metadata !DIExpression()), !dbg !2904
  br label %351, !dbg !2927

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2617, metadata !DIExpression()), !dbg !2904
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2929
  %330 = load i8, ptr %329, align 1, !dbg !2929, !tbaa !1047
  %331 = icmp eq i8 %330, 0, !dbg !2926
  br i1 %331, label %351, label %332, !dbg !2930

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2617, metadata !DIExpression()), !dbg !2904
  %334 = add i64 %333, %145, !dbg !2932
  %335 = icmp eq i64 %333, %321, !dbg !2924
  br i1 %335, label %351, label %326, !dbg !2926, !llvm.loop !2933

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2628, metadata !DIExpression()), !dbg !2934
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2935
  %339 = and i1 %338, %132, !dbg !2935
  br i1 %339, label %340, label %347, !dbg !2935

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2628, metadata !DIExpression()), !dbg !2934
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2936
  %343 = load i8, ptr %342, align 1, !dbg !2936, !tbaa !1047
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2938

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2628, metadata !DIExpression()), !dbg !2934
  %346 = icmp eq i64 %345, %322, !dbg !2940
  br i1 %346, label %347, label %340, !dbg !2941, !llvm.loop !2942

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2944, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %348, metadata !2946, metadata !DIExpression()), !dbg !2954
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !2956
  %350 = icmp ne i32 %349, 0, !dbg !2957
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2617, metadata !DIExpression()), !dbg !2904
  br label %351, !dbg !2958

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2617, metadata !DIExpression()), !dbg !2904
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2960
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2617, metadata !DIExpression()), !dbg !2904
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2960
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2757
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2961
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2961
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2617, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2583, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2757
  %359 = icmp ult i64 %357, 2, !dbg !2962
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2963
  br i1 %361, label %461, label %362, !dbg !2963

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2636, metadata !DIExpression()), !dbg !2965
  br label %364, !dbg !2966

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2650
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2749
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2747
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2757
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2967
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2607, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2590, metadata !DIExpression()), !dbg !2650
  br i1 %360, label %417, label %371, !dbg !2968

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2973

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2610, metadata !DIExpression()), !dbg !2757
  %373 = and i8 %366, 1, !dbg !2976
  %374 = icmp eq i8 %373, 0, !dbg !2976
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2976
  br i1 %375, label %376, label %392, !dbg !2976

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2978
  br i1 %377, label %378, label %380, !dbg !2982

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2978
  store i8 39, ptr %379, align 1, !dbg !2978, !tbaa !1047
  br label %380, !dbg !2978

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2982
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2590, metadata !DIExpression()), !dbg !2650
  %382 = icmp ult i64 %381, %146, !dbg !2983
  br i1 %382, label %383, label %385, !dbg !2986

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2983
  store i8 36, ptr %384, align 1, !dbg !2983, !tbaa !1047
  br label %385, !dbg !2983

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2986
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2590, metadata !DIExpression()), !dbg !2650
  %387 = icmp ult i64 %386, %146, !dbg !2987
  br i1 %387, label %388, label %390, !dbg !2990

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2987
  store i8 39, ptr %389, align 1, !dbg !2987, !tbaa !1047
  br label %390, !dbg !2987

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2990
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2599, metadata !DIExpression()), !dbg !2650
  br label %392, !dbg !2991

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2650
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2590, metadata !DIExpression()), !dbg !2650
  %395 = icmp ult i64 %393, %146, !dbg !2992
  br i1 %395, label %396, label %398, !dbg !2995

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2992
  store i8 92, ptr %397, align 1, !dbg !2992, !tbaa !1047
  br label %398, !dbg !2992

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2590, metadata !DIExpression()), !dbg !2650
  %400 = icmp ult i64 %399, %146, !dbg !2996
  br i1 %400, label %401, label %405, !dbg !2999

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2996
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2996
  store i8 %403, ptr %404, align 1, !dbg !2996, !tbaa !1047
  br label %405, !dbg !2996

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2590, metadata !DIExpression()), !dbg !2650
  %407 = icmp ult i64 %406, %146, !dbg !3000
  br i1 %407, label %408, label %413, !dbg !3003

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3000
  %411 = or disjoint i8 %410, 48, !dbg !3000
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3000
  store i8 %411, ptr %412, align 1, !dbg !3000, !tbaa !1047
  br label %413, !dbg !3000

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2590, metadata !DIExpression()), !dbg !2650
  %415 = and i8 %370, 7, !dbg !3004
  %416 = or disjoint i8 %415, 48, !dbg !3005
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2612, metadata !DIExpression()), !dbg !2757
  br label %426, !dbg !3006

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3007
  %419 = icmp eq i8 %418, 0, !dbg !3007
  br i1 %419, label %426, label %420, !dbg !3009

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3010
  br i1 %421, label %422, label %424, !dbg !3014

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3010
  store i8 92, ptr %423, align 1, !dbg !3010, !tbaa !1047
  br label %424, !dbg !3010

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3014
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2757
  br label %426, !dbg !3015

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2650
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2749
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2757
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2757
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2607, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2590, metadata !DIExpression()), !dbg !2650
  %432 = add i64 %367, 1, !dbg !3016
  %433 = icmp ugt i64 %363, %432, !dbg !3018
  br i1 %433, label %434, label %463, !dbg !3019

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3020
  %436 = icmp ne i8 %435, 0, !dbg !3020
  %437 = and i8 %430, 1, !dbg !3020
  %438 = icmp eq i8 %437, 0, !dbg !3020
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3020
  br i1 %439, label %440, label %451, !dbg !3020

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3023
  br i1 %441, label %442, label %444, !dbg !3027

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3023
  store i8 39, ptr %443, align 1, !dbg !3023, !tbaa !1047
  br label %444, !dbg !3023

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3027
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2590, metadata !DIExpression()), !dbg !2650
  %446 = icmp ult i64 %445, %146, !dbg !3028
  br i1 %446, label %447, label %449, !dbg !3031

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3028
  store i8 39, ptr %448, align 1, !dbg !3028, !tbaa !1047
  br label %449, !dbg !3028

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2599, metadata !DIExpression()), !dbg !2650
  br label %451, !dbg !3032

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3033
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2590, metadata !DIExpression()), !dbg !2650
  %454 = icmp ult i64 %452, %146, !dbg !3034
  br i1 %454, label %455, label %457, !dbg !3037

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3034
  store i8 %431, ptr %456, align 1, !dbg !3034, !tbaa !1047
  br label %457, !dbg !3034

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2605, metadata !DIExpression()), !dbg !2747
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3038
  %460 = load i8, ptr %459, align 1, !dbg !3038, !tbaa !1047
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2612, metadata !DIExpression()), !dbg !2757
  br label %364, !dbg !3039, !llvm.loop !3040

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2611, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2607, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2583, metadata !DIExpression()), !dbg !2650
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2611, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2607, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2583, metadata !DIExpression()), !dbg !2650
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3043
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2650
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2655
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2650
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2650
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2747
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2757
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2757
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2757
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2611, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2607, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2583, metadata !DIExpression()), !dbg !2650
  br i1 %126, label %487, label %476, !dbg !3044

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
  br i1 %137, label %488, label %509, !dbg !3046

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3047

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
  %499 = lshr i8 %490, 5, !dbg !3048
  %500 = zext nneg i8 %499 to i64, !dbg !3048
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3049
  %502 = load i32, ptr %501, align 4, !dbg !3049, !tbaa !1038
  %503 = and i8 %490, 31, !dbg !3050
  %504 = zext nneg i8 %503 to i32, !dbg !3050
  %505 = shl nuw i32 1, %504, !dbg !3051
  %506 = and i32 %502, %505, !dbg !3051
  %507 = icmp eq i32 %506, 0, !dbg !3051
  %508 = and i1 %172, %507, !dbg !3052
  br i1 %508, label %558, label %520, !dbg !3052

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
  br i1 %172, label %558, label %520, !dbg !3053

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3043
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2650
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2655
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2659
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2749
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3054
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2757
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2757
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2611, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2583, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.label(metadata !2639), !dbg !3055
  br i1 %131, label %530, label %659, !dbg !3056

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2610, metadata !DIExpression()), !dbg !2757
  %531 = and i8 %525, 1, !dbg !3058
  %532 = icmp eq i8 %531, 0, !dbg !3058
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3058
  br i1 %533, label %534, label %550, !dbg !3058

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3060
  br i1 %535, label %536, label %538, !dbg !3064

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3060
  store i8 39, ptr %537, align 1, !dbg !3060, !tbaa !1047
  br label %538, !dbg !3060

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2590, metadata !DIExpression()), !dbg !2650
  %540 = icmp ult i64 %539, %529, !dbg !3065
  br i1 %540, label %541, label %543, !dbg !3068

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3065
  store i8 36, ptr %542, align 1, !dbg !3065, !tbaa !1047
  br label %543, !dbg !3065

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2590, metadata !DIExpression()), !dbg !2650
  %545 = icmp ult i64 %544, %529, !dbg !3069
  br i1 %545, label %546, label %548, !dbg !3072

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3069
  store i8 39, ptr %547, align 1, !dbg !3069, !tbaa !1047
  br label %548, !dbg !3069

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2599, metadata !DIExpression()), !dbg !2650
  br label %550, !dbg !3073

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2757
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2590, metadata !DIExpression()), !dbg !2650
  %553 = icmp ult i64 %551, %529, !dbg !3074
  br i1 %553, label %554, label %556, !dbg !3077

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3074
  store i8 92, ptr %555, align 1, !dbg !3074, !tbaa !1047
  br label %556, !dbg !3074

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2611, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2583, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.label(metadata !2640), !dbg !3078
  br label %585, !dbg !3079

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3043
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2650
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2655
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2659
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2749
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3054
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2757
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2757
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3082
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2612, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2611, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2610, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2583, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.label(metadata !2640), !dbg !3078
  %569 = and i8 %563, 1, !dbg !3079
  %570 = icmp ne i8 %569, 0, !dbg !3079
  %571 = and i8 %565, 1, !dbg !3079
  %572 = icmp eq i8 %571, 0, !dbg !3079
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3079
  br i1 %573, label %574, label %585, !dbg !3079

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3083
  br i1 %575, label %576, label %578, !dbg !3087

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3083
  store i8 39, ptr %577, align 1, !dbg !3083, !tbaa !1047
  br label %578, !dbg !3083

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2590, metadata !DIExpression()), !dbg !2650
  %580 = icmp ult i64 %579, %568, !dbg !3088
  br i1 %580, label %581, label %583, !dbg !3091

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3088
  store i8 39, ptr %582, align 1, !dbg !3088, !tbaa !1047
  br label %583, !dbg !3088

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2599, metadata !DIExpression()), !dbg !2650
  br label %585, !dbg !3092

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2757
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2590, metadata !DIExpression()), !dbg !2650
  %595 = icmp ult i64 %593, %586, !dbg !3093
  br i1 %595, label %596, label %598, !dbg !3096

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3093
  store i8 %587, ptr %597, align 1, !dbg !3093, !tbaa !1047
  br label %598, !dbg !3093

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3096
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2590, metadata !DIExpression()), !dbg !2650
  %600 = icmp eq i8 %588, 0, !dbg !3097
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3099
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2597, metadata !DIExpression()), !dbg !2650
  br label %602, !dbg !3100

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3043
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2650
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2655
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2659
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2660
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2749
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3054
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2605, metadata !DIExpression()), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2599, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2597, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2583, metadata !DIExpression()), !dbg !2650
  %611 = add i64 %609, 1, !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2605, metadata !DIExpression()), !dbg !2747
  br label %138, !dbg !3102, !llvm.loop !3103

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2581, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2597, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2596, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2591, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2590, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2583, metadata !DIExpression()), !dbg !2650
  %613 = icmp eq i64 %140, 0, !dbg !3105
  %614 = and i1 %132, %613, !dbg !3107
  %615 = xor i1 %614, true, !dbg !3107
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3107
  br i1 %616, label %617, label %655, !dbg !3107

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3108
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3108
  br i1 %621, label %622, label %631, !dbg !3108

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3110
  %624 = icmp eq i8 %623, 0, !dbg !3110
  br i1 %624, label %627, label %625, !dbg !3113

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3114
  br label %672, !dbg !3115

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3116
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3118
  br i1 %630, label %28, label %631, !dbg !3118

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3119
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3121
  br i1 %634, label %635, label %650, !dbg !3121

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2592, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2590, metadata !DIExpression()), !dbg !2650
  %636 = load i8, ptr %119, align 1, !dbg !3122, !tbaa !1047
  %637 = icmp eq i8 %636, 0, !dbg !3125
  br i1 %637, label %650, label %638, !dbg !3125

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2592, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2590, metadata !DIExpression()), !dbg !2650
  %642 = icmp ult i64 %641, %146, !dbg !3126
  br i1 %642, label %643, label %645, !dbg !3129

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3126
  store i8 %639, ptr %644, align 1, !dbg !3126, !tbaa !1047
  br label %645, !dbg !3126

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2590, metadata !DIExpression()), !dbg !2650
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3130
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2592, metadata !DIExpression()), !dbg !2650
  %648 = load i8, ptr %647, align 1, !dbg !3122, !tbaa !1047
  %649 = icmp eq i8 %648, 0, !dbg !3125
  br i1 %649, label %650, label %638, !dbg !3125, !llvm.loop !3131

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2590, metadata !DIExpression()), !dbg !2650
  %652 = icmp ult i64 %651, %146, !dbg !3133
  br i1 %652, label %653, label %672, !dbg !3135

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3136
  store i8 0, ptr %654, align 1, !dbg !3137, !tbaa !1047
  br label %672, !dbg !3136

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2641), !dbg !3138
  %657 = icmp eq i8 %123, 0, !dbg !3139
  %658 = select i1 %657, i32 2, i32 4, !dbg !3139
  br label %666, !dbg !3139

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2641), !dbg !3138
  %662 = icmp eq i32 %115, 2, !dbg !3141
  %663 = icmp eq i8 %123, 0, !dbg !3139
  %664 = select i1 %663, i32 2, i32 4, !dbg !3139
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3139
  br label %666, !dbg !3139

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2584, metadata !DIExpression()), !dbg !2650
  %670 = and i32 %5, -3, !dbg !3142
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3143
  br label %672, !dbg !3144

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3145
}

; Function Attrs: nounwind
declare !dbg !3146 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3149 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3152 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3154 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr null, metadata !3168, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr %2, metadata !3169, metadata !DIExpression()), !dbg !3175
  %4 = icmp eq ptr %2, null, !dbg !3177
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %5, metadata !3170, metadata !DIExpression()), !dbg !3175
  %6 = tail call ptr @__errno_location() #43, !dbg !3178
  %7 = load i32, ptr %6, align 4, !dbg !3178, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %7, metadata !3171, metadata !DIExpression()), !dbg !3175
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3179
  %9 = load i32, ptr %8, align 4, !dbg !3179, !tbaa !2524
  %10 = or i32 %9, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %10, metadata !3172, metadata !DIExpression()), !dbg !3175
  %11 = load i32, ptr %5, align 8, !dbg !3181, !tbaa !2474
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3182
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3183
  %14 = load ptr, ptr %13, align 8, !dbg !3183, !tbaa !2545
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3184
  %16 = load ptr, ptr %15, align 8, !dbg !3184, !tbaa !2548
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3185
  %18 = add i64 %17, 1, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %18, metadata !3173, metadata !DIExpression()), !dbg !3175
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !3187
  call void @llvm.dbg.value(metadata ptr %19, metadata !3174, metadata !DIExpression()), !dbg !3175
  %20 = load i32, ptr %5, align 8, !dbg !3188, !tbaa !2474
  %21 = load ptr, ptr %13, align 8, !dbg !3189, !tbaa !2545
  %22 = load ptr, ptr %15, align 8, !dbg !3190, !tbaa !2548
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3191
  store i32 %7, ptr %6, align 4, !dbg !3192, !tbaa !1038
  ret ptr %19, !dbg !3193
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3163 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3194
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3167, metadata !DIExpression()), !dbg !3194
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3168, metadata !DIExpression()), !dbg !3194
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3169, metadata !DIExpression()), !dbg !3194
  %5 = icmp eq ptr %3, null, !dbg !3195
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3195
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3170, metadata !DIExpression()), !dbg !3194
  %7 = tail call ptr @__errno_location() #43, !dbg !3196
  %8 = load i32, ptr %7, align 4, !dbg !3196, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3171, metadata !DIExpression()), !dbg !3194
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3197
  %10 = load i32, ptr %9, align 4, !dbg !3197, !tbaa !2524
  %11 = icmp eq ptr %2, null, !dbg !3198
  %12 = zext i1 %11 to i32, !dbg !3198
  %13 = or i32 %10, %12, !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3172, metadata !DIExpression()), !dbg !3194
  %14 = load i32, ptr %6, align 8, !dbg !3200, !tbaa !2474
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3201
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3202
  %17 = load ptr, ptr %16, align 8, !dbg !3202, !tbaa !2545
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3203
  %19 = load ptr, ptr %18, align 8, !dbg !3203, !tbaa !2548
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3204
  %21 = add i64 %20, 1, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3173, metadata !DIExpression()), !dbg !3194
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !3206
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3174, metadata !DIExpression()), !dbg !3194
  %23 = load i32, ptr %6, align 8, !dbg !3207, !tbaa !2474
  %24 = load ptr, ptr %16, align 8, !dbg !3208, !tbaa !2545
  %25 = load ptr, ptr %18, align 8, !dbg !3209, !tbaa !2548
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3210
  store i32 %8, ptr %7, align 4, !dbg !3211, !tbaa !1038
  br i1 %11, label %28, label %27, !dbg !3212

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3213, !tbaa !3215
  br label %28, !dbg !3216

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3217
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3218 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3223, !tbaa !969
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3220, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3221, metadata !DIExpression()), !dbg !3225
  %2 = load i32, ptr @nslots, align 4, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3221, metadata !DIExpression()), !dbg !3225
  %3 = icmp sgt i32 %2, 1, !dbg !3226
  br i1 %3, label %4, label %6, !dbg !3228

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3226
  br label %10, !dbg !3228

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3229
  %8 = load ptr, ptr %7, align 8, !dbg !3229, !tbaa !3231
  %9 = icmp eq ptr %8, @slot0, !dbg !3233
  br i1 %9, label %17, label %16, !dbg !3234

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3221, metadata !DIExpression()), !dbg !3225
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3235
  %13 = load ptr, ptr %12, align 8, !dbg !3235, !tbaa !3231
  tail call void @free(ptr noundef %13) #40, !dbg !3236
  %14 = add nuw nsw i64 %11, 1, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3221, metadata !DIExpression()), !dbg !3225
  %15 = icmp eq i64 %14, %5, !dbg !3226
  br i1 %15, label %6, label %10, !dbg !3228, !llvm.loop !3238

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3240
  store i64 256, ptr @slotvec0, align 8, !dbg !3242, !tbaa !3243
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3244, !tbaa !3231
  br label %17, !dbg !3245

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3246
  br i1 %18, label %20, label %19, !dbg !3248

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3249
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3251, !tbaa !969
  br label %20, !dbg !3252

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3253, !tbaa !1038
  ret void, !dbg !3254
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3255 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3257, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3258, metadata !DIExpression()), !dbg !3259
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3260
  ret ptr %3, !dbg !3261
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3262 {
  %5 = alloca i64, align 8, !DIAssignID !3282
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3276, metadata !DIExpression(), metadata !3282, metadata ptr %5, metadata !DIExpression()), !dbg !3283
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3266, metadata !DIExpression()), !dbg !3284
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3267, metadata !DIExpression()), !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3268, metadata !DIExpression()), !dbg !3284
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3269, metadata !DIExpression()), !dbg !3284
  %6 = tail call ptr @__errno_location() #43, !dbg !3285
  %7 = load i32, ptr %6, align 4, !dbg !3285, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3270, metadata !DIExpression()), !dbg !3284
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3286, !tbaa !969
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3271, metadata !DIExpression()), !dbg !3284
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3272, metadata !DIExpression()), !dbg !3284
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3287
  br i1 %9, label %10, label %11, !dbg !3287

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3289
  unreachable, !dbg !3289

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3290, !tbaa !1038
  %13 = icmp sgt i32 %12, %0, !dbg !3291
  br i1 %13, label %32, label %14, !dbg !3292

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3293
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3283
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3294
  %16 = sext i32 %12 to i64, !dbg !3295
  store i64 %16, ptr %5, align 8, !dbg !3296, !tbaa !3215, !DIAssignID !3297
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3276, metadata !DIExpression(), metadata !3297, metadata ptr %5, metadata !DIExpression()), !dbg !3283
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3298
  %18 = add nuw nsw i32 %0, 1, !dbg !3299
  %19 = sub i32 %18, %12, !dbg !3300
  %20 = sext i32 %19 to i64, !dbg !3301
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3302
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3271, metadata !DIExpression()), !dbg !3284
  store ptr %21, ptr @slotvec, align 8, !dbg !3303, !tbaa !969
  br i1 %15, label %22, label %23, !dbg !3304

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3305, !tbaa.struct !3307
  br label %23, !dbg !3308

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3309, !tbaa !1038
  %25 = sext i32 %24 to i64, !dbg !3310
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3310
  %27 = load i64, ptr %5, align 8, !dbg !3311, !tbaa !3215
  %28 = sub nsw i64 %27, %25, !dbg !3312
  %29 = shl i64 %28, 4, !dbg !3313
  call void @llvm.dbg.value(metadata ptr %26, metadata !2688, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 0, metadata !2691, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %29, metadata !2692, metadata !DIExpression()), !dbg !3314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3316
  %30 = load i64, ptr %5, align 8, !dbg !3317, !tbaa !3215
  %31 = trunc i64 %30 to i32, !dbg !3317
  store i32 %31, ptr @nslots, align 4, !dbg !3318, !tbaa !1038
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3319
  br label %32, !dbg !3320

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3284
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3271, metadata !DIExpression()), !dbg !3284
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3321
  %36 = load i64, ptr %35, align 8, !dbg !3322, !tbaa !3243
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3277, metadata !DIExpression()), !dbg !3323
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3324
  %38 = load ptr, ptr %37, align 8, !dbg !3324, !tbaa !3231
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3279, metadata !DIExpression()), !dbg !3323
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3325
  %40 = load i32, ptr %39, align 4, !dbg !3325, !tbaa !2524
  %41 = or i32 %40, 1, !dbg !3326
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3280, metadata !DIExpression()), !dbg !3323
  %42 = load i32, ptr %3, align 8, !dbg !3327, !tbaa !2474
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3328
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3329
  %45 = load ptr, ptr %44, align 8, !dbg !3329, !tbaa !2545
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3330
  %47 = load ptr, ptr %46, align 8, !dbg !3330, !tbaa !2548
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3281, metadata !DIExpression()), !dbg !3323
  %49 = icmp ugt i64 %36, %48, !dbg !3332
  br i1 %49, label %60, label %50, !dbg !3334

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3277, metadata !DIExpression()), !dbg !3323
  store i64 %51, ptr %35, align 8, !dbg !3337, !tbaa !3243
  %52 = icmp eq ptr %38, @slot0, !dbg !3338
  br i1 %52, label %54, label %53, !dbg !3340

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3341
  br label %54, !dbg !3341

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3342
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3279, metadata !DIExpression()), !dbg !3323
  store ptr %55, ptr %37, align 8, !dbg !3343, !tbaa !3231
  %56 = load i32, ptr %3, align 8, !dbg !3344, !tbaa !2474
  %57 = load ptr, ptr %44, align 8, !dbg !3345, !tbaa !2545
  %58 = load ptr, ptr %46, align 8, !dbg !3346, !tbaa !2548
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3347
  br label %60, !dbg !3348

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3323
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3279, metadata !DIExpression()), !dbg !3323
  store i32 %7, ptr %6, align 4, !dbg !3349, !tbaa !1038
  ret ptr %61, !dbg !3350
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3351 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3355, metadata !DIExpression()), !dbg !3358
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3356, metadata !DIExpression()), !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3357, metadata !DIExpression()), !dbg !3358
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3359
  ret ptr %4, !dbg !3360
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3363, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 0, metadata !3257, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %0, metadata !3258, metadata !DIExpression()), !dbg !3365
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3367
  ret ptr %2, !dbg !3368
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3369 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3373, metadata !DIExpression()), !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 0, metadata !3355, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %0, metadata !3356, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3376
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3378
  ret ptr %3, !dbg !3379
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3380 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3387, metadata !DIExpression(), metadata !3388, metadata ptr %4, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3385, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3386, metadata !DIExpression()), !dbg !3389
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3391), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %1, metadata !3395, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3400, metadata !DIExpression()), !dbg !3403
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3403, !alias.scope !3391, !DIAssignID !3404
  call void @llvm.dbg.assign(metadata i8 0, metadata !3387, metadata !DIExpression(), metadata !3404, metadata ptr %4, metadata !DIExpression()), !dbg !3389
  %5 = icmp eq i32 %1, 10, !dbg !3405
  br i1 %5, label %6, label %7, !dbg !3407

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3408, !noalias !3391
  unreachable, !dbg !3408

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3409, !tbaa !2474, !alias.scope !3391, !DIAssignID !3410
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3387, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3410, metadata ptr %4, metadata !DIExpression()), !dbg !3389
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3411
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3412
  ret ptr %8, !dbg !3413
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3414 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3423
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3422, metadata !DIExpression(), metadata !3423, metadata ptr %5, metadata !DIExpression()), !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3418, metadata !DIExpression()), !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3419, metadata !DIExpression()), !dbg !3424
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3420, metadata !DIExpression()), !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3426), !dbg !3429
  call void @llvm.dbg.value(metadata i32 %1, metadata !3395, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3400, metadata !DIExpression()), !dbg !3432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3432, !alias.scope !3426, !DIAssignID !3433
  call void @llvm.dbg.assign(metadata i8 0, metadata !3422, metadata !DIExpression(), metadata !3433, metadata ptr %5, metadata !DIExpression()), !dbg !3424
  %6 = icmp eq i32 %1, 10, !dbg !3434
  br i1 %6, label %7, label %8, !dbg !3435

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3436, !noalias !3426
  unreachable, !dbg !3436

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3437, !tbaa !2474, !alias.scope !3426, !DIAssignID !3438
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3422, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3438, metadata ptr %5, metadata !DIExpression()), !dbg !3424
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3439
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3440
  ret ptr %9, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3442 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3448
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()), !dbg !3449
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3387, metadata !DIExpression(), metadata !3448, metadata ptr %3, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 0, metadata !3384, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %1, metadata !3386, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3453), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %0, metadata !3395, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3400, metadata !DIExpression()), !dbg !3459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3459, !alias.scope !3453, !DIAssignID !3460
  call void @llvm.dbg.assign(metadata i8 0, metadata !3387, metadata !DIExpression(), metadata !3460, metadata ptr %3, metadata !DIExpression()), !dbg !3450
  %4 = icmp eq i32 %0, 10, !dbg !3461
  br i1 %4, label %5, label %6, !dbg !3462

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3463, !noalias !3453
  unreachable, !dbg !3463

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3464, !tbaa !2474, !alias.scope !3453, !DIAssignID !3465
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3387, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3465, metadata ptr %3, metadata !DIExpression()), !dbg !3450
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3466
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3467
  ret ptr %7, !dbg !3468
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3469 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3476
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3474, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3422, metadata !DIExpression(), metadata !3476, metadata ptr %4, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 0, metadata !3418, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 %0, metadata !3419, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %1, metadata !3420, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %2, metadata !3421, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %0, metadata !3395, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3400, metadata !DIExpression()), !dbg !3487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3487, !alias.scope !3481, !DIAssignID !3488
  call void @llvm.dbg.assign(metadata i8 0, metadata !3422, metadata !DIExpression(), metadata !3488, metadata ptr %4, metadata !DIExpression()), !dbg !3478
  %5 = icmp eq i32 %0, 10, !dbg !3489
  br i1 %5, label %6, label %7, !dbg !3490

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3491, !noalias !3481
  unreachable, !dbg !3491

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3492, !tbaa !2474, !alias.scope !3481, !DIAssignID !3493
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3422, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3493, metadata ptr %4, metadata !DIExpression()), !dbg !3478
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3494
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3495
  ret ptr %8, !dbg !3496
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3497 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3505
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3505, metadata ptr %4, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3503, metadata !DIExpression()), !dbg !3506
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3508, !tbaa.struct !3509, !DIAssignID !3510
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3510, metadata ptr %4, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2491, metadata !DIExpression()), !dbg !3511
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2492, metadata !DIExpression()), !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()), !dbg !3511
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2494, metadata !DIExpression()), !dbg !3511
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3513
  %6 = lshr i8 %2, 5, !dbg !3514
  %7 = zext nneg i8 %6 to i64, !dbg !3514
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3515
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2495, metadata !DIExpression()), !dbg !3511
  %9 = and i8 %2, 31, !dbg !3516
  %10 = zext nneg i8 %9 to i32, !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2497, metadata !DIExpression()), !dbg !3511
  %11 = load i32, ptr %8, align 4, !dbg !3517, !tbaa !1038
  %12 = lshr i32 %11, %10, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2498, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3511
  %13 = and i32 %12, 1, !dbg !3519
  %14 = xor i32 %13, 1, !dbg !3519
  %15 = shl nuw i32 %14, %10, !dbg !3520
  %16 = xor i32 %15, %11, !dbg !3521
  store i32 %16, ptr %8, align 4, !dbg !3521, !tbaa !1038
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3522
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3523
  ret ptr %17, !dbg !3524
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3525 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3531
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3531, metadata ptr %3, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 -1, metadata !3502, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8 %1, metadata !3503, metadata !DIExpression()), !dbg !3533
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3536, !tbaa.struct !3509, !DIAssignID !3537
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3537, metadata ptr %3, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 %1, metadata !2494, metadata !DIExpression()), !dbg !3538
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3540
  %5 = lshr i8 %1, 5, !dbg !3541
  %6 = zext nneg i8 %5 to i64, !dbg !3541
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3542
  call void @llvm.dbg.value(metadata ptr %7, metadata !2495, metadata !DIExpression()), !dbg !3538
  %8 = and i8 %1, 31, !dbg !3543
  %9 = zext nneg i8 %8 to i32, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %9, metadata !2497, metadata !DIExpression()), !dbg !3538
  %10 = load i32, ptr %7, align 4, !dbg !3544, !tbaa !1038
  %11 = lshr i32 %10, %9, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %11, metadata !2498, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3538
  %12 = and i32 %11, 1, !dbg !3546
  %13 = xor i32 %12, 1, !dbg !3546
  %14 = shl nuw i32 %13, %9, !dbg !3547
  %15 = xor i32 %14, %10, !dbg !3548
  store i32 %15, ptr %7, align 4, !dbg !3548, !tbaa !1038
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3549
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3550
  ret ptr %16, !dbg !3551
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3552 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3555
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3554, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8 58, metadata !3530, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3555, metadata ptr %2, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 -1, metadata !3502, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8 58, metadata !3503, metadata !DIExpression()), !dbg !3559
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3562, !tbaa.struct !3509, !DIAssignID !3563
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3563, metadata ptr %2, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata ptr %2, metadata !2491, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8 58, metadata !2494, metadata !DIExpression()), !dbg !3564
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3566
  call void @llvm.dbg.value(metadata ptr %3, metadata !2495, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 26, metadata !2497, metadata !DIExpression()), !dbg !3564
  %4 = load i32, ptr %3, align 4, !dbg !3567, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %4, metadata !2498, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3564
  %5 = or i32 %4, 67108864, !dbg !3568
  store i32 %5, ptr %3, align 4, !dbg !3568, !tbaa !1038
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3569
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3570
  ret ptr %6, !dbg !3571
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3572 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3576
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3574, metadata !DIExpression()), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3576, metadata ptr %3, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i8 58, metadata !3503, metadata !DIExpression()), !dbg !3578
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3581, !tbaa.struct !3509, !DIAssignID !3582
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3504, metadata !DIExpression(), metadata !3582, metadata ptr %3, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata ptr %3, metadata !2491, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8 58, metadata !2494, metadata !DIExpression()), !dbg !3583
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3585
  call void @llvm.dbg.value(metadata ptr %4, metadata !2495, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 26, metadata !2497, metadata !DIExpression()), !dbg !3583
  %5 = load i32, ptr %4, align 4, !dbg !3586, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %5, metadata !2498, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3583
  %6 = or i32 %5, 67108864, !dbg !3587
  store i32 %6, ptr %4, align 4, !dbg !3587, !tbaa !1038
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3588
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3589
  ret ptr %7, !dbg !3590
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3591 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3596, metadata !DIExpression(), metadata !3597, metadata ptr %4, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3400, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3599
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3594, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3595, metadata !DIExpression()), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3601
  call void @llvm.dbg.value(metadata i32 %1, metadata !3395, metadata !DIExpression()), !dbg !3602
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3602
  %5 = icmp eq i32 %1, 10, !dbg !3603
  br i1 %5, label %6, label %7, !dbg !3604

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3605, !noalias !3606
  unreachable, !dbg !3605

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3602
  store i32 %1, ptr %4, align 8, !dbg !3609, !tbaa.struct !3509, !DIAssignID !3610
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3609
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3609
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3596, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3610, metadata ptr %4, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3596, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3611, metadata ptr %8, metadata !DIExpression()), !dbg !3598
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2491, metadata !DIExpression()), !dbg !3612
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2493, metadata !DIExpression()), !dbg !3612
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2494, metadata !DIExpression()), !dbg !3612
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3614
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2495, metadata !DIExpression()), !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2497, metadata !DIExpression()), !dbg !3612
  %10 = load i32, ptr %9, align 4, !dbg !3615, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2498, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3612
  %11 = or i32 %10, 67108864, !dbg !3616
  store i32 %11, ptr %9, align 4, !dbg !3616, !tbaa !1038, !DIAssignID !3617
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3596, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3617, metadata ptr %9, metadata !DIExpression()), !dbg !3598
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3618
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3619
  ret ptr %12, !dbg !3620
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3621 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3629
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3626, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3627, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3629, metadata ptr %5, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %0, metadata !3636, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %1, metadata !3637, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %2, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %3, metadata !3639, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 -1, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3644, !tbaa.struct !3509, !DIAssignID !3645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3645, metadata ptr %5, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3646, metadata ptr undef, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata ptr %5, metadata !2531, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %1, metadata !2532, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %2, metadata !2533, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %5, metadata !2531, metadata !DIExpression()), !dbg !3647
  store i32 10, ptr %5, align 8, !dbg !3649, !tbaa !2474, !DIAssignID !3650
  call void @llvm.dbg.assign(metadata i32 10, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3650, metadata ptr %5, metadata !DIExpression()), !dbg !3641
  %6 = icmp ne ptr %1, null, !dbg !3651
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3652
  br i1 %8, label %10, label %9, !dbg !3652

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3653
  unreachable, !dbg !3653

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3654
  store ptr %1, ptr %11, align 8, !dbg !3655, !tbaa !2545, !DIAssignID !3656
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3656, metadata ptr %11, metadata !DIExpression()), !dbg !3641
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3657
  store ptr %2, ptr %12, align 8, !dbg !3658, !tbaa !2548, !DIAssignID !3659
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3659, metadata ptr %12, metadata !DIExpression()), !dbg !3641
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3660
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3661
  ret ptr %13, !dbg !3662
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3632 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3663, metadata ptr %6, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3636, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3637, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3638, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3639, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3640, metadata !DIExpression()), !dbg !3664
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3666, !tbaa.struct !3509, !DIAssignID !3667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3667, metadata ptr %6, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3668, metadata ptr undef, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %6, metadata !2531, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %1, metadata !2532, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %2, metadata !2533, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %6, metadata !2531, metadata !DIExpression()), !dbg !3669
  store i32 10, ptr %6, align 8, !dbg !3671, !tbaa !2474, !DIAssignID !3672
  call void @llvm.dbg.assign(metadata i32 10, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3672, metadata ptr %6, metadata !DIExpression()), !dbg !3664
  %7 = icmp ne ptr %1, null, !dbg !3673
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3674
  br i1 %9, label %11, label %10, !dbg !3674

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3675
  unreachable, !dbg !3675

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3676
  store ptr %1, ptr %12, align 8, !dbg !3677, !tbaa !2545, !DIAssignID !3678
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3678, metadata ptr %12, metadata !DIExpression()), !dbg !3664
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3679
  store ptr %2, ptr %13, align 8, !dbg !3680, !tbaa !2548, !DIAssignID !3681
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3681, metadata ptr %13, metadata !DIExpression()), !dbg !3664
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3683
  ret ptr %14, !dbg !3684
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3685 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3692
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3689, metadata !DIExpression()), !dbg !3693
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3690, metadata !DIExpression()), !dbg !3693
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %1, metadata !3627, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %2, metadata !3628, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3692, metadata ptr %4, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3636, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %1, metadata !3638, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %2, metadata !3639, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 -1, metadata !3640, metadata !DIExpression()), !dbg !3696
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3699, !tbaa.struct !3509, !DIAssignID !3700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3700, metadata ptr %4, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3701, metadata ptr undef, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata ptr %4, metadata !2531, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %1, metadata !2533, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata ptr %4, metadata !2531, metadata !DIExpression()), !dbg !3702
  store i32 10, ptr %4, align 8, !dbg !3704, !tbaa !2474, !DIAssignID !3705
  call void @llvm.dbg.assign(metadata i32 10, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3705, metadata ptr %4, metadata !DIExpression()), !dbg !3696
  %5 = icmp ne ptr %0, null, !dbg !3706
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3707
  br i1 %7, label %9, label %8, !dbg !3707

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3708
  unreachable, !dbg !3708

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3709
  store ptr %0, ptr %10, align 8, !dbg !3710, !tbaa !2545, !DIAssignID !3711
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3711, metadata ptr %10, metadata !DIExpression()), !dbg !3696
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3712
  store ptr %1, ptr %11, align 8, !dbg !3713, !tbaa !2548, !DIAssignID !3714
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3714, metadata ptr %11, metadata !DIExpression()), !dbg !3696
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3715
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3716
  ret ptr %12, !dbg !3717
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3718 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3726
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3723, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3724, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3725, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3726, metadata ptr %5, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 0, metadata !3636, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %1, metadata !3638, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %2, metadata !3639, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i64 %3, metadata !3640, metadata !DIExpression()), !dbg !3728
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3731, !tbaa.struct !3509, !DIAssignID !3732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(), metadata !3732, metadata ptr %5, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3733, metadata ptr undef, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %5, metadata !2531, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata ptr %1, metadata !2533, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata ptr %5, metadata !2531, metadata !DIExpression()), !dbg !3734
  store i32 10, ptr %5, align 8, !dbg !3736, !tbaa !2474, !DIAssignID !3737
  call void @llvm.dbg.assign(metadata i32 10, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3737, metadata ptr %5, metadata !DIExpression()), !dbg !3728
  %6 = icmp ne ptr %0, null, !dbg !3738
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3739
  br i1 %8, label %10, label %9, !dbg !3739

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3740
  unreachable, !dbg !3740

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3741
  store ptr %0, ptr %11, align 8, !dbg !3742, !tbaa !2545, !DIAssignID !3743
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3743, metadata ptr %11, metadata !DIExpression()), !dbg !3728
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3744
  store ptr %1, ptr %12, align 8, !dbg !3745, !tbaa !2548, !DIAssignID !3746
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3631, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3746, metadata ptr %12, metadata !DIExpression()), !dbg !3728
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3747
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3748
  ret ptr %13, !dbg !3749
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3750 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3754, metadata !DIExpression()), !dbg !3757
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3755, metadata !DIExpression()), !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3756, metadata !DIExpression()), !dbg !3757
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3758
  ret ptr %4, !dbg !3759
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3764, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3765, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i32 0, metadata !3754, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata ptr %0, metadata !3755, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %1, metadata !3756, metadata !DIExpression()), !dbg !3767
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3769
  ret ptr %3, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3771 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3775, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i32 %0, metadata !3754, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %1, metadata !3755, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 -1, metadata !3756, metadata !DIExpression()), !dbg !3778
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3780
  ret ptr %3, !dbg !3781
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3782 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3786, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 0, metadata !3775, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr %0, metadata !3776, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 0, metadata !3754, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata ptr %0, metadata !3755, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 -1, metadata !3756, metadata !DIExpression()), !dbg !3790
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3792
  ret ptr %2, !dbg !3793
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @savewd_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #26 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3799, metadata !DIExpression()), !dbg !3800
  store i32 0, ptr %0, align 4, !dbg !3801, !tbaa !1920
  ret void, !dbg !3802
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @savewd_errno(ptr nocapture noundef readonly %0) local_unnamed_addr #27 !dbg !3803 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3809, metadata !DIExpression()), !dbg !3810
  %2 = load i32, ptr %0, align 4, !dbg !3811, !tbaa !1920
  %3 = icmp ult i32 %2, 4, !dbg !3812
  br i1 %3, label %7, label %4, !dbg !3813

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3814
  %6 = load i32, ptr %5, align 4, !dbg !3815, !tbaa !1047
  br label %7, !dbg !3813

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ], !dbg !3813
  ret i32 %8, !dbg !3816
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_chdir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #10 !dbg !3817 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3821, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3822, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3823, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3824, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3825, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3826, metadata !DIExpression()), !dbg !3830
  %5 = icmp eq ptr %3, null, !dbg !3831
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7, !dbg !3833
  br i1 %8, label %27, label %9, !dbg !3833

9:                                                ; preds = %4
  %10 = shl i32 %2, 17, !dbg !3834
  %11 = and i32 %10, 131072, !dbg !3834
  %12 = or disjoint i32 %11, 67840, !dbg !3836
  %13 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %1, i32 noundef %12) #40, !dbg !3837
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3825, metadata !DIExpression()), !dbg !3830
  br i1 %5, label %18, label %14, !dbg !3838

14:                                               ; preds = %9
  store i32 %13, ptr %3, align 4, !dbg !3839, !tbaa !1038
  %15 = tail call ptr @__errno_location() #43, !dbg !3842
  %16 = load i32, ptr %15, align 4, !dbg !3842, !tbaa !1038
  %17 = getelementptr inbounds i32, ptr %3, i64 1, !dbg !3843
  store i32 %16, ptr %17, align 4, !dbg !3844, !tbaa !1038
  br label %18, !dbg !3845

18:                                               ; preds = %14, %9
  %19 = icmp slt i32 %13, 0, !dbg !3846
  br i1 %19, label %20, label %24, !dbg !3848

20:                                               ; preds = %18
  %21 = tail call ptr @__errno_location() #43, !dbg !3849
  %22 = load i32, ptr %21, align 4, !dbg !3849, !tbaa !1038
  %23 = icmp eq i32 %22, 13, !dbg !3850
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3826, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3825, metadata !DIExpression()), !dbg !3830
  br i1 %23, label %27, label %86, !dbg !3851

24:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3826, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3825, metadata !DIExpression()), !dbg !3830
  %25 = and i32 %2, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %75, !dbg !3853

27:                                               ; preds = %20, %4, %24
  %28 = phi i32 [ %13, %24 ], [ -1, %4 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3863
  %29 = load i32, ptr %0, align 4, !dbg !3867, !tbaa !1920
  switch i32 %29, label %56 [
    i32 0, label %30
    i32 3, label %43
    i32 1, label %57
    i32 2, label %57
    i32 4, label %57
    i32 5, label %57
  ], !dbg !3868

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef nonnull @.str.5.90, i32 noundef 0) #40, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %31, metadata !3859, metadata !DIExpression()), !dbg !3870
  %32 = icmp sgt i32 %31, -1, !dbg !3871
  br i1 %32, label %33, label %35, !dbg !3873

33:                                               ; preds = %30
  store i32 1, ptr %0, align 4, !dbg !3874, !tbaa !1920
  %34 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3876
  store i32 %31, ptr %34, align 4, !dbg !3877, !tbaa !1047
  br label %57, !dbg !3878

35:                                               ; preds = %30
  %36 = tail call ptr @__errno_location() #43, !dbg !3879
  %37 = load i32, ptr %36, align 4, !dbg !3879, !tbaa !1038
  call void @llvm.dbg.value(metadata i1 poison, metadata !3862, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3870
  switch i32 %37, label %38 [
    i32 116, label %41
    i32 13, label %41
  ], !dbg !3880

38:                                               ; preds = %35
  store i32 4, ptr %0, align 4, !dbg !3881, !tbaa !1920
  %39 = load i32, ptr %36, align 4, !dbg !3884, !tbaa !1038
  %40 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3885
  store i32 %39, ptr %40, align 4, !dbg !3886, !tbaa !1047
  br label %57, !dbg !3887

41:                                               ; preds = %35, %35
  store i32 3, ptr %0, align 4, !dbg !3888, !tbaa !1920
  %42 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3889
  store i32 -1, ptr %42, align 4, !dbg !3890, !tbaa !1047
  br label %47, !dbg !3891

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !dbg !3892, !tbaa !1047
  %46 = icmp slt i32 %45, 0, !dbg !3894
  br i1 %46, label %47, label %57, !dbg !3891

47:                                               ; preds = %43, %41
  %48 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3895
  %49 = tail call i32 @fork() #40, !dbg !3896
  store i32 %49, ptr %48, align 4, !dbg !3898, !tbaa !1047
  %50 = icmp eq i32 %49, 0, !dbg !3899
  br i1 %50, label %57, label %51, !dbg !3901

51:                                               ; preds = %47
  %52 = icmp sgt i32 %49, 0, !dbg !3902
  br i1 %52, label %75, label %53, !dbg !3905

53:                                               ; preds = %51
  store i32 4, ptr %0, align 4, !dbg !3906, !tbaa !1920
  %54 = tail call ptr @__errno_location() #43, !dbg !3907
  %55 = load i32, ptr %54, align 4, !dbg !3907, !tbaa !1038
  store i32 %55, ptr %48, align 4, !dbg !3908, !tbaa !1047
  br label %57, !dbg !3909

56:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_save) #42, !dbg !3910
  unreachable, !dbg !3910

57:                                               ; preds = %27, %27, %27, %27, %43, %53, %47, %33, %38
  %58 = icmp slt i32 %28, 0, !dbg !3913
  br i1 %58, label %59, label %61, !dbg !3915

59:                                               ; preds = %57
  %60 = tail call i32 @chdir(ptr noundef %1) #40, !dbg !3916
  br label %63, !dbg !3915

61:                                               ; preds = %57
  %62 = tail call i32 @fchdir(i32 noundef %28) #40, !dbg !3917
  br label %63, !dbg !3915

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ], !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !3826, metadata !DIExpression()), !dbg !3830
  %65 = icmp eq i32 %64, 0, !dbg !3918
  br i1 %65, label %66, label %75, !dbg !3920

66:                                               ; preds = %63
  %67 = load i32, ptr %0, align 4, !dbg !3921, !tbaa !1920
  switch i32 %67, label %74 [
    i32 1, label %68
    i32 4, label %75
    i32 2, label %75
    i32 5, label %75
    i32 3, label %69
  ], !dbg !3922

68:                                               ; preds = %66
  store i32 2, ptr %0, align 4, !dbg !3923, !tbaa !1920
  br label %75, !dbg !3925

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3926
  %71 = load i32, ptr %70, align 4, !dbg !3926, !tbaa !1047
  %72 = icmp eq i32 %71, 0, !dbg !3926
  br i1 %72, label %75, label %73, !dbg !3929

73:                                               ; preds = %69
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1.92, i32 noundef 162, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #42, !dbg !3926
  unreachable, !dbg !3926

74:                                               ; preds = %66
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #42, !dbg !3930
  unreachable, !dbg !3930

75:                                               ; preds = %51, %24, %68, %66, %66, %66, %69, %63
  %76 = phi i32 [ %28, %69 ], [ %28, %66 ], [ %28, %66 ], [ %28, %66 ], [ %28, %68 ], [ %28, %63 ], [ %13, %24 ], [ %28, %51 ]
  %77 = phi i32 [ 0, %69 ], [ 0, %66 ], [ 0, %66 ], [ 0, %66 ], [ 0, %68 ], [ %64, %63 ], [ 0, %24 ], [ -2, %51 ], !dbg !3830
  %78 = phi ptr [ %3, %69 ], [ %3, %66 ], [ %3, %66 ], [ %3, %66 ], [ %3, %68 ], [ %3, %63 ], [ %3, %24 ], [ null, %51 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !3824, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !3826, metadata !DIExpression()), !dbg !3830
  %79 = icmp slt i32 %76, 0, !dbg !3933
  %80 = icmp ne ptr %78, null
  %81 = or i1 %79, %80, !dbg !3934
  br i1 %81, label %86, label %82, !dbg !3934

82:                                               ; preds = %75
  %83 = tail call ptr @__errno_location() #43, !dbg !3935
  %84 = load i32, ptr %83, align 4, !dbg !3935, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !3827, metadata !DIExpression()), !dbg !3936
  %85 = tail call i32 @close(i32 noundef %76) #40, !dbg !3937
  store i32 %84, ptr %83, align 4, !dbg !3938, !tbaa !1038
  br label %86, !dbg !3939

86:                                               ; preds = %20, %82, %75
  %87 = phi i32 [ %77, %82 ], [ %77, %75 ], [ -1, %20 ]
  ret i32 %87, !dbg !3940
}

; Function Attrs: nofree nounwind
declare !dbg !3941 i32 @fork() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !3944 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3948 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3951 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_restore(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3952 {
  %3 = alloca i32, align 4, !DIAssignID !3967
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3964, metadata !DIExpression(), metadata !3967, metadata ptr %3, metadata !DIExpression()), !dbg !3968
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3956, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3957, metadata !DIExpression()), !dbg !3969
  %4 = load i32, ptr %0, align 4, !dbg !3970, !tbaa !1920
  switch i32 %4, label %50 [
    i32 0, label %51
    i32 1, label %51
    i32 2, label %9
    i32 4, label %5
    i32 3, label %23
  ], !dbg !3971

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !dbg !3972, !tbaa !1047
  %8 = tail call ptr @__errno_location() #43, !dbg !3973
  br label %20, !dbg !3971

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3974
  %11 = load i32, ptr %10, align 4, !dbg !3975, !tbaa !1047
  %12 = tail call i32 @fchdir(i32 noundef %11) #40, !dbg !3976
  %13 = icmp eq i32 %12, 0, !dbg !3977
  br i1 %13, label %14, label %15, !dbg !3978

14:                                               ; preds = %9
  store i32 1, ptr %0, align 4, !dbg !3979, !tbaa !1920
  br label %51, !dbg !3981

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #43, !dbg !3982
  %17 = load i32, ptr %16, align 4, !dbg !3982, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3958, metadata !DIExpression()), !dbg !3983
  %18 = load i32, ptr %10, align 4, !dbg !3984, !tbaa !1047
  %19 = tail call i32 @close(i32 noundef %18) #40, !dbg !3985
  store i32 4, ptr %0, align 4, !dbg !3986, !tbaa !1920
  store i32 %17, ptr %10, align 4, !dbg !3987, !tbaa !1047
  br label %20, !dbg !3988

20:                                               ; preds = %5, %15
  %21 = phi ptr [ %8, %5 ], [ %16, %15 ], !dbg !3973
  %22 = phi i32 [ %7, %5 ], [ %17, %15 ], !dbg !3972
  store i32 %22, ptr %21, align 4, !dbg !3989, !tbaa !1038
  br label %51, !dbg !3990

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3991
  %25 = load i32, ptr %24, align 4, !dbg !3992, !tbaa !1047
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !3962, metadata !DIExpression()), !dbg !3993
  %26 = icmp eq i32 %25, 0, !dbg !3994
  br i1 %26, label %27, label %28, !dbg !3996

27:                                               ; preds = %23
  tail call void @_exit(i32 noundef %1) #42, !dbg !3997
  unreachable, !dbg !3997

28:                                               ; preds = %23
  %29 = icmp slt i32 %25, 1, !dbg !3998
  br i1 %29, label %51, label %30, !dbg !3999

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !4000
  br label %31, !dbg !4001

31:                                               ; preds = %34, %30
  %32 = call i32 @waitpid(i32 noundef %25, ptr noundef nonnull %3, i32 noundef 0) #40, !dbg !4002
  %33 = icmp slt i32 %32, 0, !dbg !4003
  br i1 %33, label %34, label %39, !dbg !4001

34:                                               ; preds = %31
  %35 = tail call ptr @__errno_location() #43, !dbg !4004
  %36 = load i32, ptr %35, align 4, !dbg !4004, !tbaa !1038
  %37 = icmp eq i32 %36, 4, !dbg !4004
  br i1 %37, label %31, label %38, !dbg !4007, !llvm.loop !4008

38:                                               ; preds = %34
  call void @__assert_fail(ptr noundef nonnull @.str.3.94, ptr noundef nonnull @.str.1.92, i32 noundef 223, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #42, !dbg !4004
  unreachable, !dbg !4004

39:                                               ; preds = %31
  store i32 -1, ptr %24, align 4, !dbg !4010, !tbaa !1047
  %40 = load i32, ptr %3, align 4, !dbg !4011, !tbaa !1038
  %41 = and i32 %40, 127, !dbg !4011
  %42 = icmp eq i32 %41, 0, !dbg !4011
  br i1 %42, label %46, label %43, !dbg !4013

43:                                               ; preds = %39
  %44 = call i32 @raise(i32 noundef %41) #40, !dbg !4014
  %45 = load i32, ptr %3, align 4, !dbg !4015, !tbaa !1038
  br label %46, !dbg !4014

46:                                               ; preds = %39, %43
  %47 = phi i32 [ %40, %39 ], [ %45, %43 ], !dbg !4015
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !4016
  br label %51

50:                                               ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #42, !dbg !4017
  unreachable, !dbg !4017

51:                                               ; preds = %14, %2, %2, %28, %46, %20
  %52 = phi i32 [ %49, %46 ], [ -1, %20 ], [ 0, %28 ], [ 0, %2 ], [ 0, %2 ], [ 0, %14 ], !dbg !3969
  ret i32 %52, !dbg !4020
}

declare !dbg !4021 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !4025 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @savewd_finish(ptr nocapture noundef %0) local_unnamed_addr #10 !dbg !4027 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4029, metadata !DIExpression()), !dbg !4030
  %2 = load i32, ptr %0, align 4, !dbg !4031, !tbaa !1920
  switch i32 %2, label %14 [
    i32 4, label %17
    i32 1, label %3
    i32 2, label %3
    i32 0, label %7
    i32 3, label %9
  ], !dbg !4032

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !4033
  %5 = load i32, ptr %4, align 4, !dbg !4035, !tbaa !1047
  %6 = tail call i32 @close(i32 noundef %5) #40, !dbg !4036
  br label %7, !dbg !4036

7:                                                ; preds = %1, %3
  %8 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !4037
  br label %15, !dbg !4038

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !4039
  %11 = load i32, ptr %10, align 4, !dbg !4039, !tbaa !1047
  %12 = icmp slt i32 %11, 0, !dbg !4039
  br i1 %12, label %15, label %13, !dbg !4042

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4039
  unreachable, !dbg !4039

14:                                               ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4043
  unreachable, !dbg !4043

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %10, %9 ]
  store i32 0, ptr %16, align 4, !dbg !4046, !tbaa !1047
  br label %17, !dbg !4047

17:                                               ; preds = %15, %1
  store i32 5, ptr %0, align 4, !dbg !4047, !tbaa !1920
  ret void, !dbg !4048
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_process_files(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4049 {
  %5 = alloca %struct.savewd, align 4, !DIAssignID !4077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4063, metadata !DIExpression(), metadata !4077, metadata ptr %5, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4056, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4057, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4058, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4059, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4060, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !4079
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3799, metadata !DIExpression()), !dbg !4080
  store i32 0, ptr %5, align 4, !dbg !4082, !tbaa !1920, !DIAssignID !4083
  call void @llvm.dbg.assign(metadata i32 0, metadata !4063, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4083, metadata ptr %5, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4061, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4078
  %6 = zext i32 %0 to i64, !dbg !4084
  br label %7, !dbg !4084

7:                                                ; preds = %11, %4
  %8 = phi i64 [ %12, %11 ], [ %6, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4061, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4078
  %9 = trunc i64 %8 to i32, !dbg !4086
  %10 = icmp sgt i32 %9, 0, !dbg !4086
  br i1 %10, label %11, label %57, !dbg !4088

11:                                               ; preds = %7
  %12 = add nsw i64 %8, -1, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !4061, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !4061, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4078
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !4090
  %15 = load ptr, ptr %14, align 8, !dbg !4090, !tbaa !969
  %16 = load i8, ptr %15, align 1, !dbg !4090, !tbaa !1047
  %17 = icmp eq i8 %16, 47, !dbg !4090
  br i1 %17, label %7, label %18, !dbg !4092, !llvm.loop !4093

18:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4060, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4062, metadata !DIExpression()), !dbg !4078
  %19 = icmp eq i32 %9, 1, !dbg !4095
  br i1 %19, label %57, label %20, !dbg !4096

20:                                               ; preds = %18
  %21 = trunc i64 %12 to i32
  %22 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1
  %23 = tail call i32 @llvm.smax.i32(i32 %21, i32 1), !dbg !4096
  %24 = zext nneg i32 %23 to i64, !dbg !4095
  br label %25, !dbg !4096

25:                                               ; preds = %20, %48
  %26 = phi i64 [ 0, %20 ], [ %40, %48 ]
  %27 = phi i32 [ 0, %20 ], [ %49, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !4060, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !4062, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !4097, metadata !DIExpression()), !dbg !4102
  %28 = load i32, ptr %5, align 4, !dbg !4104, !tbaa !1920
  %29 = icmp eq i32 %28, 3, !dbg !4105
  %30 = load i32, ptr %22, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false, !dbg !4106
  br i1 %32, label %38, label %33, !dbg !4106

33:                                               ; preds = %25
  %34 = getelementptr inbounds ptr, ptr %1, i64 %26, !dbg !4107
  %35 = load ptr, ptr %34, align 8, !dbg !4107, !tbaa !969
  %36 = call i32 %2(ptr noundef %35, ptr noundef nonnull %5, ptr noundef %3) #40, !dbg !4108
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4064, metadata !DIExpression()), !dbg !4109
  %37 = call i32 @llvm.smax.i32(i32 %27, i32 %36), !dbg !4110
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4062, metadata !DIExpression()), !dbg !4078
  br label %38, !dbg !4111

38:                                               ; preds = %25, %33
  %39 = phi i32 [ %37, %33 ], [ %27, %25 ], !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !4062, metadata !DIExpression()), !dbg !4078
  %40 = add nuw nsw i64 %26, 1, !dbg !4112
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40, !dbg !4112
  %42 = load ptr, ptr %41, align 8, !dbg !4112, !tbaa !969
  %43 = load i8, ptr %42, align 1, !dbg !4112, !tbaa !1047
  %44 = icmp eq i8 %43, 47, !dbg !4112
  br i1 %44, label %48, label %45, !dbg !4113

45:                                               ; preds = %38
  %46 = call i32 @savewd_restore(ptr noundef nonnull %5, i32 noundef %39), !dbg !4114
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4070, metadata !DIExpression()), !dbg !4115
  %47 = call i32 @llvm.smax.i32(i32 %39, i32 %46), !dbg !4116
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4062, metadata !DIExpression()), !dbg !4078
  br label %48, !dbg !4117

48:                                               ; preds = %38, %45
  %49 = phi i32 [ %39, %38 ], [ %47, %45 ], !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !4060, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !4062, metadata !DIExpression()), !dbg !4078
  %50 = icmp eq i64 %40, %24, !dbg !4095
  br i1 %50, label %51, label %25, !dbg !4096, !llvm.loop !4118

51:                                               ; preds = %48
  %52 = load i32, ptr %5, align 4, !dbg !4120, !tbaa !1920
  call void @llvm.dbg.value(metadata ptr %5, metadata !4029, metadata !DIExpression()), !dbg !4122
  switch i32 %52, label %66 [
    i32 4, label %71
    i32 1, label %53
    i32 2, label %53
    i32 0, label %57
    i32 3, label %61
  ], !dbg !4123

53:                                               ; preds = %51, %51
  %54 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4124
  %55 = load i32, ptr %54, align 4, !dbg !4125, !tbaa !1047
  %56 = call i32 @close(i32 noundef %55) #40, !dbg !4126
  br label %57, !dbg !4126

57:                                               ; preds = %7, %18, %53, %51
  %58 = phi i32 [ %23, %53 ], [ %23, %51 ], [ 0, %18 ], [ 0, %7 ]
  %59 = phi i32 [ %49, %53 ], [ %49, %51 ], [ 0, %18 ], [ 0, %7 ]
  %60 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4127
  br label %67, !dbg !4128

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4129
  %63 = load i32, ptr %62, align 4, !dbg !4129, !tbaa !1047
  %64 = icmp slt i32 %63, 0, !dbg !4129
  br i1 %64, label %67, label %65, !dbg !4130

65:                                               ; preds = %61
  call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4129
  unreachable, !dbg !4129

66:                                               ; preds = %51
  call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4131
  unreachable, !dbg !4131

67:                                               ; preds = %61, %57
  %68 = phi i32 [ %58, %57 ], [ %23, %61 ]
  %69 = phi i32 [ %59, %57 ], [ %49, %61 ]
  %70 = phi ptr [ %60, %57 ], [ %62, %61 ]
  store i32 0, ptr %70, align 4, !dbg !4132, !tbaa !1047
  br label %71, !dbg !4133

71:                                               ; preds = %51, %67
  %72 = phi i32 [ %23, %51 ], [ %68, %67 ]
  %73 = phi i32 [ %49, %51 ], [ %69, %67 ]
  store i32 5, ptr %5, align 4, !dbg !4133, !tbaa !1920, !DIAssignID !4134
  call void @llvm.dbg.assign(metadata i32 5, metadata !4063, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4134, metadata ptr %5, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4060, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !4062, metadata !DIExpression()), !dbg !4078
  %74 = icmp slt i32 %72, %0, !dbg !4135
  br i1 %74, label %75, label %86, !dbg !4136

75:                                               ; preds = %71
  %76 = zext nneg i32 %72 to i64, !dbg !4136
  br label %77, !dbg !4136

77:                                               ; preds = %75, %77
  %78 = phi i64 [ %76, %75 ], [ %84, %77 ]
  %79 = phi i32 [ %73, %75 ], [ %83, %77 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !4060, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !4062, metadata !DIExpression()), !dbg !4078
  %80 = getelementptr inbounds ptr, ptr %1, i64 %78, !dbg !4137
  %81 = load ptr, ptr %80, align 8, !dbg !4137, !tbaa !969
  %82 = call i32 %2(ptr noundef %81, ptr noundef nonnull %5, ptr noundef %3) #40, !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !4073, metadata !DIExpression()), !dbg !4139
  %83 = call i32 @llvm.smax.i32(i32 %79, i32 %82), !dbg !4140
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !4062, metadata !DIExpression()), !dbg !4078
  %84 = add nuw nsw i64 %78, 1, !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !4060, metadata !DIExpression()), !dbg !4078
  %85 = icmp eq i64 %84, %6, !dbg !4135
  br i1 %85, label %86, label %77, !dbg !4136, !llvm.loop !4142

86:                                               ; preds = %77, %71
  %87 = phi i32 [ %73, %71 ], [ %83, %77 ], !dbg !4078
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !4144
  ret i32 %87, !dbg !4145
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4146 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4185, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4186, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4187, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4188, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4189, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4190, metadata !DIExpression()), !dbg !4191
  %7 = icmp eq ptr %1, null, !dbg !4192
  br i1 %7, label %10, label %8, !dbg !4194

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4195
  br label %12, !dbg !4195

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.99, ptr noundef %2, ptr noundef %3) #40, !dbg !4196
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.3.101, i32 noundef 5) #40, !dbg !4197
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4197
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4198
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.5.103, i32 noundef 5) #40, !dbg !4199
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.104) #40, !dbg !4199
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4200
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
  ], !dbg !4201

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.7.105, i32 noundef 5) #40, !dbg !4202
  %21 = load ptr, ptr %4, align 8, !dbg !4202, !tbaa !969
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4202
  br label %147, !dbg !4204

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.8.106, i32 noundef 5) #40, !dbg !4205
  %25 = load ptr, ptr %4, align 8, !dbg !4205, !tbaa !969
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4205
  %27 = load ptr, ptr %26, align 8, !dbg !4205, !tbaa !969
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4205
  br label %147, !dbg !4206

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.9.107, i32 noundef 5) #40, !dbg !4207
  %31 = load ptr, ptr %4, align 8, !dbg !4207, !tbaa !969
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4207
  %33 = load ptr, ptr %32, align 8, !dbg !4207, !tbaa !969
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4207
  %35 = load ptr, ptr %34, align 8, !dbg !4207, !tbaa !969
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4207
  br label %147, !dbg !4208

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.10.108, i32 noundef 5) #40, !dbg !4209
  %39 = load ptr, ptr %4, align 8, !dbg !4209, !tbaa !969
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4209
  %41 = load ptr, ptr %40, align 8, !dbg !4209, !tbaa !969
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4209
  %43 = load ptr, ptr %42, align 8, !dbg !4209, !tbaa !969
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4209
  %45 = load ptr, ptr %44, align 8, !dbg !4209, !tbaa !969
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4209
  br label %147, !dbg !4210

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.11.109, i32 noundef 5) #40, !dbg !4211
  %49 = load ptr, ptr %4, align 8, !dbg !4211, !tbaa !969
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4211
  %51 = load ptr, ptr %50, align 8, !dbg !4211, !tbaa !969
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4211
  %53 = load ptr, ptr %52, align 8, !dbg !4211, !tbaa !969
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4211
  %55 = load ptr, ptr %54, align 8, !dbg !4211, !tbaa !969
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4211
  %57 = load ptr, ptr %56, align 8, !dbg !4211, !tbaa !969
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4211
  br label %147, !dbg !4212

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.12.110, i32 noundef 5) #40, !dbg !4213
  %61 = load ptr, ptr %4, align 8, !dbg !4213, !tbaa !969
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4213
  %63 = load ptr, ptr %62, align 8, !dbg !4213, !tbaa !969
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4213
  %65 = load ptr, ptr %64, align 8, !dbg !4213, !tbaa !969
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4213
  %67 = load ptr, ptr %66, align 8, !dbg !4213, !tbaa !969
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4213
  %69 = load ptr, ptr %68, align 8, !dbg !4213, !tbaa !969
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4213
  %71 = load ptr, ptr %70, align 8, !dbg !4213, !tbaa !969
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4213
  br label %147, !dbg !4214

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.13.111, i32 noundef 5) #40, !dbg !4215
  %75 = load ptr, ptr %4, align 8, !dbg !4215, !tbaa !969
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4215
  %77 = load ptr, ptr %76, align 8, !dbg !4215, !tbaa !969
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4215
  %79 = load ptr, ptr %78, align 8, !dbg !4215, !tbaa !969
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4215
  %81 = load ptr, ptr %80, align 8, !dbg !4215, !tbaa !969
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4215
  %83 = load ptr, ptr %82, align 8, !dbg !4215, !tbaa !969
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4215
  %85 = load ptr, ptr %84, align 8, !dbg !4215, !tbaa !969
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4215
  %87 = load ptr, ptr %86, align 8, !dbg !4215, !tbaa !969
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4215
  br label %147, !dbg !4216

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.14.112, i32 noundef 5) #40, !dbg !4217
  %91 = load ptr, ptr %4, align 8, !dbg !4217, !tbaa !969
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4217
  %93 = load ptr, ptr %92, align 8, !dbg !4217, !tbaa !969
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4217
  %95 = load ptr, ptr %94, align 8, !dbg !4217, !tbaa !969
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4217
  %97 = load ptr, ptr %96, align 8, !dbg !4217, !tbaa !969
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4217
  %99 = load ptr, ptr %98, align 8, !dbg !4217, !tbaa !969
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4217
  %101 = load ptr, ptr %100, align 8, !dbg !4217, !tbaa !969
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4217
  %103 = load ptr, ptr %102, align 8, !dbg !4217, !tbaa !969
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4217
  %105 = load ptr, ptr %104, align 8, !dbg !4217, !tbaa !969
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4217
  br label %147, !dbg !4218

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.15.113, i32 noundef 5) #40, !dbg !4219
  %109 = load ptr, ptr %4, align 8, !dbg !4219, !tbaa !969
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4219
  %111 = load ptr, ptr %110, align 8, !dbg !4219, !tbaa !969
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4219
  %113 = load ptr, ptr %112, align 8, !dbg !4219, !tbaa !969
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4219
  %115 = load ptr, ptr %114, align 8, !dbg !4219, !tbaa !969
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4219
  %117 = load ptr, ptr %116, align 8, !dbg !4219, !tbaa !969
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4219
  %119 = load ptr, ptr %118, align 8, !dbg !4219, !tbaa !969
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4219
  %121 = load ptr, ptr %120, align 8, !dbg !4219, !tbaa !969
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4219
  %123 = load ptr, ptr %122, align 8, !dbg !4219, !tbaa !969
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4219
  %125 = load ptr, ptr %124, align 8, !dbg !4219, !tbaa !969
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4219
  br label %147, !dbg !4220

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.16.114, i32 noundef 5) #40, !dbg !4221
  %129 = load ptr, ptr %4, align 8, !dbg !4221, !tbaa !969
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4221
  %131 = load ptr, ptr %130, align 8, !dbg !4221, !tbaa !969
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4221
  %133 = load ptr, ptr %132, align 8, !dbg !4221, !tbaa !969
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4221
  %135 = load ptr, ptr %134, align 8, !dbg !4221, !tbaa !969
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4221
  %137 = load ptr, ptr %136, align 8, !dbg !4221, !tbaa !969
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4221
  %139 = load ptr, ptr %138, align 8, !dbg !4221, !tbaa !969
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4221
  %141 = load ptr, ptr %140, align 8, !dbg !4221, !tbaa !969
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4221
  %143 = load ptr, ptr %142, align 8, !dbg !4221, !tbaa !969
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4221
  %145 = load ptr, ptr %144, align 8, !dbg !4221, !tbaa !969
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4221
  br label %147, !dbg !4222

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4223
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4224 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4228, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4229, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4230, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4231, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4232, metadata !DIExpression()), !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4233, metadata !DIExpression()), !dbg !4234
  br label %6, !dbg !4235

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4233, metadata !DIExpression()), !dbg !4234
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4238
  %9 = load ptr, ptr %8, align 8, !dbg !4238, !tbaa !969
  %10 = icmp eq ptr %9, null, !dbg !4240
  %11 = add i64 %7, 1, !dbg !4241
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4233, metadata !DIExpression()), !dbg !4234
  br i1 %10, label %12, label %6, !dbg !4240, !llvm.loop !4242

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4244
  ret void, !dbg !4245
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4246 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4265
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4263, metadata !DIExpression(), metadata !4265, metadata ptr %6, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4257, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4258, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4259, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4261, metadata !DIExpression()), !dbg !4266
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4267
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4262, metadata !DIExpression()), !dbg !4266
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4262, metadata !DIExpression()), !dbg !4266
  %10 = icmp ult i32 %9, 41, !dbg !4268
  br i1 %10, label %11, label %16, !dbg !4268

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4268
  %13 = zext nneg i32 %9 to i64, !dbg !4268
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4268
  %15 = add nuw nsw i32 %9, 8, !dbg !4268
  store i32 %15, ptr %4, align 8, !dbg !4268
  br label %19, !dbg !4268

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4268
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4268
  store ptr %18, ptr %7, align 8, !dbg !4268
  br label %19, !dbg !4268

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4268
  %22 = load ptr, ptr %21, align 8, !dbg !4268
  store ptr %22, ptr %6, align 16, !dbg !4271, !tbaa !969
  %23 = icmp eq ptr %22, null, !dbg !4272
  br i1 %23, label %128, label %24, !dbg !4273

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4262, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4262, metadata !DIExpression()), !dbg !4266
  %25 = icmp ult i32 %20, 41, !dbg !4268
  br i1 %25, label %29, label %26, !dbg !4268

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4268
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4268
  store ptr %28, ptr %7, align 8, !dbg !4268
  br label %34, !dbg !4268

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4268
  %31 = zext nneg i32 %20 to i64, !dbg !4268
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4268
  %33 = add nuw nsw i32 %20, 8, !dbg !4268
  store i32 %33, ptr %4, align 8, !dbg !4268
  br label %34, !dbg !4268

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4268
  %37 = load ptr, ptr %36, align 8, !dbg !4268
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4274
  store ptr %37, ptr %38, align 8, !dbg !4271, !tbaa !969
  %39 = icmp eq ptr %37, null, !dbg !4272
  br i1 %39, label %128, label %40, !dbg !4273

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4262, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4262, metadata !DIExpression()), !dbg !4266
  %41 = icmp ult i32 %35, 41, !dbg !4268
  br i1 %41, label %45, label %42, !dbg !4268

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4268
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4268
  store ptr %44, ptr %7, align 8, !dbg !4268
  br label %50, !dbg !4268

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4268
  %47 = zext nneg i32 %35 to i64, !dbg !4268
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4268
  %49 = add nuw nsw i32 %35, 8, !dbg !4268
  store i32 %49, ptr %4, align 8, !dbg !4268
  br label %50, !dbg !4268

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4268
  %53 = load ptr, ptr %52, align 8, !dbg !4268
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4274
  store ptr %53, ptr %54, align 16, !dbg !4271, !tbaa !969
  %55 = icmp eq ptr %53, null, !dbg !4272
  br i1 %55, label %128, label %56, !dbg !4273

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4262, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4262, metadata !DIExpression()), !dbg !4266
  %57 = icmp ult i32 %51, 41, !dbg !4268
  br i1 %57, label %61, label %58, !dbg !4268

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4268
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4268
  store ptr %60, ptr %7, align 8, !dbg !4268
  br label %66, !dbg !4268

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4268
  %63 = zext nneg i32 %51 to i64, !dbg !4268
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4268
  %65 = add nuw nsw i32 %51, 8, !dbg !4268
  store i32 %65, ptr %4, align 8, !dbg !4268
  br label %66, !dbg !4268

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4268
  %69 = load ptr, ptr %68, align 8, !dbg !4268
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4274
  store ptr %69, ptr %70, align 8, !dbg !4271, !tbaa !969
  %71 = icmp eq ptr %69, null, !dbg !4272
  br i1 %71, label %128, label %72, !dbg !4273

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4262, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4262, metadata !DIExpression()), !dbg !4266
  %73 = icmp ult i32 %67, 41, !dbg !4268
  br i1 %73, label %77, label %74, !dbg !4268

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4268
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4268
  store ptr %76, ptr %7, align 8, !dbg !4268
  br label %82, !dbg !4268

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4268
  %79 = zext nneg i32 %67 to i64, !dbg !4268
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4268
  %81 = add nuw nsw i32 %67, 8, !dbg !4268
  store i32 %81, ptr %4, align 8, !dbg !4268
  br label %82, !dbg !4268

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4268
  %85 = load ptr, ptr %84, align 8, !dbg !4268
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4274
  store ptr %85, ptr %86, align 16, !dbg !4271, !tbaa !969
  %87 = icmp eq ptr %85, null, !dbg !4272
  br i1 %87, label %128, label %88, !dbg !4273

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4262, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4262, metadata !DIExpression()), !dbg !4266
  %89 = icmp ult i32 %83, 41, !dbg !4268
  br i1 %89, label %93, label %90, !dbg !4268

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4268
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4268
  store ptr %92, ptr %7, align 8, !dbg !4268
  br label %98, !dbg !4268

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4268
  %95 = zext nneg i32 %83 to i64, !dbg !4268
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4268
  %97 = add nuw nsw i32 %83, 8, !dbg !4268
  store i32 %97, ptr %4, align 8, !dbg !4268
  br label %98, !dbg !4268

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4268
  %100 = load ptr, ptr %99, align 8, !dbg !4268
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4274
  store ptr %100, ptr %101, align 8, !dbg !4271, !tbaa !969
  %102 = icmp eq ptr %100, null, !dbg !4272
  br i1 %102, label %128, label %103, !dbg !4273

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4262, metadata !DIExpression()), !dbg !4266
  %104 = load ptr, ptr %7, align 8, !dbg !4268
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4268
  store ptr %105, ptr %7, align 8, !dbg !4268
  %106 = load ptr, ptr %104, align 8, !dbg !4268
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4274
  store ptr %106, ptr %107, align 16, !dbg !4271, !tbaa !969
  %108 = icmp eq ptr %106, null, !dbg !4272
  br i1 %108, label %128, label %109, !dbg !4273

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4262, metadata !DIExpression()), !dbg !4266
  %110 = load ptr, ptr %7, align 8, !dbg !4268
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4268
  store ptr %111, ptr %7, align 8, !dbg !4268
  %112 = load ptr, ptr %110, align 8, !dbg !4268
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4274
  store ptr %112, ptr %113, align 8, !dbg !4271, !tbaa !969
  %114 = icmp eq ptr %112, null, !dbg !4272
  br i1 %114, label %128, label %115, !dbg !4273

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4262, metadata !DIExpression()), !dbg !4266
  %116 = load ptr, ptr %7, align 8, !dbg !4268
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4268
  store ptr %117, ptr %7, align 8, !dbg !4268
  %118 = load ptr, ptr %116, align 8, !dbg !4268
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4274
  store ptr %118, ptr %119, align 16, !dbg !4271, !tbaa !969
  %120 = icmp eq ptr %118, null, !dbg !4272
  br i1 %120, label %128, label %121, !dbg !4273

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4262, metadata !DIExpression()), !dbg !4266
  %122 = load ptr, ptr %7, align 8, !dbg !4268
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4268
  store ptr %123, ptr %7, align 8, !dbg !4268
  %124 = load ptr, ptr %122, align 8, !dbg !4268
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4274
  store ptr %124, ptr %125, align 8, !dbg !4271, !tbaa !969
  %126 = icmp eq ptr %124, null, !dbg !4272
  %127 = select i1 %126, i64 9, i64 10, !dbg !4273
  br label %128, !dbg !4273

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4275
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4276
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4277
  ret void, !dbg !4277
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4278 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4286, metadata !DIExpression(), metadata !4291, metadata ptr %5, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4282, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4283, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4284, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4285, metadata !DIExpression()), !dbg !4292
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4293
  call void @llvm.va_start(ptr nonnull %5), !dbg !4294
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4295
  call void @llvm.va_end(ptr nonnull %5), !dbg !4296
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4297
  ret void, !dbg !4297
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4298 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4299, !tbaa !969
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %1), !dbg !4299
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.17.119, i32 noundef 5) #40, !dbg !4300
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.120) #40, !dbg !4300
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.19.121, i32 noundef 5) #40, !dbg !4301
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.122, ptr noundef nonnull @.str.21.123) #40, !dbg !4301
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.22.124, i32 noundef 5) #40, !dbg !4302
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.125) #40, !dbg !4302
  ret void, !dbg !4303
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4304 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4309, metadata !DIExpression()), !dbg !4312
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4310, metadata !DIExpression()), !dbg !4312
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %0, metadata !4313, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %1, metadata !4316, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %2, metadata !4317, metadata !DIExpression()), !dbg !4318
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4320
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4326
  %5 = icmp eq ptr %4, null, !dbg !4328
  br i1 %5, label %6, label %7, !dbg !4330

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4331
  unreachable, !dbg !4331

7:                                                ; preds = %3
  ret ptr %4, !dbg !4332
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4314 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4313, metadata !DIExpression()), !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4316, metadata !DIExpression()), !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4317, metadata !DIExpression()), !dbg !4333
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4334
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4335
  %5 = icmp eq ptr %4, null, !dbg !4337
  br i1 %5, label %6, label %7, !dbg !4338

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4339
  unreachable, !dbg !4339

7:                                                ; preds = %3
  ret ptr %4, !dbg !4340
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4341 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4345, metadata !DIExpression()), !dbg !4346
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4347
  call void @llvm.dbg.value(metadata ptr %2, metadata !4321, metadata !DIExpression()), !dbg !4348
  %3 = icmp eq ptr %2, null, !dbg !4350
  br i1 %3, label %4, label %5, !dbg !4351

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4352
  unreachable, !dbg !4352

5:                                                ; preds = %1
  ret ptr %2, !dbg !4353
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4354 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4355 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4359, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %0, metadata !4361, metadata !DIExpression()), !dbg !4365
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4367
  call void @llvm.dbg.value(metadata ptr %2, metadata !4321, metadata !DIExpression()), !dbg !4368
  %3 = icmp eq ptr %2, null, !dbg !4370
  br i1 %3, label %4, label %5, !dbg !4371

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4372
  unreachable, !dbg !4372

5:                                                ; preds = %1
  ret ptr %2, !dbg !4373
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4374 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4378, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i64 %0, metadata !4345, metadata !DIExpression()), !dbg !4380
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4382
  call void @llvm.dbg.value(metadata ptr %2, metadata !4321, metadata !DIExpression()), !dbg !4383
  %3 = icmp eq ptr %2, null, !dbg !4385
  br i1 %3, label %4, label %5, !dbg !4386

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4387
  unreachable, !dbg !4387

5:                                                ; preds = %1
  ret ptr %2, !dbg !4388
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4389 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4393, metadata !DIExpression()), !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4394, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata ptr %0, metadata !4396, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 %1, metadata !4400, metadata !DIExpression()), !dbg !4401
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4403
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4404
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4405
  %5 = icmp eq ptr %4, null, !dbg !4407
  br i1 %5, label %6, label %7, !dbg !4408

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4409
  unreachable, !dbg !4409

7:                                                ; preds = %2
  ret ptr %4, !dbg !4410
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4411 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4412 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4416, metadata !DIExpression()), !dbg !4418
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4417, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr %0, metadata !4419, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i64 %1, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata ptr %0, metadata !4396, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i64 %1, metadata !4400, metadata !DIExpression()), !dbg !4425
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4427
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4428
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4429
  %5 = icmp eq ptr %4, null, !dbg !4431
  br i1 %5, label %6, label %7, !dbg !4432

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4433
  unreachable, !dbg !4433

7:                                                ; preds = %2
  ret ptr %4, !dbg !4434
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4435 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4439, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4440, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %0, metadata !4443, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %2, metadata !4447, metadata !DIExpression()), !dbg !4448
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4450
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4451
  %5 = icmp eq ptr %4, null, !dbg !4453
  br i1 %5, label %6, label %7, !dbg !4454

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4455
  unreachable, !dbg !4455

7:                                                ; preds = %3
  ret ptr %4, !dbg !4456
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4457 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4461, metadata !DIExpression()), !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4462, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata ptr null, metadata !4313, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %0, metadata !4316, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i64 %1, metadata !4317, metadata !DIExpression()), !dbg !4464
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4466
  call void @llvm.dbg.value(metadata ptr %3, metadata !4321, metadata !DIExpression()), !dbg !4467
  %4 = icmp eq ptr %3, null, !dbg !4469
  br i1 %4, label %5, label %6, !dbg !4470

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4471
  unreachable, !dbg !4471

6:                                                ; preds = %2
  ret ptr %3, !dbg !4472
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4473 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4477, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata ptr null, metadata !4439, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %0, metadata !4440, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %1, metadata !4441, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata ptr null, metadata !4443, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %0, metadata !4446, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %1, metadata !4447, metadata !DIExpression()), !dbg !4482
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4484
  call void @llvm.dbg.value(metadata ptr %3, metadata !4321, metadata !DIExpression()), !dbg !4485
  %4 = icmp eq ptr %3, null, !dbg !4487
  br i1 %4, label %5, label %6, !dbg !4488

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4489
  unreachable, !dbg !4489

6:                                                ; preds = %2
  ret ptr %3, !dbg !4490
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4491 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4495, metadata !DIExpression()), !dbg !4497
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4496, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata ptr %0, metadata !880, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %1, metadata !881, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i64 1, metadata !882, metadata !DIExpression()), !dbg !4498
  %3 = load i64, ptr %1, align 8, !dbg !4500, !tbaa !3215
  call void @llvm.dbg.value(metadata i64 %3, metadata !883, metadata !DIExpression()), !dbg !4498
  %4 = icmp eq ptr %0, null, !dbg !4501
  br i1 %4, label %5, label %8, !dbg !4503

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4504
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4507
  br label %15, !dbg !4507

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4508
  %10 = add nuw i64 %9, 1, !dbg !4508
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4508
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4508
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4508
  call void @llvm.dbg.value(metadata i64 %13, metadata !883, metadata !DIExpression()), !dbg !4498
  br i1 %12, label %14, label %15, !dbg !4511

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4512
  unreachable, !dbg !4512

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4498
  call void @llvm.dbg.value(metadata i64 %16, metadata !883, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata ptr %0, metadata !4313, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i64 %16, metadata !4316, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i64 1, metadata !4317, metadata !DIExpression()), !dbg !4513
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4515
  call void @llvm.dbg.value(metadata ptr %17, metadata !4321, metadata !DIExpression()), !dbg !4516
  %18 = icmp eq ptr %17, null, !dbg !4518
  br i1 %18, label %19, label %20, !dbg !4519

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4520
  unreachable, !dbg !4520

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !880, metadata !DIExpression()), !dbg !4498
  store i64 %16, ptr %1, align 8, !dbg !4521, !tbaa !3215
  ret ptr %17, !dbg !4522
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !875 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !880, metadata !DIExpression()), !dbg !4523
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !881, metadata !DIExpression()), !dbg !4523
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !882, metadata !DIExpression()), !dbg !4523
  %4 = load i64, ptr %1, align 8, !dbg !4524, !tbaa !3215
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !883, metadata !DIExpression()), !dbg !4523
  %5 = icmp eq ptr %0, null, !dbg !4525
  br i1 %5, label %6, label %13, !dbg !4526

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4527
  br i1 %7, label %8, label %20, !dbg !4528

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4529
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !883, metadata !DIExpression()), !dbg !4523
  %10 = icmp ugt i64 %2, 128, !dbg !4531
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4532
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !883, metadata !DIExpression()), !dbg !4523
  br label %20, !dbg !4533

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4534
  %15 = add nuw i64 %14, 1, !dbg !4534
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4534
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4534
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4534
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !883, metadata !DIExpression()), !dbg !4523
  br i1 %17, label %19, label %20, !dbg !4535

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4536
  unreachable, !dbg !4536

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4523
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !883, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr %0, metadata !4313, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %21, metadata !4316, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %2, metadata !4317, metadata !DIExpression()), !dbg !4537
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %22, metadata !4321, metadata !DIExpression()), !dbg !4540
  %23 = icmp eq ptr %22, null, !dbg !4542
  br i1 %23, label %24, label %25, !dbg !4543

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4544
  unreachable, !dbg !4544

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !880, metadata !DIExpression()), !dbg !4523
  store i64 %21, ptr %1, align 8, !dbg !4545, !tbaa !3215
  ret ptr %22, !dbg !4546
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !887 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !896, metadata !DIExpression()), !dbg !4547
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !897, metadata !DIExpression()), !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !898, metadata !DIExpression()), !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !899, metadata !DIExpression()), !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !900, metadata !DIExpression()), !dbg !4547
  %6 = load i64, ptr %1, align 8, !dbg !4548, !tbaa !3215
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !901, metadata !DIExpression()), !dbg !4547
  %7 = ashr i64 %6, 1, !dbg !4549
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4549
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4549
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4549
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !902, metadata !DIExpression()), !dbg !4547
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4551
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !902, metadata !DIExpression()), !dbg !4547
  %12 = icmp sgt i64 %3, -1, !dbg !4552
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4554
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4554
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !902, metadata !DIExpression()), !dbg !4547
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4555
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4555
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4555
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !903, metadata !DIExpression()), !dbg !4547
  %18 = icmp slt i64 %17, 128, !dbg !4555
  %19 = select i1 %18, i64 128, i64 0, !dbg !4555
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4555
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !904, metadata !DIExpression()), !dbg !4547
  %21 = icmp eq i64 %20, 0, !dbg !4556
  br i1 %21, label %26, label %22, !dbg !4558

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4559
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !902, metadata !DIExpression()), !dbg !4547
  %24 = srem i64 %20, %4, !dbg !4561
  %25 = sub nsw i64 %20, %24, !dbg !4562
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !903, metadata !DIExpression()), !dbg !4547
  br label %26, !dbg !4563

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4547
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !903, metadata !DIExpression()), !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !902, metadata !DIExpression()), !dbg !4547
  %29 = icmp eq ptr %0, null, !dbg !4564
  br i1 %29, label %30, label %31, !dbg !4566

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4567, !tbaa !3215
  br label %31, !dbg !4568

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4569
  %33 = icmp slt i64 %32, %2, !dbg !4571
  br i1 %33, label %34, label %46, !dbg !4572

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4573
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4573
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4573
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !902, metadata !DIExpression()), !dbg !4547
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4574
  br i1 %40, label %45, label %41, !dbg !4574

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4575
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4575
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4575
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !903, metadata !DIExpression()), !dbg !4547
  br i1 %43, label %45, label %46, !dbg !4576

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !4577
  unreachable, !dbg !4577

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4547
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !903, metadata !DIExpression()), !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !902, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata ptr %0, metadata !4393, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i64 %48, metadata !4394, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata ptr %0, metadata !4396, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata i64 %48, metadata !4400, metadata !DIExpression()), !dbg !4580
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4582
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #48, !dbg !4583
  call void @llvm.dbg.value(metadata ptr %50, metadata !4321, metadata !DIExpression()), !dbg !4584
  %51 = icmp eq ptr %50, null, !dbg !4586
  br i1 %51, label %52, label %53, !dbg !4587

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !4588
  unreachable, !dbg !4588

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !896, metadata !DIExpression()), !dbg !4547
  store i64 %47, ptr %1, align 8, !dbg !4589, !tbaa !3215
  ret ptr %50, !dbg !4590
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4591 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4593, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %0, metadata !4595, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 1, metadata !4598, metadata !DIExpression()), !dbg !4599
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4601
  call void @llvm.dbg.value(metadata ptr %2, metadata !4321, metadata !DIExpression()), !dbg !4602
  %3 = icmp eq ptr %2, null, !dbg !4604
  br i1 %3, label %4, label %5, !dbg !4605

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4606
  unreachable, !dbg !4606

5:                                                ; preds = %1
  ret ptr %2, !dbg !4607
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4608 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4596 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4595, metadata !DIExpression()), !dbg !4609
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4598, metadata !DIExpression()), !dbg !4609
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4610
  call void @llvm.dbg.value(metadata ptr %3, metadata !4321, metadata !DIExpression()), !dbg !4611
  %4 = icmp eq ptr %3, null, !dbg !4613
  br i1 %4, label %5, label %6, !dbg !4614

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4615
  unreachable, !dbg !4615

6:                                                ; preds = %2
  ret ptr %3, !dbg !4616
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4617 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %0, metadata !4621, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 1, metadata !4624, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %0, metadata !4627, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 1, metadata !4630, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %0, metadata !4627, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 1, metadata !4630, metadata !DIExpression()), !dbg !4631
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4633
  call void @llvm.dbg.value(metadata ptr %2, metadata !4321, metadata !DIExpression()), !dbg !4634
  %3 = icmp eq ptr %2, null, !dbg !4636
  br i1 %3, label %4, label %5, !dbg !4637

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4638
  unreachable, !dbg !4638

5:                                                ; preds = %1
  ret ptr %2, !dbg !4639
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4622 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4621, metadata !DIExpression()), !dbg !4640
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4624, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %0, metadata !4627, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata i64 %1, metadata !4630, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata i64 %0, metadata !4627, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata i64 %1, metadata !4630, metadata !DIExpression()), !dbg !4641
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4643
  call void @llvm.dbg.value(metadata ptr %3, metadata !4321, metadata !DIExpression()), !dbg !4644
  %4 = icmp eq ptr %3, null, !dbg !4646
  br i1 %4, label %5, label %6, !dbg !4647

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4648
  unreachable, !dbg !4648

6:                                                ; preds = %2
  ret ptr %3, !dbg !4649
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4650 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4654, metadata !DIExpression()), !dbg !4656
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4655, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %1, metadata !4345, metadata !DIExpression()), !dbg !4657
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4659
  call void @llvm.dbg.value(metadata ptr %3, metadata !4321, metadata !DIExpression()), !dbg !4660
  %4 = icmp eq ptr %3, null, !dbg !4662
  br i1 %4, label %5, label %6, !dbg !4663

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4664
  unreachable, !dbg !4664

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4665, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4673
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4675
  ret ptr %3, !dbg !4676
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4681, metadata !DIExpression()), !dbg !4683
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata i64 %1, metadata !4359, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i64 %1, metadata !4361, metadata !DIExpression()), !dbg !4686
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4688
  call void @llvm.dbg.value(metadata ptr %3, metadata !4321, metadata !DIExpression()), !dbg !4689
  %4 = icmp eq ptr %3, null, !dbg !4691
  br i1 %4, label %5, label %6, !dbg !4692

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4693
  unreachable, !dbg !4693

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4665, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4694
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4696
  ret ptr %3, !dbg !4697
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4698 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4702, metadata !DIExpression()), !dbg !4705
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4703, metadata !DIExpression()), !dbg !4705
  %3 = add nsw i64 %1, 1, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %3, metadata !4359, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %3, metadata !4361, metadata !DIExpression()), !dbg !4709
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4711
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4712
  %5 = icmp eq ptr %4, null, !dbg !4714
  br i1 %5, label %6, label %7, !dbg !4715

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4716
  unreachable, !dbg !4716

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4704, metadata !DIExpression()), !dbg !4705
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4717
  store i8 0, ptr %8, align 1, !dbg !4718, !tbaa !1047
  call void @llvm.dbg.value(metadata ptr %4, metadata !4665, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4719
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4721
  ret ptr %4, !dbg !4722
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4723 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4725, metadata !DIExpression()), !dbg !4726
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4727
  %3 = add i64 %2, 1, !dbg !4728
  call void @llvm.dbg.value(metadata ptr %0, metadata !4654, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %3, metadata !4655, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %3, metadata !4345, metadata !DIExpression()), !dbg !4731
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4733
  call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4734
  %5 = icmp eq ptr %4, null, !dbg !4736
  br i1 %5, label %6, label %7, !dbg !4737

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4738
  unreachable, !dbg !4738

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4665, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %3, metadata !4672, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4741
  ret ptr %4, !dbg !4742
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4743 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4748, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4745, metadata !DIExpression()), !dbg !4749
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #40, !dbg !4748
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #40, !dbg !4748
  %3 = icmp eq i32 %1, 0, !dbg !4748
  tail call void @llvm.assume(i1 %3), !dbg !4748
  tail call void @abort() #42, !dbg !4750
  unreachable, !dbg !4750
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4751 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4789, metadata !DIExpression()), !dbg !4794
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4790, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4794
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4796, metadata !DIExpression()), !dbg !4799
  %3 = load i32, ptr %0, align 8, !dbg !4801, !tbaa !4802
  %4 = and i32 %3, 32, !dbg !4803
  %5 = icmp eq i32 %4, 0, !dbg !4803
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4792, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4794
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4804
  %7 = icmp eq i32 %6, 0, !dbg !4805
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4793, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4794
  br i1 %5, label %8, label %18, !dbg !4806

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4808
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4790, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4794
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4809
  %11 = xor i1 %7, true, !dbg !4809
  %12 = sext i1 %11 to i32, !dbg !4809
  br i1 %10, label %21, label %13, !dbg !4809

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4810
  %15 = load i32, ptr %14, align 4, !dbg !4810, !tbaa !1038
  %16 = icmp ne i32 %15, 9, !dbg !4811
  %17 = sext i1 %16 to i32, !dbg !4812
  br label %21, !dbg !4812

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4813

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4815
  store i32 0, ptr %20, align 4, !dbg !4817, !tbaa !1038
  br label %21, !dbg !4815

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4794
  ret i32 %22, !dbg !4818
}

; Function Attrs: nounwind
declare !dbg !4819 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4823 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4861, metadata !DIExpression()), !dbg !4865
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4862, metadata !DIExpression()), !dbg !4865
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4866
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4863, metadata !DIExpression()), !dbg !4865
  %3 = icmp slt i32 %2, 0, !dbg !4867
  br i1 %3, label %4, label %6, !dbg !4869

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4870
  br label %24, !dbg !4871

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4872
  %8 = icmp eq i32 %7, 0, !dbg !4872
  br i1 %8, label %13, label %9, !dbg !4874

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4875
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4876
  %12 = icmp eq i64 %11, -1, !dbg !4877
  br i1 %12, label %16, label %13, !dbg !4878

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4879
  %15 = icmp eq i32 %14, 0, !dbg !4879
  br i1 %15, label %16, label %18, !dbg !4880

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4862, metadata !DIExpression()), !dbg !4865
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4864, metadata !DIExpression()), !dbg !4865
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4881
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4864, metadata !DIExpression()), !dbg !4865
  br label %24, !dbg !4882

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4883
  %20 = load i32, ptr %19, align 4, !dbg !4883, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4862, metadata !DIExpression()), !dbg !4865
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4864, metadata !DIExpression()), !dbg !4865
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4881
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4864, metadata !DIExpression()), !dbg !4865
  %22 = icmp eq i32 %20, 0, !dbg !4884
  br i1 %22, label %24, label %23, !dbg !4882

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4886, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4864, metadata !DIExpression()), !dbg !4865
  br label %24, !dbg !4888

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4865
  ret i32 %25, !dbg !4889
}

; Function Attrs: nofree nounwind
declare !dbg !4890 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4891 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4892 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4893 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(ptr nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4896 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4916
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4903, metadata !DIExpression(), metadata !4916, metadata ptr %3, metadata !DIExpression()), !dbg !4917
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4900, metadata !DIExpression()), !dbg !4918
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4901, metadata !DIExpression()), !dbg !4918
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4902, metadata !DIExpression()), !dbg !4918
  %4 = and i32 %1, 64, !dbg !4919
  %5 = icmp eq i32 %4, 0, !dbg !4919
  br i1 %5, label %22, label %6, !dbg !4920

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !4921
  call void @llvm.va_start(ptr nonnull %3), !dbg !4922
  %7 = load i32, ptr %3, align 16, !dbg !4923
  %8 = icmp ult i32 %7, 41, !dbg !4923
  br i1 %8, label %9, label %15, !dbg !4923

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4923
  %11 = load ptr, ptr %10, align 16, !dbg !4923
  %12 = zext nneg i32 %7 to i64, !dbg !4923
  %13 = getelementptr i8, ptr %11, i64 %12, !dbg !4923
  %14 = add nuw nsw i32 %7, 8, !dbg !4923
  store i32 %14, ptr %3, align 16, !dbg !4923, !DIAssignID !4924
  call void @llvm.dbg.assign(metadata i32 %14, metadata !4903, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4924, metadata ptr %3, metadata !DIExpression()), !dbg !4917
  br label %19, !dbg !4923

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4923
  %17 = load ptr, ptr %16, align 8, !dbg !4923
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4923
  store ptr %18, ptr %16, align 8, !dbg !4923, !DIAssignID !4925
  call void @llvm.dbg.assign(metadata ptr %18, metadata !4903, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4925, metadata ptr %16, metadata !DIExpression()), !dbg !4917
  br label %19, !dbg !4923

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %13, %9 ], [ %17, %15 ], !dbg !4923
  %21 = load i32, ptr %20, align 4, !dbg !4923
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4902, metadata !DIExpression()), !dbg !4918
  call void @llvm.va_end(ptr nonnull %3), !dbg !4926
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !4927
  br label %22, !dbg !4928

22:                                               ; preds = %19, %2
  %23 = phi i32 [ %21, %19 ], [ 0, %2 ], !dbg !4918
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !4902, metadata !DIExpression()), !dbg !4918
  %24 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %23) #40, !dbg !4929
  %25 = call i32 @fd_safer(i32 noundef %24) #40, !dbg !4930
  ret i32 %25, !dbg !4931
}

; Function Attrs: nofree
declare !dbg !4932 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4971, metadata !DIExpression()), !dbg !4972
  %2 = icmp eq ptr %0, null, !dbg !4973
  br i1 %2, label %6, label %3, !dbg !4975

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4976
  %5 = icmp eq i32 %4, 0, !dbg !4976
  br i1 %5, label %6, label %8, !dbg !4977

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4978
  br label %16, !dbg !4979

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4980, metadata !DIExpression()), !dbg !4985
  %9 = load i32, ptr %0, align 8, !dbg !4987, !tbaa !4802
  %10 = and i32 %9, 256, !dbg !4989
  %11 = icmp eq i32 %10, 0, !dbg !4989
  br i1 %11, label %14, label %12, !dbg !4990

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4991
  br label %14, !dbg !4991

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4992
  br label %16, !dbg !4993

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4972
  ret i32 %17, !dbg !4994
}

; Function Attrs: nofree nounwind
declare !dbg !4995 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4996 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5035, metadata !DIExpression()), !dbg !5041
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5036, metadata !DIExpression()), !dbg !5041
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5037, metadata !DIExpression()), !dbg !5041
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5042
  %5 = load ptr, ptr %4, align 8, !dbg !5042, !tbaa !5043
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5044
  %7 = load ptr, ptr %6, align 8, !dbg !5044, !tbaa !5045
  %8 = icmp eq ptr %5, %7, !dbg !5046
  br i1 %8, label %9, label %27, !dbg !5047

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5048
  %11 = load ptr, ptr %10, align 8, !dbg !5048, !tbaa !1556
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5049
  %13 = load ptr, ptr %12, align 8, !dbg !5049, !tbaa !5050
  %14 = icmp eq ptr %11, %13, !dbg !5051
  br i1 %14, label %15, label %27, !dbg !5052

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5053
  %17 = load ptr, ptr %16, align 8, !dbg !5053, !tbaa !5054
  %18 = icmp eq ptr %17, null, !dbg !5055
  br i1 %18, label %19, label %27, !dbg !5056

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5057
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5058
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5038, metadata !DIExpression()), !dbg !5059
  %22 = icmp eq i64 %21, -1, !dbg !5060
  br i1 %22, label %29, label %23, !dbg !5062

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5063, !tbaa !4802
  %25 = and i32 %24, -17, !dbg !5063
  store i32 %25, ptr %0, align 8, !dbg !5063, !tbaa !4802
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5064
  store i64 %21, ptr %26, align 8, !dbg !5065, !tbaa !5066
  br label %29, !dbg !5067

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5068
  br label %29, !dbg !5069

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5041
  ret i32 %30, !dbg !5070
}

; Function Attrs: nofree nounwind
declare !dbg !5071 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5074 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5079, metadata !DIExpression()), !dbg !5084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5080, metadata !DIExpression()), !dbg !5084
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5081, metadata !DIExpression()), !dbg !5084
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5082, metadata !DIExpression()), !dbg !5084
  %5 = icmp eq ptr %1, null, !dbg !5085
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5087
  %7 = select i1 %5, ptr @.str.155, ptr %1, !dbg !5087
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5087
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5081, metadata !DIExpression()), !dbg !5084
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5080, metadata !DIExpression()), !dbg !5084
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5079, metadata !DIExpression()), !dbg !5084
  %9 = icmp eq ptr %3, null, !dbg !5088
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5090
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5082, metadata !DIExpression()), !dbg !5084
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !5091
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5083, metadata !DIExpression()), !dbg !5084
  %12 = icmp ult i64 %11, -3, !dbg !5092
  br i1 %12, label %13, label %17, !dbg !5094

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !5095
  %15 = icmp eq i32 %14, 0, !dbg !5095
  br i1 %15, label %16, label %29, !dbg !5096

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5097, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata ptr %10, metadata !5104, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32 0, metadata !5107, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i64 8, metadata !5108, metadata !DIExpression()), !dbg !5109
  store i64 0, ptr %10, align 1, !dbg !5111
  br label %29, !dbg !5112

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5113
  br i1 %18, label %19, label %20, !dbg !5115

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5116
  unreachable, !dbg !5116

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5117

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !5119
  br i1 %23, label %29, label %24, !dbg !5120

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5121
  br i1 %25, label %29, label %26, !dbg !5124

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5125, !tbaa !1047
  %28 = zext i8 %27 to i32, !dbg !5126
  store i32 %28, ptr %6, align 4, !dbg !5127, !tbaa !1038
  br label %29, !dbg !5128

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5084
  ret i64 %30, !dbg !5129
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5130 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nounwind uwtable
define dso_local i64 @mkancesdirs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5136 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5141, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5142, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5143, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5144, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr null, metadata !5145, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5146, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5147, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata i8 0, metadata !5149, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5147, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5158
  %5 = load i8, ptr %0, align 1, !dbg !5159, !tbaa !1047
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !5148, metadata !DIExpression()), !dbg !5158
  %6 = icmp eq i8 %5, 0, !dbg !5160
  br i1 %6, label %76, label %7, !dbg !5160

7:                                                ; preds = %4, %70
  %8 = phi i8 [ %71, %70 ], [ %5, %4 ]
  %9 = phi ptr [ %13, %70 ], [ %0, %4 ]
  %10 = phi i8 [ %74, %70 ], [ 0, %4 ]
  %11 = phi ptr [ %73, %70 ], [ null, %4 ]
  %12 = phi ptr [ %72, %70 ], [ %0, %4 ]
  %13 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !5161
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !5149, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !5145, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !5146, metadata !DIExpression()), !dbg !5158
  %14 = load i8, ptr %13, align 1, !dbg !5162, !tbaa !1047
  %15 = icmp eq i8 %14, 47, !dbg !5162
  %16 = icmp eq i8 %8, 47, !dbg !5163
  br i1 %15, label %17, label %19, !dbg !5164

17:                                               ; preds = %7
  %18 = select i1 %16, ptr %11, ptr %13, !dbg !5165
  br label %70, !dbg !5165

19:                                               ; preds = %7
  br i1 %16, label %20, label %70, !dbg !5167

20:                                               ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !5168
  %22 = icmp ne ptr %11, null
  %23 = select i1 %21, i1 %22, i1 false, !dbg !5169
  br i1 %23, label %24, label %66, !dbg !5169

24:                                               ; preds = %20
  %25 = ptrtoint ptr %11 to i64, !dbg !5170
  %26 = ptrtoint ptr %12 to i64, !dbg !5170
  %27 = sub i64 %25, %26, !dbg !5170
  %28 = icmp eq i64 %27, 1, !dbg !5171
  br i1 %28, label %29, label %33, !dbg !5172

29:                                               ; preds = %24
  %30 = load i8, ptr %12, align 1, !dbg !5173, !tbaa !1047
  %31 = icmp eq i8 %30, 46, !dbg !5174
  br i1 %31, label %66, label %32, !dbg !5175

32:                                               ; preds = %29
  store i8 0, ptr %11, align 1, !dbg !5176, !tbaa !1047
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5150, metadata !DIExpression()), !dbg !5177
  br label %42, !dbg !5178

33:                                               ; preds = %24
  store i8 0, ptr %11, align 1, !dbg !5176, !tbaa !1047
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5150, metadata !DIExpression()), !dbg !5177
  %34 = icmp eq i64 %27, 2, !dbg !5180
  br i1 %34, label %35, label %42, !dbg !5178

35:                                               ; preds = %33
  %36 = load i8, ptr %12, align 1, !dbg !5181, !tbaa !1047
  %37 = icmp eq i8 %36, 46, !dbg !5182
  br i1 %37, label %38, label %42, !dbg !5183

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !5184
  %40 = load i8, ptr %39, align 1, !dbg !5184, !tbaa !1047
  %41 = icmp eq i8 %40, 46, !dbg !5185
  br i1 %41, label %48, label %42, !dbg !5186

42:                                               ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(ptr noundef nonnull %0, ptr noundef %12, ptr noundef %3) #40, !dbg !5187
  %44 = icmp slt i32 %43, 0, !dbg !5189
  br i1 %44, label %45, label %48, !dbg !5190

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #43, !dbg !5191
  %47 = load i32, ptr %46, align 4, !dbg !5191, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5150, metadata !DIExpression()), !dbg !5177
  br label %48, !dbg !5192

48:                                               ; preds = %42, %38, %45
  %49 = phi i8 [ %10, %45 ], [ 0, %38 ], [ 1, %42 ], !dbg !5158
  %50 = phi i32 [ %47, %45 ], [ 0, %38 ], [ 0, %42 ], !dbg !5177
  tail call void @llvm.dbg.value(metadata i32 %50, metadata !5150, metadata !DIExpression()), !dbg !5177
  tail call void @llvm.dbg.value(metadata i8 %49, metadata !5149, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5156, metadata !DIExpression()), !dbg !5177
  %51 = and i8 %49, 1, !dbg !5193
  %52 = zext nneg i8 %51 to i32, !dbg !5195
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !5156, metadata !DIExpression()), !dbg !5177
  %53 = tail call i32 @savewd_chdir(ptr noundef %1, ptr noundef %12, i32 noundef %52, ptr noundef null) #40, !dbg !5196
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !5157, metadata !DIExpression()), !dbg !5177
  %54 = icmp eq i32 %53, -1, !dbg !5197
  br i1 %54, label %57, label %55, !dbg !5199

55:                                               ; preds = %48
  store i8 47, ptr %11, align 1, !dbg !5200, !tbaa !1047
  %56 = icmp eq i32 %53, 0, !dbg !5201
  br i1 %56, label %66, label %57, !dbg !5203

57:                                               ; preds = %48, %55
  %58 = icmp eq i32 %50, 0, !dbg !5204
  br i1 %58, label %64, label %59, !dbg !5207

59:                                               ; preds = %57
  %60 = tail call ptr @__errno_location() #43, !dbg !5208
  %61 = load i32, ptr %60, align 4, !dbg !5208, !tbaa !1038
  %62 = icmp eq i32 %61, 2, !dbg !5209
  br i1 %62, label %63, label %64, !dbg !5210

63:                                               ; preds = %59
  store i32 %50, ptr %60, align 4, !dbg !5211, !tbaa !1038
  br label %64, !dbg !5212

64:                                               ; preds = %57, %59, %63
  %65 = sext i32 %53 to i64, !dbg !5213
  br label %81

66:                                               ; preds = %20, %29, %55
  %67 = phi ptr [ %13, %55 ], [ %13, %29 ], [ %12, %20 ]
  %68 = phi i8 [ %49, %55 ], [ %10, %29 ], [ %10, %20 ]
  %69 = load i8, ptr %13, align 1, !dbg !5159, !tbaa !1047
  br label %70, !dbg !5159

70:                                               ; preds = %66, %17, %19
  %71 = phi i8 [ %69, %66 ], [ 47, %17 ], [ %14, %19 ], !dbg !5159
  %72 = phi ptr [ %67, %66 ], [ %12, %17 ], [ %12, %19 ], !dbg !5158
  %73 = phi ptr [ %11, %66 ], [ %18, %17 ], [ %11, %19 ], !dbg !5158
  %74 = phi i8 [ %68, %66 ], [ %10, %17 ], [ %10, %19 ], !dbg !5214
  tail call void @llvm.dbg.value(metadata i8 %74, metadata !5149, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !5145, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !5146, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !5147, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5158
  tail call void @llvm.dbg.value(metadata i8 %71, metadata !5148, metadata !DIExpression()), !dbg !5158
  %75 = icmp eq i8 %71, 0, !dbg !5160
  br i1 %75, label %76, label %7, !dbg !5160, !llvm.loop !5215

76:                                               ; preds = %70, %4
  %77 = phi ptr [ %0, %4 ], [ %72, %70 ], !dbg !5217
  %78 = ptrtoint ptr %77 to i64, !dbg !5218
  %79 = ptrtoint ptr %0 to i64, !dbg !5218
  %80 = sub i64 %78, %79, !dbg !5218
  br label %81, !dbg !5219

81:                                               ; preds = %64, %76
  %82 = phi i64 [ %65, %64 ], [ %80, %76 ], !dbg !5158
  ret i64 %82, !dbg !5220
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dirchownmod(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #10 !dbg !5221 {
  %8 = alloca %struct.stat, align 8, !DIAssignID !5269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5232, metadata !DIExpression(), metadata !5269, metadata ptr %8, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5225, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5226, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5227, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !5228, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !5229, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !5230, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !5231, metadata !DIExpression()), !dbg !5270
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #40, !dbg !5271
  %9 = icmp slt i32 %0, 0, !dbg !5272
  br i1 %9, label %10, label %12, !dbg !5273

10:                                               ; preds = %7
  %11 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %8) #40, !dbg !5274
  br label %14, !dbg !5273

12:                                               ; preds = %7
  %13 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %8) #40, !dbg !5275
  br label %14, !dbg !5273

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ], !dbg !5273
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !5254, metadata !DIExpression()), !dbg !5270
  %16 = icmp eq i32 %15, 0, !dbg !5276
  br i1 %16, label %17, label %74, !dbg !5277

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 3, !dbg !5278
  %19 = load i32, ptr %18, align 8, !dbg !5278, !tbaa !1974
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !5255, metadata !DIExpression()), !dbg !5279
  %20 = and i32 %19, 61440, !dbg !5280
  %21 = icmp eq i32 %20, 16384, !dbg !5280
  br i1 %21, label %24, label %22, !dbg !5281

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #43, !dbg !5282
  store i32 20, ptr %23, align 4, !dbg !5284, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5254, metadata !DIExpression()), !dbg !5270
  br label %74, !dbg !5285

24:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5258, metadata !DIExpression()), !dbg !5286
  %25 = icmp eq i32 %3, -1, !dbg !5287
  %26 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %3
  %29 = select i1 %25, i1 true, i1 %28, !dbg !5289
  br i1 %29, label %30, label %36, !dbg !5289

30:                                               ; preds = %24
  %31 = icmp eq i32 %4, -1, !dbg !5290
  %32 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, %4
  %35 = select i1 %31, i1 true, i1 %34, !dbg !5291
  br i1 %35, label %54, label %36, !dbg !5291

36:                                               ; preds = %30, %24
  %37 = icmp sgt i32 %0, -1, !dbg !5292
  br i1 %37, label %38, label %40, !dbg !5294

38:                                               ; preds = %36
  %39 = tail call i32 @fchown(i32 noundef %0, i32 noundef %3, i32 noundef %4) #40, !dbg !5295
  br label %46, !dbg !5294

40:                                               ; preds = %36
  %41 = icmp eq i32 %2, -1, !dbg !5296
  br i1 %41, label %44, label %42, !dbg !5297

42:                                               ; preds = %40
  %43 = tail call i32 @lchown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #40, !dbg !5298
  br label %46, !dbg !5297

44:                                               ; preds = %40
  %45 = tail call i32 @chown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #40, !dbg !5299
  br label %46, !dbg !5297

46:                                               ; preds = %42, %44, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ], [ %45, %44 ], !dbg !5294
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5254, metadata !DIExpression()), !dbg !5270
  %48 = icmp eq i32 %47, 0, !dbg !5300
  br i1 %48, label %49, label %74, !dbg !5302

49:                                               ; preds = %46
  %50 = and i32 %19, 73, !dbg !5303
  %51 = icmp eq i32 %50, 0, !dbg !5303
  %52 = and i32 %19, 3072
  %53 = select i1 %51, i32 0, i32 %52, !dbg !5304
  br label %54, !dbg !5304

54:                                               ; preds = %30, %49
  %55 = phi i32 [ %53, %49 ], [ 0, %30 ]
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5254, metadata !DIExpression()), !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !5258, metadata !DIExpression()), !dbg !5286
  %56 = xor i32 %19, %5, !dbg !5305
  %57 = or i32 %55, %56, !dbg !5306
  %58 = and i32 %57, %6, !dbg !5307
  %59 = icmp eq i32 %58, 0, !dbg !5307
  br i1 %59, label %74, label %60, !dbg !5308

60:                                               ; preds = %54
  %61 = and i32 %6, 4095, !dbg !5309
  %62 = xor i32 %61, 4095, !dbg !5309
  %63 = and i32 %62, %19, !dbg !5310
  %64 = or i32 %63, %5, !dbg !5311
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !5261, metadata !DIExpression()), !dbg !5312
  %65 = icmp sgt i32 %0, -1, !dbg !5313
  br i1 %65, label %66, label %68, !dbg !5314

66:                                               ; preds = %60
  %67 = tail call i32 @fchmod(i32 noundef %0, i32 noundef %64) #40, !dbg !5315
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !5254, metadata !DIExpression()), !dbg !5270
  br label %77, !dbg !5316

68:                                               ; preds = %60
  %69 = icmp eq i32 %2, -1, !dbg !5317
  br i1 %69, label %72, label %70, !dbg !5318

70:                                               ; preds = %68
  %71 = tail call i32 @lchmod(ptr noundef %1, i32 noundef %64) #40, !dbg !5319
  br label %86, !dbg !5318

72:                                               ; preds = %68
  %73 = tail call i32 @chmod(ptr noundef %1, i32 noundef %64) #40, !dbg !5320
  br label %86, !dbg !5318

74:                                               ; preds = %46, %22, %54, %14
  %75 = phi i32 [ %15, %14 ], [ -1, %22 ], [ 0, %54 ], [ %47, %46 ], !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !5254, metadata !DIExpression()), !dbg !5270
  %76 = icmp sgt i32 %0, -1, !dbg !5321
  br i1 %76, label %77, label %86, !dbg !5316

77:                                               ; preds = %66, %74
  %78 = phi i32 [ %67, %66 ], [ %75, %74 ]
  %79 = icmp eq i32 %78, 0, !dbg !5322
  br i1 %79, label %80, label %82, !dbg !5323

80:                                               ; preds = %77
  %81 = tail call i32 @close(i32 noundef %0) #40, !dbg !5324
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !5254, metadata !DIExpression()), !dbg !5270
  br label %86, !dbg !5325

82:                                               ; preds = %77
  %83 = tail call ptr @__errno_location() #43, !dbg !5326
  %84 = load i32, ptr %83, align 4, !dbg !5326, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !5264, metadata !DIExpression()), !dbg !5327
  %85 = tail call i32 @close(i32 noundef %0) #40, !dbg !5328
  store i32 %84, ptr %83, align 4, !dbg !5329, !tbaa !1038
  br label %86

86:                                               ; preds = %70, %72, %80, %82, %74
  %87 = phi i32 [ %81, %80 ], [ %78, %82 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], !dbg !5270
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !5254, metadata !DIExpression()), !dbg !5270
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #40, !dbg !5330
  ret i32 %87, !dbg !5331
}

; Function Attrs: nofree nounwind
declare !dbg !5332 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5336 i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5339 noundef i32 @lchown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5342 noundef i32 @chown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5343 i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5346 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5347 noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5350, metadata !DIExpression()), !dbg !5354
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5351, metadata !DIExpression()), !dbg !5354
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5352, metadata !DIExpression()), !dbg !5354
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5355
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5355
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5353, metadata !DIExpression()), !dbg !5354
  br i1 %5, label %6, label %8, !dbg !5357

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5358
  store i32 12, ptr %7, align 4, !dbg !5360, !tbaa !1038
  br label %12, !dbg !5361

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5355
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5353, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.value(metadata ptr %0, metadata !5362, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.value(metadata i64 %9, metadata !5365, metadata !DIExpression()), !dbg !5366
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5368
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #48, !dbg !5369
  br label %12, !dbg !5370

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5354
  ret ptr %13, !dbg !5371
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5372 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5374, metadata !DIExpression()), !dbg !5379
  %2 = icmp ult i32 %0, 3, !dbg !5380
  br i1 %2, label %3, label %8, !dbg !5380

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #40, !dbg !5381
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !5375, metadata !DIExpression()), !dbg !5382
  %5 = tail call ptr @__errno_location() #43, !dbg !5383
  %6 = load i32, ptr %5, align 4, !dbg !5383, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !5378, metadata !DIExpression()), !dbg !5382
  %7 = tail call i32 @close(i32 noundef %0) #40, !dbg !5384
  store i32 %6, ptr %5, align 4, !dbg !5385, !tbaa !1038
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !5374, metadata !DIExpression()), !dbg !5379
  br label %8, !dbg !5386

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !5374, metadata !DIExpression()), !dbg !5379
  ret i32 %9, !dbg !5387
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5388 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5393, metadata !DIExpression(), metadata !5397, metadata ptr %2, metadata !DIExpression()), !dbg !5398
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5392, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5399
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5400
  %4 = icmp eq i32 %3, 0, !dbg !5400
  br i1 %4, label %5, label %12, !dbg !5402

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5403, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.value(metadata !1005, metadata !5406, metadata !DIExpression()), !dbg !5407
  %6 = load i16, ptr %2, align 16, !dbg !5410
  %7 = icmp eq i16 %6, 67, !dbg !5410
  br i1 %7, label %11, label %8, !dbg !5411

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5403, metadata !DIExpression()), !dbg !5412
  call void @llvm.dbg.value(metadata ptr @.str.1.166, metadata !5406, metadata !DIExpression()), !dbg !5412
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.166, i64 6), !dbg !5414
  %10 = icmp eq i32 %9, 0, !dbg !5415
  br i1 %10, label %11, label %12, !dbg !5416

11:                                               ; preds = %8, %5
  br label %12, !dbg !5417

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5398
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5418
  ret i1 %13, !dbg !5418
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5419 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5423, metadata !DIExpression()), !dbg !5426
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5424, metadata !DIExpression()), !dbg !5426
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5425, metadata !DIExpression()), !dbg !5426
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5427
  ret i32 %4, !dbg !5428
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5429 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5433, metadata !DIExpression()), !dbg !5434
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5435
  ret ptr %2, !dbg !5436
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5437 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5439, metadata !DIExpression()), !dbg !5441
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5442
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5440, metadata !DIExpression()), !dbg !5441
  ret ptr %2, !dbg !5443
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5444 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5446, metadata !DIExpression()), !dbg !5453
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5447, metadata !DIExpression()), !dbg !5453
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5448, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.value(metadata i32 %0, metadata !5439, metadata !DIExpression()), !dbg !5454
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5456
  call void @llvm.dbg.value(metadata ptr %4, metadata !5440, metadata !DIExpression()), !dbg !5454
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5449, metadata !DIExpression()), !dbg !5453
  %5 = icmp eq ptr %4, null, !dbg !5457
  br i1 %5, label %6, label %9, !dbg !5458

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5459
  br i1 %7, label %19, label %8, !dbg !5462

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5463, !tbaa !1047
  br label %19, !dbg !5464

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5465
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5450, metadata !DIExpression()), !dbg !5466
  %11 = icmp ult i64 %10, %2, !dbg !5467
  br i1 %11, label %12, label %14, !dbg !5469

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5470
  call void @llvm.dbg.value(metadata ptr %1, metadata !5472, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.value(metadata ptr %4, metadata !5475, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.value(metadata i64 %13, metadata !5476, metadata !DIExpression()), !dbg !5477
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5479
  br label %19, !dbg !5480

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5481
  br i1 %15, label %19, label %16, !dbg !5484

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5485
  call void @llvm.dbg.value(metadata ptr %1, metadata !5472, metadata !DIExpression()), !dbg !5487
  call void @llvm.dbg.value(metadata ptr %4, metadata !5475, metadata !DIExpression()), !dbg !5487
  call void @llvm.dbg.value(metadata i64 %17, metadata !5476, metadata !DIExpression()), !dbg !5487
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5489
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5490
  store i8 0, ptr %18, align 1, !dbg !5491, !tbaa !1047
  br label %19, !dbg !5492

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5493
  ret i32 %20, !dbg !5494
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5495 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5497, metadata !DIExpression()), !dbg !5498
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #40, !dbg !5499
  ret i32 %2, !dbg !5500
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !5501 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !5527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5505, metadata !DIExpression(), metadata !5527, metadata ptr %3, metadata !DIExpression()), !dbg !5528
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5503, metadata !DIExpression()), !dbg !5528
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !5504, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !5529
  call void @llvm.va_start(ptr nonnull %3), !dbg !5530
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5515, metadata !DIExpression()), !dbg !5528
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
  ], !dbg !5531

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !5532
  %6 = icmp ult i32 %5, 41, !dbg !5532
  br i1 %6, label %7, label %13, !dbg !5532

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5532
  %9 = load ptr, ptr %8, align 16, !dbg !5532
  %10 = zext nneg i32 %5 to i64, !dbg !5532
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !5532
  %12 = add nuw nsw i32 %5, 8, !dbg !5532
  store i32 %12, ptr %3, align 16, !dbg !5532, !DIAssignID !5533
  call void @llvm.dbg.assign(metadata i32 %12, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !5533, metadata ptr %3, metadata !DIExpression()), !dbg !5528
  br label %17, !dbg !5532

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5532
  %15 = load ptr, ptr %14, align 8, !dbg !5532
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !5532
  store ptr %16, ptr %14, align 8, !dbg !5532, !DIAssignID !5534
  call void @llvm.dbg.assign(metadata ptr %16, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !5534, metadata ptr %14, metadata !DIExpression()), !dbg !5528
  br label %17, !dbg !5532

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !5532
  %19 = load i32, ptr %18, align 4, !dbg !5532
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !5516, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.value(metadata i32 %0, metadata !5536, metadata !DIExpression()), !dbg !5541
  call void @llvm.dbg.value(metadata i32 %19, metadata !5539, metadata !DIExpression()), !dbg !5541
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #40, !dbg !5543
  call void @llvm.dbg.value(metadata i32 %20, metadata !5540, metadata !DIExpression()), !dbg !5541
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !5515, metadata !DIExpression()), !dbg !5528
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !5544
  %23 = icmp ult i32 %22, 41, !dbg !5544
  br i1 %23, label %24, label %30, !dbg !5544

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5544
  %26 = load ptr, ptr %25, align 16, !dbg !5544
  %27 = zext nneg i32 %22 to i64, !dbg !5544
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !5544
  %29 = add nuw nsw i32 %22, 8, !dbg !5544
  store i32 %29, ptr %3, align 16, !dbg !5544, !DIAssignID !5545
  call void @llvm.dbg.assign(metadata i32 %29, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !5545, metadata ptr %3, metadata !DIExpression()), !dbg !5528
  br label %34, !dbg !5544

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5544
  %32 = load ptr, ptr %31, align 8, !dbg !5544
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !5544
  store ptr %33, ptr %31, align 8, !dbg !5544, !DIAssignID !5546
  call void @llvm.dbg.assign(metadata ptr %33, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !5546, metadata ptr %31, metadata !DIExpression()), !dbg !5528
  br label %34, !dbg !5544

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !5544
  %36 = load i32, ptr %35, align 4, !dbg !5544
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !5519, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !5548
  call void @llvm.dbg.value(metadata i32 %36, metadata !808, metadata !DIExpression()), !dbg !5548
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5550, !tbaa !1038
  %38 = icmp sgt i32 %37, -1, !dbg !5552
  br i1 %38, label %39, label %51, !dbg !5553

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #40, !dbg !5554
  call void @llvm.dbg.value(metadata i32 %40, metadata !809, metadata !DIExpression()), !dbg !5548
  %41 = icmp sgt i32 %40, -1, !dbg !5556
  br i1 %41, label %46, label %42, !dbg !5558

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #43, !dbg !5559
  %44 = load i32, ptr %43, align 4, !dbg !5559, !tbaa !1038
  %45 = icmp eq i32 %44, 22, !dbg !5560
  br i1 %45, label %47, label %46, !dbg !5561

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5562, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %40, metadata !809, metadata !DIExpression()), !dbg !5548
  br label %107, !dbg !5564

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !5536, metadata !DIExpression()), !dbg !5565
  call void @llvm.dbg.value(metadata i32 %36, metadata !5539, metadata !DIExpression()), !dbg !5565
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !5568
  call void @llvm.dbg.value(metadata i32 %48, metadata !5540, metadata !DIExpression()), !dbg !5565
  call void @llvm.dbg.value(metadata i32 %48, metadata !809, metadata !DIExpression()), !dbg !5548
  %49 = icmp sgt i32 %48, -1, !dbg !5569
  br i1 %49, label %50, label %107, !dbg !5571

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5572, !tbaa !1038
  br label %55, !dbg !5573

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !5536, metadata !DIExpression()), !dbg !5574
  call void @llvm.dbg.value(metadata i32 %36, metadata !5539, metadata !DIExpression()), !dbg !5574
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !5576
  call void @llvm.dbg.value(metadata i32 %52, metadata !5540, metadata !DIExpression()), !dbg !5574
  call void @llvm.dbg.value(metadata i32 %52, metadata !809, metadata !DIExpression()), !dbg !5548
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !5577
  call void @llvm.dbg.value(metadata i32 %57, metadata !809, metadata !DIExpression()), !dbg !5548
  %58 = icmp sgt i32 %57, -1, !dbg !5578
  %59 = select i1 %58, i1 %56, i1 false, !dbg !5564
  br i1 %59, label %60, label %107, !dbg !5564

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #40, !dbg !5579
  call void @llvm.dbg.value(metadata i32 %61, metadata !810, metadata !DIExpression()), !dbg !5580
  %62 = icmp slt i32 %61, 0, !dbg !5581
  br i1 %62, label %67, label %63, !dbg !5582

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !5583
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #40, !dbg !5584
  %66 = icmp eq i32 %65, -1, !dbg !5585
  br i1 %66, label %67, label %107, !dbg !5586

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #43, !dbg !5587
  %69 = load i32, ptr %68, align 4, !dbg !5587, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 %69, metadata !813, metadata !DIExpression()), !dbg !5588
  %70 = call i32 @close(i32 noundef %57) #40, !dbg !5589
  store i32 %69, ptr %68, align 4, !dbg !5590, !tbaa !1038
  call void @llvm.dbg.value(metadata i32 -1, metadata !809, metadata !DIExpression()), !dbg !5548
  br label %107, !dbg !5591

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !5592
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !5515, metadata !DIExpression()), !dbg !5528
  br label %107, !dbg !5593

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !5594
  %75 = icmp ult i32 %74, 41, !dbg !5594
  br i1 %75, label %76, label %82, !dbg !5594

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5594
  %78 = load ptr, ptr %77, align 16, !dbg !5594
  %79 = zext nneg i32 %74 to i64, !dbg !5594
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !5594
  %81 = add nuw nsw i32 %74, 8, !dbg !5594
  store i32 %81, ptr %3, align 16, !dbg !5594, !DIAssignID !5595
  call void @llvm.dbg.assign(metadata i32 %81, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !5595, metadata ptr %3, metadata !DIExpression()), !dbg !5528
  br label %86, !dbg !5594

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5594
  %84 = load ptr, ptr %83, align 8, !dbg !5594
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !5594
  store ptr %85, ptr %83, align 8, !dbg !5594, !DIAssignID !5596
  call void @llvm.dbg.assign(metadata ptr %85, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !5596, metadata ptr %83, metadata !DIExpression()), !dbg !5528
  br label %86, !dbg !5594

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !5594
  %88 = load i32, ptr %87, align 4, !dbg !5594
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !5521, metadata !DIExpression()), !dbg !5597
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #40, !dbg !5598
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !5515, metadata !DIExpression()), !dbg !5528
  br label %107, !dbg !5599

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !5600
  %92 = icmp ult i32 %91, 41, !dbg !5600
  br i1 %92, label %93, label %99, !dbg !5600

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5600
  %95 = load ptr, ptr %94, align 16, !dbg !5600
  %96 = zext nneg i32 %91 to i64, !dbg !5600
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !5600
  %98 = add nuw nsw i32 %91, 8, !dbg !5600
  store i32 %98, ptr %3, align 16, !dbg !5600, !DIAssignID !5601
  call void @llvm.dbg.assign(metadata i32 %98, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !5601, metadata ptr %3, metadata !DIExpression()), !dbg !5528
  br label %103, !dbg !5600

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5600
  %101 = load ptr, ptr %100, align 8, !dbg !5600
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !5600
  store ptr %102, ptr %100, align 8, !dbg !5600, !DIAssignID !5602
  call void @llvm.dbg.assign(metadata ptr %102, metadata !5505, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !5602, metadata ptr %100, metadata !DIExpression()), !dbg !5528
  br label %103, !dbg !5600

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !5600
  %105 = load ptr, ptr %104, align 8, !dbg !5600
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !5525, metadata !DIExpression()), !dbg !5603
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #40, !dbg !5604
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !5515, metadata !DIExpression()), !dbg !5528
  br label %107, !dbg !5605

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !5606
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !5515, metadata !DIExpression()), !dbg !5528
  call void @llvm.va_end(ptr nonnull %3), !dbg !5607
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !5608
  ret i32 %108, !dbg !5609
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
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }
attributes #48 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!76, !816, !819, !416, !420, !435, !766, !821, !823, !842, !502, !516, !567, !851, !864, !758, !871, !906, !908, !910, !912, !914, !916, !782, !918, !931, !936, !938, !940, !944, !946, !948, !804}
!llvm.ident = !{!950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950, !950}
!llvm.module.flags = !{!951, !952, !953, !954, !955, !956, !957}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mkdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d793d15b84a01608d40780cfd3f61f54")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 36)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 58)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 75)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1136, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 142)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 69)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 792, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 99)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 127)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 50)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 62)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 10)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 24)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !19, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "longopts", scope: !76, file: !2, line: 39, type: !398, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/mkdir.o -MD -MP -MF src/.deps/mkdir.Tpo -c src/mkdir.c -o src/.mkdir.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !136, globals: !150, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78, !84, !107, !122}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 337, baseType: !80, size: 32, elements: !81)
!79 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !{!82, !83}
!82 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!83 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !86, file: !85, line: 45, baseType: !99, size: 32, elements: !100)
!85 = !DIFile(filename: "./lib/savewd.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ad4dd1c19e06c974b5c544edb9d47f86")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !85, line: 42, size: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !86, file: !85, line: 73, baseType: !84, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !85, line: 81, baseType: !90, size: 32, offset: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 76, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !90, file: !85, line: 78, baseType: !80, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !90, file: !85, line: 79, baseType: !80, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !90, file: !85, line: 80, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !96, line: 97, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !98, line: 154, baseType: !80)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !{!101, !102, !103, !104, !105, !106}
!101 = !DIEnumerator(name: "INITIAL_STATE", value: 0)
!102 = !DIEnumerator(name: "FD_STATE", value: 1)
!103 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2)
!104 = !DIEnumerator(name: "FORKING_STATE", value: 3)
!105 = !DIEnumerator(name: "ERROR_STATE", value: 4)
!106 = !DIEnumerator(name: "FINAL_STATE", value: 5)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 46, baseType: !99, size: 32, elements: !109)
!108 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!110 = !DIEnumerator(name: "_ISupper", value: 256)
!111 = !DIEnumerator(name: "_ISlower", value: 512)
!112 = !DIEnumerator(name: "_ISalpha", value: 1024)
!113 = !DIEnumerator(name: "_ISdigit", value: 2048)
!114 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!115 = !DIEnumerator(name: "_ISspace", value: 8192)
!116 = !DIEnumerator(name: "_ISprint", value: 16384)
!117 = !DIEnumerator(name: "_ISgraph", value: 32768)
!118 = !DIEnumerator(name: "_ISblank", value: 1)
!119 = !DIEnumerator(name: "_IScntrl", value: 2)
!120 = !DIEnumerator(name: "_ISpunct", value: 4)
!121 = !DIEnumerator(name: "_ISalnum", value: 8)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !123, line: 42, baseType: !99, size: 32, elements: !124)
!123 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!125 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!126 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!127 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!128 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!129 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!130 = !DIEnumerator(name: "c_quoting_style", value: 5)
!131 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!132 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!133 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!134 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!135 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!136 = !{!137, !138, !80, !139, !140, !143, !145, !146, !148}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 18, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !96, line: 79, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !98, line: 146, baseType: !99)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !96, line: 64, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !98, line: 147, baseType: !99)
!150 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !151, !156, !161, !166, !171, !173, !175, !177, !179, !261, !266, !268, !273, !275, !280, !282, !284, !289, !291, !293, !295, !300, !305, !307, !309, !311, !313, !315, !317, !322, !327, !332, !337, !339, !341, !343, !345, !347, !352, !354, !356, !361, !366, !371, !376, !378, !380, !382, !384, !386, !74, !388, !393}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 21)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 73)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 14)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 16)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !168, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !49, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !168, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !79, line: 736, type: !24, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !181, file: !79, line: 575, type: !80, isLocal: true, isDefinition: true)
!181 = distinct !DISubprogram(name: "oputs_", scope: !79, file: !79, line: 573, type: !182, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !184)
!182 = !DISubroutineType(cc: DW_CC_nocall, types: !183)
!183 = !{null, !143, !143}
!184 = !{!185, !186, !187, !190, !192, !193, !194, !198, !199, !200, !201, !203, !255, !256, !257, !259, !260}
!185 = !DILocalVariable(name: "program", arg: 1, scope: !181, file: !79, line: 573, type: !143)
!186 = !DILocalVariable(name: "option", arg: 2, scope: !181, file: !79, line: 573, type: !143)
!187 = !DILocalVariable(name: "term", scope: !188, file: !79, line: 585, type: !143)
!188 = distinct !DILexicalBlock(scope: !189, file: !79, line: 582, column: 5)
!189 = distinct !DILexicalBlock(scope: !181, file: !79, line: 581, column: 7)
!190 = !DILocalVariable(name: "double_space", scope: !181, file: !79, line: 594, type: !191)
!191 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!192 = !DILocalVariable(name: "first_word", scope: !181, file: !79, line: 595, type: !143)
!193 = !DILocalVariable(name: "option_text", scope: !181, file: !79, line: 596, type: !143)
!194 = !DILocalVariable(name: "s", scope: !195, file: !79, line: 608, type: !143)
!195 = distinct !DILexicalBlock(scope: !196, file: !79, line: 605, column: 5)
!196 = distinct !DILexicalBlock(scope: !197, file: !79, line: 604, column: 12)
!197 = distinct !DILexicalBlock(scope: !181, file: !79, line: 597, column: 7)
!198 = !DILocalVariable(name: "spaces", scope: !195, file: !79, line: 609, type: !140)
!199 = !DILocalVariable(name: "anchor_len", scope: !181, file: !79, line: 620, type: !140)
!200 = !DILocalVariable(name: "desc_text", scope: !181, file: !79, line: 625, type: !143)
!201 = !DILocalVariable(name: "__ptr", scope: !202, file: !79, line: 644, type: !143)
!202 = distinct !DILexicalBlock(scope: !181, file: !79, line: 644, column: 3)
!203 = !DILocalVariable(name: "__stream", scope: !202, file: !79, line: 644, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !207)
!206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !209)
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !225, !227, !228, !229, !232, !233, !235, !236, !239, !241, !244, !247, !248, !249, !250, !251}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !207, file: !208, line: 51, baseType: !80, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !207, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !207, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !207, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !207, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !207, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !207, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !207, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !207, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !207, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !207, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !207, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !207, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !208, line: 36, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !207, file: !208, line: 70, baseType: !226, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !207, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !207, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !207, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 152, baseType: !231)
!231 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !207, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !207, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!234 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !207, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !207, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !208, line: 43, baseType: null)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !207, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 153, baseType: !231)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !207, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !208, line: 37, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !207, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !208, line: 38, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !207, file: !208, line: 93, baseType: !226, size: 64, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !207, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !207, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !207, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !207, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 20)
!255 = !DILocalVariable(name: "__cnt", scope: !202, file: !79, line: 644, type: !140)
!256 = !DILocalVariable(name: "url_program", scope: !181, file: !79, line: 648, type: !143)
!257 = !DILocalVariable(name: "__ptr", scope: !258, file: !79, line: 686, type: !143)
!258 = distinct !DILexicalBlock(scope: !181, file: !79, line: 686, column: 3)
!259 = !DILocalVariable(name: "__stream", scope: !258, file: !79, line: 686, type: !204)
!260 = !DILocalVariable(name: "__cnt", scope: !258, file: !79, line: 686, type: !140)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !79, line: 585, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 5)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !79, line: 586, type: !263, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !79, line: 595, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 4)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !79, line: 620, type: !19, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !79, line: 648, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 2)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !79, line: 648, type: !263, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !79, line: 649, type: !270, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !79, line: 649, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 3)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !79, line: 650, type: !263, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !79, line: 651, type: !19, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !79, line: 651, type: !19, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !79, line: 652, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 7)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !79, line: 653, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 8)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !79, line: 654, type: !64, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !79, line: 655, type: !64, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !79, line: 656, type: !64, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !79, line: 657, type: !64, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !79, line: 663, type: !297, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !79, line: 664, type: !64, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !79, line: 669, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 17)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !79, line: 669, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 40)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !79, line: 676, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 15)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !79, line: 676, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 61)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !79, line: 679, type: !286, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !79, line: 683, type: !263, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !79, line: 688, type: !263, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !79, line: 691, type: !302, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !79, line: 839, type: !168, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !79, line: 840, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 22)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !79, line: 841, type: !329, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !79, line: 862, type: !270, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !79, line: 868, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 71)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !79, line: 875, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 27)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !79, line: 877, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 51)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !79, line: 877, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 12)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !302, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !263, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !302, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !302, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !263, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !302, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 46)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 33)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 1792, elements: !298)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !401, line: 50, size: 256, elements: !402)
!401 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!402 = !{!403, !404, !405, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !401, line: 52, baseType: !143, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !400, file: !401, line: 55, baseType: !80, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !400, file: !401, line: 56, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !401, line: 57, baseType: !80, size: 32, offset: 192)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !410, line: 32, type: !286, isLocal: true, isDefinition: true)
!410 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8f170eec0f5223b6ba3ae07aa753e06a")
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !413, line: 3, type: !329, isLocal: true, isDefinition: true)
!413 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "Version", scope: !416, file: !413, line: 3, type: !143, isLocal: false, isDefinition: true)
!416 = distinct !DICompileUnit(language: DW_LANG_C11, file: !413, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !417, splitDebugInlining: false, nameTableKind: None)
!417 = !{!411, !414}
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "file_name", scope: !420, file: !421, line: 45, type: !143, isLocal: true, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !422, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!422 = !{!423, !425, !427, !429, !418, !431}
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !421, line: 121, type: !297, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !421, line: 121, type: !373, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !421, line: 123, type: !297, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !421, line: 126, type: !286, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !420, file: !421, line: 55, type: !191, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !435, file: !436, line: 66, type: !478, isLocal: false, isDefinition: true)
!435 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !437, globals: !438, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!437 = !{!138, !145}
!438 = !{!439, !441, !460, !462, !464, !466, !433, !468, !470, !472, !474, !476}
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !436, line: 272, type: !263, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "old_file_name", scope: !443, file: !436, line: 304, type: !143, isLocal: true, isDefinition: true)
!443 = distinct !DISubprogram(name: "verror_at_line", scope: !436, file: !436, line: 298, type: !444, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !453)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !80, !80, !143, !99, !143, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !448)
!448 = !{!449, !450, !451, !452}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !447, file: !436, baseType: !99, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !447, file: !436, baseType: !99, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !447, file: !436, baseType: !138, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !447, file: !436, baseType: !138, size: 64, offset: 128)
!453 = !{!454, !455, !456, !457, !458, !459}
!454 = !DILocalVariable(name: "status", arg: 1, scope: !443, file: !436, line: 298, type: !80)
!455 = !DILocalVariable(name: "errnum", arg: 2, scope: !443, file: !436, line: 298, type: !80)
!456 = !DILocalVariable(name: "file_name", arg: 3, scope: !443, file: !436, line: 298, type: !143)
!457 = !DILocalVariable(name: "line_number", arg: 4, scope: !443, file: !436, line: 298, type: !99)
!458 = !DILocalVariable(name: "message", arg: 5, scope: !443, file: !436, line: 298, type: !143)
!459 = !DILocalVariable(name: "args", arg: 6, scope: !443, file: !436, line: 298, type: !446)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "old_line_number", scope: !443, file: !436, line: 305, type: !99, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !436, line: 338, type: !270, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !302, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !277, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "error_message_count", scope: !435, file: !436, line: 69, type: !99, isLocal: false, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !435, file: !436, line: 295, type: !80, isLocal: false, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !297, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !153, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !436, line: 214, type: !263, isLocal: true, isDefinition: true)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null}
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !483, line: 164, type: !297, isLocal: true, isDefinition: true)
!483 = !DIFile(filename: "lib/mkdir-p.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35fabba6c7fba2a5201f9ea7f8c0e0d1")
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !483, line: 164, type: !329, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !483, line: 180, type: !277, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !483, line: 189, type: !490, isLocal: true, isDefinition: true)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 32)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !483, line: 189, type: !495, isLocal: true, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 42)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !483, line: 208, type: !363, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "program_name", scope: !502, file: !503, line: 31, type: !143, isLocal: false, isDefinition: true)
!502 = distinct !DICompileUnit(language: DW_LANG_C11, file: !503, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !504, globals: !505, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!504 = !{!138, !137}
!505 = !{!500, !506, !508}
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !503, line: 46, type: !302, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !503, line: 49, type: !270, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "utf07FF", scope: !512, file: !513, line: 46, type: !540, isLocal: true, isDefinition: true)
!512 = distinct !DISubprogram(name: "proper_name_lite", scope: !513, file: !513, line: 38, type: !514, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !518)
!513 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!514 = !DISubroutineType(types: !515)
!515 = !{!143, !143, !143}
!516 = distinct !DICompileUnit(language: DW_LANG_C11, file: !513, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !517, splitDebugInlining: false, nameTableKind: None)
!517 = !{!510}
!518 = !{!519, !520, !521, !522, !527}
!519 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !512, file: !513, line: 38, type: !143)
!520 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !512, file: !513, line: 38, type: !143)
!521 = !DILocalVariable(name: "translation", scope: !512, file: !513, line: 40, type: !143)
!522 = !DILocalVariable(name: "w", scope: !512, file: !513, line: 47, type: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !524, line: 37, baseType: !525)
!524 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !98, line: 57, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !99)
!527 = !DILocalVariable(name: "mbs", scope: !512, file: !513, line: 48, type: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !529, line: 6, baseType: !530)
!529 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !531, line: 21, baseType: !532)
!531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 13, size: 64, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !532, file: !531, line: 15, baseType: !80, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !532, file: !531, line: 20, baseType: !536, size: 32, offset: 32)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !531, line: 16, size: 32, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !536, file: !531, line: 18, baseType: !99, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !536, file: !531, line: 19, baseType: !270, size: 32)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16, elements: !278)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !543, line: 78, type: !302, isLocal: true, isDefinition: true)
!543 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !543, line: 79, type: !19, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !543, line: 80, type: !548, isLocal: true, isDefinition: true)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 13)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !543, line: 81, type: !548, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !543, line: 82, type: !252, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !543, line: 83, type: !277, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !543, line: 84, type: !302, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !543, line: 85, type: !297, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !543, line: 86, type: !297, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !543, line: 87, type: !302, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !567, file: !543, line: 76, type: !641, isLocal: false, isDefinition: true)
!567 = distinct !DICompileUnit(language: DW_LANG_C11, file: !543, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !568, retainedTypes: !576, globals: !577, splitDebugInlining: false, nameTableKind: None)
!568 = !{!569, !571, !107}
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !570, line: 42, baseType: !99, size: 32, elements: !124)
!570 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !570, line: 254, baseType: !99, size: 32, elements: !572)
!572 = !{!573, !574, !575}
!573 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!574 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!575 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!576 = !{!138, !80, !139, !140}
!577 = !{!541, !544, !546, !551, !553, !555, !557, !559, !561, !563, !565, !578, !582, !592, !594, !599, !601, !603, !605, !607, !630, !637, !639}
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !567, file: !543, line: 92, type: !580, isLocal: false, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 320, elements: !65)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !567, file: !543, line: 1040, type: !584, isLocal: false, isDefinition: true)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !543, line: 56, size: 448, elements: !585)
!585 = !{!586, !587, !588, !590, !591}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !584, file: !543, line: 59, baseType: !569, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !543, line: 62, baseType: !80, size: 32, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !584, file: !543, line: 66, baseType: !589, size: 256, offset: 64)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !303)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !584, file: !543, line: 69, baseType: !143, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !584, file: !543, line: 72, baseType: !143, size: 64, offset: 384)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !567, file: !543, line: 107, type: !584, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "slot0", scope: !567, file: !543, line: 831, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 256)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !543, line: 321, type: !277, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !543, line: 357, type: !277, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !543, line: 358, type: !277, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !543, line: 199, type: !297, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quote", scope: !609, file: !543, line: 228, type: !628, isLocal: true, isDefinition: true)
!609 = distinct !DISubprogram(name: "gettext_quote", scope: !543, file: !543, line: 197, type: !610, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!143, !143, !569}
!612 = !{!613, !614, !615, !616, !617}
!613 = !DILocalVariable(name: "msgid", arg: 1, scope: !609, file: !543, line: 197, type: !143)
!614 = !DILocalVariable(name: "s", arg: 2, scope: !609, file: !543, line: 197, type: !569)
!615 = !DILocalVariable(name: "translation", scope: !609, file: !543, line: 199, type: !143)
!616 = !DILocalVariable(name: "w", scope: !609, file: !543, line: 229, type: !523)
!617 = !DILocalVariable(name: "mbs", scope: !609, file: !543, line: 230, type: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !529, line: 6, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !531, line: 21, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 13, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !620, file: !531, line: 15, baseType: !80, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !620, file: !531, line: 20, baseType: !624, size: 32, offset: 32)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !531, line: 16, size: 32, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !624, file: !531, line: 18, baseType: !99, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !624, file: !531, line: 19, baseType: !270, size: 32)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !629)
!629 = !{!279, !272}
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "slotvec", scope: !567, file: !543, line: 834, type: !632, isLocal: true, isDefinition: true)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !543, line: 823, size: 128, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !633, file: !543, line: 825, baseType: !140, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !633, file: !543, line: 826, baseType: !137, size: 64, offset: 64)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "nslots", scope: !567, file: !543, line: 832, type: !80, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "slotvec0", scope: !567, file: !543, line: 833, type: !633, isLocal: true, isDefinition: true)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 704, elements: !643)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!643 = !{!644}
!644 = !DISubrange(count: 11)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !647, line: 162, type: !648, isLocal: true, isDefinition: true)
!647 = !DIFile(filename: "lib/savewd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0cafd16d007fc7abd1f9bf11434952af")
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 19)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !647, line: 162, type: !548, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !647, line: 162, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 480, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 60)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !647, line: 166, type: !277, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !647, line: 223, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 28)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !647, line: 223, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 328, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 41)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !647, line: 256, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 18)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !647, line: 256, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 288, elements: !10)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !647, line: 55, type: !277, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !647, line: 106, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 280, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 35)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !687, line: 67, type: !373, isLocal: true, isDefinition: true)
!687 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !687, line: 69, type: !297, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !687, line: 83, type: !297, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !687, line: 83, type: !270, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !687, line: 85, type: !277, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !687, line: 88, type: !698, isLocal: true, isDefinition: true)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 171)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !687, line: 88, type: !703, isLocal: true, isDefinition: true)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 34)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !687, line: 105, type: !168, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !687, line: 109, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 23)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !687, line: 113, type: !662, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !687, line: 120, type: !490, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !687, line: 127, type: !9, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !687, line: 134, type: !324, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !687, line: 142, type: !723, isLocal: true, isDefinition: true)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 44)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !687, line: 150, type: !728, isLocal: true, isDefinition: true)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 48)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !687, line: 159, type: !733, isLocal: true, isDefinition: true)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 52)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !687, line: 170, type: !738, isLocal: true, isDefinition: true)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !656)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !687, line: 248, type: !252, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !687, line: 248, type: !349, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !687, line: 254, type: !252, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !687, line: 254, type: !163, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !687, line: 254, type: !324, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !687, line: 259, type: !3, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !687, line: 259, type: !753, isLocal: true, isDefinition: true)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 29)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !758, file: !759, line: 26, type: !761, isLocal: false, isDefinition: true)
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !760, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!760 = !{!756}
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 376, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 47)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(name: "exit_failure", scope: !766, file: !767, line: 24, type: !769, isLocal: false, isDefinition: true)
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !768, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!768 = !{!764}
!769 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !772, line: 34, type: !286, isLocal: true, isDefinition: true)
!772 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !772, line: 34, type: !297, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !772, line: 34, type: !319, isLocal: true, isDefinition: true)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !779, line: 108, type: !59, isLocal: true, isDefinition: true)
!779 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "internal_state", scope: !782, file: !779, line: 97, type: !785, isLocal: true, isDefinition: true)
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !783, globals: !784, splitDebugInlining: false, nameTableKind: None)
!783 = !{!138, !140, !145}
!784 = !{!777, !780}
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !529, line: 6, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !531, line: 21, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 13, size: 64, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !787, file: !531, line: 15, baseType: !80, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !787, file: !531, line: 20, baseType: !791, size: 32, offset: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !531, line: 16, size: 32, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !791, file: !531, line: 18, baseType: !99, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !791, file: !531, line: 19, baseType: !270, size: 32)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !797, line: 35, type: !19, isLocal: true, isDefinition: true)
!797 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !800, file: !801, line: 506, type: !80, isLocal: true, isDefinition: true)
!800 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !801, file: !801, line: 485, type: !802, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !806)
!801 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!802 = !DISubroutineType(types: !803)
!803 = !{!80, !80, !80}
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !805, splitDebugInlining: false, nameTableKind: None)
!805 = !{!798}
!806 = !{!807, !808, !809, !810, !813}
!807 = !DILocalVariable(name: "fd", arg: 1, scope: !800, file: !801, line: 485, type: !80)
!808 = !DILocalVariable(name: "target", arg: 2, scope: !800, file: !801, line: 485, type: !80)
!809 = !DILocalVariable(name: "result", scope: !800, file: !801, line: 487, type: !80)
!810 = !DILocalVariable(name: "flags", scope: !811, file: !801, line: 530, type: !80)
!811 = distinct !DILexicalBlock(scope: !812, file: !801, line: 529, column: 5)
!812 = distinct !DILexicalBlock(scope: !800, file: !801, line: 528, column: 7)
!813 = !DILocalVariable(name: "saved_errno", scope: !814, file: !801, line: 533, type: !80)
!814 = distinct !DILexicalBlock(scope: !815, file: !801, line: 532, column: 9)
!815 = distinct !DILexicalBlock(scope: !811, file: !801, line: 531, column: 11)
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/prog-fprintf.o -MD -MP -MF src/.deps/prog-fprintf.Tpo -c src/prog-fprintf.c -o src/.prog-fprintf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, globals: !818, splitDebugInlining: false, nameTableKind: None)
!817 = !{!145}
!818 = !{!408}
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !820, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/selinux.o -MD -MP -MF src/.deps/selinux.Tpo -c src/selinux.c -o src/.selinux.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!820 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !483, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mkdir-p.o -MD -MP -MF lib/.deps/libcoreutils_a-mkdir-p.Tpo -c lib/mkdir-p.c -o lib/.libcoreutils_a-mkdir-p.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !824, retainedTypes: !840, globals: !841, splitDebugInlining: false, nameTableKind: None)
!824 = !{!825, !836}
!825 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !827, file: !826, line: 45, baseType: !99, size: 32, elements: !100)
!826 = !DIFile(filename: "lib/savewd.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ad4dd1c19e06c974b5c544edb9d47f86")
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !826, line: 42, size: 64, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !827, file: !826, line: 73, baseType: !825, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !827, file: !826, line: 81, baseType: !831, size: 32, offset: 32)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !827, file: !826, line: 76, size: 32, elements: !832)
!832 = !{!833, !834, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !831, file: !826, line: 78, baseType: !80, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !831, file: !826, line: 79, baseType: !80, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !831, file: !826, line: 80, baseType: !95, size: 32)
!836 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !826, line: 93, baseType: !99, size: 32, elements: !837)
!837 = !{!838, !839}
!838 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1)
!839 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2)
!840 = !{!146, !148}
!841 = !{!481, !484, !486, !488, !493, !498}
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-modechange.o -MD -MP -MF lib/.deps/libcoreutils_a-modechange.Tpo -c lib/modechange.c -o lib/.libcoreutils_a-modechange.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !844, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!844 = !{!845}
!845 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 78, baseType: !99, size: 32, elements: !846)
!846 = !{!847, !848, !849, !850}
!847 = !DIEnumerator(name: "MODE_DONE", value: 0)
!848 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!849 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!850 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!851 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-savewd.o -MD -MP -MF lib/.deps/libcoreutils_a-savewd.Tpo -c lib/savewd.c -o lib/.libcoreutils_a-savewd.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !852, globals: !863, splitDebugInlining: false, nameTableKind: None)
!852 = !{!853, !836}
!853 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !854, file: !826, line: 45, baseType: !99, size: 32, elements: !100)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !826, line: 42, size: 64, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !854, file: !826, line: 73, baseType: !853, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !854, file: !826, line: 81, baseType: !858, size: 32, offset: 32)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !826, line: 76, size: 32, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !858, file: !826, line: 78, baseType: !80, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !858, file: !826, line: 79, baseType: !80, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !858, file: !826, line: 80, baseType: !95, size: 32)
!863 = !{!645, !651, !653, !658, !660, !665, !670, !675, !678, !680}
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !865, retainedTypes: !869, globals: !870, splitDebugInlining: false, nameTableKind: None)
!865 = !{!866}
!866 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !687, line: 40, baseType: !99, size: 32, elements: !867)
!867 = !{!868}
!868 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!869 = !{!138}
!870 = !{!685, !688, !690, !692, !694, !696, !701, !706, !708, !713, !715, !717, !719, !721, !726, !731, !736, !739, !741, !743, !745, !747, !749, !751}
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !872, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !873, retainedTypes: !905, splitDebugInlining: false, nameTableKind: None)
!872 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!873 = !{!874, !886}
!874 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !875, file: !872, line: 188, baseType: !99, size: 32, elements: !884)
!875 = distinct !DISubprogram(name: "x2nrealloc", scope: !872, file: !872, line: 176, type: !876, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !879)
!876 = !DISubroutineType(types: !877)
!877 = !{!138, !138, !878, !140}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!879 = !{!880, !881, !882, !883}
!880 = !DILocalVariable(name: "p", arg: 1, scope: !875, file: !872, line: 176, type: !138)
!881 = !DILocalVariable(name: "pn", arg: 2, scope: !875, file: !872, line: 176, type: !878)
!882 = !DILocalVariable(name: "s", arg: 3, scope: !875, file: !872, line: 176, type: !140)
!883 = !DILocalVariable(name: "n", scope: !875, file: !872, line: 178, type: !140)
!884 = !{!885}
!885 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!886 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !887, file: !872, line: 228, baseType: !99, size: 32, elements: !884)
!887 = distinct !DISubprogram(name: "xpalloc", scope: !872, file: !872, line: 223, type: !888, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !895)
!888 = !DISubroutineType(types: !889)
!889 = !{!138, !138, !890, !891, !893, !891}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !892, line: 130, baseType: !893)
!892 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !894, line: 18, baseType: !231)
!894 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904}
!896 = !DILocalVariable(name: "pa", arg: 1, scope: !887, file: !872, line: 223, type: !138)
!897 = !DILocalVariable(name: "pn", arg: 2, scope: !887, file: !872, line: 223, type: !890)
!898 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !887, file: !872, line: 223, type: !891)
!899 = !DILocalVariable(name: "n_max", arg: 4, scope: !887, file: !872, line: 223, type: !893)
!900 = !DILocalVariable(name: "s", arg: 5, scope: !887, file: !872, line: 223, type: !891)
!901 = !DILocalVariable(name: "n0", scope: !887, file: !872, line: 230, type: !891)
!902 = !DILocalVariable(name: "n", scope: !887, file: !872, line: 237, type: !891)
!903 = !DILocalVariable(name: "nbytes", scope: !887, file: !872, line: 248, type: !891)
!904 = !DILocalVariable(name: "adjusted_nbytes", scope: !887, file: !872, line: 252, type: !891)
!905 = !{!137, !138}
!906 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !907, splitDebugInlining: false, nameTableKind: None)
!907 = !{!770, !773, !775}
!908 = distinct !DICompileUnit(language: DW_LANG_C11, file: !909, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!909 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!910 = distinct !DICompileUnit(language: DW_LANG_C11, file: !911, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!911 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !913, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-open-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-open-safer.Tpo -c lib/open-safer.c -o lib/.libcoreutils_a-open-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!914 = distinct !DICompileUnit(language: DW_LANG_C11, file: !915, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !869, splitDebugInlining: false, nameTableKind: None)
!915 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !917, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !869, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mkancesdirs.o -MD -MP -MF lib/.deps/libcoreutils_a-mkancesdirs.Tpo -c lib/mkancesdirs.c -o lib/.libcoreutils_a-mkancesdirs.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !920, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6b54240f33d18f510b92d67eeccd60e")
!920 = !{!921, !836}
!921 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !922, file: !826, line: 45, baseType: !99, size: 32, elements: !100)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !826, line: 42, size: 64, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !922, file: !826, line: 73, baseType: !921, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !922, file: !826, line: 81, baseType: !926, size: 32, offset: 32)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !826, line: 76, size: 32, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !926, file: !826, line: 78, baseType: !80, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !926, file: !826, line: 79, baseType: !80, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !926, file: !826, line: 80, baseType: !95, size: 32)
!931 = distinct !DICompileUnit(language: DW_LANG_C11, file: !932, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dirchownmod.o -MD -MP -MF lib/.deps/libcoreutils_a-dirchownmod.Tpo -c lib/dirchownmod.c -o lib/.libcoreutils_a-dirchownmod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !933, splitDebugInlining: false, nameTableKind: None)
!932 = !DIFile(filename: "lib/dirchownmod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b1a0bf6d4e9295f75572be521597aa1e")
!933 = !{!146, !148, !934}
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !96, line: 69, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !98, line: 150, baseType: !99)
!936 = distinct !DICompileUnit(language: DW_LANG_C11, file: !937, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !869, splitDebugInlining: false, nameTableKind: None)
!937 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!938 = distinct !DICompileUnit(language: DW_LANG_C11, file: !939, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer.Tpo -c lib/fd-safer.c -o lib/.libcoreutils_a-fd-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!939 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!940 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !941, splitDebugInlining: false, nameTableKind: None)
!941 = !{!942, !795}
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !797, line: 35, type: !277, isLocal: true, isDefinition: true)
!944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !945, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!945 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!946 = distinct !DICompileUnit(language: DW_LANG_C11, file: !947, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !869, splitDebugInlining: false, nameTableKind: None)
!947 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!948 = distinct !DICompileUnit(language: DW_LANG_C11, file: !949, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!950 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!951 = !{i32 7, !"Dwarf Version", i32 5}
!952 = !{i32 2, !"Debug Info Version", i32 3}
!953 = !{i32 1, !"wchar_size", i32 4}
!954 = !{i32 8, !"PIC Level", i32 2}
!955 = !{i32 7, !"PIE Level", i32 2}
!956 = !{i32 7, !"uwtable", i32 2}
!957 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!958 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 51, type: !959, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !80}
!961 = !{!962}
!962 = !DILocalVariable(name: "status", arg: 1, scope: !958, file: !2, line: 51, type: !80)
!963 = !DILocation(line: 0, scope: !958)
!964 = !DILocation(line: 53, column: 14, scope: !965)
!965 = distinct !DILexicalBlock(scope: !958, file: !2, line: 53, column: 7)
!966 = !DILocation(line: 53, column: 7, scope: !958)
!967 = !DILocation(line: 54, column: 5, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !2, line: 54, column: 5)
!969 = !{!970, !970, i64 0}
!970 = !{!"any pointer", !971, i64 0}
!971 = !{!"omnipotent char", !972, i64 0}
!972 = !{!"Simple C/C++ TBAA"}
!973 = !DILocation(line: 57, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !965, file: !2, line: 56, column: 5)
!975 = !DILocation(line: 58, column: 7, scope: !974)
!976 = !DILocation(line: 736, column: 3, scope: !977, inlinedAt: !978)
!977 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !79, file: !79, line: 734, type: !479, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!978 = distinct !DILocation(line: 62, column: 7, scope: !974)
!979 = !DILocation(line: 64, column: 7, scope: !974)
!980 = !DILocation(line: 68, column: 7, scope: !974)
!981 = !DILocation(line: 73, column: 7, scope: !974)
!982 = !DILocation(line: 77, column: 7, scope: !974)
!983 = !DILocation(line: 82, column: 7, scope: !974)
!984 = !DILocation(line: 87, column: 7, scope: !974)
!985 = !DILocation(line: 88, column: 7, scope: !974)
!986 = !DILocalVariable(name: "program", arg: 1, scope: !987, file: !79, line: 836, type: !143)
!987 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !79, file: !79, line: 836, type: !988, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !143}
!990 = !{!986, !991, !998, !999, !1001, !1002}
!991 = !DILocalVariable(name: "infomap", scope: !987, file: !79, line: 838, type: !992)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 896, elements: !298)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !987, file: !79, line: 838, size: 128, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !994, file: !79, line: 838, baseType: !143, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !994, file: !79, line: 838, baseType: !143, size: 64, offset: 64)
!998 = !DILocalVariable(name: "node", scope: !987, file: !79, line: 848, type: !143)
!999 = !DILocalVariable(name: "map_prog", scope: !987, file: !79, line: 849, type: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1001 = !DILocalVariable(name: "lc_messages", scope: !987, file: !79, line: 861, type: !143)
!1002 = !DILocalVariable(name: "url_program", scope: !987, file: !79, line: 874, type: !143)
!1003 = !DILocation(line: 0, scope: !987, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 89, column: 7, scope: !974)
!1005 = !{}
!1006 = !DILocation(line: 857, column: 3, scope: !987, inlinedAt: !1004)
!1007 = !DILocation(line: 861, column: 29, scope: !987, inlinedAt: !1004)
!1008 = !DILocation(line: 862, column: 7, scope: !1009, inlinedAt: !1004)
!1009 = distinct !DILexicalBlock(scope: !987, file: !79, line: 862, column: 7)
!1010 = !DILocation(line: 862, column: 19, scope: !1009, inlinedAt: !1004)
!1011 = !DILocation(line: 862, column: 22, scope: !1009, inlinedAt: !1004)
!1012 = !DILocation(line: 862, column: 7, scope: !987, inlinedAt: !1004)
!1013 = !DILocation(line: 868, column: 7, scope: !1014, inlinedAt: !1004)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !79, line: 863, column: 5)
!1015 = !DILocation(line: 870, column: 5, scope: !1014, inlinedAt: !1004)
!1016 = !DILocation(line: 875, column: 3, scope: !987, inlinedAt: !1004)
!1017 = !DILocation(line: 877, column: 3, scope: !987, inlinedAt: !1004)
!1018 = !DILocation(line: 91, column: 3, scope: !958)
!1019 = !DISubprogram(name: "dcgettext", scope: !1020, file: !1020, line: 51, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!137, !143, !143, !80}
!1023 = !DISubprogram(name: "__fprintf_chk", scope: !1024, file: !1024, line: 93, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!80, !1027, !80, !1028, null}
!1027 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!1028 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!1029 = !DISubprogram(name: "__printf_chk", scope: !1024, file: !1024, line: 95, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!80, !80, !1028, null}
!1032 = !DISubprogram(name: "fputs_unlocked", scope: !1033, file: !1033, line: 691, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!80, !1028, !1027}
!1036 = !DILocation(line: 0, scope: !181)
!1037 = !DILocation(line: 581, column: 7, scope: !189)
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"int", !971, i64 0}
!1040 = !DILocation(line: 581, column: 19, scope: !189)
!1041 = !DILocation(line: 581, column: 7, scope: !181)
!1042 = !DILocation(line: 585, column: 26, scope: !188)
!1043 = !DILocation(line: 0, scope: !188)
!1044 = !DILocation(line: 586, column: 23, scope: !188)
!1045 = !DILocation(line: 586, column: 28, scope: !188)
!1046 = !DILocation(line: 586, column: 32, scope: !188)
!1047 = !{!971, !971, i64 0}
!1048 = !DILocation(line: 586, column: 38, scope: !188)
!1049 = !DILocalVariable(name: "__s1", arg: 1, scope: !1050, file: !1051, line: 1359, type: !143)
!1050 = distinct !DISubprogram(name: "streq", scope: !1051, file: !1051, line: 1359, type: !1052, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1054)
!1051 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!191, !143, !143}
!1054 = !{!1049, !1055}
!1055 = !DILocalVariable(name: "__s2", arg: 2, scope: !1050, file: !1051, line: 1359, type: !143)
!1056 = !DILocation(line: 0, scope: !1050, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 586, column: 41, scope: !188)
!1058 = !DILocation(line: 1361, column: 11, scope: !1050, inlinedAt: !1057)
!1059 = !DILocation(line: 1361, column: 10, scope: !1050, inlinedAt: !1057)
!1060 = !DILocation(line: 586, column: 19, scope: !188)
!1061 = !DILocation(line: 587, column: 5, scope: !188)
!1062 = !DILocation(line: 588, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !181, file: !79, line: 588, column: 7)
!1064 = !DILocation(line: 588, column: 7, scope: !181)
!1065 = !DILocation(line: 590, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !79, line: 589, column: 5)
!1067 = !DILocation(line: 591, column: 7, scope: !1066)
!1068 = !DILocation(line: 595, column: 37, scope: !181)
!1069 = !DILocation(line: 595, column: 35, scope: !181)
!1070 = !DILocation(line: 596, column: 29, scope: !181)
!1071 = !DILocation(line: 597, column: 8, scope: !197)
!1072 = !DILocation(line: 597, column: 7, scope: !181)
!1073 = !DILocation(line: 604, column: 24, scope: !196)
!1074 = !DILocation(line: 604, column: 12, scope: !197)
!1075 = !DILocation(line: 0, scope: !195)
!1076 = !DILocation(line: 610, column: 16, scope: !195)
!1077 = !DILocation(line: 610, column: 7, scope: !195)
!1078 = !DILocation(line: 611, column: 21, scope: !195)
!1079 = !{!1080, !1080, i64 0}
!1080 = !{!"short", !971, i64 0}
!1081 = !DILocation(line: 611, column: 19, scope: !195)
!1082 = !DILocation(line: 611, column: 16, scope: !195)
!1083 = !DILocation(line: 610, column: 30, scope: !195)
!1084 = distinct !{!1084, !1077, !1078, !1085}
!1085 = !{!"llvm.loop.mustprogress"}
!1086 = !DILocation(line: 612, column: 18, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !195, file: !79, line: 612, column: 11)
!1088 = !DILocation(line: 612, column: 11, scope: !195)
!1089 = !DILocation(line: 620, column: 23, scope: !181)
!1090 = !DILocation(line: 625, column: 39, scope: !181)
!1091 = !DILocation(line: 626, column: 3, scope: !181)
!1092 = !DILocation(line: 626, column: 10, scope: !181)
!1093 = !DILocation(line: 626, column: 21, scope: !181)
!1094 = !DILocation(line: 628, column: 44, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !79, line: 628, column: 11)
!1096 = distinct !DILexicalBlock(scope: !181, file: !79, line: 627, column: 5)
!1097 = !DILocation(line: 628, column: 32, scope: !1095)
!1098 = !DILocation(line: 628, column: 49, scope: !1095)
!1099 = !DILocation(line: 628, column: 11, scope: !1096)
!1100 = !DILocation(line: 630, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !79, line: 630, column: 11)
!1102 = !DILocation(line: 630, column: 11, scope: !1096)
!1103 = !DILocation(line: 632, column: 26, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !79, line: 632, column: 15)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 631, column: 9)
!1106 = !DILocation(line: 632, column: 34, scope: !1104)
!1107 = !DILocation(line: 632, column: 37, scope: !1104)
!1108 = !DILocation(line: 632, column: 15, scope: !1105)
!1109 = !DILocation(line: 636, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !79, line: 636, column: 15)
!1111 = !DILocation(line: 636, column: 29, scope: !1110)
!1112 = !DILocation(line: 640, column: 16, scope: !1096)
!1113 = distinct !{!1113, !1091, !1114, !1085}
!1114 = !DILocation(line: 641, column: 5, scope: !181)
!1115 = !DILocation(line: 644, column: 3, scope: !181)
!1116 = !DILocation(line: 0, scope: !1050, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 648, column: 31, scope: !181)
!1118 = !DILocation(line: 0, scope: !1050, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 649, column: 31, scope: !181)
!1120 = !DILocation(line: 0, scope: !1050, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 650, column: 31, scope: !181)
!1122 = !DILocation(line: 0, scope: !1050, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 651, column: 31, scope: !181)
!1124 = !DILocation(line: 0, scope: !1050, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 652, column: 31, scope: !181)
!1126 = !DILocation(line: 0, scope: !1050, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 653, column: 31, scope: !181)
!1128 = !DILocation(line: 0, scope: !1050, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 654, column: 31, scope: !181)
!1130 = !DILocation(line: 0, scope: !1050, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 655, column: 31, scope: !181)
!1132 = !DILocation(line: 0, scope: !1050, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 656, column: 31, scope: !181)
!1134 = !DILocation(line: 0, scope: !1050, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 657, column: 31, scope: !181)
!1136 = !DILocation(line: 663, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !181, file: !79, line: 663, column: 7)
!1138 = !DILocation(line: 664, column: 7, scope: !1137)
!1139 = !DILocation(line: 664, column: 10, scope: !1137)
!1140 = !DILocation(line: 663, column: 7, scope: !181)
!1141 = !DILocation(line: 669, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !79, line: 665, column: 5)
!1143 = !DILocation(line: 671, column: 5, scope: !1142)
!1144 = !DILocation(line: 676, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !79, line: 673, column: 5)
!1146 = !DILocation(line: 679, column: 3, scope: !181)
!1147 = !DILocation(line: 683, column: 3, scope: !181)
!1148 = !DILocation(line: 686, column: 3, scope: !181)
!1149 = !DILocation(line: 688, column: 3, scope: !181)
!1150 = !DILocation(line: 691, column: 3, scope: !181)
!1151 = !DILocation(line: 695, column: 3, scope: !181)
!1152 = !DILocation(line: 696, column: 1, scope: !181)
!1153 = !DISubprogram(name: "setlocale", scope: !1154, file: !1154, line: 122, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!137, !80, !143}
!1157 = !DISubprogram(name: "strncmp", scope: !1158, file: !1158, line: 159, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!80, !143, !143, !140}
!1161 = !DISubprogram(name: "exit", scope: !1162, file: !1162, line: 624, type: !959, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1162 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1163 = !DISubprogram(name: "getenv", scope: !1162, file: !1162, line: 641, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!137, !143}
!1166 = !DISubprogram(name: "strcmp", scope: !1158, file: !1158, line: 156, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!80, !143, !143}
!1169 = !DISubprogram(name: "strspn", scope: !1158, file: !1158, line: 297, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!142, !143, !143}
!1172 = !DISubprogram(name: "strchr", scope: !1158, file: !1158, line: 246, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!137, !143, !80}
!1175 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1181 = !DISubprogram(name: "strcspn", scope: !1158, file: !1158, line: 293, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1182 = !DISubprogram(name: "fwrite_unlocked", scope: !1033, file: !1033, line: 704, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!140, !1185, !140, !140, !1027}
!1185 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1188 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 202, type: !1189, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1192)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!80, !80, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1214, !1217, !1220}
!1193 = !DILocalVariable(name: "argc", arg: 1, scope: !1188, file: !2, line: 202, type: !80)
!1194 = !DILocalVariable(name: "argv", arg: 2, scope: !1188, file: !2, line: 202, type: !1191)
!1195 = !DILocalVariable(name: "specified_mode", scope: !1188, file: !2, line: 204, type: !143)
!1196 = !DILocalVariable(name: "optc", scope: !1188, file: !2, line: 205, type: !80)
!1197 = !DILocalVariable(name: "scontext", scope: !1188, file: !2, line: 206, type: !143)
!1198 = !DILocalVariable(name: "options", scope: !1188, file: !2, line: 207, type: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !2, line: 95, size: 320, elements: !1200)
!1200 = !{!1201, !1205, !1206, !1207, !1208, !1209, !1213}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !1199, file: !2, line: 99, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!80, !143, !143, !138}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !1199, file: !2, line: 102, baseType: !934, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !1199, file: !2, line: 105, baseType: !934, size: 32, offset: 96)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1199, file: !2, line: 108, baseType: !934, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !1199, file: !2, line: 111, baseType: !934, size: 32, offset: 160)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !1199, file: !2, line: 114, baseType: !1210, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1212, line: 53, flags: DIFlagFwdDecl)
!1212 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !1199, file: !2, line: 117, baseType: !143, size: 64, offset: 256)
!1214 = !DILocalVariable(name: "ret", scope: !1215, file: !2, line: 279, type: !80)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 278, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 277, column: 7)
!1217 = !DILocalVariable(name: "umask_value", scope: !1218, file: !2, line: 294, type: !934)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 293, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 292, column: 7)
!1220 = !DILocalVariable(name: "change", scope: !1221, file: !2, line: 299, type: !1223)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 298, column: 9)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 297, column: 11)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1225, line: 35, flags: DIFlagFwdDecl)
!1225 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1226 = distinct !DIAssignID()
!1227 = !DILocation(line: 0, scope: !1188)
!1228 = !DILocation(line: 207, column: 3, scope: !1188)
!1229 = distinct !DIAssignID()
!1230 = !DILocation(line: 210, column: 11, scope: !1188)
!1231 = !DILocation(line: 210, column: 16, scope: !1188)
!1232 = !{!1233, !1039, i64 16}
!1233 = !{!"mkdir_options", !970, i64 0, !1039, i64 8, !1039, i64 12, !1039, i64 16, !1039, i64 20, !970, i64 24, !970, i64 32}
!1234 = distinct !DIAssignID()
!1235 = !DILocation(line: 211, column: 11, scope: !1188)
!1236 = distinct !DIAssignID()
!1237 = !DILocation(line: 212, column: 11, scope: !1188)
!1238 = !DILocation(line: 212, column: 36, scope: !1188)
!1239 = !DILocation(line: 216, column: 21, scope: !1188)
!1240 = !DILocation(line: 216, column: 3, scope: !1188)
!1241 = !DILocation(line: 217, column: 3, scope: !1188)
!1242 = !DILocation(line: 218, column: 3, scope: !1188)
!1243 = !DILocation(line: 219, column: 3, scope: !1188)
!1244 = !DILocation(line: 221, column: 3, scope: !1188)
!1245 = !DILocation(line: 223, column: 3, scope: !1188)
!1246 = !DILocation(line: 223, column: 18, scope: !1188)
!1247 = distinct !{!1247, !1245, !1248, !1085}
!1248 = !DILocation(line: 266, column: 5, scope: !1188)
!1249 = !DILocation(line: 231, column: 28, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 226, column: 9)
!1251 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 224, column: 5)
!1252 = !DILocation(line: 232, column: 11, scope: !1250)
!1253 = !DILocation(line: 234, column: 46, scope: !1250)
!1254 = distinct !DIAssignID()
!1255 = !DILocation(line: 235, column: 11, scope: !1250)
!1256 = !DILocation(line: 254, column: 20, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 254, column: 20)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 242, column: 20)
!1259 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 237, column: 15)
!1260 = !DILocation(line: 254, column: 20, scope: !1258)
!1261 = !DILocation(line: 256, column: 15, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 255, column: 13)
!1263 = !DILocation(line: 259, column: 13, scope: !1262)
!1264 = !DILocation(line: 261, column: 9, scope: !1250)
!1265 = !DILocation(line: 262, column: 9, scope: !1250)
!1266 = !DILocation(line: 264, column: 11, scope: !1250)
!1267 = !DILocation(line: 234, column: 44, scope: !1250)
!1268 = !{!1233, !970, i64 32}
!1269 = !DILocation(line: 228, column: 42, scope: !1250)
!1270 = !{!1233, !970, i64 0}
!1271 = distinct !DIAssignID()
!1272 = !DILocation(line: 268, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 268, column: 7)
!1274 = !DILocation(line: 268, column: 14, scope: !1273)
!1275 = !DILocation(line: 268, column: 7, scope: !1188)
!1276 = !DILocation(line: 270, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 269, column: 5)
!1278 = !DILocation(line: 271, column: 7, scope: !1277)
!1279 = !DILocation(line: 292, column: 38, scope: !1219)
!1280 = !DILocation(line: 294, column: 28, scope: !1218)
!1281 = !DILocation(line: 0, scope: !1218)
!1282 = !DILocation(line: 295, column: 44, scope: !1218)
!1283 = !DILocation(line: 295, column: 15, scope: !1218)
!1284 = !DILocation(line: 295, column: 30, scope: !1218)
!1285 = !{!1233, !1039, i64 8}
!1286 = distinct !DIAssignID()
!1287 = !DILocation(line: 297, column: 11, scope: !1218)
!1288 = !DILocation(line: 299, column: 40, scope: !1221)
!1289 = !DILocation(line: 0, scope: !1221)
!1290 = !DILocation(line: 300, column: 16, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 300, column: 15)
!1292 = !DILocation(line: 300, column: 15, scope: !1221)
!1293 = !DILocation(line: 301, column: 13, scope: !1291)
!1294 = !DILocation(line: 303, column: 26, scope: !1221)
!1295 = !DILocation(line: 303, column: 24, scope: !1221)
!1296 = distinct !DIAssignID()
!1297 = !DILocation(line: 305, column: 46, scope: !1221)
!1298 = !DILocation(line: 305, column: 44, scope: !1221)
!1299 = !DILocation(line: 305, column: 19, scope: !1221)
!1300 = !DILocation(line: 305, column: 30, scope: !1221)
!1301 = !{!1233, !1039, i64 12}
!1302 = distinct !DIAssignID()
!1303 = !DILocation(line: 306, column: 11, scope: !1221)
!1304 = !DILocation(line: 307, column: 9, scope: !1221)
!1305 = !DILocation(line: 310, column: 24, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 309, column: 9)
!1307 = distinct !DIAssignID()
!1308 = !DILocation(line: 311, column: 19, scope: !1306)
!1309 = !DILocation(line: 311, column: 30, scope: !1306)
!1310 = distinct !DIAssignID()
!1311 = !DILocation(line: 314, column: 22, scope: !1218)
!1312 = !DILocation(line: 314, column: 7, scope: !1218)
!1313 = !DILocation(line: 317, column: 39, scope: !1188)
!1314 = !DILocation(line: 315, column: 5, scope: !1218)
!1315 = !DILocation(line: 317, column: 37, scope: !1188)
!1316 = !DILocation(line: 317, column: 52, scope: !1188)
!1317 = !DILocation(line: 317, column: 10, scope: !1188)
!1318 = !DILocation(line: 319, column: 1, scope: !1188)
!1319 = !DILocation(line: 317, column: 3, scope: !1188)
!1320 = !DISubprogram(name: "bindtextdomain", scope: !1020, file: !1020, line: 86, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!137, !143, !143}
!1323 = !DISubprogram(name: "textdomain", scope: !1020, file: !1020, line: 82, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1324 = !DISubprogram(name: "atexit", scope: !1162, file: !1162, line: 602, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!80, !478}
!1327 = distinct !DISubprogram(name: "make_ancestor", scope: !2, file: !2, line: 135, type: !1203, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1335, !1336}
!1329 = !DILocalVariable(name: "dir", arg: 1, scope: !1327, file: !2, line: 135, type: !143)
!1330 = !DILocalVariable(name: "component", arg: 2, scope: !1327, file: !2, line: 135, type: !143)
!1331 = !DILocalVariable(name: "options", arg: 3, scope: !1327, file: !2, line: 135, type: !138)
!1332 = !DILocalVariable(name: "o", scope: !1327, file: !2, line: 137, type: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1335 = !DILocalVariable(name: "r", scope: !1327, file: !2, line: 147, type: !80)
!1336 = !DILocalVariable(name: "mkdir_errno", scope: !1337, file: !2, line: 150, type: !80)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 149, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 148, column: 7)
!1339 = !DILocation(line: 0, scope: !1327)
!1340 = !DILocation(line: 139, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 139, column: 7)
!1342 = !{!1233, !970, i64 24}
!1343 = !DILocation(line: 139, column: 7, scope: !1341)
!1344 = !DILocation(line: 140, column: 7, scope: !1341)
!1345 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1346, file: !1347, line: 49, type: !1210)
!1346 = distinct !DISubprogram(name: "defaultcon", scope: !1347, file: !1347, line: 49, type: !1348, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1350)
!1347 = !DIFile(filename: "src/selinux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!80, !1210, !143, !934}
!1350 = !{!1345, !1351, !1352}
!1351 = !DILocalVariable(name: "path", arg: 2, scope: !1346, file: !1347, line: 50, type: !143)
!1352 = !DILocalVariable(name: "mode", arg: 3, scope: !1346, file: !1347, line: 50, type: !934)
!1353 = !DILocation(line: 0, scope: !1346, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 140, column: 10, scope: !1341)
!1355 = !DILocation(line: 51, column: 3, scope: !1346, inlinedAt: !1354)
!1356 = !DILocation(line: 51, column: 9, scope: !1346, inlinedAt: !1354)
!1357 = !DILocation(line: 139, column: 7, scope: !1327)
!1358 = !DILocation(line: 145, column: 10, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 145, column: 7)
!1360 = !DILocation(line: 145, column: 31, scope: !1359)
!1361 = !DILocation(line: 145, column: 25, scope: !1359)
!1362 = !DILocation(line: 145, column: 7, scope: !1327)
!1363 = !DILocation(line: 146, column: 5, scope: !1359)
!1364 = !DILocation(line: 147, column: 11, scope: !1327)
!1365 = !DILocation(line: 148, column: 10, scope: !1338)
!1366 = !DILocation(line: 148, column: 31, scope: !1338)
!1367 = !DILocation(line: 148, column: 25, scope: !1338)
!1368 = !DILocation(line: 148, column: 7, scope: !1327)
!1369 = !DILocation(line: 150, column: 25, scope: !1337)
!1370 = !DILocation(line: 0, scope: !1337)
!1371 = !DILocation(line: 151, column: 7, scope: !1337)
!1372 = !DILocation(line: 152, column: 13, scope: !1337)
!1373 = !DILocation(line: 153, column: 5, scope: !1337)
!1374 = !DILocation(line: 154, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 154, column: 7)
!1376 = !DILocation(line: 154, column: 7, scope: !1327)
!1377 = !DILocation(line: 156, column: 15, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 155, column: 5)
!1379 = !DILocation(line: 156, column: 41, scope: !1378)
!1380 = !DILocalVariable(name: "dir", arg: 1, scope: !1381, file: !2, line: 122, type: !143)
!1381 = distinct !DISubprogram(name: "announce_mkdir", scope: !2, file: !2, line: 122, type: !1382, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !143, !138}
!1384 = !{!1380, !1385, !1386}
!1385 = !DILocalVariable(name: "options", arg: 2, scope: !1381, file: !2, line: 122, type: !138)
!1386 = !DILocalVariable(name: "o", scope: !1381, file: !2, line: 124, type: !1333)
!1387 = !DILocation(line: 0, scope: !1381, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 157, column: 7, scope: !1378)
!1389 = !DILocation(line: 125, column: 10, scope: !1390, inlinedAt: !1388)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 125, column: 7)
!1391 = !DILocation(line: 125, column: 7, scope: !1390, inlinedAt: !1388)
!1392 = !DILocation(line: 125, column: 7, scope: !1381, inlinedAt: !1388)
!1393 = !DILocation(line: 126, column: 19, scope: !1390, inlinedAt: !1388)
!1394 = !DILocation(line: 126, column: 56, scope: !1390, inlinedAt: !1388)
!1395 = !DILocation(line: 126, column: 5, scope: !1390, inlinedAt: !1388)
!1396 = !DILocation(line: 159, column: 3, scope: !1327)
!1397 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!80, !80, !1400, !143, !1402, !406}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1403 = !DISubprogram(name: "umask", scope: !1404, file: !1404, line: 380, type: !1405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1404 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!935, !935}
!1407 = !DISubprogram(name: "free", scope: !1162, file: !1162, line: 555, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !138}
!1410 = distinct !DISubprogram(name: "process_dir", scope: !2, file: !2, line: 164, type: !1411, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1414)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!80, !137, !1413, !138}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1414 = !{!1415, !1416, !1417, !1418, !1419}
!1415 = !DILocalVariable(name: "dir", arg: 1, scope: !1410, file: !2, line: 164, type: !137)
!1416 = !DILocalVariable(name: "wd", arg: 2, scope: !1410, file: !2, line: 164, type: !1413)
!1417 = !DILocalVariable(name: "options", arg: 3, scope: !1410, file: !2, line: 164, type: !138)
!1418 = !DILocalVariable(name: "o", scope: !1410, file: !2, line: 166, type: !1333)
!1419 = !DILocalVariable(name: "ret", scope: !1410, file: !2, line: 178, type: !80)
!1420 = !DILocation(line: 0, scope: !1410)
!1421 = !DILocation(line: 169, column: 10, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 169, column: 7)
!1423 = !DILocation(line: 169, column: 7, scope: !1422)
!1424 = !DILocation(line: 178, column: 44, scope: !1410)
!1425 = !DILocation(line: 169, column: 7, scope: !1410)
!1426 = !DILocation(line: 0, scope: !1346, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 172, column: 14, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 171, column: 11)
!1429 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 170, column: 5)
!1430 = !DILocation(line: 51, column: 3, scope: !1346, inlinedAt: !1427)
!1431 = !DILocation(line: 51, column: 9, scope: !1346, inlinedAt: !1427)
!1432 = !DILocation(line: 171, column: 11, scope: !1429)
!1433 = !DILocation(line: 179, column: 35, scope: !1410)
!1434 = !DILocation(line: 180, column: 35, scope: !1410)
!1435 = !{!1233, !1039, i64 20}
!1436 = !DILocation(line: 178, column: 14, scope: !1410)
!1437 = !DILocation(line: 189, column: 27, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 189, column: 7)
!1439 = !DILocation(line: 189, column: 33, scope: !1438)
!1440 = !DILocation(line: 189, column: 30, scope: !1438)
!1441 = !DILocation(line: 190, column: 7, scope: !1438)
!1442 = !DILocation(line: 190, column: 13, scope: !1438)
!1443 = !DILocation(line: 190, column: 10, scope: !1438)
!1444 = !DILocation(line: 189, column: 7, scope: !1410)
!1445 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1446, file: !1347, line: 44, type: !1210)
!1446 = distinct !DISubprogram(name: "restorecon", scope: !1347, file: !1347, line: 44, type: !1447, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!191, !1210, !143, !191}
!1449 = !{!1445, !1450, !1451}
!1450 = !DILocalVariable(name: "path", arg: 2, scope: !1446, file: !1347, line: 45, type: !143)
!1451 = !DILocalVariable(name: "recurse", arg: 3, scope: !1446, file: !1347, line: 45, type: !191)
!1452 = !DILocation(line: 0, scope: !1446, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 192, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 192, column: 11)
!1455 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 191, column: 5)
!1456 = !DILocation(line: 46, column: 3, scope: !1446, inlinedAt: !1453)
!1457 = !DILocation(line: 46, column: 9, scope: !1446, inlinedAt: !1453)
!1458 = !DILocation(line: 192, column: 11, scope: !1455)
!1459 = !DILocation(line: 198, column: 3, scope: !1410)
!1460 = !DISubprogram(name: "__errno_location", scope: !1461, file: !1461, line: 37, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1461 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!406}
!1464 = !DILocation(line: 0, scope: !1381)
!1465 = !DILocation(line: 125, column: 10, scope: !1390)
!1466 = !DILocation(line: 125, column: 7, scope: !1390)
!1467 = !DILocation(line: 125, column: 7, scope: !1381)
!1468 = !DILocation(line: 126, column: 19, scope: !1390)
!1469 = !DILocation(line: 126, column: 56, scope: !1390)
!1470 = !DILocation(line: 126, column: 5, scope: !1390)
!1471 = !DILocation(line: 127, column: 1, scope: !1381)
!1472 = !DISubprogram(name: "mkdir", scope: !1404, file: !1404, line: 389, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!80, !143, !935}
!1475 = distinct !DISubprogram(name: "prog_fprintf", scope: !410, file: !410, line: 28, type: !1476, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !1512)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !1478, !143, null}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1480, file: !208, line: 51, baseType: !80, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1480, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1480, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1480, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1480, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1480, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1480, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1480, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1480, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1480, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1480, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1480, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1480, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1480, file: !208, line: 70, baseType: !1496, size: 64, offset: 832)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1480, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1480, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1480, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1480, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1480, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1480, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1480, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1480, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1480, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1480, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1480, file: !208, line: 93, baseType: !1496, size: 64, offset: 1344)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1480, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1480, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1480, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1480, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1512 = !{!1513, !1514, !1515}
!1513 = !DILocalVariable(name: "fp", arg: 1, scope: !1475, file: !410, line: 28, type: !1478)
!1514 = !DILocalVariable(name: "fmt", arg: 2, scope: !1475, file: !410, line: 28, type: !143)
!1515 = !DILocalVariable(name: "ap", scope: !1475, file: !410, line: 30, type: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1033, line: 52, baseType: !1517)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1518, line: 12, baseType: !1519)
!1518 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !410, baseType: !1520)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1521, size: 192, elements: !60)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1521, file: !410, line: 30, baseType: !99, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1521, file: !410, line: 30, baseType: !99, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1521, file: !410, line: 30, baseType: !138, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1521, file: !410, line: 30, baseType: !138, size: 64, offset: 128)
!1527 = distinct !DIAssignID()
!1528 = !DILocation(line: 0, scope: !1475)
!1529 = !DILocation(line: 30, column: 3, scope: !1475)
!1530 = !DILocation(line: 31, column: 3, scope: !1475)
!1531 = !DILocation(line: 32, column: 3, scope: !1475)
!1532 = !DILocation(line: 33, column: 3, scope: !1475)
!1533 = !DILocalVariable(name: "__stream", arg: 1, scope: !1534, file: !1024, line: 132, type: !1537)
!1534 = distinct !DISubprogram(name: "vfprintf", scope: !1024, file: !1024, line: 132, type: !1535, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !1539)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!80, !1537, !1028, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1478)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1539 = !{!1533, !1540, !1541}
!1540 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1534, file: !1024, line: 133, type: !1028)
!1541 = !DILocalVariable(name: "__ap", arg: 3, scope: !1534, file: !1024, line: 133, type: !1538)
!1542 = !DILocation(line: 0, scope: !1534, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 34, column: 3, scope: !1475)
!1544 = !DILocation(line: 135, column: 10, scope: !1534, inlinedAt: !1543)
!1545 = !DILocation(line: 35, column: 3, scope: !1475)
!1546 = !DILocalVariable(name: "__c", arg: 1, scope: !1547, file: !1548, line: 91, type: !80)
!1547 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1548, file: !1548, line: 91, type: !1549, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !1551)
!1548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!80, !80, !1478}
!1551 = !{!1546, !1552}
!1552 = !DILocalVariable(name: "__stream", arg: 2, scope: !1547, file: !1548, line: 91, type: !1478)
!1553 = !DILocation(line: 0, scope: !1547, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 36, column: 3, scope: !1475)
!1555 = !DILocation(line: 93, column: 10, scope: !1547, inlinedAt: !1554)
!1556 = !{!1557, !970, i64 40}
!1557 = !{!"_IO_FILE", !1039, i64 0, !970, i64 8, !970, i64 16, !970, i64 24, !970, i64 32, !970, i64 40, !970, i64 48, !970, i64 56, !970, i64 64, !970, i64 72, !970, i64 80, !970, i64 88, !970, i64 96, !970, i64 104, !1039, i64 112, !1039, i64 116, !1558, i64 120, !1080, i64 128, !971, i64 130, !971, i64 131, !970, i64 136, !1558, i64 144, !970, i64 152, !970, i64 160, !970, i64 168, !970, i64 176, !1558, i64 184, !1039, i64 192, !971, i64 196}
!1558 = !{!"long", !971, i64 0}
!1559 = !{!1557, !970, i64 48}
!1560 = !{!"branch_weights", i32 2000, i32 1}
!1561 = !DILocation(line: 37, column: 1, scope: !1475)
!1562 = !DISubprogram(name: "__vfprintf_chk", scope: !1024, file: !1024, line: 96, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!80, !1537, !80, !1028, !1538}
!1565 = !DISubprogram(name: "__overflow", scope: !1033, file: !1033, line: 886, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!80, !1478, !80}
!1568 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !421, file: !421, line: 50, type: !988, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1569)
!1569 = !{!1570}
!1570 = !DILocalVariable(name: "file", arg: 1, scope: !1568, file: !421, line: 50, type: !143)
!1571 = !DILocation(line: 0, scope: !1568)
!1572 = !DILocation(line: 52, column: 13, scope: !1568)
!1573 = !DILocation(line: 53, column: 1, scope: !1568)
!1574 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !421, file: !421, line: 87, type: !1575, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1577)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !191}
!1577 = !{!1578}
!1578 = !DILocalVariable(name: "ignore", arg: 1, scope: !1574, file: !421, line: 87, type: !191)
!1579 = !DILocation(line: 0, scope: !1574)
!1580 = !DILocation(line: 89, column: 16, scope: !1574)
!1581 = !{!1582, !1582, i64 0}
!1582 = !{!"_Bool", !971, i64 0}
!1583 = !DILocation(line: 90, column: 1, scope: !1574)
!1584 = distinct !DISubprogram(name: "close_stdout", scope: !421, file: !421, line: 116, type: !479, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1585)
!1585 = !{!1586}
!1586 = !DILocalVariable(name: "write_error", scope: !1587, file: !421, line: 121, type: !143)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !421, line: 120, column: 5)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !421, line: 118, column: 7)
!1589 = !DILocation(line: 118, column: 21, scope: !1588)
!1590 = !DILocation(line: 118, column: 7, scope: !1588)
!1591 = !DILocation(line: 118, column: 29, scope: !1588)
!1592 = !DILocation(line: 119, column: 7, scope: !1588)
!1593 = !DILocation(line: 119, column: 12, scope: !1588)
!1594 = !{i8 0, i8 2}
!1595 = !DILocation(line: 119, column: 25, scope: !1588)
!1596 = !DILocation(line: 119, column: 28, scope: !1588)
!1597 = !DILocation(line: 119, column: 34, scope: !1588)
!1598 = !DILocation(line: 118, column: 7, scope: !1584)
!1599 = !DILocation(line: 121, column: 33, scope: !1587)
!1600 = !DILocation(line: 0, scope: !1587)
!1601 = !DILocation(line: 122, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1587, file: !421, line: 122, column: 11)
!1603 = !DILocation(line: 0, scope: !1602)
!1604 = !DILocation(line: 122, column: 11, scope: !1587)
!1605 = !DILocation(line: 123, column: 9, scope: !1602)
!1606 = !DILocation(line: 126, column: 9, scope: !1602)
!1607 = !DILocation(line: 128, column: 14, scope: !1587)
!1608 = !DILocation(line: 128, column: 7, scope: !1587)
!1609 = !DILocation(line: 133, column: 42, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1584, file: !421, line: 133, column: 7)
!1611 = !DILocation(line: 133, column: 28, scope: !1610)
!1612 = !DILocation(line: 133, column: 50, scope: !1610)
!1613 = !DILocation(line: 133, column: 7, scope: !1584)
!1614 = !DILocation(line: 134, column: 12, scope: !1610)
!1615 = !DILocation(line: 134, column: 5, scope: !1610)
!1616 = !DILocation(line: 135, column: 1, scope: !1584)
!1617 = !DISubprogram(name: "_exit", scope: !1618, file: !1618, line: 624, type: !959, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1618 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1619 = distinct !DISubprogram(name: "verror", scope: !436, file: !436, line: 251, type: !1620, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !80, !80, !143, !446}
!1622 = !{!1623, !1624, !1625, !1626}
!1623 = !DILocalVariable(name: "status", arg: 1, scope: !1619, file: !436, line: 251, type: !80)
!1624 = !DILocalVariable(name: "errnum", arg: 2, scope: !1619, file: !436, line: 251, type: !80)
!1625 = !DILocalVariable(name: "message", arg: 3, scope: !1619, file: !436, line: 251, type: !143)
!1626 = !DILocalVariable(name: "args", arg: 4, scope: !1619, file: !436, line: 251, type: !446)
!1627 = !DILocation(line: 0, scope: !1619)
!1628 = !DILocation(line: 261, column: 3, scope: !1619)
!1629 = !DILocation(line: 265, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1619, file: !436, line: 265, column: 7)
!1631 = !DILocation(line: 265, column: 7, scope: !1619)
!1632 = !DILocation(line: 266, column: 5, scope: !1630)
!1633 = !DILocation(line: 272, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !436, line: 268, column: 5)
!1635 = !DILocation(line: 276, column: 3, scope: !1619)
!1636 = !DILocation(line: 282, column: 1, scope: !1619)
!1637 = distinct !DISubprogram(name: "flush_stdout", scope: !436, file: !436, line: 163, type: !479, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1638)
!1638 = !{!1639}
!1639 = !DILocalVariable(name: "stdout_fd", scope: !1637, file: !436, line: 166, type: !80)
!1640 = !DILocation(line: 0, scope: !1637)
!1641 = !DILocalVariable(name: "fd", arg: 1, scope: !1642, file: !436, line: 145, type: !80)
!1642 = distinct !DISubprogram(name: "is_open", scope: !436, file: !436, line: 145, type: !1643, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!80, !80}
!1645 = !{!1641}
!1646 = !DILocation(line: 0, scope: !1642, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 182, column: 25, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1637, file: !436, line: 182, column: 7)
!1649 = !DILocation(line: 157, column: 15, scope: !1642, inlinedAt: !1647)
!1650 = !DILocation(line: 157, column: 12, scope: !1642, inlinedAt: !1647)
!1651 = !DILocation(line: 182, column: 7, scope: !1637)
!1652 = !DILocation(line: 184, column: 5, scope: !1648)
!1653 = !DILocation(line: 185, column: 1, scope: !1637)
!1654 = distinct !DISubprogram(name: "error_tail", scope: !436, file: !436, line: 219, type: !1620, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1655)
!1655 = !{!1656, !1657, !1658, !1659}
!1656 = !DILocalVariable(name: "status", arg: 1, scope: !1654, file: !436, line: 219, type: !80)
!1657 = !DILocalVariable(name: "errnum", arg: 2, scope: !1654, file: !436, line: 219, type: !80)
!1658 = !DILocalVariable(name: "message", arg: 3, scope: !1654, file: !436, line: 219, type: !143)
!1659 = !DILocalVariable(name: "args", arg: 4, scope: !1654, file: !436, line: 219, type: !446)
!1660 = distinct !DIAssignID()
!1661 = !DILocation(line: 0, scope: !1654)
!1662 = !DILocation(line: 229, column: 13, scope: !1654)
!1663 = !DILocalVariable(name: "__stream", arg: 1, scope: !1664, file: !1024, line: 132, type: !1667)
!1664 = distinct !DISubprogram(name: "vfprintf", scope: !1024, file: !1024, line: 132, type: !1665, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1702)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!80, !1667, !1028, !446}
!1667 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1668)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1670, file: !208, line: 51, baseType: !80, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1670, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1670, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1670, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1670, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1670, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1670, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1670, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1670, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1670, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1670, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1670, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1670, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1670, file: !208, line: 70, baseType: !1686, size: 64, offset: 832)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1670, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1670, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1670, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1670, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1670, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1670, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1670, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1670, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1670, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1670, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1670, file: !208, line: 93, baseType: !1686, size: 64, offset: 1344)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1670, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1670, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1670, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1670, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1702 = !{!1663, !1703, !1704}
!1703 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1664, file: !1024, line: 133, type: !1028)
!1704 = !DILocalVariable(name: "__ap", arg: 3, scope: !1664, file: !1024, line: 133, type: !446)
!1705 = !DILocation(line: 0, scope: !1664, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 229, column: 3, scope: !1654)
!1707 = !DILocation(line: 135, column: 10, scope: !1664, inlinedAt: !1706)
!1708 = !DILocation(line: 232, column: 3, scope: !1654)
!1709 = !DILocation(line: 233, column: 7, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1654, file: !436, line: 233, column: 7)
!1711 = !DILocation(line: 233, column: 7, scope: !1654)
!1712 = !DILocalVariable(name: "errbuf", scope: !1713, file: !436, line: 193, type: !1717)
!1713 = distinct !DISubprogram(name: "print_errno_message", scope: !436, file: !436, line: 188, type: !959, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1714)
!1714 = !{!1715, !1716, !1712}
!1715 = !DILocalVariable(name: "errnum", arg: 1, scope: !1713, file: !436, line: 188, type: !80)
!1716 = !DILocalVariable(name: "s", scope: !1713, file: !436, line: 190, type: !143)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 1024)
!1720 = !DILocation(line: 0, scope: !1713, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 234, column: 5, scope: !1710)
!1722 = !DILocation(line: 193, column: 3, scope: !1713, inlinedAt: !1721)
!1723 = !DILocation(line: 195, column: 7, scope: !1713, inlinedAt: !1721)
!1724 = !DILocation(line: 207, column: 9, scope: !1725, inlinedAt: !1721)
!1725 = distinct !DILexicalBlock(scope: !1713, file: !436, line: 207, column: 7)
!1726 = !DILocation(line: 207, column: 7, scope: !1713, inlinedAt: !1721)
!1727 = !DILocation(line: 208, column: 9, scope: !1725, inlinedAt: !1721)
!1728 = !DILocation(line: 208, column: 5, scope: !1725, inlinedAt: !1721)
!1729 = !DILocation(line: 214, column: 3, scope: !1713, inlinedAt: !1721)
!1730 = !DILocation(line: 216, column: 1, scope: !1713, inlinedAt: !1721)
!1731 = !DILocation(line: 234, column: 5, scope: !1710)
!1732 = !DILocation(line: 238, column: 3, scope: !1654)
!1733 = !DILocalVariable(name: "__c", arg: 1, scope: !1734, file: !1548, line: 101, type: !80)
!1734 = distinct !DISubprogram(name: "putc_unlocked", scope: !1548, file: !1548, line: 101, type: !1735, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1737)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!80, !80, !1668}
!1737 = !{!1733, !1738}
!1738 = !DILocalVariable(name: "__stream", arg: 2, scope: !1734, file: !1548, line: 101, type: !1668)
!1739 = !DILocation(line: 0, scope: !1734, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 238, column: 3, scope: !1654)
!1741 = !DILocation(line: 103, column: 10, scope: !1734, inlinedAt: !1740)
!1742 = !DILocation(line: 240, column: 3, scope: !1654)
!1743 = !DILocation(line: 241, column: 7, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1654, file: !436, line: 241, column: 7)
!1745 = !DILocation(line: 241, column: 7, scope: !1654)
!1746 = !DILocation(line: 242, column: 5, scope: !1744)
!1747 = !DILocation(line: 243, column: 1, scope: !1654)
!1748 = !DISubprogram(name: "strerror_r", scope: !1158, file: !1158, line: 444, type: !1749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!137, !80, !137, !140}
!1751 = !DISubprogram(name: "fflush_unlocked", scope: !1033, file: !1033, line: 239, type: !1752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!80, !1668}
!1754 = !DISubprogram(name: "fcntl", scope: !1755, file: !1755, line: 149, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1755 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!80, !80, !80, null}
!1758 = distinct !DISubprogram(name: "error", scope: !436, file: !436, line: 285, type: !1759, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !80, !80, !143, null}
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = !DILocalVariable(name: "status", arg: 1, scope: !1758, file: !436, line: 285, type: !80)
!1763 = !DILocalVariable(name: "errnum", arg: 2, scope: !1758, file: !436, line: 285, type: !80)
!1764 = !DILocalVariable(name: "message", arg: 3, scope: !1758, file: !436, line: 285, type: !143)
!1765 = !DILocalVariable(name: "ap", scope: !1758, file: !436, line: 287, type: !1766)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1033, line: 52, baseType: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1518, line: 12, baseType: !1768)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !436, baseType: !1769)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 192, elements: !60)
!1770 = distinct !DIAssignID()
!1771 = !DILocation(line: 0, scope: !1758)
!1772 = !DILocation(line: 287, column: 3, scope: !1758)
!1773 = !DILocation(line: 288, column: 3, scope: !1758)
!1774 = !DILocation(line: 289, column: 3, scope: !1758)
!1775 = !DILocation(line: 290, column: 3, scope: !1758)
!1776 = !DILocation(line: 291, column: 1, scope: !1758)
!1777 = !DILocation(line: 0, scope: !443)
!1778 = !DILocation(line: 302, column: 7, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !443, file: !436, line: 302, column: 7)
!1780 = !DILocation(line: 302, column: 7, scope: !443)
!1781 = !DILocation(line: 307, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !436, line: 307, column: 11)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !436, line: 303, column: 5)
!1784 = !DILocation(line: 307, column: 27, scope: !1782)
!1785 = !DILocation(line: 308, column: 11, scope: !1782)
!1786 = !DILocation(line: 308, column: 28, scope: !1782)
!1787 = !DILocation(line: 308, column: 25, scope: !1782)
!1788 = !DILocation(line: 309, column: 15, scope: !1782)
!1789 = !DILocation(line: 309, column: 33, scope: !1782)
!1790 = !DILocation(line: 310, column: 19, scope: !1782)
!1791 = !DILocation(line: 311, column: 22, scope: !1782)
!1792 = !DILocation(line: 311, column: 56, scope: !1782)
!1793 = !DILocation(line: 307, column: 11, scope: !1783)
!1794 = !DILocation(line: 316, column: 21, scope: !1783)
!1795 = !DILocation(line: 317, column: 23, scope: !1783)
!1796 = !DILocation(line: 318, column: 5, scope: !1783)
!1797 = !DILocation(line: 327, column: 3, scope: !443)
!1798 = !DILocation(line: 331, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !443, file: !436, line: 331, column: 7)
!1800 = !DILocation(line: 331, column: 7, scope: !443)
!1801 = !DILocation(line: 332, column: 5, scope: !1799)
!1802 = !DILocation(line: 338, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !436, line: 334, column: 5)
!1804 = !DILocation(line: 346, column: 3, scope: !443)
!1805 = !DILocation(line: 350, column: 3, scope: !443)
!1806 = !DILocation(line: 356, column: 1, scope: !443)
!1807 = distinct !DISubprogram(name: "error_at_line", scope: !436, file: !436, line: 359, type: !1808, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !80, !80, !143, !99, !143, null}
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816}
!1811 = !DILocalVariable(name: "status", arg: 1, scope: !1807, file: !436, line: 359, type: !80)
!1812 = !DILocalVariable(name: "errnum", arg: 2, scope: !1807, file: !436, line: 359, type: !80)
!1813 = !DILocalVariable(name: "file_name", arg: 3, scope: !1807, file: !436, line: 359, type: !143)
!1814 = !DILocalVariable(name: "line_number", arg: 4, scope: !1807, file: !436, line: 360, type: !99)
!1815 = !DILocalVariable(name: "message", arg: 5, scope: !1807, file: !436, line: 360, type: !143)
!1816 = !DILocalVariable(name: "ap", scope: !1807, file: !436, line: 362, type: !1766)
!1817 = distinct !DIAssignID()
!1818 = !DILocation(line: 0, scope: !1807)
!1819 = !DILocation(line: 362, column: 3, scope: !1807)
!1820 = !DILocation(line: 363, column: 3, scope: !1807)
!1821 = !DILocation(line: 364, column: 3, scope: !1807)
!1822 = !DILocation(line: 366, column: 3, scope: !1807)
!1823 = !DILocation(line: 367, column: 1, scope: !1807)
!1824 = distinct !DISubprogram(name: "getprogname", scope: !822, file: !822, line: 54, type: !1825, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!143}
!1827 = !DILocation(line: 58, column: 10, scope: !1824)
!1828 = !DILocation(line: 58, column: 3, scope: !1824)
!1829 = distinct !DISubprogram(name: "make_dir_parents", scope: !483, file: !483, line: 85, type: !1830, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !1834)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!191, !137, !1832, !1202, !138, !934, !1833, !934, !146, !148, !191}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1834 = !{!1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1849, !1850, !1853, !1854, !1855, !1858, !1895, !1898, !1899, !1903}
!1835 = !DILocalVariable(name: "dir", arg: 1, scope: !1829, file: !483, line: 85, type: !137)
!1836 = !DILocalVariable(name: "wd", arg: 2, scope: !1829, file: !483, line: 86, type: !1832)
!1837 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1829, file: !483, line: 87, type: !1202)
!1838 = !DILocalVariable(name: "options", arg: 4, scope: !1829, file: !483, line: 88, type: !138)
!1839 = !DILocalVariable(name: "mode", arg: 5, scope: !1829, file: !483, line: 89, type: !934)
!1840 = !DILocalVariable(name: "announce", arg: 6, scope: !1829, file: !483, line: 90, type: !1833)
!1841 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1829, file: !483, line: 91, type: !934)
!1842 = !DILocalVariable(name: "owner", arg: 8, scope: !1829, file: !483, line: 92, type: !146)
!1843 = !DILocalVariable(name: "group", arg: 9, scope: !1829, file: !483, line: 93, type: !148)
!1844 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1829, file: !483, line: 94, type: !191)
!1845 = !DILocalVariable(name: "mkdir_errno", scope: !1829, file: !483, line: 96, type: !80)
!1846 = !DILocalVariable(name: "savewd_chdir_options", scope: !1847, file: !483, line: 100, type: !80)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !483, line: 99, column: 5)
!1848 = distinct !DILexicalBlock(scope: !1829, file: !483, line: 98, column: 7)
!1849 = !DILocalVariable(name: "prefix_len", scope: !1847, file: !483, line: 102, type: !893)
!1850 = !DILocalVariable(name: "keep_owner", scope: !1851, file: !483, line: 121, type: !191)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !483, line: 115, column: 9)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !483, line: 114, column: 11)
!1853 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1851, file: !483, line: 122, type: !191)
!1854 = !DILocalVariable(name: "mkdir_mode", scope: !1851, file: !483, line: 124, type: !934)
!1855 = !DILocalVariable(name: "umask_must_be_ok", scope: !1856, file: !483, line: 134, type: !191)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !483, line: 131, column: 13)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !483, line: 130, column: 15)
!1858 = !DILocalVariable(name: "st", scope: !1859, file: !483, line: 155, type: !1864)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !483, line: 154, column: 17)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !483, line: 153, column: 19)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !483, line: 150, column: 13)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !483, line: 149, column: 20)
!1863 = distinct !DILexicalBlock(scope: !1851, file: !483, line: 147, column: 15)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1865, line: 26, size: 1152, elements: !1866)
!1865 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1866 = !{!1867, !1869, !1871, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1881, !1883, !1891, !1892, !1893}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1864, file: !1865, line: 31, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !98, line: 145, baseType: !142)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1864, file: !1865, line: 36, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !98, line: 148, baseType: !142)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1864, file: !1865, line: 44, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !98, line: 151, baseType: !142)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1864, file: !1865, line: 45, baseType: !935, size: 32, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1864, file: !1865, line: 47, baseType: !147, size: 32, offset: 224)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1864, file: !1865, line: 48, baseType: !149, size: 32, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1864, file: !1865, line: 50, baseType: !80, size: 32, offset: 288)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1864, file: !1865, line: 52, baseType: !1868, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1864, file: !1865, line: 57, baseType: !230, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1864, file: !1865, line: 61, baseType: !1880, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !98, line: 175, baseType: !231)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1864, file: !1865, line: 63, baseType: !1882, size: 64, offset: 512)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !98, line: 180, baseType: !231)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1864, file: !1865, line: 74, baseType: !1884, size: 128, offset: 576)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1885, line: 11, size: 128, elements: !1886)
!1885 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1886 = !{!1887, !1889}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1884, file: !1885, line: 16, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !98, line: 160, baseType: !231)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1884, file: !1885, line: 21, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !98, line: 197, baseType: !231)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1864, file: !1865, line: 75, baseType: !1884, size: 128, offset: 704)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1864, file: !1865, line: 76, baseType: !1884, size: 128, offset: 832)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1864, file: !1865, line: 89, baseType: !1894, size: 192, offset: 960)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 192, elements: !287)
!1895 = !DILocalVariable(name: "open_result", scope: !1896, file: !483, line: 171, type: !1897)
!1896 = distinct !DILexicalBlock(scope: !1862, file: !483, line: 170, column: 13)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !278)
!1898 = !DILocalVariable(name: "chdir_result", scope: !1896, file: !483, line: 172, type: !80)
!1899 = !DILocalVariable(name: "chdir_ok", scope: !1900, file: !483, line: 179, type: !191)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !483, line: 178, column: 17)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !483, line: 177, column: 24)
!1902 = distinct !DILexicalBlock(scope: !1896, file: !483, line: 175, column: 19)
!1903 = !DILocalVariable(name: "subdir", scope: !1900, file: !483, line: 180, type: !143)
!1904 = distinct !DIAssignID()
!1905 = !DILocation(line: 0, scope: !1859)
!1906 = distinct !DIAssignID()
!1907 = !DILocation(line: 0, scope: !1896)
!1908 = !DILocation(line: 0, scope: !1829)
!1909 = !DILocation(line: 96, column: 22, scope: !1829)
!1910 = !DILocalVariable(name: "wd", arg: 1, scope: !1911, file: !826, line: 131, type: !1914)
!1911 = distinct !DISubprogram(name: "savewd_errno", scope: !826, file: !826, line: 131, type: !1912, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !1916)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!80, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!1916 = !{!1910}
!1917 = !DILocation(line: 0, scope: !1911, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 96, column: 56, scope: !1829)
!1919 = !DILocation(line: 133, column: 14, scope: !1911, inlinedAt: !1918)
!1920 = !{!1921, !1039, i64 0}
!1921 = !{!"savewd", !1039, i64 0, !971, i64 4}
!1922 = !DILocation(line: 133, column: 20, scope: !1911, inlinedAt: !1918)
!1923 = !DILocation(line: 133, column: 10, scope: !1911, inlinedAt: !1918)
!1924 = !DILocation(line: 133, column: 44, scope: !1911, inlinedAt: !1918)
!1925 = !DILocation(line: 133, column: 48, scope: !1911, inlinedAt: !1918)
!1926 = !DILocation(line: 98, column: 19, scope: !1848)
!1927 = !DILocation(line: 98, column: 7, scope: !1829)
!1928 = !DILocation(line: 0, scope: !1847)
!1929 = !DILocation(line: 103, column: 11, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1847, file: !483, line: 103, column: 11)
!1931 = !DILocation(line: 103, column: 11, scope: !1847)
!1932 = !DILocation(line: 105, column: 24, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !483, line: 104, column: 9)
!1934 = !DILocation(line: 106, column: 26, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1933, file: !483, line: 106, column: 15)
!1936 = !DILocation(line: 106, column: 15, scope: !1933)
!1937 = !DILocation(line: 108, column: 30, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !483, line: 108, column: 19)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !483, line: 107, column: 13)
!1940 = !DILocation(line: 108, column: 19, scope: !1939)
!1941 = !DILocation(line: 110, column: 29, scope: !1939)
!1942 = !DILocation(line: 114, column: 11, scope: !1847)
!1943 = !DILocation(line: 121, column: 49, scope: !1851)
!1944 = !DILocation(line: 0, scope: !1851)
!1945 = !DILocation(line: 123, column: 25, scope: !1851)
!1946 = !DILocation(line: 123, column: 56, scope: !1851)
!1947 = !DILocation(line: 123, column: 48, scope: !1851)
!1948 = !DILocation(line: 125, column: 15, scope: !1851)
!1949 = !DILocation(line: 130, column: 26, scope: !1857)
!1950 = !DILocation(line: 130, column: 15, scope: !1857)
!1951 = !DILocation(line: 130, column: 52, scope: !1857)
!1952 = !DILocation(line: 130, column: 15, scope: !1851)
!1953 = !DILocation(line: 134, column: 45, scope: !1856)
!1954 = !DILocation(line: 134, column: 57, scope: !1856)
!1955 = !DILocation(line: 0, scope: !1856)
!1956 = !DILocation(line: 136, column: 15, scope: !1856)
!1957 = !DILocation(line: 138, column: 36, scope: !1856)
!1958 = !DILocation(line: 149, column: 20, scope: !1863)
!1959 = !DILocation(line: 143, column: 29, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1857, file: !483, line: 142, column: 13)
!1961 = !DILocation(line: 147, column: 37, scope: !1863)
!1962 = !DILocation(line: 151, column: 31, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1861, file: !483, line: 151, column: 19)
!1964 = !DILocation(line: 151, column: 19, scope: !1861)
!1965 = !DILocation(line: 153, column: 19, scope: !1861)
!1966 = !DILocation(line: 155, column: 19, scope: !1859)
!1967 = !DILocation(line: 156, column: 23, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1859, file: !483, line: 156, column: 23)
!1969 = !DILocation(line: 156, column: 52, scope: !1968)
!1970 = !DILocation(line: 156, column: 23, scope: !1859)
!1971 = !DILocation(line: 158, column: 27, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !483, line: 158, column: 27)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !483, line: 157, column: 21)
!1974 = !{!1975, !1039, i64 24}
!1975 = !{!"stat", !1558, i64 0, !1558, i64 8, !1558, i64 16, !1039, i64 24, !1039, i64 28, !1039, i64 32, !1039, i64 36, !1558, i64 40, !1558, i64 48, !1558, i64 56, !1558, i64 64, !1976, i64 72, !1976, i64 88, !1976, i64 104, !971, i64 120}
!1976 = !{!"timespec", !1558, i64 0, !1558, i64 8}
!1977 = !DILocation(line: 158, column: 27, scope: !1973)
!1978 = !DILocation(line: 161, column: 40, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1968, file: !483, line: 161, column: 28)
!1980 = !DILocation(line: 162, column: 28, scope: !1979)
!1981 = !DILocation(line: 162, column: 31, scope: !1979)
!1982 = !DILocation(line: 162, column: 47, scope: !1979)
!1983 = !DILocation(line: 164, column: 23, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !483, line: 163, column: 21)
!1985 = !DILocation(line: 165, column: 23, scope: !1984)
!1986 = !DILocation(line: 167, column: 17, scope: !1860)
!1987 = !DILocation(line: 171, column: 15, scope: !1896)
!1988 = !DILocation(line: 173, column: 17, scope: !1896)
!1989 = !DILocation(line: 175, column: 32, scope: !1902)
!1990 = !DILocation(line: 175, column: 19, scope: !1896)
!1991 = !DILocation(line: 177, column: 37, scope: !1901)
!1992 = !DILocation(line: 177, column: 42, scope: !1901)
!1993 = !DILocation(line: 177, column: 45, scope: !1901)
!1994 = !DILocation(line: 177, column: 51, scope: !1901)
!1995 = !DILocation(line: 177, column: 24, scope: !1902)
!1996 = !DILocation(line: 180, column: 41, scope: !1900)
!1997 = !DILocation(line: 0, scope: !1900)
!1998 = !DILocation(line: 181, column: 36, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1900, file: !483, line: 181, column: 23)
!2000 = !DILocation(line: 181, column: 23, scope: !1999)
!2001 = !DILocation(line: 183, column: 23, scope: !1999)
!2002 = !DILocation(line: 181, column: 23, scope: !1900)
!2003 = !DILocation(line: 186, column: 35, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1900, file: !483, line: 186, column: 23)
!2005 = !DILocation(line: 187, column: 23, scope: !2004)
!2006 = !DILocation(line: 189, column: 23, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !483, line: 188, column: 21)
!2008 = !DILocation(line: 187, column: 41, scope: !2004)
!2009 = !DILocation(line: 187, column: 44, scope: !2004)
!2010 = !DILocation(line: 187, column: 60, scope: !2004)
!2011 = !DILocation(line: 194, column: 23, scope: !2007)
!2012 = !DILocation(line: 199, column: 35, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !483, line: 199, column: 23)
!2014 = distinct !DILexicalBlock(scope: !1901, file: !483, line: 198, column: 17)
!2015 = !DILocation(line: 199, column: 23, scope: !2014)
!2016 = !DILocation(line: 201, column: 28, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !483, line: 201, column: 23)
!2018 = !DILocation(line: 201, column: 25, scope: !2017)
!2019 = !DILocation(line: 201, column: 23, scope: !2014)
!2020 = !DILocation(line: 202, column: 21, scope: !2017)
!2021 = !DILocation(line: 204, column: 13, scope: !1862)
!2022 = !DILocation(line: 0, scope: !1902)
!2023 = !DILocation(line: 96, column: 7, scope: !1829)
!2024 = !DILocation(line: 208, column: 3, scope: !1829)
!2025 = !DILocation(line: 209, column: 3, scope: !1829)
!2026 = !DILocation(line: 210, column: 1, scope: !1829)
!2027 = !DISubprogram(name: "stat", scope: !1404, file: !1404, line: 205, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!80, !1028, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!2032 = !DISubprogram(name: "close", scope: !1618, file: !1618, line: 358, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2033 = distinct !DISubprogram(name: "mode_compile", scope: !843, file: !843, line: 134, type: !2034, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !2044)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!2036, !143}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !843, line: 98, size: 128, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042, !2043}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2037, file: !843, line: 100, baseType: !4, size: 8)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !2037, file: !843, line: 101, baseType: !4, size: 8, offset: 8)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !2037, file: !843, line: 102, baseType: !934, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2037, file: !843, line: 103, baseType: !934, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !2037, file: !843, line: 104, baseType: !934, size: 32, offset: 96)
!2044 = !{!2045, !2046, !2049, !2050, !2051, !2052, !2053, !2055, !2057, !2058, !2059, !2063, !2064, !2066, !2067, !2068, !2069, !2072, !2073, !2074}
!2045 = !DILocalVariable(name: "mode_string", arg: 1, scope: !2033, file: !843, line: 134, type: !143)
!2046 = !DILocalVariable(name: "p", scope: !2047, file: !843, line: 138, type: !143)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !843, line: 137, column: 5)
!2048 = distinct !DILexicalBlock(scope: !2033, file: !843, line: 136, column: 7)
!2049 = !DILocalVariable(name: "octal_mode", scope: !2047, file: !843, line: 139, type: !99)
!2050 = !DILocalVariable(name: "mode", scope: !2047, file: !843, line: 140, type: !934)
!2051 = !DILocalVariable(name: "mentioned", scope: !2047, file: !843, line: 141, type: !934)
!2052 = !DILocalVariable(name: "mc", scope: !2033, file: !843, line: 163, type: !2036)
!2053 = !DILocalVariable(name: "needed", scope: !2054, file: !843, line: 167, type: !140)
!2054 = distinct !DILexicalBlock(scope: !2033, file: !843, line: 166, column: 3)
!2055 = !DILocalVariable(name: "p", scope: !2056, file: !843, line: 168, type: !143)
!2056 = distinct !DILexicalBlock(scope: !2054, file: !843, line: 168, column: 5)
!2057 = !DILocalVariable(name: "used", scope: !2033, file: !843, line: 175, type: !140)
!2058 = !DILocalVariable(name: "p", scope: !2033, file: !843, line: 176, type: !143)
!2059 = !DILocalVariable(name: "affected", scope: !2060, file: !843, line: 180, type: !934)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !843, line: 178, column: 5)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !843, line: 177, column: 3)
!2062 = distinct !DILexicalBlock(scope: !2033, file: !843, line: 177, column: 3)
!2063 = !DILabel(scope: !2060, name: "no_more_affected", file: !843, line: 203)
!2064 = !DILocalVariable(name: "op", scope: !2065, file: !843, line: 207, type: !4)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !843, line: 206, column: 9)
!2066 = !DILocalVariable(name: "value", scope: !2065, file: !843, line: 208, type: !934)
!2067 = !DILocalVariable(name: "mentioned", scope: !2065, file: !843, line: 209, type: !934)
!2068 = !DILocalVariable(name: "flag", scope: !2065, file: !843, line: 210, type: !4)
!2069 = !DILocalVariable(name: "octal_mode", scope: !2070, file: !843, line: 217, type: !99)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !843, line: 216, column: 15)
!2071 = distinct !DILexicalBlock(scope: !2065, file: !843, line: 213, column: 13)
!2072 = !DILabel(scope: !2071, name: "no_more_values", file: !843, line: 284)
!2073 = !DILocalVariable(name: "change", scope: !2065, file: !843, line: 287, type: !2036)
!2074 = !DILabel(scope: !2033, name: "invalid", file: !843, line: 308)
!2075 = !DILocation(line: 0, scope: !2033)
!2076 = !DILocation(line: 136, column: 14, scope: !2048)
!2077 = !DILocation(line: 136, column: 27, scope: !2048)
!2078 = !DILocation(line: 146, column: 41, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2047, file: !843, line: 145, column: 9)
!2080 = !DILocation(line: 0, scope: !2047)
!2081 = !DILocation(line: 146, column: 26, scope: !2079)
!2082 = !DILocation(line: 146, column: 39, scope: !2079)
!2083 = !DILocation(line: 146, column: 46, scope: !2079)
!2084 = !DILocation(line: 147, column: 20, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !843, line: 147, column: 15)
!2086 = !DILocation(line: 147, column: 15, scope: !2079)
!2087 = !DILocation(line: 146, column: 43, scope: !2079)
!2088 = !DILocation(line: 150, column: 21, scope: !2047)
!2089 = !DILocation(line: 150, column: 24, scope: !2047)
!2090 = distinct !{!2090, !2091, !2092, !1085}
!2091 = !DILocation(line: 144, column: 7, scope: !2047)
!2092 = !DILocation(line: 150, column: 35, scope: !2047)
!2093 = !DILocation(line: 152, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2047, file: !843, line: 152, column: 11)
!2095 = !DILocation(line: 152, column: 11, scope: !2047)
!2096 = !DILocation(line: 156, column: 22, scope: !2047)
!2097 = !DILocation(line: 156, column: 36, scope: !2047)
!2098 = !DILocation(line: 156, column: 20, scope: !2047)
!2099 = !DILocalVariable(name: "new_mode", arg: 1, scope: !2100, file: !843, line: 112, type: !934)
!2100 = distinct !DISubprogram(name: "make_node_op_equals", scope: !843, file: !843, line: 112, type: !2101, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!2036, !934, !934}
!2103 = !{!2099, !2104, !2105}
!2104 = !DILocalVariable(name: "mentioned", arg: 2, scope: !2100, file: !843, line: 112, type: !934)
!2105 = !DILocalVariable(name: "p", scope: !2100, file: !843, line: 114, type: !2036)
!2106 = !DILocation(line: 0, scope: !2100, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 159, column: 14, scope: !2047)
!2108 = !DILocation(line: 114, column: 27, scope: !2100, inlinedAt: !2107)
!2109 = !DILocation(line: 115, column: 9, scope: !2100, inlinedAt: !2107)
!2110 = !{!2111, !971, i64 0}
!2111 = !{!"mode_change", !971, i64 0, !971, i64 1, !1039, i64 4, !1039, i64 8, !1039, i64 12}
!2112 = !DILocation(line: 116, column: 6, scope: !2100, inlinedAt: !2107)
!2113 = !DILocation(line: 116, column: 11, scope: !2100, inlinedAt: !2107)
!2114 = !{!2111, !971, i64 1}
!2115 = !DILocation(line: 117, column: 6, scope: !2100, inlinedAt: !2107)
!2116 = !DILocation(line: 117, column: 15, scope: !2100, inlinedAt: !2107)
!2117 = !{!2111, !1039, i64 4}
!2118 = !DILocation(line: 118, column: 6, scope: !2100, inlinedAt: !2107)
!2119 = !DILocation(line: 118, column: 12, scope: !2100, inlinedAt: !2107)
!2120 = !{!2111, !1039, i64 8}
!2121 = !DILocation(line: 119, column: 6, scope: !2100, inlinedAt: !2107)
!2122 = !DILocation(line: 119, column: 16, scope: !2100, inlinedAt: !2107)
!2123 = !{!2111, !1039, i64 12}
!2124 = !DILocation(line: 120, column: 8, scope: !2100, inlinedAt: !2107)
!2125 = !DILocation(line: 120, column: 13, scope: !2100, inlinedAt: !2107)
!2126 = !DILocation(line: 159, column: 7, scope: !2047)
!2127 = !DILocation(line: 168, column: 39, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2056, file: !843, line: 168, column: 5)
!2129 = !DILocation(line: 0, scope: !2054)
!2130 = !DILocation(line: 168, scope: !2056)
!2131 = !DILocation(line: 0, scope: !2056)
!2132 = !DILocation(line: 168, column: 5, scope: !2056)
!2133 = !DILocation(line: 170, column: 10, scope: !2054)
!2134 = !DILocation(line: 177, column: 8, scope: !2062)
!2135 = !DILocation(line: 169, column: 41, scope: !2128)
!2136 = !DILocation(line: 169, column: 14, scope: !2128)
!2137 = !DILocation(line: 168, column: 44, scope: !2128)
!2138 = !DILocation(line: 168, column: 5, scope: !2128)
!2139 = distinct !{!2139, !2132, !2140, !1085}
!2140 = !DILocation(line: 169, column: 53, scope: !2056)
!2141 = !DILocation(line: 175, column: 10, scope: !2033)
!2142 = !DILocation(line: 177, scope: !2062)
!2143 = !DILocation(line: 0, scope: !2065)
!2144 = !DILocation(line: 0, scope: !2060)
!2145 = !DILocation(line: 183, column: 7, scope: !2060)
!2146 = !DILocation(line: 0, scope: !2062)
!2147 = !DILocation(line: 184, column: 17, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !843, line: 183, column: 7)
!2149 = distinct !DILexicalBlock(scope: !2060, file: !843, line: 183, column: 7)
!2150 = !DILocation(line: 184, column: 9, scope: !2148)
!2151 = !DILocation(line: 212, column: 11, scope: !2065)
!2152 = !DILocation(line: 189, column: 22, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !843, line: 185, column: 11)
!2154 = !DILocation(line: 190, column: 13, scope: !2153)
!2155 = !DILocation(line: 192, column: 22, scope: !2153)
!2156 = !DILocation(line: 193, column: 13, scope: !2153)
!2157 = !DILocation(line: 195, column: 22, scope: !2153)
!2158 = !DILocation(line: 196, column: 13, scope: !2153)
!2159 = !DILocation(line: 0, scope: !2153)
!2160 = !DILocation(line: 183, column: 16, scope: !2148)
!2161 = !DILocation(line: 183, column: 7, scope: !2148)
!2162 = distinct !{!2162, !2163, !2164}
!2163 = !DILocation(line: 183, column: 7, scope: !2149)
!2164 = !DILocation(line: 202, column: 11, scope: !2149)
!2165 = !DILocation(line: 207, column: 21, scope: !2065)
!2166 = !DILocation(line: 180, column: 14, scope: !2060)
!2167 = !DILocation(line: 207, column: 23, scope: !2065)
!2168 = !DILocation(line: 212, column: 19, scope: !2065)
!2169 = !DILocation(line: 219, column: 17, scope: !2070)
!2170 = !DILocation(line: 221, column: 51, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2070, file: !843, line: 220, column: 19)
!2172 = !DILocation(line: 0, scope: !2070)
!2173 = !DILocation(line: 221, column: 36, scope: !2171)
!2174 = !DILocation(line: 221, column: 49, scope: !2171)
!2175 = !DILocation(line: 221, column: 56, scope: !2171)
!2176 = !DILocation(line: 222, column: 30, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2171, file: !843, line: 222, column: 25)
!2178 = !DILocation(line: 222, column: 25, scope: !2171)
!2179 = !DILocation(line: 221, column: 53, scope: !2171)
!2180 = !DILocation(line: 225, column: 31, scope: !2070)
!2181 = !DILocation(line: 225, column: 34, scope: !2070)
!2182 = distinct !{!2182, !2169, !2183, !1085}
!2183 = !DILocation(line: 225, column: 45, scope: !2070)
!2184 = !DILocation(line: 227, column: 21, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2070, file: !843, line: 227, column: 21)
!2186 = !DILocation(line: 227, column: 30, scope: !2185)
!2187 = !DILocation(line: 227, column: 37, scope: !2185)
!2188 = !DILocation(line: 239, column: 16, scope: !2071)
!2189 = !DILocation(line: 240, column: 15, scope: !2071)
!2190 = !DILocation(line: 245, column: 16, scope: !2071)
!2191 = !DILocation(line: 246, column: 15, scope: !2071)
!2192 = !DILocation(line: 251, column: 16, scope: !2071)
!2193 = !DILocation(line: 252, column: 15, scope: !2071)
!2194 = !DILocation(line: 259, column: 25, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !843, line: 258, column: 15)
!2196 = distinct !DILexicalBlock(scope: !2071, file: !843, line: 258, column: 15)
!2197 = !DILocation(line: 0, scope: !2071)
!2198 = !DILocation(line: 256, column: 20, scope: !2071)
!2199 = !DILocation(line: 259, column: 17, scope: !2195)
!2200 = !DILocation(line: 262, column: 27, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2195, file: !843, line: 260, column: 19)
!2202 = !DILocation(line: 263, column: 21, scope: !2201)
!2203 = !DILocation(line: 265, column: 27, scope: !2201)
!2204 = !DILocation(line: 266, column: 21, scope: !2201)
!2205 = !DILocation(line: 268, column: 27, scope: !2201)
!2206 = !DILocation(line: 269, column: 21, scope: !2201)
!2207 = !DILocation(line: 275, column: 27, scope: !2201)
!2208 = !DILocation(line: 276, column: 21, scope: !2201)
!2209 = !DILocation(line: 279, column: 27, scope: !2201)
!2210 = !DILocation(line: 280, column: 21, scope: !2201)
!2211 = !DILocation(line: 258, column: 24, scope: !2195)
!2212 = !DILocation(line: 258, column: 15, scope: !2195)
!2213 = distinct !{!2213, !2214, !2215}
!2214 = !DILocation(line: 258, column: 15, scope: !2196)
!2215 = !DILocation(line: 283, column: 19, scope: !2196)
!2216 = !DILocation(line: 209, column: 18, scope: !2065)
!2217 = !DILocation(line: 294, column: 14, scope: !2065)
!2218 = !DILocation(line: 288, column: 28, scope: !2065)
!2219 = !DILocation(line: 288, column: 21, scope: !2065)
!2220 = !DILocation(line: 289, column: 22, scope: !2065)
!2221 = !DILocation(line: 290, column: 19, scope: !2065)
!2222 = !DILocation(line: 290, column: 24, scope: !2065)
!2223 = !DILocation(line: 291, column: 19, scope: !2065)
!2224 = !DILocation(line: 291, column: 28, scope: !2065)
!2225 = !DILocation(line: 292, column: 19, scope: !2065)
!2226 = !DILocation(line: 292, column: 25, scope: !2065)
!2227 = !DILocation(line: 293, column: 19, scope: !2065)
!2228 = !DILocation(line: 293, column: 29, scope: !2065)
!2229 = !DILocation(line: 296, column: 14, scope: !2060)
!2230 = !DILocation(line: 296, column: 24, scope: !2060)
!2231 = !DILocation(line: 177, column: 28, scope: !2061)
!2232 = !DILocation(line: 177, column: 3, scope: !2061)
!2233 = distinct !{!2233, !2234, !2235}
!2234 = !DILocation(line: 177, column: 3, scope: !2062)
!2235 = !DILocation(line: 300, column: 5, scope: !2062)
!2236 = !DILocation(line: 304, column: 16, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !843, line: 303, column: 5)
!2238 = distinct !DILexicalBlock(scope: !2033, file: !843, line: 302, column: 7)
!2239 = !DILocation(line: 304, column: 21, scope: !2237)
!2240 = !DILocation(line: 305, column: 7, scope: !2237)
!2241 = !DILocation(line: 308, column: 1, scope: !2033)
!2242 = !DILocation(line: 309, column: 3, scope: !2033)
!2243 = !DILocation(line: 310, column: 3, scope: !2033)
!2244 = !DILocation(line: 311, column: 1, scope: !2033)
!2245 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !843, file: !843, line: 317, type: !2034, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !2246)
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "ref_file", arg: 1, scope: !2245, file: !843, line: 317, type: !143)
!2248 = !DILocalVariable(name: "ref_stats", scope: !2245, file: !843, line: 319, type: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1865, line: 26, size: 1152, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2267, !2268, !2269}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2249, file: !1865, line: 31, baseType: !1868, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2249, file: !1865, line: 36, baseType: !1870, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2249, file: !1865, line: 44, baseType: !1872, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2249, file: !1865, line: 45, baseType: !935, size: 32, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2249, file: !1865, line: 47, baseType: !147, size: 32, offset: 224)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2249, file: !1865, line: 48, baseType: !149, size: 32, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2249, file: !1865, line: 50, baseType: !80, size: 32, offset: 288)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2249, file: !1865, line: 52, baseType: !1868, size: 64, offset: 320)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2249, file: !1865, line: 57, baseType: !230, size: 64, offset: 384)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2249, file: !1865, line: 61, baseType: !1880, size: 64, offset: 448)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2249, file: !1865, line: 63, baseType: !1882, size: 64, offset: 512)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2249, file: !1865, line: 74, baseType: !2263, size: 128, offset: 576)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1885, line: 11, size: 128, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2263, file: !1885, line: 16, baseType: !1888, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2263, file: !1885, line: 21, baseType: !1890, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2249, file: !1865, line: 75, baseType: !2263, size: 128, offset: 704)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2249, file: !1865, line: 76, baseType: !2263, size: 128, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2249, file: !1865, line: 89, baseType: !1894, size: 192, offset: 960)
!2270 = distinct !DIAssignID()
!2271 = !DILocation(line: 0, scope: !2245)
!2272 = !DILocation(line: 319, column: 3, scope: !2245)
!2273 = !DILocation(line: 321, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2245, file: !843, line: 321, column: 7)
!2275 = !DILocation(line: 321, column: 35, scope: !2274)
!2276 = !DILocation(line: 321, column: 7, scope: !2245)
!2277 = !DILocation(line: 323, column: 41, scope: !2245)
!2278 = !DILocation(line: 0, scope: !2100, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 323, column: 10, scope: !2245)
!2280 = !DILocation(line: 114, column: 27, scope: !2100, inlinedAt: !2279)
!2281 = !DILocation(line: 115, column: 9, scope: !2100, inlinedAt: !2279)
!2282 = !DILocation(line: 116, column: 6, scope: !2100, inlinedAt: !2279)
!2283 = !DILocation(line: 116, column: 11, scope: !2100, inlinedAt: !2279)
!2284 = !DILocation(line: 117, column: 6, scope: !2100, inlinedAt: !2279)
!2285 = !DILocation(line: 117, column: 15, scope: !2100, inlinedAt: !2279)
!2286 = !DILocation(line: 118, column: 6, scope: !2100, inlinedAt: !2279)
!2287 = !DILocation(line: 118, column: 12, scope: !2100, inlinedAt: !2279)
!2288 = !DILocation(line: 119, column: 6, scope: !2100, inlinedAt: !2279)
!2289 = !DILocation(line: 119, column: 16, scope: !2100, inlinedAt: !2279)
!2290 = !DILocation(line: 120, column: 8, scope: !2100, inlinedAt: !2279)
!2291 = !DILocation(line: 120, column: 13, scope: !2100, inlinedAt: !2279)
!2292 = !DILocation(line: 323, column: 3, scope: !2245)
!2293 = !DILocation(line: 324, column: 1, scope: !2245)
!2294 = distinct !DISubprogram(name: "mode_adjust", scope: !843, file: !843, line: 340, type: !2295, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !2300)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!934, !934, !191, !934, !2297, !2299}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2312, !2313, !2314}
!2301 = !DILocalVariable(name: "oldmode", arg: 1, scope: !2294, file: !843, line: 340, type: !934)
!2302 = !DILocalVariable(name: "dir", arg: 2, scope: !2294, file: !843, line: 340, type: !191)
!2303 = !DILocalVariable(name: "umask_value", arg: 3, scope: !2294, file: !843, line: 340, type: !934)
!2304 = !DILocalVariable(name: "changes", arg: 4, scope: !2294, file: !843, line: 341, type: !2297)
!2305 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !2294, file: !843, line: 341, type: !2299)
!2306 = !DILocalVariable(name: "newmode", scope: !2294, file: !843, line: 344, type: !934)
!2307 = !DILocalVariable(name: "mode_bits", scope: !2294, file: !843, line: 347, type: !934)
!2308 = !DILocalVariable(name: "affected", scope: !2309, file: !843, line: 351, type: !934)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !843, line: 350, column: 5)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !843, line: 349, column: 3)
!2311 = distinct !DILexicalBlock(scope: !2294, file: !843, line: 349, column: 3)
!2312 = !DILocalVariable(name: "omit_change", scope: !2309, file: !843, line: 352, type: !934)
!2313 = !DILocalVariable(name: "value", scope: !2309, file: !843, line: 354, type: !934)
!2314 = !DILocalVariable(name: "preserved", scope: !2315, file: !843, line: 394, type: !934)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !843, line: 393, column: 11)
!2316 = distinct !DILexicalBlock(scope: !2309, file: !843, line: 388, column: 9)
!2317 = !DILocation(line: 0, scope: !2294)
!2318 = !DILocation(line: 344, column: 28, scope: !2294)
!2319 = !DILocation(line: 349, column: 19, scope: !2310)
!2320 = !DILocation(line: 349, column: 24, scope: !2310)
!2321 = !DILocation(line: 349, column: 3, scope: !2311)
!2322 = !DILocation(line: 351, column: 34, scope: !2309)
!2323 = !DILocation(line: 0, scope: !2309)
!2324 = !DILocation(line: 353, column: 52, scope: !2309)
!2325 = !DILocation(line: 353, column: 41, scope: !2309)
!2326 = !DILocation(line: 353, column: 39, scope: !2309)
!2327 = !DILocation(line: 354, column: 31, scope: !2309)
!2328 = !DILocation(line: 356, column: 7, scope: !2309)
!2329 = !DILocation(line: 363, column: 17, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2309, file: !843, line: 357, column: 9)
!2331 = !DILocation(line: 366, column: 28, scope: !2330)
!2332 = !DILocation(line: 366, column: 22, scope: !2330)
!2333 = !DILocation(line: 368, column: 30, scope: !2330)
!2334 = !DILocation(line: 368, column: 24, scope: !2330)
!2335 = !DILocation(line: 370, column: 30, scope: !2330)
!2336 = !DILocation(line: 370, column: 24, scope: !2330)
!2337 = !DILocation(line: 370, column: 21, scope: !2330)
!2338 = !DILocation(line: 366, column: 17, scope: !2330)
!2339 = !DILocation(line: 372, column: 11, scope: !2330)
!2340 = !DILocation(line: 377, column: 24, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2330, file: !843, line: 377, column: 15)
!2342 = !DILocation(line: 377, column: 57, scope: !2341)
!2343 = !DILocation(line: 377, column: 15, scope: !2330)
!2344 = !DILocation(line: 385, column: 17, scope: !2309)
!2345 = !DILocation(line: 385, column: 55, scope: !2309)
!2346 = !DILocation(line: 385, column: 53, scope: !2309)
!2347 = !DILocation(line: 385, column: 13, scope: !2309)
!2348 = !DILocation(line: 387, column: 24, scope: !2309)
!2349 = !DILocation(line: 387, column: 7, scope: !2309)
!2350 = !DILocation(line: 394, column: 33, scope: !2315)
!2351 = !DILocation(line: 394, column: 59, scope: !2315)
!2352 = !DILocation(line: 0, scope: !2315)
!2353 = !DILocation(line: 395, column: 42, scope: !2315)
!2354 = !DILocation(line: 395, column: 23, scope: !2315)
!2355 = !DILocation(line: 396, column: 32, scope: !2315)
!2356 = !DILocation(line: 396, column: 45, scope: !2315)
!2357 = !DILocation(line: 401, column: 21, scope: !2316)
!2358 = !DILocation(line: 402, column: 19, scope: !2316)
!2359 = !DILocation(line: 403, column: 11, scope: !2316)
!2360 = !DILocation(line: 406, column: 21, scope: !2316)
!2361 = !DILocation(line: 407, column: 22, scope: !2316)
!2362 = !DILocation(line: 407, column: 19, scope: !2316)
!2363 = !DILocation(line: 408, column: 11, scope: !2316)
!2364 = !DILocation(line: 349, column: 45, scope: !2310)
!2365 = distinct !{!2365, !2321, !2366, !1085}
!2366 = !DILocation(line: 410, column: 5, scope: !2311)
!2367 = !DILocation(line: 347, column: 10, scope: !2294)
!2368 = !DILocation(line: 344, column: 10, scope: !2294)
!2369 = !DILocation(line: 412, column: 7, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2294, file: !843, line: 412, column: 7)
!2371 = !DILocation(line: 412, column: 7, scope: !2294)
!2372 = !DILocation(line: 413, column: 17, scope: !2370)
!2373 = !DILocation(line: 413, column: 5, scope: !2370)
!2374 = !DILocation(line: 414, column: 3, scope: !2294)
!2375 = distinct !DISubprogram(name: "set_program_name", scope: !503, file: !503, line: 37, type: !988, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !2376)
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "argv0", arg: 1, scope: !2375, file: !503, line: 37, type: !143)
!2378 = !DILocalVariable(name: "slash", scope: !2375, file: !503, line: 44, type: !143)
!2379 = !DILocalVariable(name: "base", scope: !2375, file: !503, line: 45, type: !143)
!2380 = !DILocation(line: 0, scope: !2375)
!2381 = !DILocation(line: 44, column: 23, scope: !2375)
!2382 = !DILocation(line: 45, column: 22, scope: !2375)
!2383 = !DILocation(line: 46, column: 17, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2375, file: !503, line: 46, column: 7)
!2385 = !DILocation(line: 46, column: 9, scope: !2384)
!2386 = !DILocation(line: 46, column: 25, scope: !2384)
!2387 = !DILocation(line: 46, column: 40, scope: !2384)
!2388 = !DILocalVariable(name: "__s1", arg: 1, scope: !2389, file: !1051, line: 974, type: !1186)
!2389 = distinct !DISubprogram(name: "memeq", scope: !1051, file: !1051, line: 974, type: !2390, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!191, !1186, !1186, !140}
!2392 = !{!2388, !2393, !2394}
!2393 = !DILocalVariable(name: "__s2", arg: 2, scope: !2389, file: !1051, line: 974, type: !1186)
!2394 = !DILocalVariable(name: "__n", arg: 3, scope: !2389, file: !1051, line: 974, type: !140)
!2395 = !DILocation(line: 0, scope: !2389, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 46, column: 28, scope: !2384)
!2397 = !DILocation(line: 976, column: 11, scope: !2389, inlinedAt: !2396)
!2398 = !DILocation(line: 976, column: 10, scope: !2389, inlinedAt: !2396)
!2399 = !DILocation(line: 46, column: 7, scope: !2375)
!2400 = !DILocation(line: 49, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !503, line: 49, column: 11)
!2402 = distinct !DILexicalBlock(scope: !2384, file: !503, line: 47, column: 5)
!2403 = !DILocation(line: 49, column: 36, scope: !2401)
!2404 = !DILocation(line: 49, column: 11, scope: !2402)
!2405 = !DILocation(line: 65, column: 16, scope: !2375)
!2406 = !DILocation(line: 71, column: 27, scope: !2375)
!2407 = !DILocation(line: 74, column: 33, scope: !2375)
!2408 = !DILocation(line: 76, column: 1, scope: !2375)
!2409 = !DISubprogram(name: "strrchr", scope: !1158, file: !1158, line: 273, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2410 = distinct !DIAssignID()
!2411 = !DILocation(line: 0, scope: !512)
!2412 = distinct !DIAssignID()
!2413 = !DILocation(line: 40, column: 29, scope: !512)
!2414 = !DILocation(line: 41, column: 19, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !512, file: !513, line: 41, column: 7)
!2416 = !DILocation(line: 41, column: 7, scope: !512)
!2417 = !DILocation(line: 47, column: 3, scope: !512)
!2418 = !DILocation(line: 48, column: 3, scope: !512)
!2419 = !DILocalVariable(name: "ps", arg: 1, scope: !2420, file: !2421, line: 1135, type: !2424)
!2420 = distinct !DISubprogram(name: "mbszero", scope: !2421, file: !2421, line: 1135, type: !2422, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2425)
!2421 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2425 = !{!2419}
!2426 = !DILocation(line: 0, scope: !2420, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 48, column: 18, scope: !512)
!2428 = !DILocalVariable(name: "__dest", arg: 1, scope: !2429, file: !2430, line: 57, type: !138)
!2429 = distinct !DISubprogram(name: "memset", scope: !2430, file: !2430, line: 57, type: !2431, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !516, retainedNodes: !2433)
!2430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!138, !138, !80, !140}
!2433 = !{!2428, !2434, !2435}
!2434 = !DILocalVariable(name: "__ch", arg: 2, scope: !2429, file: !2430, line: 57, type: !80)
!2435 = !DILocalVariable(name: "__len", arg: 3, scope: !2429, file: !2430, line: 57, type: !140)
!2436 = !DILocation(line: 0, scope: !2429, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 1137, column: 3, scope: !2420, inlinedAt: !2427)
!2438 = !DILocation(line: 59, column: 10, scope: !2429, inlinedAt: !2437)
!2439 = !DILocation(line: 49, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !512, file: !513, line: 49, column: 7)
!2441 = !DILocation(line: 49, column: 39, scope: !2440)
!2442 = !DILocation(line: 49, column: 44, scope: !2440)
!2443 = !DILocation(line: 54, column: 1, scope: !512)
!2444 = !DISubprogram(name: "mbrtoc32", scope: !524, file: !524, line: 57, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!140, !2447, !1028, !140, !2449}
!2447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2424)
!2450 = distinct !DISubprogram(name: "clone_quoting_options", scope: !543, file: !543, line: 113, type: !2451, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2454)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2453, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2454 = !{!2455, !2456, !2457}
!2455 = !DILocalVariable(name: "o", arg: 1, scope: !2450, file: !543, line: 113, type: !2453)
!2456 = !DILocalVariable(name: "saved_errno", scope: !2450, file: !543, line: 115, type: !80)
!2457 = !DILocalVariable(name: "p", scope: !2450, file: !543, line: 116, type: !2453)
!2458 = !DILocation(line: 0, scope: !2450)
!2459 = !DILocation(line: 115, column: 21, scope: !2450)
!2460 = !DILocation(line: 116, column: 40, scope: !2450)
!2461 = !DILocation(line: 116, column: 31, scope: !2450)
!2462 = !DILocation(line: 118, column: 9, scope: !2450)
!2463 = !DILocation(line: 119, column: 3, scope: !2450)
!2464 = distinct !DISubprogram(name: "get_quoting_style", scope: !543, file: !543, line: 124, type: !2465, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2469)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!569, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!2469 = !{!2470}
!2470 = !DILocalVariable(name: "o", arg: 1, scope: !2464, file: !543, line: 124, type: !2467)
!2471 = !DILocation(line: 0, scope: !2464)
!2472 = !DILocation(line: 126, column: 11, scope: !2464)
!2473 = !DILocation(line: 126, column: 46, scope: !2464)
!2474 = !{!2475, !1039, i64 0}
!2475 = !{!"quoting_options", !1039, i64 0, !1039, i64 4, !971, i64 8, !970, i64 40, !970, i64 48}
!2476 = !DILocation(line: 126, column: 3, scope: !2464)
!2477 = distinct !DISubprogram(name: "set_quoting_style", scope: !543, file: !543, line: 132, type: !2478, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{null, !2453, !569}
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "o", arg: 1, scope: !2477, file: !543, line: 132, type: !2453)
!2482 = !DILocalVariable(name: "s", arg: 2, scope: !2477, file: !543, line: 132, type: !569)
!2483 = !DILocation(line: 0, scope: !2477)
!2484 = !DILocation(line: 134, column: 4, scope: !2477)
!2485 = !DILocation(line: 134, column: 45, scope: !2477)
!2486 = !DILocation(line: 135, column: 1, scope: !2477)
!2487 = distinct !DISubprogram(name: "set_char_quoting", scope: !543, file: !543, line: 143, type: !2488, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!80, !2453, !4, !80}
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2497, !2498}
!2491 = !DILocalVariable(name: "o", arg: 1, scope: !2487, file: !543, line: 143, type: !2453)
!2492 = !DILocalVariable(name: "c", arg: 2, scope: !2487, file: !543, line: 143, type: !4)
!2493 = !DILocalVariable(name: "i", arg: 3, scope: !2487, file: !543, line: 143, type: !80)
!2494 = !DILocalVariable(name: "uc", scope: !2487, file: !543, line: 145, type: !145)
!2495 = !DILocalVariable(name: "p", scope: !2487, file: !543, line: 146, type: !2496)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2497 = !DILocalVariable(name: "shift", scope: !2487, file: !543, line: 148, type: !80)
!2498 = !DILocalVariable(name: "r", scope: !2487, file: !543, line: 149, type: !99)
!2499 = !DILocation(line: 0, scope: !2487)
!2500 = !DILocation(line: 147, column: 6, scope: !2487)
!2501 = !DILocation(line: 147, column: 41, scope: !2487)
!2502 = !DILocation(line: 147, column: 62, scope: !2487)
!2503 = !DILocation(line: 147, column: 57, scope: !2487)
!2504 = !DILocation(line: 148, column: 15, scope: !2487)
!2505 = !DILocation(line: 149, column: 21, scope: !2487)
!2506 = !DILocation(line: 149, column: 24, scope: !2487)
!2507 = !DILocation(line: 149, column: 34, scope: !2487)
!2508 = !DILocation(line: 150, column: 19, scope: !2487)
!2509 = !DILocation(line: 150, column: 24, scope: !2487)
!2510 = !DILocation(line: 150, column: 6, scope: !2487)
!2511 = !DILocation(line: 151, column: 3, scope: !2487)
!2512 = distinct !DISubprogram(name: "set_quoting_flags", scope: !543, file: !543, line: 159, type: !2513, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!80, !2453, !80}
!2515 = !{!2516, !2517, !2518}
!2516 = !DILocalVariable(name: "o", arg: 1, scope: !2512, file: !543, line: 159, type: !2453)
!2517 = !DILocalVariable(name: "i", arg: 2, scope: !2512, file: !543, line: 159, type: !80)
!2518 = !DILocalVariable(name: "r", scope: !2512, file: !543, line: 163, type: !80)
!2519 = !DILocation(line: 0, scope: !2512)
!2520 = !DILocation(line: 161, column: 8, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2512, file: !543, line: 161, column: 7)
!2522 = !DILocation(line: 161, column: 7, scope: !2512)
!2523 = !DILocation(line: 163, column: 14, scope: !2512)
!2524 = !{!2475, !1039, i64 4}
!2525 = !DILocation(line: 164, column: 12, scope: !2512)
!2526 = !DILocation(line: 165, column: 3, scope: !2512)
!2527 = distinct !DISubprogram(name: "set_custom_quoting", scope: !543, file: !543, line: 169, type: !2528, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2453, !143, !143}
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "o", arg: 1, scope: !2527, file: !543, line: 169, type: !2453)
!2532 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2527, file: !543, line: 170, type: !143)
!2533 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2527, file: !543, line: 170, type: !143)
!2534 = !DILocation(line: 0, scope: !2527)
!2535 = !DILocation(line: 172, column: 8, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2527, file: !543, line: 172, column: 7)
!2537 = !DILocation(line: 172, column: 7, scope: !2527)
!2538 = !DILocation(line: 174, column: 12, scope: !2527)
!2539 = !DILocation(line: 175, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2527, file: !543, line: 175, column: 7)
!2541 = !DILocation(line: 175, column: 19, scope: !2540)
!2542 = !DILocation(line: 176, column: 5, scope: !2540)
!2543 = !DILocation(line: 177, column: 6, scope: !2527)
!2544 = !DILocation(line: 177, column: 17, scope: !2527)
!2545 = !{!2475, !970, i64 40}
!2546 = !DILocation(line: 178, column: 6, scope: !2527)
!2547 = !DILocation(line: 178, column: 18, scope: !2527)
!2548 = !{!2475, !970, i64 48}
!2549 = !DILocation(line: 179, column: 1, scope: !2527)
!2550 = !DISubprogram(name: "abort", scope: !1162, file: !1162, line: 598, type: !479, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2551 = distinct !DISubprogram(name: "quotearg_buffer", scope: !543, file: !543, line: 774, type: !2552, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!140, !137, !140, !143, !140, !2467}
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2555 = !DILocalVariable(name: "buffer", arg: 1, scope: !2551, file: !543, line: 774, type: !137)
!2556 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2551, file: !543, line: 774, type: !140)
!2557 = !DILocalVariable(name: "arg", arg: 3, scope: !2551, file: !543, line: 775, type: !143)
!2558 = !DILocalVariable(name: "argsize", arg: 4, scope: !2551, file: !543, line: 775, type: !140)
!2559 = !DILocalVariable(name: "o", arg: 5, scope: !2551, file: !543, line: 776, type: !2467)
!2560 = !DILocalVariable(name: "p", scope: !2551, file: !543, line: 778, type: !2467)
!2561 = !DILocalVariable(name: "saved_errno", scope: !2551, file: !543, line: 779, type: !80)
!2562 = !DILocalVariable(name: "r", scope: !2551, file: !543, line: 780, type: !140)
!2563 = !DILocation(line: 0, scope: !2551)
!2564 = !DILocation(line: 778, column: 37, scope: !2551)
!2565 = !DILocation(line: 779, column: 21, scope: !2551)
!2566 = !DILocation(line: 781, column: 43, scope: !2551)
!2567 = !DILocation(line: 781, column: 53, scope: !2551)
!2568 = !DILocation(line: 781, column: 63, scope: !2551)
!2569 = !DILocation(line: 782, column: 43, scope: !2551)
!2570 = !DILocation(line: 782, column: 58, scope: !2551)
!2571 = !DILocation(line: 780, column: 14, scope: !2551)
!2572 = !DILocation(line: 783, column: 9, scope: !2551)
!2573 = !DILocation(line: 784, column: 3, scope: !2551)
!2574 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !543, file: !543, line: 251, type: !2575, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2579)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!140, !137, !140, !143, !140, !569, !80, !2577, !143, !143}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2605, !2607, !2610, !2611, !2612, !2613, !2616, !2617, !2619, !2620, !2623, !2627, !2628, !2636, !2639, !2640, !2641}
!2580 = !DILocalVariable(name: "buffer", arg: 1, scope: !2574, file: !543, line: 251, type: !137)
!2581 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2574, file: !543, line: 251, type: !140)
!2582 = !DILocalVariable(name: "arg", arg: 3, scope: !2574, file: !543, line: 252, type: !143)
!2583 = !DILocalVariable(name: "argsize", arg: 4, scope: !2574, file: !543, line: 252, type: !140)
!2584 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2574, file: !543, line: 253, type: !569)
!2585 = !DILocalVariable(name: "flags", arg: 6, scope: !2574, file: !543, line: 253, type: !80)
!2586 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2574, file: !543, line: 254, type: !2577)
!2587 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2574, file: !543, line: 255, type: !143)
!2588 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2574, file: !543, line: 256, type: !143)
!2589 = !DILocalVariable(name: "unibyte_locale", scope: !2574, file: !543, line: 258, type: !191)
!2590 = !DILocalVariable(name: "len", scope: !2574, file: !543, line: 260, type: !140)
!2591 = !DILocalVariable(name: "orig_buffersize", scope: !2574, file: !543, line: 261, type: !140)
!2592 = !DILocalVariable(name: "quote_string", scope: !2574, file: !543, line: 262, type: !143)
!2593 = !DILocalVariable(name: "quote_string_len", scope: !2574, file: !543, line: 263, type: !140)
!2594 = !DILocalVariable(name: "backslash_escapes", scope: !2574, file: !543, line: 264, type: !191)
!2595 = !DILocalVariable(name: "elide_outer_quotes", scope: !2574, file: !543, line: 265, type: !191)
!2596 = !DILocalVariable(name: "encountered_single_quote", scope: !2574, file: !543, line: 266, type: !191)
!2597 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2574, file: !543, line: 267, type: !191)
!2598 = !DILabel(scope: !2574, name: "process_input", file: !543, line: 308)
!2599 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2574, file: !543, line: 309, type: !191)
!2600 = !DILocalVariable(name: "lq", scope: !2601, file: !543, line: 361, type: !143)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !543, line: 361, column: 11)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !543, line: 360, column: 13)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !543, line: 333, column: 7)
!2604 = distinct !DILexicalBlock(scope: !2574, file: !543, line: 312, column: 5)
!2605 = !DILocalVariable(name: "i", scope: !2606, file: !543, line: 395, type: !140)
!2606 = distinct !DILexicalBlock(scope: !2574, file: !543, line: 395, column: 3)
!2607 = !DILocalVariable(name: "is_right_quote", scope: !2608, file: !543, line: 397, type: !191)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !543, line: 396, column: 5)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !543, line: 395, column: 3)
!2610 = !DILocalVariable(name: "escaping", scope: !2608, file: !543, line: 398, type: !191)
!2611 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2608, file: !543, line: 399, type: !191)
!2612 = !DILocalVariable(name: "c", scope: !2608, file: !543, line: 417, type: !145)
!2613 = !DILabel(scope: !2614, name: "c_and_shell_escape", file: !543, line: 502)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 478, column: 9)
!2615 = distinct !DILexicalBlock(scope: !2608, file: !543, line: 419, column: 9)
!2616 = !DILabel(scope: !2614, name: "c_escape", file: !543, line: 507)
!2617 = !DILocalVariable(name: "m", scope: !2618, file: !543, line: 598, type: !140)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 596, column: 11)
!2619 = !DILocalVariable(name: "printable", scope: !2618, file: !543, line: 600, type: !191)
!2620 = !DILocalVariable(name: "mbs", scope: !2621, file: !543, line: 609, type: !618)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !543, line: 608, column: 15)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !543, line: 602, column: 17)
!2623 = !DILocalVariable(name: "w", scope: !2624, file: !543, line: 618, type: !523)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !543, line: 617, column: 19)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !543, line: 616, column: 17)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !543, line: 616, column: 17)
!2627 = !DILocalVariable(name: "bytes", scope: !2624, file: !543, line: 619, type: !140)
!2628 = !DILocalVariable(name: "j", scope: !2629, file: !543, line: 648, type: !140)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !543, line: 648, column: 29)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !543, line: 647, column: 27)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !543, line: 645, column: 29)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !543, line: 636, column: 23)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !543, line: 628, column: 30)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !543, line: 623, column: 30)
!2635 = distinct !DILexicalBlock(scope: !2624, file: !543, line: 621, column: 25)
!2636 = !DILocalVariable(name: "ilim", scope: !2637, file: !543, line: 674, type: !140)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !543, line: 671, column: 15)
!2638 = distinct !DILexicalBlock(scope: !2618, file: !543, line: 670, column: 17)
!2639 = !DILabel(scope: !2608, name: "store_escape", file: !543, line: 709)
!2640 = !DILabel(scope: !2608, name: "store_c", file: !543, line: 712)
!2641 = !DILabel(scope: !2574, name: "force_outer_quoting_style", file: !543, line: 753)
!2642 = distinct !DIAssignID()
!2643 = distinct !DIAssignID()
!2644 = distinct !DIAssignID()
!2645 = distinct !DIAssignID()
!2646 = distinct !DIAssignID()
!2647 = !DILocation(line: 0, scope: !2621)
!2648 = distinct !DIAssignID()
!2649 = !DILocation(line: 0, scope: !2624)
!2650 = !DILocation(line: 0, scope: !2574)
!2651 = !DILocation(line: 258, column: 25, scope: !2574)
!2652 = !DILocation(line: 258, column: 36, scope: !2574)
!2653 = !DILocation(line: 265, column: 8, scope: !2574)
!2654 = !DILocation(line: 267, column: 3, scope: !2574)
!2655 = !DILocation(line: 261, column: 10, scope: !2574)
!2656 = !DILocation(line: 262, column: 15, scope: !2574)
!2657 = !DILocation(line: 263, column: 10, scope: !2574)
!2658 = !DILocation(line: 264, column: 8, scope: !2574)
!2659 = !DILocation(line: 266, column: 8, scope: !2574)
!2660 = !DILocation(line: 267, column: 8, scope: !2574)
!2661 = !DILocation(line: 308, column: 2, scope: !2574)
!2662 = !DILocation(line: 311, column: 3, scope: !2574)
!2663 = !DILocation(line: 318, column: 11, scope: !2604)
!2664 = !DILocation(line: 318, column: 12, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2604, file: !543, line: 318, column: 11)
!2666 = !DILocation(line: 319, column: 9, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !543, line: 319, column: 9)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !543, line: 319, column: 9)
!2669 = !DILocation(line: 319, column: 9, scope: !2668)
!2670 = !DILocation(line: 0, scope: !609, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 357, column: 26, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !543, line: 335, column: 11)
!2673 = distinct !DILexicalBlock(scope: !2603, file: !543, line: 334, column: 13)
!2674 = !DILocation(line: 199, column: 29, scope: !609, inlinedAt: !2671)
!2675 = !DILocation(line: 201, column: 19, scope: !2676, inlinedAt: !2671)
!2676 = distinct !DILexicalBlock(scope: !609, file: !543, line: 201, column: 7)
!2677 = !DILocation(line: 201, column: 7, scope: !609, inlinedAt: !2671)
!2678 = !DILocation(line: 229, column: 3, scope: !609, inlinedAt: !2671)
!2679 = !DILocation(line: 230, column: 3, scope: !609, inlinedAt: !2671)
!2680 = !DILocalVariable(name: "ps", arg: 1, scope: !2681, file: !2421, line: 1135, type: !2684)
!2681 = distinct !DISubprogram(name: "mbszero", scope: !2421, file: !2421, line: 1135, type: !2682, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2685)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!2685 = !{!2680}
!2686 = !DILocation(line: 0, scope: !2681, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 230, column: 18, scope: !609, inlinedAt: !2671)
!2688 = !DILocalVariable(name: "__dest", arg: 1, scope: !2689, file: !2430, line: 57, type: !138)
!2689 = distinct !DISubprogram(name: "memset", scope: !2430, file: !2430, line: 57, type: !2431, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2690)
!2690 = !{!2688, !2691, !2692}
!2691 = !DILocalVariable(name: "__ch", arg: 2, scope: !2689, file: !2430, line: 57, type: !80)
!2692 = !DILocalVariable(name: "__len", arg: 3, scope: !2689, file: !2430, line: 57, type: !140)
!2693 = !DILocation(line: 0, scope: !2689, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 1137, column: 3, scope: !2681, inlinedAt: !2687)
!2695 = !DILocation(line: 59, column: 10, scope: !2689, inlinedAt: !2694)
!2696 = !DILocation(line: 231, column: 7, scope: !2697, inlinedAt: !2671)
!2697 = distinct !DILexicalBlock(scope: !609, file: !543, line: 231, column: 7)
!2698 = !DILocation(line: 231, column: 40, scope: !2697, inlinedAt: !2671)
!2699 = !DILocation(line: 231, column: 45, scope: !2697, inlinedAt: !2671)
!2700 = !DILocation(line: 235, column: 1, scope: !609, inlinedAt: !2671)
!2701 = !DILocation(line: 0, scope: !609, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 358, column: 27, scope: !2672)
!2703 = !DILocation(line: 199, column: 29, scope: !609, inlinedAt: !2702)
!2704 = !DILocation(line: 201, column: 19, scope: !2676, inlinedAt: !2702)
!2705 = !DILocation(line: 201, column: 7, scope: !609, inlinedAt: !2702)
!2706 = !DILocation(line: 229, column: 3, scope: !609, inlinedAt: !2702)
!2707 = !DILocation(line: 230, column: 3, scope: !609, inlinedAt: !2702)
!2708 = !DILocation(line: 0, scope: !2681, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 230, column: 18, scope: !609, inlinedAt: !2702)
!2710 = !DILocation(line: 0, scope: !2689, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 1137, column: 3, scope: !2681, inlinedAt: !2709)
!2712 = !DILocation(line: 59, column: 10, scope: !2689, inlinedAt: !2711)
!2713 = !DILocation(line: 231, column: 7, scope: !2697, inlinedAt: !2702)
!2714 = !DILocation(line: 231, column: 40, scope: !2697, inlinedAt: !2702)
!2715 = !DILocation(line: 231, column: 45, scope: !2697, inlinedAt: !2702)
!2716 = !DILocation(line: 235, column: 1, scope: !609, inlinedAt: !2702)
!2717 = !DILocation(line: 360, column: 14, scope: !2602)
!2718 = !DILocation(line: 360, column: 13, scope: !2603)
!2719 = !DILocation(line: 0, scope: !2601)
!2720 = !DILocation(line: 361, column: 45, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2601, file: !543, line: 361, column: 11)
!2722 = !DILocation(line: 361, column: 11, scope: !2601)
!2723 = !DILocation(line: 362, column: 13, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !543, line: 362, column: 13)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !543, line: 362, column: 13)
!2726 = !DILocation(line: 362, column: 13, scope: !2725)
!2727 = !DILocation(line: 361, column: 52, scope: !2721)
!2728 = distinct !{!2728, !2722, !2729, !1085}
!2729 = !DILocation(line: 362, column: 13, scope: !2601)
!2730 = !DILocation(line: 260, column: 10, scope: !2574)
!2731 = !DILocation(line: 365, column: 28, scope: !2603)
!2732 = !DILocation(line: 367, column: 7, scope: !2604)
!2733 = !DILocation(line: 370, column: 7, scope: !2604)
!2734 = !DILocation(line: 373, column: 7, scope: !2604)
!2735 = !DILocation(line: 376, column: 12, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2604, file: !543, line: 376, column: 11)
!2737 = !DILocation(line: 376, column: 11, scope: !2604)
!2738 = !DILocation(line: 381, column: 12, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2604, file: !543, line: 381, column: 11)
!2740 = !DILocation(line: 381, column: 11, scope: !2604)
!2741 = !DILocation(line: 382, column: 9, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !543, line: 382, column: 9)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !543, line: 382, column: 9)
!2744 = !DILocation(line: 382, column: 9, scope: !2743)
!2745 = !DILocation(line: 389, column: 7, scope: !2604)
!2746 = !DILocation(line: 392, column: 7, scope: !2604)
!2747 = !DILocation(line: 0, scope: !2606)
!2748 = !DILocation(line: 395, column: 8, scope: !2606)
!2749 = !DILocation(line: 309, column: 8, scope: !2574)
!2750 = !DILocation(line: 395, scope: !2606)
!2751 = !DILocation(line: 395, column: 34, scope: !2609)
!2752 = !DILocation(line: 395, column: 26, scope: !2609)
!2753 = !DILocation(line: 395, column: 48, scope: !2609)
!2754 = !DILocation(line: 395, column: 55, scope: !2609)
!2755 = !DILocation(line: 395, column: 3, scope: !2606)
!2756 = !DILocation(line: 395, column: 67, scope: !2609)
!2757 = !DILocation(line: 0, scope: !2608)
!2758 = !DILocation(line: 402, column: 11, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2608, file: !543, line: 401, column: 11)
!2760 = !DILocation(line: 404, column: 17, scope: !2759)
!2761 = !DILocation(line: 405, column: 39, scope: !2759)
!2762 = !DILocation(line: 409, column: 32, scope: !2759)
!2763 = !DILocation(line: 405, column: 19, scope: !2759)
!2764 = !DILocation(line: 405, column: 15, scope: !2759)
!2765 = !DILocation(line: 410, column: 11, scope: !2759)
!2766 = !DILocation(line: 410, column: 25, scope: !2759)
!2767 = !DILocalVariable(name: "__s1", arg: 1, scope: !2768, file: !1051, line: 974, type: !1186)
!2768 = distinct !DISubprogram(name: "memeq", scope: !1051, file: !1051, line: 974, type: !2390, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2769)
!2769 = !{!2767, !2770, !2771}
!2770 = !DILocalVariable(name: "__s2", arg: 2, scope: !2768, file: !1051, line: 974, type: !1186)
!2771 = !DILocalVariable(name: "__n", arg: 3, scope: !2768, file: !1051, line: 974, type: !140)
!2772 = !DILocation(line: 0, scope: !2768, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 410, column: 14, scope: !2759)
!2774 = !DILocation(line: 976, column: 11, scope: !2768, inlinedAt: !2773)
!2775 = !DILocation(line: 976, column: 10, scope: !2768, inlinedAt: !2773)
!2776 = !DILocation(line: 401, column: 11, scope: !2608)
!2777 = !DILocation(line: 417, column: 25, scope: !2608)
!2778 = !DILocation(line: 418, column: 7, scope: !2608)
!2779 = !DILocation(line: 421, column: 15, scope: !2615)
!2780 = !DILocation(line: 423, column: 15, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !543, line: 423, column: 15)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !543, line: 422, column: 13)
!2783 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 421, column: 15)
!2784 = !DILocation(line: 423, column: 15, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !543, line: 423, column: 15)
!2786 = !DILocation(line: 423, column: 15, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !543, line: 423, column: 15)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !543, line: 423, column: 15)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !543, line: 423, column: 15)
!2790 = !DILocation(line: 423, column: 15, scope: !2788)
!2791 = !DILocation(line: 423, column: 15, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !543, line: 423, column: 15)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !543, line: 423, column: 15)
!2794 = !DILocation(line: 423, column: 15, scope: !2793)
!2795 = !DILocation(line: 423, column: 15, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !543, line: 423, column: 15)
!2797 = distinct !DILexicalBlock(scope: !2789, file: !543, line: 423, column: 15)
!2798 = !DILocation(line: 423, column: 15, scope: !2797)
!2799 = !DILocation(line: 423, column: 15, scope: !2789)
!2800 = !DILocation(line: 423, column: 15, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !543, line: 423, column: 15)
!2802 = distinct !DILexicalBlock(scope: !2781, file: !543, line: 423, column: 15)
!2803 = !DILocation(line: 423, column: 15, scope: !2802)
!2804 = !DILocation(line: 431, column: 19, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2782, file: !543, line: 430, column: 19)
!2806 = !DILocation(line: 431, column: 24, scope: !2805)
!2807 = !DILocation(line: 431, column: 28, scope: !2805)
!2808 = !DILocation(line: 431, column: 38, scope: !2805)
!2809 = !DILocation(line: 431, column: 48, scope: !2805)
!2810 = !DILocation(line: 431, column: 59, scope: !2805)
!2811 = !DILocation(line: 433, column: 19, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !543, line: 433, column: 19)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !543, line: 433, column: 19)
!2814 = distinct !DILexicalBlock(scope: !2805, file: !543, line: 432, column: 17)
!2815 = !DILocation(line: 433, column: 19, scope: !2813)
!2816 = !DILocation(line: 434, column: 19, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !543, line: 434, column: 19)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !543, line: 434, column: 19)
!2819 = !DILocation(line: 434, column: 19, scope: !2818)
!2820 = !DILocation(line: 435, column: 17, scope: !2814)
!2821 = !DILocation(line: 442, column: 20, scope: !2783)
!2822 = !DILocation(line: 447, column: 11, scope: !2615)
!2823 = !DILocation(line: 450, column: 19, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 448, column: 13)
!2825 = !DILocation(line: 456, column: 19, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2824, file: !543, line: 455, column: 19)
!2827 = !DILocation(line: 456, column: 24, scope: !2826)
!2828 = !DILocation(line: 456, column: 28, scope: !2826)
!2829 = !DILocation(line: 456, column: 38, scope: !2826)
!2830 = !DILocation(line: 456, column: 41, scope: !2826)
!2831 = !DILocation(line: 456, column: 52, scope: !2826)
!2832 = !DILocation(line: 455, column: 19, scope: !2824)
!2833 = !DILocation(line: 457, column: 25, scope: !2826)
!2834 = !DILocation(line: 457, column: 17, scope: !2826)
!2835 = !DILocation(line: 464, column: 25, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2826, file: !543, line: 458, column: 19)
!2837 = !DILocation(line: 468, column: 21, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !543, line: 468, column: 21)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !543, line: 468, column: 21)
!2840 = !DILocation(line: 468, column: 21, scope: !2839)
!2841 = !DILocation(line: 469, column: 21, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !543, line: 469, column: 21)
!2843 = distinct !DILexicalBlock(scope: !2836, file: !543, line: 469, column: 21)
!2844 = !DILocation(line: 469, column: 21, scope: !2843)
!2845 = !DILocation(line: 470, column: 21, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !543, line: 470, column: 21)
!2847 = distinct !DILexicalBlock(scope: !2836, file: !543, line: 470, column: 21)
!2848 = !DILocation(line: 470, column: 21, scope: !2847)
!2849 = !DILocation(line: 471, column: 21, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !543, line: 471, column: 21)
!2851 = distinct !DILexicalBlock(scope: !2836, file: !543, line: 471, column: 21)
!2852 = !DILocation(line: 471, column: 21, scope: !2851)
!2853 = !DILocation(line: 472, column: 21, scope: !2836)
!2854 = !DILocation(line: 482, column: 33, scope: !2614)
!2855 = !DILocation(line: 483, column: 33, scope: !2614)
!2856 = !DILocation(line: 485, column: 33, scope: !2614)
!2857 = !DILocation(line: 486, column: 33, scope: !2614)
!2858 = !DILocation(line: 487, column: 33, scope: !2614)
!2859 = !DILocation(line: 490, column: 17, scope: !2614)
!2860 = !DILocation(line: 492, column: 21, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !543, line: 491, column: 15)
!2862 = distinct !DILexicalBlock(scope: !2614, file: !543, line: 490, column: 17)
!2863 = !DILocation(line: 499, column: 35, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2614, file: !543, line: 499, column: 17)
!2865 = !DILocation(line: 499, column: 57, scope: !2864)
!2866 = !DILocation(line: 0, scope: !2614)
!2867 = !DILocation(line: 502, column: 11, scope: !2614)
!2868 = !DILocation(line: 504, column: 17, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2614, file: !543, line: 503, column: 17)
!2870 = !DILocation(line: 507, column: 11, scope: !2614)
!2871 = !DILocation(line: 508, column: 17, scope: !2614)
!2872 = !DILocation(line: 517, column: 15, scope: !2615)
!2873 = !DILocation(line: 517, column: 40, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 517, column: 15)
!2875 = !DILocation(line: 517, column: 47, scope: !2874)
!2876 = !DILocation(line: 517, column: 18, scope: !2874)
!2877 = !DILocation(line: 521, column: 17, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 521, column: 15)
!2879 = !DILocation(line: 521, column: 15, scope: !2615)
!2880 = !DILocation(line: 525, column: 11, scope: !2615)
!2881 = !DILocation(line: 537, column: 15, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 536, column: 15)
!2883 = !DILocation(line: 544, column: 15, scope: !2615)
!2884 = !DILocation(line: 546, column: 19, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !543, line: 545, column: 13)
!2886 = distinct !DILexicalBlock(scope: !2615, file: !543, line: 544, column: 15)
!2887 = !DILocation(line: 549, column: 19, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !543, line: 549, column: 19)
!2889 = !DILocation(line: 549, column: 30, scope: !2888)
!2890 = !DILocation(line: 558, column: 15, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !543, line: 558, column: 15)
!2892 = distinct !DILexicalBlock(scope: !2885, file: !543, line: 558, column: 15)
!2893 = !DILocation(line: 558, column: 15, scope: !2892)
!2894 = !DILocation(line: 559, column: 15, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !543, line: 559, column: 15)
!2896 = distinct !DILexicalBlock(scope: !2885, file: !543, line: 559, column: 15)
!2897 = !DILocation(line: 559, column: 15, scope: !2896)
!2898 = !DILocation(line: 560, column: 15, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !543, line: 560, column: 15)
!2900 = distinct !DILexicalBlock(scope: !2885, file: !543, line: 560, column: 15)
!2901 = !DILocation(line: 560, column: 15, scope: !2900)
!2902 = !DILocation(line: 562, column: 13, scope: !2885)
!2903 = !DILocation(line: 602, column: 17, scope: !2618)
!2904 = !DILocation(line: 0, scope: !2618)
!2905 = !DILocation(line: 605, column: 29, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2622, file: !543, line: 603, column: 15)
!2907 = !DILocation(line: 605, column: 27, scope: !2906)
!2908 = !DILocation(line: 606, column: 15, scope: !2906)
!2909 = !DILocation(line: 609, column: 17, scope: !2621)
!2910 = !DILocation(line: 0, scope: !2681, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 609, column: 32, scope: !2621)
!2912 = !DILocation(line: 0, scope: !2689, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1137, column: 3, scope: !2681, inlinedAt: !2911)
!2914 = !DILocation(line: 59, column: 10, scope: !2689, inlinedAt: !2913)
!2915 = !DILocation(line: 613, column: 29, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2621, file: !543, line: 613, column: 21)
!2917 = !DILocation(line: 613, column: 21, scope: !2621)
!2918 = !DILocation(line: 614, column: 29, scope: !2916)
!2919 = !DILocation(line: 614, column: 19, scope: !2916)
!2920 = !DILocation(line: 618, column: 21, scope: !2624)
!2921 = !DILocation(line: 620, column: 54, scope: !2624)
!2922 = !DILocation(line: 619, column: 36, scope: !2624)
!2923 = !DILocation(line: 621, column: 25, scope: !2624)
!2924 = !DILocation(line: 631, column: 38, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2633, file: !543, line: 629, column: 23)
!2926 = !DILocation(line: 631, column: 48, scope: !2925)
!2927 = !DILocation(line: 626, column: 25, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2634, file: !543, line: 624, column: 23)
!2929 = !DILocation(line: 631, column: 51, scope: !2925)
!2930 = !DILocation(line: 631, column: 25, scope: !2925)
!2931 = !DILocation(line: 632, column: 28, scope: !2925)
!2932 = !DILocation(line: 631, column: 34, scope: !2925)
!2933 = distinct !{!2933, !2930, !2931, !1085}
!2934 = !DILocation(line: 0, scope: !2629)
!2935 = !DILocation(line: 646, column: 29, scope: !2631)
!2936 = !DILocation(line: 649, column: 39, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2629, file: !543, line: 648, column: 29)
!2938 = !DILocation(line: 649, column: 31, scope: !2937)
!2939 = !DILocation(line: 648, column: 60, scope: !2937)
!2940 = !DILocation(line: 648, column: 50, scope: !2937)
!2941 = !DILocation(line: 648, column: 29, scope: !2629)
!2942 = distinct !{!2942, !2941, !2943, !1085}
!2943 = !DILocation(line: 654, column: 33, scope: !2629)
!2944 = !DILocation(line: 657, column: 43, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2632, file: !543, line: 657, column: 29)
!2946 = !DILocalVariable(name: "wc", arg: 1, scope: !2947, file: !2948, line: 865, type: !2951)
!2947 = distinct !DISubprogram(name: "c32isprint", scope: !2948, file: !2948, line: 865, type: !2949, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2953)
!2948 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!80, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2952, line: 20, baseType: !99)
!2952 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2953 = !{!2946}
!2954 = !DILocation(line: 0, scope: !2947, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 657, column: 31, scope: !2945)
!2956 = !DILocation(line: 871, column: 10, scope: !2947, inlinedAt: !2955)
!2957 = !DILocation(line: 657, column: 31, scope: !2945)
!2958 = !DILocation(line: 664, column: 23, scope: !2624)
!2959 = !DILocation(line: 665, column: 19, scope: !2625)
!2960 = !DILocation(line: 666, column: 15, scope: !2622)
!2961 = !DILocation(line: 0, scope: !2622)
!2962 = !DILocation(line: 670, column: 19, scope: !2638)
!2963 = !DILocation(line: 670, column: 23, scope: !2638)
!2964 = !DILocation(line: 674, column: 33, scope: !2637)
!2965 = !DILocation(line: 0, scope: !2637)
!2966 = !DILocation(line: 676, column: 17, scope: !2637)
!2967 = !DILocation(line: 398, column: 12, scope: !2608)
!2968 = !DILocation(line: 678, column: 43, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !543, line: 678, column: 25)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !543, line: 677, column: 19)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !543, line: 676, column: 17)
!2972 = distinct !DILexicalBlock(scope: !2637, file: !543, line: 676, column: 17)
!2973 = !DILocation(line: 680, column: 25, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !543, line: 680, column: 25)
!2975 = distinct !DILexicalBlock(scope: !2969, file: !543, line: 679, column: 23)
!2976 = !DILocation(line: 680, column: 25, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !543, line: 680, column: 25)
!2978 = !DILocation(line: 680, column: 25, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !543, line: 680, column: 25)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !543, line: 680, column: 25)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !543, line: 680, column: 25)
!2982 = !DILocation(line: 680, column: 25, scope: !2980)
!2983 = !DILocation(line: 680, column: 25, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !543, line: 680, column: 25)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !543, line: 680, column: 25)
!2986 = !DILocation(line: 680, column: 25, scope: !2985)
!2987 = !DILocation(line: 680, column: 25, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !543, line: 680, column: 25)
!2989 = distinct !DILexicalBlock(scope: !2981, file: !543, line: 680, column: 25)
!2990 = !DILocation(line: 680, column: 25, scope: !2989)
!2991 = !DILocation(line: 680, column: 25, scope: !2981)
!2992 = !DILocation(line: 680, column: 25, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !543, line: 680, column: 25)
!2994 = distinct !DILexicalBlock(scope: !2974, file: !543, line: 680, column: 25)
!2995 = !DILocation(line: 680, column: 25, scope: !2994)
!2996 = !DILocation(line: 681, column: 25, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !543, line: 681, column: 25)
!2998 = distinct !DILexicalBlock(scope: !2975, file: !543, line: 681, column: 25)
!2999 = !DILocation(line: 681, column: 25, scope: !2998)
!3000 = !DILocation(line: 682, column: 25, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !543, line: 682, column: 25)
!3002 = distinct !DILexicalBlock(scope: !2975, file: !543, line: 682, column: 25)
!3003 = !DILocation(line: 682, column: 25, scope: !3002)
!3004 = !DILocation(line: 683, column: 38, scope: !2975)
!3005 = !DILocation(line: 683, column: 33, scope: !2975)
!3006 = !DILocation(line: 684, column: 23, scope: !2975)
!3007 = !DILocation(line: 685, column: 30, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2969, file: !543, line: 685, column: 30)
!3009 = !DILocation(line: 685, column: 30, scope: !2969)
!3010 = !DILocation(line: 687, column: 25, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !543, line: 687, column: 25)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !543, line: 687, column: 25)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !543, line: 686, column: 23)
!3014 = !DILocation(line: 687, column: 25, scope: !3012)
!3015 = !DILocation(line: 689, column: 23, scope: !3013)
!3016 = !DILocation(line: 690, column: 35, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2970, file: !543, line: 690, column: 25)
!3018 = !DILocation(line: 690, column: 30, scope: !3017)
!3019 = !DILocation(line: 690, column: 25, scope: !2970)
!3020 = !DILocation(line: 692, column: 21, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !543, line: 692, column: 21)
!3022 = distinct !DILexicalBlock(scope: !2970, file: !543, line: 692, column: 21)
!3023 = !DILocation(line: 692, column: 21, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !543, line: 692, column: 21)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !543, line: 692, column: 21)
!3026 = distinct !DILexicalBlock(scope: !3021, file: !543, line: 692, column: 21)
!3027 = !DILocation(line: 692, column: 21, scope: !3025)
!3028 = !DILocation(line: 692, column: 21, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !543, line: 692, column: 21)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !543, line: 692, column: 21)
!3031 = !DILocation(line: 692, column: 21, scope: !3030)
!3032 = !DILocation(line: 692, column: 21, scope: !3026)
!3033 = !DILocation(line: 0, scope: !2970)
!3034 = !DILocation(line: 693, column: 21, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !543, line: 693, column: 21)
!3036 = distinct !DILexicalBlock(scope: !2970, file: !543, line: 693, column: 21)
!3037 = !DILocation(line: 693, column: 21, scope: !3036)
!3038 = !DILocation(line: 694, column: 25, scope: !2970)
!3039 = !DILocation(line: 676, column: 17, scope: !2971)
!3040 = distinct !{!3040, !3041, !3042}
!3041 = !DILocation(line: 676, column: 17, scope: !2972)
!3042 = !DILocation(line: 695, column: 19, scope: !2972)
!3043 = !DILocation(line: 409, column: 30, scope: !2759)
!3044 = !DILocation(line: 702, column: 34, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2608, file: !543, line: 702, column: 11)
!3046 = !DILocation(line: 704, column: 14, scope: !3045)
!3047 = !DILocation(line: 705, column: 14, scope: !3045)
!3048 = !DILocation(line: 705, column: 35, scope: !3045)
!3049 = !DILocation(line: 705, column: 17, scope: !3045)
!3050 = !DILocation(line: 705, column: 47, scope: !3045)
!3051 = !DILocation(line: 705, column: 65, scope: !3045)
!3052 = !DILocation(line: 706, column: 11, scope: !3045)
!3053 = !DILocation(line: 702, column: 11, scope: !2608)
!3054 = !DILocation(line: 395, column: 15, scope: !2606)
!3055 = !DILocation(line: 709, column: 5, scope: !2608)
!3056 = !DILocation(line: 710, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2608, file: !543, line: 710, column: 7)
!3058 = !DILocation(line: 710, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3057, file: !543, line: 710, column: 7)
!3060 = !DILocation(line: 710, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !543, line: 710, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !543, line: 710, column: 7)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !543, line: 710, column: 7)
!3064 = !DILocation(line: 710, column: 7, scope: !3062)
!3065 = !DILocation(line: 710, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !543, line: 710, column: 7)
!3067 = distinct !DILexicalBlock(scope: !3063, file: !543, line: 710, column: 7)
!3068 = !DILocation(line: 710, column: 7, scope: !3067)
!3069 = !DILocation(line: 710, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !543, line: 710, column: 7)
!3071 = distinct !DILexicalBlock(scope: !3063, file: !543, line: 710, column: 7)
!3072 = !DILocation(line: 710, column: 7, scope: !3071)
!3073 = !DILocation(line: 710, column: 7, scope: !3063)
!3074 = !DILocation(line: 710, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !543, line: 710, column: 7)
!3076 = distinct !DILexicalBlock(scope: !3057, file: !543, line: 710, column: 7)
!3077 = !DILocation(line: 710, column: 7, scope: !3076)
!3078 = !DILocation(line: 712, column: 5, scope: !2608)
!3079 = !DILocation(line: 713, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !543, line: 713, column: 7)
!3081 = distinct !DILexicalBlock(scope: !2608, file: !543, line: 713, column: 7)
!3082 = !DILocation(line: 417, column: 21, scope: !2608)
!3083 = !DILocation(line: 713, column: 7, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !543, line: 713, column: 7)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !543, line: 713, column: 7)
!3086 = distinct !DILexicalBlock(scope: !3080, file: !543, line: 713, column: 7)
!3087 = !DILocation(line: 713, column: 7, scope: !3085)
!3088 = !DILocation(line: 713, column: 7, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !543, line: 713, column: 7)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !543, line: 713, column: 7)
!3091 = !DILocation(line: 713, column: 7, scope: !3090)
!3092 = !DILocation(line: 713, column: 7, scope: !3086)
!3093 = !DILocation(line: 714, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !543, line: 714, column: 7)
!3095 = distinct !DILexicalBlock(scope: !2608, file: !543, line: 714, column: 7)
!3096 = !DILocation(line: 714, column: 7, scope: !3095)
!3097 = !DILocation(line: 716, column: 13, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2608, file: !543, line: 716, column: 11)
!3099 = !DILocation(line: 716, column: 11, scope: !2608)
!3100 = !DILocation(line: 718, column: 5, scope: !2609)
!3101 = !DILocation(line: 395, column: 82, scope: !2609)
!3102 = !DILocation(line: 395, column: 3, scope: !2609)
!3103 = distinct !{!3103, !2755, !3104, !1085}
!3104 = !DILocation(line: 718, column: 5, scope: !2606)
!3105 = !DILocation(line: 720, column: 11, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2574, file: !543, line: 720, column: 7)
!3107 = !DILocation(line: 720, column: 16, scope: !3106)
!3108 = !DILocation(line: 728, column: 51, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !2574, file: !543, line: 728, column: 7)
!3110 = !DILocation(line: 731, column: 11, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !543, line: 731, column: 11)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !543, line: 730, column: 5)
!3113 = !DILocation(line: 731, column: 11, scope: !3112)
!3114 = !DILocation(line: 732, column: 16, scope: !3111)
!3115 = !DILocation(line: 732, column: 9, scope: !3111)
!3116 = !DILocation(line: 736, column: 18, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3111, file: !543, line: 736, column: 16)
!3118 = !DILocation(line: 736, column: 29, scope: !3117)
!3119 = !DILocation(line: 745, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !2574, file: !543, line: 745, column: 7)
!3121 = !DILocation(line: 745, column: 20, scope: !3120)
!3122 = !DILocation(line: 746, column: 12, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !543, line: 746, column: 5)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !543, line: 746, column: 5)
!3125 = !DILocation(line: 746, column: 5, scope: !3124)
!3126 = !DILocation(line: 747, column: 7, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !543, line: 747, column: 7)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !543, line: 747, column: 7)
!3129 = !DILocation(line: 747, column: 7, scope: !3128)
!3130 = !DILocation(line: 746, column: 39, scope: !3123)
!3131 = distinct !{!3131, !3125, !3132, !1085}
!3132 = !DILocation(line: 747, column: 7, scope: !3124)
!3133 = !DILocation(line: 749, column: 11, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !2574, file: !543, line: 749, column: 7)
!3135 = !DILocation(line: 749, column: 7, scope: !2574)
!3136 = !DILocation(line: 750, column: 5, scope: !3134)
!3137 = !DILocation(line: 750, column: 17, scope: !3134)
!3138 = !DILocation(line: 753, column: 2, scope: !2574)
!3139 = !DILocation(line: 756, column: 51, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2574, file: !543, line: 756, column: 7)
!3141 = !DILocation(line: 756, column: 21, scope: !3140)
!3142 = !DILocation(line: 760, column: 42, scope: !2574)
!3143 = !DILocation(line: 758, column: 10, scope: !2574)
!3144 = !DILocation(line: 758, column: 3, scope: !2574)
!3145 = !DILocation(line: 762, column: 1, scope: !2574)
!3146 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1162, file: !1162, line: 98, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!140}
!3149 = !DISubprogram(name: "strlen", scope: !1158, file: !1158, line: 407, type: !3150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!142, !143}
!3152 = !DISubprogram(name: "iswprint", scope: !3153, file: !3153, line: 120, type: !2949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3154 = distinct !DISubprogram(name: "quotearg_alloc", scope: !543, file: !543, line: 788, type: !3155, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!137, !143, !140, !2467}
!3157 = !{!3158, !3159, !3160}
!3158 = !DILocalVariable(name: "arg", arg: 1, scope: !3154, file: !543, line: 788, type: !143)
!3159 = !DILocalVariable(name: "argsize", arg: 2, scope: !3154, file: !543, line: 788, type: !140)
!3160 = !DILocalVariable(name: "o", arg: 3, scope: !3154, file: !543, line: 789, type: !2467)
!3161 = !DILocation(line: 0, scope: !3154)
!3162 = !DILocalVariable(name: "arg", arg: 1, scope: !3163, file: !543, line: 801, type: !143)
!3163 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !543, file: !543, line: 801, type: !3164, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!137, !143, !140, !878, !2467}
!3166 = !{!3162, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174}
!3167 = !DILocalVariable(name: "argsize", arg: 2, scope: !3163, file: !543, line: 801, type: !140)
!3168 = !DILocalVariable(name: "size", arg: 3, scope: !3163, file: !543, line: 801, type: !878)
!3169 = !DILocalVariable(name: "o", arg: 4, scope: !3163, file: !543, line: 802, type: !2467)
!3170 = !DILocalVariable(name: "p", scope: !3163, file: !543, line: 804, type: !2467)
!3171 = !DILocalVariable(name: "saved_errno", scope: !3163, file: !543, line: 805, type: !80)
!3172 = !DILocalVariable(name: "flags", scope: !3163, file: !543, line: 807, type: !80)
!3173 = !DILocalVariable(name: "bufsize", scope: !3163, file: !543, line: 808, type: !140)
!3174 = !DILocalVariable(name: "buf", scope: !3163, file: !543, line: 812, type: !137)
!3175 = !DILocation(line: 0, scope: !3163, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 791, column: 10, scope: !3154)
!3177 = !DILocation(line: 804, column: 37, scope: !3163, inlinedAt: !3176)
!3178 = !DILocation(line: 805, column: 21, scope: !3163, inlinedAt: !3176)
!3179 = !DILocation(line: 807, column: 18, scope: !3163, inlinedAt: !3176)
!3180 = !DILocation(line: 807, column: 24, scope: !3163, inlinedAt: !3176)
!3181 = !DILocation(line: 808, column: 72, scope: !3163, inlinedAt: !3176)
!3182 = !DILocation(line: 809, column: 56, scope: !3163, inlinedAt: !3176)
!3183 = !DILocation(line: 810, column: 49, scope: !3163, inlinedAt: !3176)
!3184 = !DILocation(line: 811, column: 49, scope: !3163, inlinedAt: !3176)
!3185 = !DILocation(line: 808, column: 20, scope: !3163, inlinedAt: !3176)
!3186 = !DILocation(line: 811, column: 62, scope: !3163, inlinedAt: !3176)
!3187 = !DILocation(line: 812, column: 15, scope: !3163, inlinedAt: !3176)
!3188 = !DILocation(line: 813, column: 60, scope: !3163, inlinedAt: !3176)
!3189 = !DILocation(line: 815, column: 32, scope: !3163, inlinedAt: !3176)
!3190 = !DILocation(line: 815, column: 47, scope: !3163, inlinedAt: !3176)
!3191 = !DILocation(line: 813, column: 3, scope: !3163, inlinedAt: !3176)
!3192 = !DILocation(line: 816, column: 9, scope: !3163, inlinedAt: !3176)
!3193 = !DILocation(line: 791, column: 3, scope: !3154)
!3194 = !DILocation(line: 0, scope: !3163)
!3195 = !DILocation(line: 804, column: 37, scope: !3163)
!3196 = !DILocation(line: 805, column: 21, scope: !3163)
!3197 = !DILocation(line: 807, column: 18, scope: !3163)
!3198 = !DILocation(line: 807, column: 27, scope: !3163)
!3199 = !DILocation(line: 807, column: 24, scope: !3163)
!3200 = !DILocation(line: 808, column: 72, scope: !3163)
!3201 = !DILocation(line: 809, column: 56, scope: !3163)
!3202 = !DILocation(line: 810, column: 49, scope: !3163)
!3203 = !DILocation(line: 811, column: 49, scope: !3163)
!3204 = !DILocation(line: 808, column: 20, scope: !3163)
!3205 = !DILocation(line: 811, column: 62, scope: !3163)
!3206 = !DILocation(line: 812, column: 15, scope: !3163)
!3207 = !DILocation(line: 813, column: 60, scope: !3163)
!3208 = !DILocation(line: 815, column: 32, scope: !3163)
!3209 = !DILocation(line: 815, column: 47, scope: !3163)
!3210 = !DILocation(line: 813, column: 3, scope: !3163)
!3211 = !DILocation(line: 816, column: 9, scope: !3163)
!3212 = !DILocation(line: 817, column: 7, scope: !3163)
!3213 = !DILocation(line: 818, column: 11, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3163, file: !543, line: 817, column: 7)
!3215 = !{!1558, !1558, i64 0}
!3216 = !DILocation(line: 818, column: 5, scope: !3214)
!3217 = !DILocation(line: 819, column: 3, scope: !3163)
!3218 = distinct !DISubprogram(name: "quotearg_free", scope: !543, file: !543, line: 837, type: !479, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3219)
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "sv", scope: !3218, file: !543, line: 839, type: !632)
!3221 = !DILocalVariable(name: "i", scope: !3222, file: !543, line: 840, type: !80)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !543, line: 840, column: 3)
!3223 = !DILocation(line: 839, column: 24, scope: !3218)
!3224 = !DILocation(line: 0, scope: !3218)
!3225 = !DILocation(line: 0, scope: !3222)
!3226 = !DILocation(line: 840, column: 21, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3222, file: !543, line: 840, column: 3)
!3228 = !DILocation(line: 840, column: 3, scope: !3222)
!3229 = !DILocation(line: 842, column: 13, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3218, file: !543, line: 842, column: 7)
!3231 = !{!3232, !970, i64 8}
!3232 = !{!"slotvec", !1558, i64 0, !970, i64 8}
!3233 = !DILocation(line: 842, column: 17, scope: !3230)
!3234 = !DILocation(line: 842, column: 7, scope: !3218)
!3235 = !DILocation(line: 841, column: 17, scope: !3227)
!3236 = !DILocation(line: 841, column: 5, scope: !3227)
!3237 = !DILocation(line: 840, column: 32, scope: !3227)
!3238 = distinct !{!3238, !3228, !3239, !1085}
!3239 = !DILocation(line: 841, column: 20, scope: !3222)
!3240 = !DILocation(line: 844, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3230, file: !543, line: 843, column: 5)
!3242 = !DILocation(line: 845, column: 21, scope: !3241)
!3243 = !{!3232, !1558, i64 0}
!3244 = !DILocation(line: 846, column: 20, scope: !3241)
!3245 = !DILocation(line: 847, column: 5, scope: !3241)
!3246 = !DILocation(line: 848, column: 10, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3218, file: !543, line: 848, column: 7)
!3248 = !DILocation(line: 848, column: 7, scope: !3218)
!3249 = !DILocation(line: 850, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !543, line: 849, column: 5)
!3251 = !DILocation(line: 851, column: 15, scope: !3250)
!3252 = !DILocation(line: 852, column: 5, scope: !3250)
!3253 = !DILocation(line: 853, column: 10, scope: !3218)
!3254 = !DILocation(line: 854, column: 1, scope: !3218)
!3255 = distinct !DISubprogram(name: "quotearg_n", scope: !543, file: !543, line: 919, type: !1155, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3256)
!3256 = !{!3257, !3258}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3255, file: !543, line: 919, type: !80)
!3258 = !DILocalVariable(name: "arg", arg: 2, scope: !3255, file: !543, line: 919, type: !143)
!3259 = !DILocation(line: 0, scope: !3255)
!3260 = !DILocation(line: 921, column: 10, scope: !3255)
!3261 = !DILocation(line: 921, column: 3, scope: !3255)
!3262 = distinct !DISubprogram(name: "quotearg_n_options", scope: !543, file: !543, line: 866, type: !3263, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!137, !80, !143, !140, !2467}
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3276, !3277, !3279, !3280, !3281}
!3266 = !DILocalVariable(name: "n", arg: 1, scope: !3262, file: !543, line: 866, type: !80)
!3267 = !DILocalVariable(name: "arg", arg: 2, scope: !3262, file: !543, line: 866, type: !143)
!3268 = !DILocalVariable(name: "argsize", arg: 3, scope: !3262, file: !543, line: 866, type: !140)
!3269 = !DILocalVariable(name: "options", arg: 4, scope: !3262, file: !543, line: 867, type: !2467)
!3270 = !DILocalVariable(name: "saved_errno", scope: !3262, file: !543, line: 869, type: !80)
!3271 = !DILocalVariable(name: "sv", scope: !3262, file: !543, line: 871, type: !632)
!3272 = !DILocalVariable(name: "nslots_max", scope: !3262, file: !543, line: 873, type: !80)
!3273 = !DILocalVariable(name: "preallocated", scope: !3274, file: !543, line: 879, type: !191)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !543, line: 878, column: 5)
!3275 = distinct !DILexicalBlock(scope: !3262, file: !543, line: 877, column: 7)
!3276 = !DILocalVariable(name: "new_nslots", scope: !3274, file: !543, line: 880, type: !891)
!3277 = !DILocalVariable(name: "size", scope: !3278, file: !543, line: 891, type: !140)
!3278 = distinct !DILexicalBlock(scope: !3262, file: !543, line: 890, column: 3)
!3279 = !DILocalVariable(name: "val", scope: !3278, file: !543, line: 892, type: !137)
!3280 = !DILocalVariable(name: "flags", scope: !3278, file: !543, line: 894, type: !80)
!3281 = !DILocalVariable(name: "qsize", scope: !3278, file: !543, line: 895, type: !140)
!3282 = distinct !DIAssignID()
!3283 = !DILocation(line: 0, scope: !3274)
!3284 = !DILocation(line: 0, scope: !3262)
!3285 = !DILocation(line: 869, column: 21, scope: !3262)
!3286 = !DILocation(line: 871, column: 24, scope: !3262)
!3287 = !DILocation(line: 874, column: 17, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3262, file: !543, line: 874, column: 7)
!3289 = !DILocation(line: 875, column: 5, scope: !3288)
!3290 = !DILocation(line: 877, column: 7, scope: !3275)
!3291 = !DILocation(line: 877, column: 14, scope: !3275)
!3292 = !DILocation(line: 877, column: 7, scope: !3262)
!3293 = !DILocation(line: 879, column: 31, scope: !3274)
!3294 = !DILocation(line: 880, column: 7, scope: !3274)
!3295 = !DILocation(line: 880, column: 26, scope: !3274)
!3296 = !DILocation(line: 880, column: 13, scope: !3274)
!3297 = distinct !DIAssignID()
!3298 = !DILocation(line: 882, column: 31, scope: !3274)
!3299 = !DILocation(line: 883, column: 33, scope: !3274)
!3300 = !DILocation(line: 883, column: 42, scope: !3274)
!3301 = !DILocation(line: 883, column: 31, scope: !3274)
!3302 = !DILocation(line: 882, column: 22, scope: !3274)
!3303 = !DILocation(line: 882, column: 15, scope: !3274)
!3304 = !DILocation(line: 884, column: 11, scope: !3274)
!3305 = !DILocation(line: 885, column: 15, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3274, file: !543, line: 884, column: 11)
!3307 = !{i64 0, i64 8, !3215, i64 8, i64 8, !969}
!3308 = !DILocation(line: 885, column: 9, scope: !3306)
!3309 = !DILocation(line: 886, column: 20, scope: !3274)
!3310 = !DILocation(line: 886, column: 18, scope: !3274)
!3311 = !DILocation(line: 886, column: 32, scope: !3274)
!3312 = !DILocation(line: 886, column: 43, scope: !3274)
!3313 = !DILocation(line: 886, column: 53, scope: !3274)
!3314 = !DILocation(line: 0, scope: !2689, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 886, column: 7, scope: !3274)
!3316 = !DILocation(line: 59, column: 10, scope: !2689, inlinedAt: !3315)
!3317 = !DILocation(line: 887, column: 16, scope: !3274)
!3318 = !DILocation(line: 887, column: 14, scope: !3274)
!3319 = !DILocation(line: 888, column: 5, scope: !3275)
!3320 = !DILocation(line: 888, column: 5, scope: !3274)
!3321 = !DILocation(line: 891, column: 19, scope: !3278)
!3322 = !DILocation(line: 891, column: 25, scope: !3278)
!3323 = !DILocation(line: 0, scope: !3278)
!3324 = !DILocation(line: 892, column: 23, scope: !3278)
!3325 = !DILocation(line: 894, column: 26, scope: !3278)
!3326 = !DILocation(line: 894, column: 32, scope: !3278)
!3327 = !DILocation(line: 896, column: 55, scope: !3278)
!3328 = !DILocation(line: 897, column: 55, scope: !3278)
!3329 = !DILocation(line: 898, column: 55, scope: !3278)
!3330 = !DILocation(line: 899, column: 55, scope: !3278)
!3331 = !DILocation(line: 895, column: 20, scope: !3278)
!3332 = !DILocation(line: 901, column: 14, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3278, file: !543, line: 901, column: 9)
!3334 = !DILocation(line: 901, column: 9, scope: !3278)
!3335 = !DILocation(line: 903, column: 35, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3333, file: !543, line: 902, column: 7)
!3337 = !DILocation(line: 903, column: 20, scope: !3336)
!3338 = !DILocation(line: 904, column: 17, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !543, line: 904, column: 13)
!3340 = !DILocation(line: 904, column: 13, scope: !3336)
!3341 = !DILocation(line: 905, column: 11, scope: !3339)
!3342 = !DILocation(line: 906, column: 27, scope: !3336)
!3343 = !DILocation(line: 906, column: 19, scope: !3336)
!3344 = !DILocation(line: 907, column: 69, scope: !3336)
!3345 = !DILocation(line: 909, column: 44, scope: !3336)
!3346 = !DILocation(line: 910, column: 44, scope: !3336)
!3347 = !DILocation(line: 907, column: 9, scope: !3336)
!3348 = !DILocation(line: 911, column: 7, scope: !3336)
!3349 = !DILocation(line: 913, column: 11, scope: !3278)
!3350 = !DILocation(line: 914, column: 5, scope: !3278)
!3351 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !543, file: !543, line: 925, type: !3352, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!137, !80, !143, !140}
!3354 = !{!3355, !3356, !3357}
!3355 = !DILocalVariable(name: "n", arg: 1, scope: !3351, file: !543, line: 925, type: !80)
!3356 = !DILocalVariable(name: "arg", arg: 2, scope: !3351, file: !543, line: 925, type: !143)
!3357 = !DILocalVariable(name: "argsize", arg: 3, scope: !3351, file: !543, line: 925, type: !140)
!3358 = !DILocation(line: 0, scope: !3351)
!3359 = !DILocation(line: 927, column: 10, scope: !3351)
!3360 = !DILocation(line: 927, column: 3, scope: !3351)
!3361 = distinct !DISubprogram(name: "quotearg", scope: !543, file: !543, line: 931, type: !1164, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3362)
!3362 = !{!3363}
!3363 = !DILocalVariable(name: "arg", arg: 1, scope: !3361, file: !543, line: 931, type: !143)
!3364 = !DILocation(line: 0, scope: !3361)
!3365 = !DILocation(line: 0, scope: !3255, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 933, column: 10, scope: !3361)
!3367 = !DILocation(line: 921, column: 10, scope: !3255, inlinedAt: !3366)
!3368 = !DILocation(line: 933, column: 3, scope: !3361)
!3369 = distinct !DISubprogram(name: "quotearg_mem", scope: !543, file: !543, line: 937, type: !3370, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!137, !143, !140}
!3372 = !{!3373, !3374}
!3373 = !DILocalVariable(name: "arg", arg: 1, scope: !3369, file: !543, line: 937, type: !143)
!3374 = !DILocalVariable(name: "argsize", arg: 2, scope: !3369, file: !543, line: 937, type: !140)
!3375 = !DILocation(line: 0, scope: !3369)
!3376 = !DILocation(line: 0, scope: !3351, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 939, column: 10, scope: !3369)
!3378 = !DILocation(line: 927, column: 10, scope: !3351, inlinedAt: !3377)
!3379 = !DILocation(line: 939, column: 3, scope: !3369)
!3380 = distinct !DISubprogram(name: "quotearg_n_style", scope: !543, file: !543, line: 943, type: !3381, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!137, !80, !569, !143}
!3383 = !{!3384, !3385, !3386, !3387}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3380, file: !543, line: 943, type: !80)
!3385 = !DILocalVariable(name: "s", arg: 2, scope: !3380, file: !543, line: 943, type: !569)
!3386 = !DILocalVariable(name: "arg", arg: 3, scope: !3380, file: !543, line: 943, type: !143)
!3387 = !DILocalVariable(name: "o", scope: !3380, file: !543, line: 945, type: !2468)
!3388 = distinct !DIAssignID()
!3389 = !DILocation(line: 0, scope: !3380)
!3390 = !DILocation(line: 945, column: 3, scope: !3380)
!3391 = !{!3392}
!3392 = distinct !{!3392, !3393, !"quoting_options_from_style: argument 0"}
!3393 = distinct !{!3393, !"quoting_options_from_style"}
!3394 = !DILocation(line: 945, column: 36, scope: !3380)
!3395 = !DILocalVariable(name: "style", arg: 1, scope: !3396, file: !543, line: 183, type: !569)
!3396 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !543, file: !543, line: 183, type: !3397, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!584, !569}
!3399 = !{!3395, !3400}
!3400 = !DILocalVariable(name: "o", scope: !3396, file: !543, line: 185, type: !584)
!3401 = !DILocation(line: 0, scope: !3396, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 945, column: 36, scope: !3380)
!3403 = !DILocation(line: 185, column: 26, scope: !3396, inlinedAt: !3402)
!3404 = distinct !DIAssignID()
!3405 = !DILocation(line: 186, column: 13, scope: !3406, inlinedAt: !3402)
!3406 = distinct !DILexicalBlock(scope: !3396, file: !543, line: 186, column: 7)
!3407 = !DILocation(line: 186, column: 7, scope: !3396, inlinedAt: !3402)
!3408 = !DILocation(line: 187, column: 5, scope: !3406, inlinedAt: !3402)
!3409 = !DILocation(line: 188, column: 11, scope: !3396, inlinedAt: !3402)
!3410 = distinct !DIAssignID()
!3411 = !DILocation(line: 946, column: 10, scope: !3380)
!3412 = !DILocation(line: 947, column: 1, scope: !3380)
!3413 = !DILocation(line: 946, column: 3, scope: !3380)
!3414 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !543, file: !543, line: 950, type: !3415, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!137, !80, !569, !143, !140}
!3417 = !{!3418, !3419, !3420, !3421, !3422}
!3418 = !DILocalVariable(name: "n", arg: 1, scope: !3414, file: !543, line: 950, type: !80)
!3419 = !DILocalVariable(name: "s", arg: 2, scope: !3414, file: !543, line: 950, type: !569)
!3420 = !DILocalVariable(name: "arg", arg: 3, scope: !3414, file: !543, line: 951, type: !143)
!3421 = !DILocalVariable(name: "argsize", arg: 4, scope: !3414, file: !543, line: 951, type: !140)
!3422 = !DILocalVariable(name: "o", scope: !3414, file: !543, line: 953, type: !2468)
!3423 = distinct !DIAssignID()
!3424 = !DILocation(line: 0, scope: !3414)
!3425 = !DILocation(line: 953, column: 3, scope: !3414)
!3426 = !{!3427}
!3427 = distinct !{!3427, !3428, !"quoting_options_from_style: argument 0"}
!3428 = distinct !{!3428, !"quoting_options_from_style"}
!3429 = !DILocation(line: 953, column: 36, scope: !3414)
!3430 = !DILocation(line: 0, scope: !3396, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 953, column: 36, scope: !3414)
!3432 = !DILocation(line: 185, column: 26, scope: !3396, inlinedAt: !3431)
!3433 = distinct !DIAssignID()
!3434 = !DILocation(line: 186, column: 13, scope: !3406, inlinedAt: !3431)
!3435 = !DILocation(line: 186, column: 7, scope: !3396, inlinedAt: !3431)
!3436 = !DILocation(line: 187, column: 5, scope: !3406, inlinedAt: !3431)
!3437 = !DILocation(line: 188, column: 11, scope: !3396, inlinedAt: !3431)
!3438 = distinct !DIAssignID()
!3439 = !DILocation(line: 954, column: 10, scope: !3414)
!3440 = !DILocation(line: 955, column: 1, scope: !3414)
!3441 = !DILocation(line: 954, column: 3, scope: !3414)
!3442 = distinct !DISubprogram(name: "quotearg_style", scope: !543, file: !543, line: 958, type: !3443, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!137, !569, !143}
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "s", arg: 1, scope: !3442, file: !543, line: 958, type: !569)
!3447 = !DILocalVariable(name: "arg", arg: 2, scope: !3442, file: !543, line: 958, type: !143)
!3448 = distinct !DIAssignID()
!3449 = !DILocation(line: 0, scope: !3442)
!3450 = !DILocation(line: 0, scope: !3380, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 960, column: 10, scope: !3442)
!3452 = !DILocation(line: 945, column: 3, scope: !3380, inlinedAt: !3451)
!3453 = !{!3454}
!3454 = distinct !{!3454, !3455, !"quoting_options_from_style: argument 0"}
!3455 = distinct !{!3455, !"quoting_options_from_style"}
!3456 = !DILocation(line: 945, column: 36, scope: !3380, inlinedAt: !3451)
!3457 = !DILocation(line: 0, scope: !3396, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 945, column: 36, scope: !3380, inlinedAt: !3451)
!3459 = !DILocation(line: 185, column: 26, scope: !3396, inlinedAt: !3458)
!3460 = distinct !DIAssignID()
!3461 = !DILocation(line: 186, column: 13, scope: !3406, inlinedAt: !3458)
!3462 = !DILocation(line: 186, column: 7, scope: !3396, inlinedAt: !3458)
!3463 = !DILocation(line: 187, column: 5, scope: !3406, inlinedAt: !3458)
!3464 = !DILocation(line: 188, column: 11, scope: !3396, inlinedAt: !3458)
!3465 = distinct !DIAssignID()
!3466 = !DILocation(line: 946, column: 10, scope: !3380, inlinedAt: !3451)
!3467 = !DILocation(line: 947, column: 1, scope: !3380, inlinedAt: !3451)
!3468 = !DILocation(line: 960, column: 3, scope: !3442)
!3469 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !543, file: !543, line: 964, type: !3470, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!137, !569, !143, !140}
!3472 = !{!3473, !3474, !3475}
!3473 = !DILocalVariable(name: "s", arg: 1, scope: !3469, file: !543, line: 964, type: !569)
!3474 = !DILocalVariable(name: "arg", arg: 2, scope: !3469, file: !543, line: 964, type: !143)
!3475 = !DILocalVariable(name: "argsize", arg: 3, scope: !3469, file: !543, line: 964, type: !140)
!3476 = distinct !DIAssignID()
!3477 = !DILocation(line: 0, scope: !3469)
!3478 = !DILocation(line: 0, scope: !3414, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 966, column: 10, scope: !3469)
!3480 = !DILocation(line: 953, column: 3, scope: !3414, inlinedAt: !3479)
!3481 = !{!3482}
!3482 = distinct !{!3482, !3483, !"quoting_options_from_style: argument 0"}
!3483 = distinct !{!3483, !"quoting_options_from_style"}
!3484 = !DILocation(line: 953, column: 36, scope: !3414, inlinedAt: !3479)
!3485 = !DILocation(line: 0, scope: !3396, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 953, column: 36, scope: !3414, inlinedAt: !3479)
!3487 = !DILocation(line: 185, column: 26, scope: !3396, inlinedAt: !3486)
!3488 = distinct !DIAssignID()
!3489 = !DILocation(line: 186, column: 13, scope: !3406, inlinedAt: !3486)
!3490 = !DILocation(line: 186, column: 7, scope: !3396, inlinedAt: !3486)
!3491 = !DILocation(line: 187, column: 5, scope: !3406, inlinedAt: !3486)
!3492 = !DILocation(line: 188, column: 11, scope: !3396, inlinedAt: !3486)
!3493 = distinct !DIAssignID()
!3494 = !DILocation(line: 954, column: 10, scope: !3414, inlinedAt: !3479)
!3495 = !DILocation(line: 955, column: 1, scope: !3414, inlinedAt: !3479)
!3496 = !DILocation(line: 966, column: 3, scope: !3469)
!3497 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !543, file: !543, line: 970, type: !3498, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!137, !143, !140, !4}
!3500 = !{!3501, !3502, !3503, !3504}
!3501 = !DILocalVariable(name: "arg", arg: 1, scope: !3497, file: !543, line: 970, type: !143)
!3502 = !DILocalVariable(name: "argsize", arg: 2, scope: !3497, file: !543, line: 970, type: !140)
!3503 = !DILocalVariable(name: "ch", arg: 3, scope: !3497, file: !543, line: 970, type: !4)
!3504 = !DILocalVariable(name: "options", scope: !3497, file: !543, line: 972, type: !584)
!3505 = distinct !DIAssignID()
!3506 = !DILocation(line: 0, scope: !3497)
!3507 = !DILocation(line: 972, column: 3, scope: !3497)
!3508 = !DILocation(line: 973, column: 13, scope: !3497)
!3509 = !{i64 0, i64 4, !1038, i64 4, i64 4, !1038, i64 8, i64 32, !1047, i64 40, i64 8, !969, i64 48, i64 8, !969}
!3510 = distinct !DIAssignID()
!3511 = !DILocation(line: 0, scope: !2487, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 974, column: 3, scope: !3497)
!3513 = !DILocation(line: 147, column: 41, scope: !2487, inlinedAt: !3512)
!3514 = !DILocation(line: 147, column: 62, scope: !2487, inlinedAt: !3512)
!3515 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3512)
!3516 = !DILocation(line: 148, column: 15, scope: !2487, inlinedAt: !3512)
!3517 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3512)
!3518 = !DILocation(line: 149, column: 24, scope: !2487, inlinedAt: !3512)
!3519 = !DILocation(line: 150, column: 19, scope: !2487, inlinedAt: !3512)
!3520 = !DILocation(line: 150, column: 24, scope: !2487, inlinedAt: !3512)
!3521 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3512)
!3522 = !DILocation(line: 975, column: 10, scope: !3497)
!3523 = !DILocation(line: 976, column: 1, scope: !3497)
!3524 = !DILocation(line: 975, column: 3, scope: !3497)
!3525 = distinct !DISubprogram(name: "quotearg_char", scope: !543, file: !543, line: 979, type: !3526, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!137, !143, !4}
!3528 = !{!3529, !3530}
!3529 = !DILocalVariable(name: "arg", arg: 1, scope: !3525, file: !543, line: 979, type: !143)
!3530 = !DILocalVariable(name: "ch", arg: 2, scope: !3525, file: !543, line: 979, type: !4)
!3531 = distinct !DIAssignID()
!3532 = !DILocation(line: 0, scope: !3525)
!3533 = !DILocation(line: 0, scope: !3497, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 981, column: 10, scope: !3525)
!3535 = !DILocation(line: 972, column: 3, scope: !3497, inlinedAt: !3534)
!3536 = !DILocation(line: 973, column: 13, scope: !3497, inlinedAt: !3534)
!3537 = distinct !DIAssignID()
!3538 = !DILocation(line: 0, scope: !2487, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 974, column: 3, scope: !3497, inlinedAt: !3534)
!3540 = !DILocation(line: 147, column: 41, scope: !2487, inlinedAt: !3539)
!3541 = !DILocation(line: 147, column: 62, scope: !2487, inlinedAt: !3539)
!3542 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3539)
!3543 = !DILocation(line: 148, column: 15, scope: !2487, inlinedAt: !3539)
!3544 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3539)
!3545 = !DILocation(line: 149, column: 24, scope: !2487, inlinedAt: !3539)
!3546 = !DILocation(line: 150, column: 19, scope: !2487, inlinedAt: !3539)
!3547 = !DILocation(line: 150, column: 24, scope: !2487, inlinedAt: !3539)
!3548 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3539)
!3549 = !DILocation(line: 975, column: 10, scope: !3497, inlinedAt: !3534)
!3550 = !DILocation(line: 976, column: 1, scope: !3497, inlinedAt: !3534)
!3551 = !DILocation(line: 981, column: 3, scope: !3525)
!3552 = distinct !DISubprogram(name: "quotearg_colon", scope: !543, file: !543, line: 985, type: !1164, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3553)
!3553 = !{!3554}
!3554 = !DILocalVariable(name: "arg", arg: 1, scope: !3552, file: !543, line: 985, type: !143)
!3555 = distinct !DIAssignID()
!3556 = !DILocation(line: 0, scope: !3552)
!3557 = !DILocation(line: 0, scope: !3525, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 987, column: 10, scope: !3552)
!3559 = !DILocation(line: 0, scope: !3497, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 981, column: 10, scope: !3525, inlinedAt: !3558)
!3561 = !DILocation(line: 972, column: 3, scope: !3497, inlinedAt: !3560)
!3562 = !DILocation(line: 973, column: 13, scope: !3497, inlinedAt: !3560)
!3563 = distinct !DIAssignID()
!3564 = !DILocation(line: 0, scope: !2487, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 974, column: 3, scope: !3497, inlinedAt: !3560)
!3566 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3565)
!3567 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3565)
!3568 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3565)
!3569 = !DILocation(line: 975, column: 10, scope: !3497, inlinedAt: !3560)
!3570 = !DILocation(line: 976, column: 1, scope: !3497, inlinedAt: !3560)
!3571 = !DILocation(line: 987, column: 3, scope: !3552)
!3572 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !543, file: !543, line: 991, type: !3370, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3573)
!3573 = !{!3574, !3575}
!3574 = !DILocalVariable(name: "arg", arg: 1, scope: !3572, file: !543, line: 991, type: !143)
!3575 = !DILocalVariable(name: "argsize", arg: 2, scope: !3572, file: !543, line: 991, type: !140)
!3576 = distinct !DIAssignID()
!3577 = !DILocation(line: 0, scope: !3572)
!3578 = !DILocation(line: 0, scope: !3497, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 993, column: 10, scope: !3572)
!3580 = !DILocation(line: 972, column: 3, scope: !3497, inlinedAt: !3579)
!3581 = !DILocation(line: 973, column: 13, scope: !3497, inlinedAt: !3579)
!3582 = distinct !DIAssignID()
!3583 = !DILocation(line: 0, scope: !2487, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 974, column: 3, scope: !3497, inlinedAt: !3579)
!3585 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3584)
!3586 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3584)
!3587 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3584)
!3588 = !DILocation(line: 975, column: 10, scope: !3497, inlinedAt: !3579)
!3589 = !DILocation(line: 976, column: 1, scope: !3497, inlinedAt: !3579)
!3590 = !DILocation(line: 993, column: 3, scope: !3572)
!3591 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !543, file: !543, line: 997, type: !3381, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3592)
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3591, file: !543, line: 997, type: !80)
!3594 = !DILocalVariable(name: "s", arg: 2, scope: !3591, file: !543, line: 997, type: !569)
!3595 = !DILocalVariable(name: "arg", arg: 3, scope: !3591, file: !543, line: 997, type: !143)
!3596 = !DILocalVariable(name: "options", scope: !3591, file: !543, line: 999, type: !584)
!3597 = distinct !DIAssignID()
!3598 = !DILocation(line: 0, scope: !3591)
!3599 = !DILocation(line: 185, column: 26, scope: !3396, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 1000, column: 13, scope: !3591)
!3601 = !DILocation(line: 999, column: 3, scope: !3591)
!3602 = !DILocation(line: 0, scope: !3396, inlinedAt: !3600)
!3603 = !DILocation(line: 186, column: 13, scope: !3406, inlinedAt: !3600)
!3604 = !DILocation(line: 186, column: 7, scope: !3396, inlinedAt: !3600)
!3605 = !DILocation(line: 187, column: 5, scope: !3406, inlinedAt: !3600)
!3606 = !{!3607}
!3607 = distinct !{!3607, !3608, !"quoting_options_from_style: argument 0"}
!3608 = distinct !{!3608, !"quoting_options_from_style"}
!3609 = !DILocation(line: 1000, column: 13, scope: !3591)
!3610 = distinct !DIAssignID()
!3611 = distinct !DIAssignID()
!3612 = !DILocation(line: 0, scope: !2487, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 1001, column: 3, scope: !3591)
!3614 = !DILocation(line: 147, column: 57, scope: !2487, inlinedAt: !3613)
!3615 = !DILocation(line: 149, column: 21, scope: !2487, inlinedAt: !3613)
!3616 = !DILocation(line: 150, column: 6, scope: !2487, inlinedAt: !3613)
!3617 = distinct !DIAssignID()
!3618 = !DILocation(line: 1002, column: 10, scope: !3591)
!3619 = !DILocation(line: 1003, column: 1, scope: !3591)
!3620 = !DILocation(line: 1002, column: 3, scope: !3591)
!3621 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !543, file: !543, line: 1006, type: !3622, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!137, !80, !143, !143, !143}
!3624 = !{!3625, !3626, !3627, !3628}
!3625 = !DILocalVariable(name: "n", arg: 1, scope: !3621, file: !543, line: 1006, type: !80)
!3626 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3621, file: !543, line: 1006, type: !143)
!3627 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3621, file: !543, line: 1007, type: !143)
!3628 = !DILocalVariable(name: "arg", arg: 4, scope: !3621, file: !543, line: 1007, type: !143)
!3629 = distinct !DIAssignID()
!3630 = !DILocation(line: 0, scope: !3621)
!3631 = !DILocalVariable(name: "o", scope: !3632, file: !543, line: 1018, type: !584)
!3632 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !543, file: !543, line: 1014, type: !3633, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!137, !80, !143, !143, !143, !140}
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3631}
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !543, line: 1014, type: !80)
!3637 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3632, file: !543, line: 1014, type: !143)
!3638 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3632, file: !543, line: 1015, type: !143)
!3639 = !DILocalVariable(name: "arg", arg: 4, scope: !3632, file: !543, line: 1016, type: !143)
!3640 = !DILocalVariable(name: "argsize", arg: 5, scope: !3632, file: !543, line: 1016, type: !140)
!3641 = !DILocation(line: 0, scope: !3632, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 1009, column: 10, scope: !3621)
!3643 = !DILocation(line: 1018, column: 3, scope: !3632, inlinedAt: !3642)
!3644 = !DILocation(line: 1018, column: 30, scope: !3632, inlinedAt: !3642)
!3645 = distinct !DIAssignID()
!3646 = distinct !DIAssignID()
!3647 = !DILocation(line: 0, scope: !2527, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 1019, column: 3, scope: !3632, inlinedAt: !3642)
!3649 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3648)
!3650 = distinct !DIAssignID()
!3651 = !DILocation(line: 175, column: 8, scope: !2540, inlinedAt: !3648)
!3652 = !DILocation(line: 175, column: 19, scope: !2540, inlinedAt: !3648)
!3653 = !DILocation(line: 176, column: 5, scope: !2540, inlinedAt: !3648)
!3654 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3648)
!3655 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3648)
!3656 = distinct !DIAssignID()
!3657 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3648)
!3658 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3648)
!3659 = distinct !DIAssignID()
!3660 = !DILocation(line: 1020, column: 10, scope: !3632, inlinedAt: !3642)
!3661 = !DILocation(line: 1021, column: 1, scope: !3632, inlinedAt: !3642)
!3662 = !DILocation(line: 1009, column: 3, scope: !3621)
!3663 = distinct !DIAssignID()
!3664 = !DILocation(line: 0, scope: !3632)
!3665 = !DILocation(line: 1018, column: 3, scope: !3632)
!3666 = !DILocation(line: 1018, column: 30, scope: !3632)
!3667 = distinct !DIAssignID()
!3668 = distinct !DIAssignID()
!3669 = !DILocation(line: 0, scope: !2527, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1019, column: 3, scope: !3632)
!3671 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3670)
!3672 = distinct !DIAssignID()
!3673 = !DILocation(line: 175, column: 8, scope: !2540, inlinedAt: !3670)
!3674 = !DILocation(line: 175, column: 19, scope: !2540, inlinedAt: !3670)
!3675 = !DILocation(line: 176, column: 5, scope: !2540, inlinedAt: !3670)
!3676 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3670)
!3677 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3670)
!3678 = distinct !DIAssignID()
!3679 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3670)
!3680 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3670)
!3681 = distinct !DIAssignID()
!3682 = !DILocation(line: 1020, column: 10, scope: !3632)
!3683 = !DILocation(line: 1021, column: 1, scope: !3632)
!3684 = !DILocation(line: 1020, column: 3, scope: !3632)
!3685 = distinct !DISubprogram(name: "quotearg_custom", scope: !543, file: !543, line: 1024, type: !3686, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!137, !143, !143, !143}
!3688 = !{!3689, !3690, !3691}
!3689 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3685, file: !543, line: 1024, type: !143)
!3690 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3685, file: !543, line: 1024, type: !143)
!3691 = !DILocalVariable(name: "arg", arg: 3, scope: !3685, file: !543, line: 1025, type: !143)
!3692 = distinct !DIAssignID()
!3693 = !DILocation(line: 0, scope: !3685)
!3694 = !DILocation(line: 0, scope: !3621, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1027, column: 10, scope: !3685)
!3696 = !DILocation(line: 0, scope: !3632, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1009, column: 10, scope: !3621, inlinedAt: !3695)
!3698 = !DILocation(line: 1018, column: 3, scope: !3632, inlinedAt: !3697)
!3699 = !DILocation(line: 1018, column: 30, scope: !3632, inlinedAt: !3697)
!3700 = distinct !DIAssignID()
!3701 = distinct !DIAssignID()
!3702 = !DILocation(line: 0, scope: !2527, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 1019, column: 3, scope: !3632, inlinedAt: !3697)
!3704 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3703)
!3705 = distinct !DIAssignID()
!3706 = !DILocation(line: 175, column: 8, scope: !2540, inlinedAt: !3703)
!3707 = !DILocation(line: 175, column: 19, scope: !2540, inlinedAt: !3703)
!3708 = !DILocation(line: 176, column: 5, scope: !2540, inlinedAt: !3703)
!3709 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3703)
!3710 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3703)
!3711 = distinct !DIAssignID()
!3712 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3703)
!3713 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3703)
!3714 = distinct !DIAssignID()
!3715 = !DILocation(line: 1020, column: 10, scope: !3632, inlinedAt: !3697)
!3716 = !DILocation(line: 1021, column: 1, scope: !3632, inlinedAt: !3697)
!3717 = !DILocation(line: 1027, column: 3, scope: !3685)
!3718 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !543, file: !543, line: 1031, type: !3719, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!137, !143, !143, !143, !140}
!3721 = !{!3722, !3723, !3724, !3725}
!3722 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3718, file: !543, line: 1031, type: !143)
!3723 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3718, file: !543, line: 1031, type: !143)
!3724 = !DILocalVariable(name: "arg", arg: 3, scope: !3718, file: !543, line: 1032, type: !143)
!3725 = !DILocalVariable(name: "argsize", arg: 4, scope: !3718, file: !543, line: 1032, type: !140)
!3726 = distinct !DIAssignID()
!3727 = !DILocation(line: 0, scope: !3718)
!3728 = !DILocation(line: 0, scope: !3632, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 1034, column: 10, scope: !3718)
!3730 = !DILocation(line: 1018, column: 3, scope: !3632, inlinedAt: !3729)
!3731 = !DILocation(line: 1018, column: 30, scope: !3632, inlinedAt: !3729)
!3732 = distinct !DIAssignID()
!3733 = distinct !DIAssignID()
!3734 = !DILocation(line: 0, scope: !2527, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1019, column: 3, scope: !3632, inlinedAt: !3729)
!3736 = !DILocation(line: 174, column: 12, scope: !2527, inlinedAt: !3735)
!3737 = distinct !DIAssignID()
!3738 = !DILocation(line: 175, column: 8, scope: !2540, inlinedAt: !3735)
!3739 = !DILocation(line: 175, column: 19, scope: !2540, inlinedAt: !3735)
!3740 = !DILocation(line: 176, column: 5, scope: !2540, inlinedAt: !3735)
!3741 = !DILocation(line: 177, column: 6, scope: !2527, inlinedAt: !3735)
!3742 = !DILocation(line: 177, column: 17, scope: !2527, inlinedAt: !3735)
!3743 = distinct !DIAssignID()
!3744 = !DILocation(line: 178, column: 6, scope: !2527, inlinedAt: !3735)
!3745 = !DILocation(line: 178, column: 18, scope: !2527, inlinedAt: !3735)
!3746 = distinct !DIAssignID()
!3747 = !DILocation(line: 1020, column: 10, scope: !3632, inlinedAt: !3729)
!3748 = !DILocation(line: 1021, column: 1, scope: !3632, inlinedAt: !3729)
!3749 = !DILocation(line: 1034, column: 3, scope: !3718)
!3750 = distinct !DISubprogram(name: "quote_n_mem", scope: !543, file: !543, line: 1049, type: !3751, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3753)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!143, !80, !143, !140}
!3753 = !{!3754, !3755, !3756}
!3754 = !DILocalVariable(name: "n", arg: 1, scope: !3750, file: !543, line: 1049, type: !80)
!3755 = !DILocalVariable(name: "arg", arg: 2, scope: !3750, file: !543, line: 1049, type: !143)
!3756 = !DILocalVariable(name: "argsize", arg: 3, scope: !3750, file: !543, line: 1049, type: !140)
!3757 = !DILocation(line: 0, scope: !3750)
!3758 = !DILocation(line: 1051, column: 10, scope: !3750)
!3759 = !DILocation(line: 1051, column: 3, scope: !3750)
!3760 = distinct !DISubprogram(name: "quote_mem", scope: !543, file: !543, line: 1055, type: !3761, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!143, !143, !140}
!3763 = !{!3764, !3765}
!3764 = !DILocalVariable(name: "arg", arg: 1, scope: !3760, file: !543, line: 1055, type: !143)
!3765 = !DILocalVariable(name: "argsize", arg: 2, scope: !3760, file: !543, line: 1055, type: !140)
!3766 = !DILocation(line: 0, scope: !3760)
!3767 = !DILocation(line: 0, scope: !3750, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 1057, column: 10, scope: !3760)
!3769 = !DILocation(line: 1051, column: 10, scope: !3750, inlinedAt: !3768)
!3770 = !DILocation(line: 1057, column: 3, scope: !3760)
!3771 = distinct !DISubprogram(name: "quote_n", scope: !543, file: !543, line: 1061, type: !3772, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!143, !80, !143}
!3774 = !{!3775, !3776}
!3775 = !DILocalVariable(name: "n", arg: 1, scope: !3771, file: !543, line: 1061, type: !80)
!3776 = !DILocalVariable(name: "arg", arg: 2, scope: !3771, file: !543, line: 1061, type: !143)
!3777 = !DILocation(line: 0, scope: !3771)
!3778 = !DILocation(line: 0, scope: !3750, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 1063, column: 10, scope: !3771)
!3780 = !DILocation(line: 1051, column: 10, scope: !3750, inlinedAt: !3779)
!3781 = !DILocation(line: 1063, column: 3, scope: !3771)
!3782 = distinct !DISubprogram(name: "quote", scope: !543, file: !543, line: 1067, type: !3783, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!143, !143}
!3785 = !{!3786}
!3786 = !DILocalVariable(name: "arg", arg: 1, scope: !3782, file: !543, line: 1067, type: !143)
!3787 = !DILocation(line: 0, scope: !3782)
!3788 = !DILocation(line: 0, scope: !3771, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 1069, column: 10, scope: !3782)
!3790 = !DILocation(line: 0, scope: !3750, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 1063, column: 10, scope: !3771, inlinedAt: !3789)
!3792 = !DILocation(line: 1051, column: 10, scope: !3750, inlinedAt: !3791)
!3793 = !DILocation(line: 1069, column: 3, scope: !3782)
!3794 = distinct !DISubprogram(name: "savewd_init", scope: !826, file: !826, line: 86, type: !3795, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !3798)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!3798 = !{!3799}
!3799 = !DILocalVariable(name: "wd", arg: 1, scope: !3794, file: !826, line: 86, type: !3797)
!3800 = !DILocation(line: 0, scope: !3794)
!3801 = !DILocation(line: 88, column: 13, scope: !3794)
!3802 = !DILocation(line: 89, column: 1, scope: !3794)
!3803 = distinct !DISubprogram(name: "savewd_errno", scope: !826, file: !826, line: 131, type: !3804, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !3808)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!80, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!3808 = !{!3809}
!3809 = !DILocalVariable(name: "wd", arg: 1, scope: !3803, file: !826, line: 131, type: !3806)
!3810 = !DILocation(line: 0, scope: !3803)
!3811 = !DILocation(line: 133, column: 14, scope: !3803)
!3812 = !DILocation(line: 133, column: 20, scope: !3803)
!3813 = !DILocation(line: 133, column: 10, scope: !3803)
!3814 = !DILocation(line: 133, column: 44, scope: !3803)
!3815 = !DILocation(line: 133, column: 48, scope: !3803)
!3816 = !DILocation(line: 133, column: 3, scope: !3803)
!3817 = distinct !DISubprogram(name: "savewd_chdir", scope: !647, file: !647, line: 113, type: !3818, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!80, !3797, !143, !80, !406}
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827}
!3821 = !DILocalVariable(name: "wd", arg: 1, scope: !3817, file: !647, line: 113, type: !3797)
!3822 = !DILocalVariable(name: "dir", arg: 2, scope: !3817, file: !647, line: 113, type: !143)
!3823 = !DILocalVariable(name: "options", arg: 3, scope: !3817, file: !647, line: 113, type: !80)
!3824 = !DILocalVariable(name: "open_result", arg: 4, scope: !3817, file: !647, line: 114, type: !406)
!3825 = !DILocalVariable(name: "fd", scope: !3817, file: !647, line: 116, type: !80)
!3826 = !DILocalVariable(name: "result", scope: !3817, file: !647, line: 117, type: !80)
!3827 = !DILocalVariable(name: "saved_errno", scope: !3828, file: !647, line: 173, type: !80)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !647, line: 172, column: 5)
!3829 = distinct !DILexicalBlock(scope: !3817, file: !647, line: 171, column: 7)
!3830 = !DILocation(line: 0, scope: !3817)
!3831 = !DILocation(line: 121, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3817, file: !647, line: 121, column: 7)
!3833 = !DILocation(line: 122, column: 7, scope: !3832)
!3834 = !DILocation(line: 126, column: 22, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3832, file: !647, line: 123, column: 5)
!3836 = !DILocation(line: 126, column: 19, scope: !3835)
!3837 = !DILocation(line: 124, column: 12, scope: !3835)
!3838 = !DILocation(line: 128, column: 11, scope: !3835)
!3839 = !DILocation(line: 130, column: 26, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !647, line: 129, column: 9)
!3841 = distinct !DILexicalBlock(scope: !3835, file: !647, line: 128, column: 11)
!3842 = !DILocation(line: 131, column: 28, scope: !3840)
!3843 = !DILocation(line: 131, column: 11, scope: !3840)
!3844 = !DILocation(line: 131, column: 26, scope: !3840)
!3845 = !DILocation(line: 132, column: 9, scope: !3840)
!3846 = !DILocation(line: 134, column: 14, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3835, file: !647, line: 134, column: 11)
!3848 = !DILocation(line: 134, column: 18, scope: !3847)
!3849 = !DILocation(line: 134, column: 21, scope: !3847)
!3850 = !DILocation(line: 134, column: 27, scope: !3847)
!3851 = !DILocation(line: 138, column: 19, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3817, file: !647, line: 138, column: 7)
!3853 = !DILocation(line: 138, column: 33, scope: !3852)
!3854 = !DILocalVariable(name: "wd", arg: 1, scope: !3855, file: !647, line: 48, type: !3797)
!3855 = distinct !DISubprogram(name: "savewd_save", scope: !647, file: !647, line: 48, type: !3856, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!191, !3797}
!3858 = !{!3854, !3859, !3862}
!3859 = !DILocalVariable(name: "fd", scope: !3860, file: !647, line: 55, type: !80)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !647, line: 54, column: 7)
!3861 = distinct !DILexicalBlock(scope: !3855, file: !647, line: 51, column: 5)
!3862 = !DILocalVariable(name: "try_fork", scope: !3860, file: !647, line: 70, type: !191)
!3863 = !DILocation(line: 0, scope: !3855, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 140, column: 11, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !647, line: 140, column: 11)
!3866 = distinct !DILexicalBlock(scope: !3852, file: !647, line: 139, column: 5)
!3867 = !DILocation(line: 50, column: 15, scope: !3855, inlinedAt: !3864)
!3868 = !DILocation(line: 50, column: 3, scope: !3855, inlinedAt: !3864)
!3869 = !DILocation(line: 55, column: 18, scope: !3860, inlinedAt: !3864)
!3870 = !DILocation(line: 0, scope: !3860, inlinedAt: !3864)
!3871 = !DILocation(line: 56, column: 15, scope: !3872, inlinedAt: !3864)
!3872 = distinct !DILexicalBlock(scope: !3860, file: !647, line: 56, column: 13)
!3873 = !DILocation(line: 56, column: 13, scope: !3860, inlinedAt: !3864)
!3874 = !DILocation(line: 58, column: 23, scope: !3875, inlinedAt: !3864)
!3875 = distinct !DILexicalBlock(scope: !3872, file: !647, line: 57, column: 11)
!3876 = !DILocation(line: 59, column: 17, scope: !3875, inlinedAt: !3864)
!3877 = !DILocation(line: 59, column: 24, scope: !3875, inlinedAt: !3864)
!3878 = !DILocation(line: 60, column: 13, scope: !3875, inlinedAt: !3864)
!3879 = !DILocation(line: 70, column: 25, scope: !3860, inlinedAt: !3864)
!3880 = !DILocation(line: 72, column: 13, scope: !3860, inlinedAt: !3864)
!3881 = !DILocation(line: 74, column: 23, scope: !3882, inlinedAt: !3864)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !647, line: 73, column: 11)
!3883 = distinct !DILexicalBlock(scope: !3860, file: !647, line: 72, column: 13)
!3884 = !DILocation(line: 75, column: 30, scope: !3882, inlinedAt: !3864)
!3885 = !DILocation(line: 75, column: 17, scope: !3882, inlinedAt: !3864)
!3886 = !DILocation(line: 75, column: 28, scope: !3882, inlinedAt: !3864)
!3887 = !DILocation(line: 76, column: 13, scope: !3882, inlinedAt: !3864)
!3888 = !DILocation(line: 79, column: 17, scope: !3861, inlinedAt: !3864)
!3889 = !DILocation(line: 80, column: 11, scope: !3861, inlinedAt: !3864)
!3890 = !DILocation(line: 80, column: 21, scope: !3861, inlinedAt: !3864)
!3891 = !DILocation(line: 83, column: 11, scope: !3861, inlinedAt: !3864)
!3892 = !DILocation(line: 83, column: 19, scope: !3893, inlinedAt: !3864)
!3893 = distinct !DILexicalBlock(scope: !3861, file: !647, line: 83, column: 11)
!3894 = !DILocation(line: 83, column: 25, scope: !3893, inlinedAt: !3864)
!3895 = !DILocation(line: 83, column: 15, scope: !3893, inlinedAt: !3864)
!3896 = !DILocation(line: 88, column: 27, scope: !3897, inlinedAt: !3864)
!3897 = distinct !DILexicalBlock(scope: !3893, file: !647, line: 84, column: 9)
!3898 = !DILocation(line: 88, column: 25, scope: !3897, inlinedAt: !3864)
!3899 = !DILocation(line: 89, column: 29, scope: !3900, inlinedAt: !3864)
!3900 = distinct !DILexicalBlock(scope: !3897, file: !647, line: 89, column: 15)
!3901 = !DILocation(line: 89, column: 15, scope: !3897, inlinedAt: !3864)
!3902 = !DILocation(line: 91, column: 21, scope: !3903, inlinedAt: !3864)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !647, line: 91, column: 19)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !647, line: 90, column: 13)
!3905 = !DILocation(line: 91, column: 19, scope: !3904, inlinedAt: !3864)
!3906 = !DILocation(line: 93, column: 25, scope: !3904, inlinedAt: !3864)
!3907 = !DILocation(line: 94, column: 32, scope: !3904, inlinedAt: !3864)
!3908 = !DILocation(line: 94, column: 30, scope: !3904, inlinedAt: !3864)
!3909 = !DILocation(line: 95, column: 13, scope: !3904, inlinedAt: !3864)
!3910 = !DILocation(line: 106, column: 7, scope: !3911, inlinedAt: !3864)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !647, line: 106, column: 7)
!3912 = distinct !DILexicalBlock(scope: !3861, file: !647, line: 106, column: 7)
!3913 = !DILocation(line: 147, column: 24, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3865, file: !647, line: 146, column: 9)
!3915 = !DILocation(line: 147, column: 21, scope: !3914)
!3916 = !DILocation(line: 147, column: 30, scope: !3914)
!3917 = !DILocation(line: 147, column: 44, scope: !3914)
!3918 = !DILocation(line: 149, column: 22, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3914, file: !647, line: 149, column: 15)
!3920 = !DILocation(line: 149, column: 15, scope: !3914)
!3921 = !DILocation(line: 150, column: 25, scope: !3919)
!3922 = !DILocation(line: 150, column: 13, scope: !3919)
!3923 = !DILocation(line: 153, column: 27, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3919, file: !647, line: 151, column: 15)
!3925 = !DILocation(line: 154, column: 17, scope: !3924)
!3926 = !DILocation(line: 162, column: 17, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !647, line: 162, column: 17)
!3928 = distinct !DILexicalBlock(scope: !3924, file: !647, line: 162, column: 17)
!3929 = !DILocation(line: 162, column: 17, scope: !3928)
!3930 = !DILocation(line: 166, column: 17, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !647, line: 166, column: 17)
!3932 = distinct !DILexicalBlock(scope: !3924, file: !647, line: 166, column: 17)
!3933 = !DILocation(line: 171, column: 9, scope: !3829)
!3934 = !DILocation(line: 171, column: 15, scope: !3829)
!3935 = !DILocation(line: 173, column: 25, scope: !3828)
!3936 = !DILocation(line: 0, scope: !3828)
!3937 = !DILocation(line: 174, column: 7, scope: !3828)
!3938 = !DILocation(line: 175, column: 13, scope: !3828)
!3939 = !DILocation(line: 176, column: 5, scope: !3828)
!3940 = !DILocation(line: 178, column: 3, scope: !3817)
!3941 = !DISubprogram(name: "fork", scope: !1618, file: !1618, line: 778, type: !3942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!97}
!3944 = !DISubprogram(name: "__assert_fail", scope: !3945, file: !3945, line: 69, type: !3946, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3945 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !143, !143, !99, !143}
!3948 = !DISubprogram(name: "chdir", scope: !1618, file: !1618, line: 517, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!80, !143}
!3951 = !DISubprogram(name: "fchdir", scope: !1618, file: !1618, line: 521, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3952 = distinct !DISubprogram(name: "savewd_restore", scope: !647, file: !647, line: 182, type: !3953, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !3955)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!80, !3797, !80}
!3955 = !{!3956, !3957, !3958, !3962, !3964}
!3956 = !DILocalVariable(name: "wd", arg: 1, scope: !3952, file: !647, line: 182, type: !3797)
!3957 = !DILocalVariable(name: "status", arg: 2, scope: !3952, file: !647, line: 182, type: !80)
!3958 = !DILocalVariable(name: "chdir_errno", scope: !3959, file: !647, line: 201, type: !80)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !647, line: 200, column: 9)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !647, line: 194, column: 11)
!3961 = distinct !DILexicalBlock(scope: !3952, file: !647, line: 185, column: 5)
!3962 = !DILocalVariable(name: "child", scope: !3963, file: !647, line: 216, type: !95)
!3963 = distinct !DILexicalBlock(scope: !3961, file: !647, line: 215, column: 7)
!3964 = !DILocalVariable(name: "child_status", scope: !3965, file: !647, line: 221, type: !80)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !647, line: 220, column: 11)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !647, line: 219, column: 13)
!3967 = distinct !DIAssignID()
!3968 = !DILocation(line: 0, scope: !3965)
!3969 = !DILocation(line: 0, scope: !3952)
!3970 = !DILocation(line: 184, column: 15, scope: !3952)
!3971 = !DILocation(line: 184, column: 3, scope: !3952)
!3972 = !DILocation(line: 209, column: 23, scope: !3961)
!3973 = !DILocation(line: 209, column: 7, scope: !3961)
!3974 = !DILocation(line: 194, column: 23, scope: !3960)
!3975 = !DILocation(line: 194, column: 27, scope: !3960)
!3976 = !DILocation(line: 194, column: 11, scope: !3960)
!3977 = !DILocation(line: 194, column: 31, scope: !3960)
!3978 = !DILocation(line: 194, column: 11, scope: !3961)
!3979 = !DILocation(line: 196, column: 21, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3960, file: !647, line: 195, column: 9)
!3981 = !DILocation(line: 197, column: 11, scope: !3980)
!3982 = !DILocation(line: 201, column: 29, scope: !3959)
!3983 = !DILocation(line: 0, scope: !3959)
!3984 = !DILocation(line: 202, column: 26, scope: !3959)
!3985 = !DILocation(line: 202, column: 11, scope: !3959)
!3986 = !DILocation(line: 203, column: 21, scope: !3959)
!3987 = !DILocation(line: 204, column: 26, scope: !3959)
!3988 = !DILocation(line: 194, column: 34, scope: !3960)
!3989 = !DILocation(line: 209, column: 13, scope: !3961)
!3990 = !DILocation(line: 210, column: 7, scope: !3961)
!3991 = !DILocation(line: 216, column: 27, scope: !3963)
!3992 = !DILocation(line: 216, column: 31, scope: !3963)
!3993 = !DILocation(line: 0, scope: !3963)
!3994 = !DILocation(line: 217, column: 19, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3963, file: !647, line: 217, column: 13)
!3996 = !DILocation(line: 217, column: 13, scope: !3963)
!3997 = !DILocation(line: 218, column: 11, scope: !3995)
!3998 = !DILocation(line: 219, column: 15, scope: !3966)
!3999 = !DILocation(line: 219, column: 13, scope: !3963)
!4000 = !DILocation(line: 221, column: 13, scope: !3965)
!4001 = !DILocation(line: 222, column: 13, scope: !3965)
!4002 = !DILocation(line: 222, column: 20, scope: !3965)
!4003 = !DILocation(line: 222, column: 54, scope: !3965)
!4004 = !DILocation(line: 223, column: 15, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !647, line: 223, column: 15)
!4006 = distinct !DILexicalBlock(scope: !3965, file: !647, line: 223, column: 15)
!4007 = !DILocation(line: 223, column: 15, scope: !4006)
!4008 = distinct !{!4008, !4001, !4009, !1085}
!4009 = !DILocation(line: 223, column: 15, scope: !3965)
!4010 = !DILocation(line: 224, column: 27, scope: !3965)
!4011 = !DILocation(line: 225, column: 19, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3965, file: !647, line: 225, column: 17)
!4013 = !DILocation(line: 225, column: 17, scope: !3965)
!4014 = !DILocation(line: 226, column: 15, scope: !4012)
!4015 = !DILocation(line: 227, column: 20, scope: !3965)
!4016 = !DILocation(line: 228, column: 11, scope: !3966)
!4017 = !DILocation(line: 233, column: 7, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4019, file: !647, line: 233, column: 7)
!4019 = distinct !DILexicalBlock(scope: !3961, file: !647, line: 233, column: 7)
!4020 = !DILocation(line: 237, column: 1, scope: !3952)
!4021 = !DISubprogram(name: "waitpid", scope: !4022, file: !4022, line: 111, type: !4023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4022 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!97, !97, !406, !80}
!4025 = !DISubprogram(name: "raise", scope: !4026, file: !4026, line: 123, type: !1643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4026 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!4027 = distinct !DISubprogram(name: "savewd_finish", scope: !647, file: !647, line: 240, type: !3795, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4028)
!4028 = !{!4029}
!4029 = !DILocalVariable(name: "wd", arg: 1, scope: !4027, file: !647, line: 240, type: !3797)
!4030 = !DILocation(line: 0, scope: !4027)
!4031 = !DILocation(line: 242, column: 15, scope: !4027)
!4032 = !DILocation(line: 242, column: 3, scope: !4027)
!4033 = !DILocation(line: 249, column: 18, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4027, file: !647, line: 243, column: 5)
!4035 = !DILocation(line: 249, column: 22, scope: !4034)
!4036 = !DILocation(line: 249, column: 7, scope: !4034)
!4037 = !DILocation(line: 252, column: 11, scope: !4034)
!4038 = !DILocation(line: 253, column: 7, scope: !4034)
!4039 = !DILocation(line: 256, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !647, line: 256, column: 7)
!4041 = distinct !DILexicalBlock(scope: !4034, file: !647, line: 256, column: 7)
!4042 = !DILocation(line: 256, column: 7, scope: !4041)
!4043 = !DILocation(line: 261, column: 7, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !647, line: 261, column: 7)
!4045 = distinct !DILexicalBlock(scope: !4034, file: !647, line: 261, column: 7)
!4046 = !DILocation(line: 0, scope: !4034)
!4047 = !DILocation(line: 264, column: 13, scope: !4027)
!4048 = !DILocation(line: 265, column: 1, scope: !4027)
!4049 = distinct !DISubprogram(name: "savewd_process_files", scope: !647, file: !647, line: 284, type: !4050, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4055)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!80, !80, !1191, !4052, !138}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!80, !137, !3797, !138}
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4070, !4073}
!4056 = !DILocalVariable(name: "n_files", arg: 1, scope: !4049, file: !647, line: 284, type: !80)
!4057 = !DILocalVariable(name: "file", arg: 2, scope: !4049, file: !647, line: 284, type: !1191)
!4058 = !DILocalVariable(name: "act", arg: 3, scope: !4049, file: !647, line: 285, type: !4052)
!4059 = !DILocalVariable(name: "options", arg: 4, scope: !4049, file: !647, line: 286, type: !138)
!4060 = !DILocalVariable(name: "i", scope: !4049, file: !647, line: 288, type: !80)
!4061 = !DILocalVariable(name: "last_relative", scope: !4049, file: !647, line: 289, type: !80)
!4062 = !DILocalVariable(name: "exit_status", scope: !4049, file: !647, line: 290, type: !80)
!4063 = !DILocalVariable(name: "wd", scope: !4049, file: !647, line: 291, type: !854)
!4064 = !DILocalVariable(name: "s", scope: !4065, file: !647, line: 302, type: !80)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !647, line: 301, column: 9)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !647, line: 300, column: 11)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !647, line: 299, column: 5)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !647, line: 298, column: 3)
!4069 = distinct !DILexicalBlock(scope: !4049, file: !647, line: 298, column: 3)
!4070 = !DILocalVariable(name: "r", scope: !4071, file: !647, line: 309, type: !80)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !647, line: 308, column: 9)
!4072 = distinct !DILexicalBlock(scope: !4067, file: !647, line: 307, column: 11)
!4073 = !DILocalVariable(name: "s", scope: !4074, file: !647, line: 319, type: !80)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !647, line: 318, column: 5)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !647, line: 317, column: 3)
!4076 = distinct !DILexicalBlock(scope: !4049, file: !647, line: 317, column: 3)
!4077 = distinct !DIAssignID()
!4078 = !DILocation(line: 0, scope: !4049)
!4079 = !DILocation(line: 291, column: 3, scope: !4049)
!4080 = !DILocation(line: 0, scope: !3794, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 292, column: 3, scope: !4049)
!4082 = !DILocation(line: 88, column: 13, scope: !3794, inlinedAt: !4081)
!4083 = distinct !DIAssignID()
!4084 = !DILocation(line: 294, column: 8, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4049, file: !647, line: 294, column: 3)
!4086 = !DILocation(line: 294, column: 39, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4085, file: !647, line: 294, column: 3)
!4088 = !DILocation(line: 294, column: 3, scope: !4085)
!4089 = !DILocation(line: 294, scope: !4085)
!4090 = !DILocation(line: 295, column: 11, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !647, line: 295, column: 9)
!4092 = !DILocation(line: 295, column: 9, scope: !4087)
!4093 = distinct !{!4093, !4088, !4094, !1085}
!4094 = !DILocation(line: 296, column: 7, scope: !4085)
!4095 = !DILocation(line: 298, column: 12, scope: !4068)
!4096 = !DILocation(line: 298, column: 3, scope: !4069)
!4097 = !DILocalVariable(name: "wd", arg: 1, scope: !4098, file: !647, line: 278, type: !3806)
!4098 = distinct !DISubprogram(name: "savewd_delegating", scope: !647, file: !647, line: 278, type: !4099, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!191, !3806}
!4101 = !{!4097}
!4102 = !DILocation(line: 0, scope: !4098, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 300, column: 13, scope: !4066)
!4104 = !DILocation(line: 280, column: 14, scope: !4098, inlinedAt: !4103)
!4105 = !DILocation(line: 280, column: 20, scope: !4098, inlinedAt: !4103)
!4106 = !DILocation(line: 280, column: 37, scope: !4098, inlinedAt: !4103)
!4107 = !DILocation(line: 302, column: 24, scope: !4065)
!4108 = !DILocation(line: 302, column: 19, scope: !4065)
!4109 = !DILocation(line: 0, scope: !4065)
!4110 = !DILocation(line: 303, column: 15, scope: !4065)
!4111 = !DILocation(line: 305, column: 9, scope: !4065)
!4112 = !DILocation(line: 307, column: 13, scope: !4072)
!4113 = !DILocation(line: 307, column: 11, scope: !4067)
!4114 = !DILocation(line: 309, column: 19, scope: !4071)
!4115 = !DILocation(line: 0, scope: !4071)
!4116 = !DILocation(line: 310, column: 15, scope: !4071)
!4117 = !DILocation(line: 312, column: 9, scope: !4071)
!4118 = distinct !{!4118, !4096, !4119, !1085}
!4119 = !DILocation(line: 313, column: 5, scope: !4069)
!4120 = !DILocation(line: 242, column: 15, scope: !4027, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 315, column: 3, scope: !4049)
!4122 = !DILocation(line: 0, scope: !4027, inlinedAt: !4121)
!4123 = !DILocation(line: 242, column: 3, scope: !4027, inlinedAt: !4121)
!4124 = !DILocation(line: 249, column: 18, scope: !4034, inlinedAt: !4121)
!4125 = !DILocation(line: 249, column: 22, scope: !4034, inlinedAt: !4121)
!4126 = !DILocation(line: 249, column: 7, scope: !4034, inlinedAt: !4121)
!4127 = !DILocation(line: 252, column: 11, scope: !4034, inlinedAt: !4121)
!4128 = !DILocation(line: 253, column: 7, scope: !4034, inlinedAt: !4121)
!4129 = !DILocation(line: 256, column: 7, scope: !4040, inlinedAt: !4121)
!4130 = !DILocation(line: 256, column: 7, scope: !4041, inlinedAt: !4121)
!4131 = !DILocation(line: 261, column: 7, scope: !4044, inlinedAt: !4121)
!4132 = !DILocation(line: 0, scope: !4034, inlinedAt: !4121)
!4133 = !DILocation(line: 264, column: 13, scope: !4027, inlinedAt: !4121)
!4134 = distinct !DIAssignID()
!4135 = !DILocation(line: 317, column: 12, scope: !4075)
!4136 = !DILocation(line: 317, column: 3, scope: !4076)
!4137 = !DILocation(line: 319, column: 20, scope: !4074)
!4138 = !DILocation(line: 319, column: 15, scope: !4074)
!4139 = !DILocation(line: 0, scope: !4074)
!4140 = !DILocation(line: 320, column: 11, scope: !4074)
!4141 = !DILocation(line: 317, column: 24, scope: !4075)
!4142 = distinct !{!4142, !4136, !4143, !1085}
!4143 = !DILocation(line: 322, column: 5, scope: !4076)
!4144 = !DILocation(line: 325, column: 1, scope: !4049)
!4145 = !DILocation(line: 324, column: 3, scope: !4049)
!4146 = distinct !DISubprogram(name: "version_etc_arn", scope: !687, file: !687, line: 61, type: !4147, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4184)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{null, !4149, !143, !143, !143, !4183, !140}
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4151, file: !208, line: 51, baseType: !80, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4151, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4151, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4151, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4151, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4151, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4151, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4151, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4151, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4151, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4151, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4151, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4151, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4151, file: !208, line: 70, baseType: !4167, size: 64, offset: 832)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4151, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4151, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4151, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4151, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4151, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4151, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4151, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4151, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4151, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4151, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4151, file: !208, line: 93, baseType: !4167, size: 64, offset: 1344)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4151, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4151, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4151, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4151, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!4184 = !{!4185, !4186, !4187, !4188, !4189, !4190}
!4185 = !DILocalVariable(name: "stream", arg: 1, scope: !4146, file: !687, line: 61, type: !4149)
!4186 = !DILocalVariable(name: "command_name", arg: 2, scope: !4146, file: !687, line: 62, type: !143)
!4187 = !DILocalVariable(name: "package", arg: 3, scope: !4146, file: !687, line: 62, type: !143)
!4188 = !DILocalVariable(name: "version", arg: 4, scope: !4146, file: !687, line: 63, type: !143)
!4189 = !DILocalVariable(name: "authors", arg: 5, scope: !4146, file: !687, line: 64, type: !4183)
!4190 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4146, file: !687, line: 64, type: !140)
!4191 = !DILocation(line: 0, scope: !4146)
!4192 = !DILocation(line: 66, column: 7, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4146, file: !687, line: 66, column: 7)
!4194 = !DILocation(line: 66, column: 7, scope: !4146)
!4195 = !DILocation(line: 67, column: 5, scope: !4193)
!4196 = !DILocation(line: 69, column: 5, scope: !4193)
!4197 = !DILocation(line: 83, column: 3, scope: !4146)
!4198 = !DILocation(line: 85, column: 3, scope: !4146)
!4199 = !DILocation(line: 88, column: 3, scope: !4146)
!4200 = !DILocation(line: 95, column: 3, scope: !4146)
!4201 = !DILocation(line: 97, column: 3, scope: !4146)
!4202 = !DILocation(line: 105, column: 7, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4146, file: !687, line: 98, column: 5)
!4204 = !DILocation(line: 106, column: 7, scope: !4203)
!4205 = !DILocation(line: 109, column: 7, scope: !4203)
!4206 = !DILocation(line: 110, column: 7, scope: !4203)
!4207 = !DILocation(line: 113, column: 7, scope: !4203)
!4208 = !DILocation(line: 115, column: 7, scope: !4203)
!4209 = !DILocation(line: 120, column: 7, scope: !4203)
!4210 = !DILocation(line: 122, column: 7, scope: !4203)
!4211 = !DILocation(line: 127, column: 7, scope: !4203)
!4212 = !DILocation(line: 129, column: 7, scope: !4203)
!4213 = !DILocation(line: 134, column: 7, scope: !4203)
!4214 = !DILocation(line: 137, column: 7, scope: !4203)
!4215 = !DILocation(line: 142, column: 7, scope: !4203)
!4216 = !DILocation(line: 145, column: 7, scope: !4203)
!4217 = !DILocation(line: 150, column: 7, scope: !4203)
!4218 = !DILocation(line: 154, column: 7, scope: !4203)
!4219 = !DILocation(line: 159, column: 7, scope: !4203)
!4220 = !DILocation(line: 163, column: 7, scope: !4203)
!4221 = !DILocation(line: 170, column: 7, scope: !4203)
!4222 = !DILocation(line: 174, column: 7, scope: !4203)
!4223 = !DILocation(line: 176, column: 1, scope: !4146)
!4224 = distinct !DISubprogram(name: "version_etc_ar", scope: !687, file: !687, line: 183, type: !4225, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4227)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !4149, !143, !143, !143, !4183}
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4233}
!4228 = !DILocalVariable(name: "stream", arg: 1, scope: !4224, file: !687, line: 183, type: !4149)
!4229 = !DILocalVariable(name: "command_name", arg: 2, scope: !4224, file: !687, line: 184, type: !143)
!4230 = !DILocalVariable(name: "package", arg: 3, scope: !4224, file: !687, line: 184, type: !143)
!4231 = !DILocalVariable(name: "version", arg: 4, scope: !4224, file: !687, line: 185, type: !143)
!4232 = !DILocalVariable(name: "authors", arg: 5, scope: !4224, file: !687, line: 185, type: !4183)
!4233 = !DILocalVariable(name: "n_authors", scope: !4224, file: !687, line: 187, type: !140)
!4234 = !DILocation(line: 0, scope: !4224)
!4235 = !DILocation(line: 189, column: 8, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4224, file: !687, line: 189, column: 3)
!4237 = !DILocation(line: 189, scope: !4236)
!4238 = !DILocation(line: 189, column: 23, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4236, file: !687, line: 189, column: 3)
!4240 = !DILocation(line: 189, column: 3, scope: !4236)
!4241 = !DILocation(line: 189, column: 52, scope: !4239)
!4242 = distinct !{!4242, !4240, !4243, !1085}
!4243 = !DILocation(line: 190, column: 5, scope: !4236)
!4244 = !DILocation(line: 191, column: 3, scope: !4224)
!4245 = !DILocation(line: 192, column: 1, scope: !4224)
!4246 = distinct !DISubprogram(name: "version_etc_va", scope: !687, file: !687, line: 199, type: !4247, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4256)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{null, !4149, !143, !143, !143, !4249}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4255}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4250, file: !687, line: 192, baseType: !99, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4250, file: !687, line: 192, baseType: !99, size: 32, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4250, file: !687, line: 192, baseType: !138, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4250, file: !687, line: 192, baseType: !138, size: 64, offset: 128)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263}
!4257 = !DILocalVariable(name: "stream", arg: 1, scope: !4246, file: !687, line: 199, type: !4149)
!4258 = !DILocalVariable(name: "command_name", arg: 2, scope: !4246, file: !687, line: 200, type: !143)
!4259 = !DILocalVariable(name: "package", arg: 3, scope: !4246, file: !687, line: 200, type: !143)
!4260 = !DILocalVariable(name: "version", arg: 4, scope: !4246, file: !687, line: 201, type: !143)
!4261 = !DILocalVariable(name: "authors", arg: 5, scope: !4246, file: !687, line: 201, type: !4249)
!4262 = !DILocalVariable(name: "n_authors", scope: !4246, file: !687, line: 203, type: !140)
!4263 = !DILocalVariable(name: "authtab", scope: !4246, file: !687, line: 204, type: !4264)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !65)
!4265 = distinct !DIAssignID()
!4266 = !DILocation(line: 0, scope: !4246)
!4267 = !DILocation(line: 204, column: 3, scope: !4246)
!4268 = !DILocation(line: 208, column: 35, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !687, line: 206, column: 3)
!4270 = distinct !DILexicalBlock(scope: !4246, file: !687, line: 206, column: 3)
!4271 = !DILocation(line: 208, column: 33, scope: !4269)
!4272 = !DILocation(line: 208, column: 67, scope: !4269)
!4273 = !DILocation(line: 206, column: 3, scope: !4270)
!4274 = !DILocation(line: 208, column: 14, scope: !4269)
!4275 = !DILocation(line: 0, scope: !4270)
!4276 = !DILocation(line: 211, column: 3, scope: !4246)
!4277 = !DILocation(line: 213, column: 1, scope: !4246)
!4278 = distinct !DISubprogram(name: "version_etc", scope: !687, file: !687, line: 230, type: !4279, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !4149, !143, !143, !143, null}
!4281 = !{!4282, !4283, !4284, !4285, !4286}
!4282 = !DILocalVariable(name: "stream", arg: 1, scope: !4278, file: !687, line: 230, type: !4149)
!4283 = !DILocalVariable(name: "command_name", arg: 2, scope: !4278, file: !687, line: 231, type: !143)
!4284 = !DILocalVariable(name: "package", arg: 3, scope: !4278, file: !687, line: 231, type: !143)
!4285 = !DILocalVariable(name: "version", arg: 4, scope: !4278, file: !687, line: 232, type: !143)
!4286 = !DILocalVariable(name: "authors", scope: !4278, file: !687, line: 234, type: !4287)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1033, line: 52, baseType: !4288)
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1518, line: 12, baseType: !4289)
!4289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !687, baseType: !4290)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4250, size: 192, elements: !60)
!4291 = distinct !DIAssignID()
!4292 = !DILocation(line: 0, scope: !4278)
!4293 = !DILocation(line: 234, column: 3, scope: !4278)
!4294 = !DILocation(line: 235, column: 3, scope: !4278)
!4295 = !DILocation(line: 236, column: 3, scope: !4278)
!4296 = !DILocation(line: 237, column: 3, scope: !4278)
!4297 = !DILocation(line: 238, column: 1, scope: !4278)
!4298 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !687, file: !687, line: 241, type: !479, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864)
!4299 = !DILocation(line: 243, column: 3, scope: !4298)
!4300 = !DILocation(line: 248, column: 3, scope: !4298)
!4301 = !DILocation(line: 254, column: 3, scope: !4298)
!4302 = !DILocation(line: 259, column: 3, scope: !4298)
!4303 = !DILocation(line: 261, column: 1, scope: !4298)
!4304 = distinct !DISubprogram(name: "xnrealloc", scope: !4305, file: !4305, line: 147, type: !4306, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4308)
!4305 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!138, !138, !140, !140}
!4308 = !{!4309, !4310, !4311}
!4309 = !DILocalVariable(name: "p", arg: 1, scope: !4304, file: !4305, line: 147, type: !138)
!4310 = !DILocalVariable(name: "n", arg: 2, scope: !4304, file: !4305, line: 147, type: !140)
!4311 = !DILocalVariable(name: "s", arg: 3, scope: !4304, file: !4305, line: 147, type: !140)
!4312 = !DILocation(line: 0, scope: !4304)
!4313 = !DILocalVariable(name: "p", arg: 1, scope: !4314, file: !872, line: 83, type: !138)
!4314 = distinct !DISubprogram(name: "xreallocarray", scope: !872, file: !872, line: 83, type: !4306, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4315)
!4315 = !{!4313, !4316, !4317}
!4316 = !DILocalVariable(name: "n", arg: 2, scope: !4314, file: !872, line: 83, type: !140)
!4317 = !DILocalVariable(name: "s", arg: 3, scope: !4314, file: !872, line: 83, type: !140)
!4318 = !DILocation(line: 0, scope: !4314, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 149, column: 10, scope: !4304)
!4320 = !DILocation(line: 85, column: 25, scope: !4314, inlinedAt: !4319)
!4321 = !DILocalVariable(name: "p", arg: 1, scope: !4322, file: !872, line: 37, type: !138)
!4322 = distinct !DISubprogram(name: "check_nonnull", scope: !872, file: !872, line: 37, type: !4323, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!138, !138}
!4325 = !{!4321}
!4326 = !DILocation(line: 0, scope: !4322, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 85, column: 10, scope: !4314, inlinedAt: !4319)
!4328 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4327)
!4329 = distinct !DILexicalBlock(scope: !4322, file: !872, line: 39, column: 7)
!4330 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4327)
!4331 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4327)
!4332 = !DILocation(line: 149, column: 3, scope: !4304)
!4333 = !DILocation(line: 0, scope: !4314)
!4334 = !DILocation(line: 85, column: 25, scope: !4314)
!4335 = !DILocation(line: 0, scope: !4322, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 85, column: 10, scope: !4314)
!4337 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4336)
!4338 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4336)
!4339 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4336)
!4340 = !DILocation(line: 85, column: 3, scope: !4314)
!4341 = distinct !DISubprogram(name: "xmalloc", scope: !872, file: !872, line: 47, type: !4342, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!138, !140}
!4344 = !{!4345}
!4345 = !DILocalVariable(name: "s", arg: 1, scope: !4341, file: !872, line: 47, type: !140)
!4346 = !DILocation(line: 0, scope: !4341)
!4347 = !DILocation(line: 49, column: 25, scope: !4341)
!4348 = !DILocation(line: 0, scope: !4322, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 49, column: 10, scope: !4341)
!4350 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4349)
!4351 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4349)
!4352 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4349)
!4353 = !DILocation(line: 49, column: 3, scope: !4341)
!4354 = !DISubprogram(name: "malloc", scope: !1162, file: !1162, line: 540, type: !4342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4355 = distinct !DISubprogram(name: "ximalloc", scope: !872, file: !872, line: 53, type: !4356, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!138, !891}
!4358 = !{!4359}
!4359 = !DILocalVariable(name: "s", arg: 1, scope: !4355, file: !872, line: 53, type: !891)
!4360 = !DILocation(line: 0, scope: !4355)
!4361 = !DILocalVariable(name: "s", arg: 1, scope: !4362, file: !4363, line: 55, type: !891)
!4362 = distinct !DISubprogram(name: "imalloc", scope: !4363, file: !4363, line: 55, type: !4356, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4364)
!4363 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4364 = !{!4361}
!4365 = !DILocation(line: 0, scope: !4362, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 55, column: 25, scope: !4355)
!4367 = !DILocation(line: 57, column: 26, scope: !4362, inlinedAt: !4366)
!4368 = !DILocation(line: 0, scope: !4322, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 55, column: 10, scope: !4355)
!4370 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4369)
!4371 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4369)
!4372 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4369)
!4373 = !DILocation(line: 55, column: 3, scope: !4355)
!4374 = distinct !DISubprogram(name: "xcharalloc", scope: !872, file: !872, line: 59, type: !4375, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4377)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!137, !140}
!4377 = !{!4378}
!4378 = !DILocalVariable(name: "n", arg: 1, scope: !4374, file: !872, line: 59, type: !140)
!4379 = !DILocation(line: 0, scope: !4374)
!4380 = !DILocation(line: 0, scope: !4341, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 61, column: 10, scope: !4374)
!4382 = !DILocation(line: 49, column: 25, scope: !4341, inlinedAt: !4381)
!4383 = !DILocation(line: 0, scope: !4322, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 49, column: 10, scope: !4341, inlinedAt: !4381)
!4385 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4384)
!4386 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4384)
!4387 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4384)
!4388 = !DILocation(line: 61, column: 3, scope: !4374)
!4389 = distinct !DISubprogram(name: "xrealloc", scope: !872, file: !872, line: 68, type: !4390, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!138, !138, !140}
!4392 = !{!4393, !4394}
!4393 = !DILocalVariable(name: "p", arg: 1, scope: !4389, file: !872, line: 68, type: !138)
!4394 = !DILocalVariable(name: "s", arg: 2, scope: !4389, file: !872, line: 68, type: !140)
!4395 = !DILocation(line: 0, scope: !4389)
!4396 = !DILocalVariable(name: "ptr", arg: 1, scope: !4397, file: !4398, line: 2057, type: !138)
!4397 = distinct !DISubprogram(name: "rpl_realloc", scope: !4398, file: !4398, line: 2057, type: !4390, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4399)
!4398 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4399 = !{!4396, !4400}
!4400 = !DILocalVariable(name: "size", arg: 2, scope: !4397, file: !4398, line: 2057, type: !140)
!4401 = !DILocation(line: 0, scope: !4397, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 70, column: 25, scope: !4389)
!4403 = !DILocation(line: 2059, column: 24, scope: !4397, inlinedAt: !4402)
!4404 = !DILocation(line: 2059, column: 10, scope: !4397, inlinedAt: !4402)
!4405 = !DILocation(line: 0, scope: !4322, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 70, column: 10, scope: !4389)
!4407 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4406)
!4408 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4406)
!4409 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4406)
!4410 = !DILocation(line: 70, column: 3, scope: !4389)
!4411 = !DISubprogram(name: "realloc", scope: !1162, file: !1162, line: 551, type: !4390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4412 = distinct !DISubprogram(name: "xirealloc", scope: !872, file: !872, line: 74, type: !4413, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!138, !138, !891}
!4415 = !{!4416, !4417}
!4416 = !DILocalVariable(name: "p", arg: 1, scope: !4412, file: !872, line: 74, type: !138)
!4417 = !DILocalVariable(name: "s", arg: 2, scope: !4412, file: !872, line: 74, type: !891)
!4418 = !DILocation(line: 0, scope: !4412)
!4419 = !DILocalVariable(name: "p", arg: 1, scope: !4420, file: !4363, line: 66, type: !138)
!4420 = distinct !DISubprogram(name: "irealloc", scope: !4363, file: !4363, line: 66, type: !4413, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4421)
!4421 = !{!4419, !4422}
!4422 = !DILocalVariable(name: "s", arg: 2, scope: !4420, file: !4363, line: 66, type: !891)
!4423 = !DILocation(line: 0, scope: !4420, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 76, column: 25, scope: !4412)
!4425 = !DILocation(line: 0, scope: !4397, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 68, column: 26, scope: !4420, inlinedAt: !4424)
!4427 = !DILocation(line: 2059, column: 24, scope: !4397, inlinedAt: !4426)
!4428 = !DILocation(line: 2059, column: 10, scope: !4397, inlinedAt: !4426)
!4429 = !DILocation(line: 0, scope: !4322, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 76, column: 10, scope: !4412)
!4431 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4430)
!4432 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4430)
!4433 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4430)
!4434 = !DILocation(line: 76, column: 3, scope: !4412)
!4435 = distinct !DISubprogram(name: "xireallocarray", scope: !872, file: !872, line: 89, type: !4436, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!138, !138, !891, !891}
!4438 = !{!4439, !4440, !4441}
!4439 = !DILocalVariable(name: "p", arg: 1, scope: !4435, file: !872, line: 89, type: !138)
!4440 = !DILocalVariable(name: "n", arg: 2, scope: !4435, file: !872, line: 89, type: !891)
!4441 = !DILocalVariable(name: "s", arg: 3, scope: !4435, file: !872, line: 89, type: !891)
!4442 = !DILocation(line: 0, scope: !4435)
!4443 = !DILocalVariable(name: "p", arg: 1, scope: !4444, file: !4363, line: 98, type: !138)
!4444 = distinct !DISubprogram(name: "ireallocarray", scope: !4363, file: !4363, line: 98, type: !4436, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4445)
!4445 = !{!4443, !4446, !4447}
!4446 = !DILocalVariable(name: "n", arg: 2, scope: !4444, file: !4363, line: 98, type: !891)
!4447 = !DILocalVariable(name: "s", arg: 3, scope: !4444, file: !4363, line: 98, type: !891)
!4448 = !DILocation(line: 0, scope: !4444, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 91, column: 25, scope: !4435)
!4450 = !DILocation(line: 101, column: 13, scope: !4444, inlinedAt: !4449)
!4451 = !DILocation(line: 0, scope: !4322, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 91, column: 10, scope: !4435)
!4453 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4452)
!4454 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4452)
!4455 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4452)
!4456 = !DILocation(line: 91, column: 3, scope: !4435)
!4457 = distinct !DISubprogram(name: "xnmalloc", scope: !872, file: !872, line: 98, type: !4458, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4460)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!138, !140, !140}
!4460 = !{!4461, !4462}
!4461 = !DILocalVariable(name: "n", arg: 1, scope: !4457, file: !872, line: 98, type: !140)
!4462 = !DILocalVariable(name: "s", arg: 2, scope: !4457, file: !872, line: 98, type: !140)
!4463 = !DILocation(line: 0, scope: !4457)
!4464 = !DILocation(line: 0, scope: !4314, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 100, column: 10, scope: !4457)
!4466 = !DILocation(line: 85, column: 25, scope: !4314, inlinedAt: !4465)
!4467 = !DILocation(line: 0, scope: !4322, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 85, column: 10, scope: !4314, inlinedAt: !4465)
!4469 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4468)
!4470 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4468)
!4471 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4468)
!4472 = !DILocation(line: 100, column: 3, scope: !4457)
!4473 = distinct !DISubprogram(name: "xinmalloc", scope: !872, file: !872, line: 104, type: !4474, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4476)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!138, !891, !891}
!4476 = !{!4477, !4478}
!4477 = !DILocalVariable(name: "n", arg: 1, scope: !4473, file: !872, line: 104, type: !891)
!4478 = !DILocalVariable(name: "s", arg: 2, scope: !4473, file: !872, line: 104, type: !891)
!4479 = !DILocation(line: 0, scope: !4473)
!4480 = !DILocation(line: 0, scope: !4435, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 106, column: 10, scope: !4473)
!4482 = !DILocation(line: 0, scope: !4444, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 91, column: 25, scope: !4435, inlinedAt: !4481)
!4484 = !DILocation(line: 101, column: 13, scope: !4444, inlinedAt: !4483)
!4485 = !DILocation(line: 0, scope: !4322, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 91, column: 10, scope: !4435, inlinedAt: !4481)
!4487 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4486)
!4488 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4486)
!4489 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4486)
!4490 = !DILocation(line: 106, column: 3, scope: !4473)
!4491 = distinct !DISubprogram(name: "x2realloc", scope: !872, file: !872, line: 116, type: !4492, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!138, !138, !878}
!4494 = !{!4495, !4496}
!4495 = !DILocalVariable(name: "p", arg: 1, scope: !4491, file: !872, line: 116, type: !138)
!4496 = !DILocalVariable(name: "ps", arg: 2, scope: !4491, file: !872, line: 116, type: !878)
!4497 = !DILocation(line: 0, scope: !4491)
!4498 = !DILocation(line: 0, scope: !875, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 118, column: 10, scope: !4491)
!4500 = !DILocation(line: 178, column: 14, scope: !875, inlinedAt: !4499)
!4501 = !DILocation(line: 180, column: 9, scope: !4502, inlinedAt: !4499)
!4502 = distinct !DILexicalBlock(scope: !875, file: !872, line: 180, column: 7)
!4503 = !DILocation(line: 180, column: 7, scope: !875, inlinedAt: !4499)
!4504 = !DILocation(line: 182, column: 13, scope: !4505, inlinedAt: !4499)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !872, line: 182, column: 11)
!4506 = distinct !DILexicalBlock(scope: !4502, file: !872, line: 181, column: 5)
!4507 = !DILocation(line: 182, column: 11, scope: !4506, inlinedAt: !4499)
!4508 = !DILocation(line: 197, column: 11, scope: !4509, inlinedAt: !4499)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !872, line: 197, column: 11)
!4510 = distinct !DILexicalBlock(scope: !4502, file: !872, line: 195, column: 5)
!4511 = !DILocation(line: 197, column: 11, scope: !4510, inlinedAt: !4499)
!4512 = !DILocation(line: 198, column: 9, scope: !4509, inlinedAt: !4499)
!4513 = !DILocation(line: 0, scope: !4314, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 201, column: 7, scope: !875, inlinedAt: !4499)
!4515 = !DILocation(line: 85, column: 25, scope: !4314, inlinedAt: !4514)
!4516 = !DILocation(line: 0, scope: !4322, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 85, column: 10, scope: !4314, inlinedAt: !4514)
!4518 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4517)
!4519 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4517)
!4520 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4517)
!4521 = !DILocation(line: 202, column: 7, scope: !875, inlinedAt: !4499)
!4522 = !DILocation(line: 118, column: 3, scope: !4491)
!4523 = !DILocation(line: 0, scope: !875)
!4524 = !DILocation(line: 178, column: 14, scope: !875)
!4525 = !DILocation(line: 180, column: 9, scope: !4502)
!4526 = !DILocation(line: 180, column: 7, scope: !875)
!4527 = !DILocation(line: 182, column: 13, scope: !4505)
!4528 = !DILocation(line: 182, column: 11, scope: !4506)
!4529 = !DILocation(line: 190, column: 30, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4505, file: !872, line: 183, column: 9)
!4531 = !DILocation(line: 191, column: 16, scope: !4530)
!4532 = !DILocation(line: 191, column: 13, scope: !4530)
!4533 = !DILocation(line: 192, column: 9, scope: !4530)
!4534 = !DILocation(line: 197, column: 11, scope: !4509)
!4535 = !DILocation(line: 197, column: 11, scope: !4510)
!4536 = !DILocation(line: 198, column: 9, scope: !4509)
!4537 = !DILocation(line: 0, scope: !4314, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 201, column: 7, scope: !875)
!4539 = !DILocation(line: 85, column: 25, scope: !4314, inlinedAt: !4538)
!4540 = !DILocation(line: 0, scope: !4322, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 85, column: 10, scope: !4314, inlinedAt: !4538)
!4542 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4541)
!4543 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4541)
!4544 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4541)
!4545 = !DILocation(line: 202, column: 7, scope: !875)
!4546 = !DILocation(line: 203, column: 3, scope: !875)
!4547 = !DILocation(line: 0, scope: !887)
!4548 = !DILocation(line: 230, column: 14, scope: !887)
!4549 = !DILocation(line: 238, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !887, file: !872, line: 238, column: 7)
!4551 = !DILocation(line: 238, column: 7, scope: !887)
!4552 = !DILocation(line: 240, column: 9, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !887, file: !872, line: 240, column: 7)
!4554 = !DILocation(line: 240, column: 18, scope: !4553)
!4555 = !DILocation(line: 253, column: 8, scope: !887)
!4556 = !DILocation(line: 256, column: 7, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !887, file: !872, line: 256, column: 7)
!4558 = !DILocation(line: 256, column: 7, scope: !887)
!4559 = !DILocation(line: 258, column: 27, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4557, file: !872, line: 257, column: 5)
!4561 = !DILocation(line: 259, column: 50, scope: !4560)
!4562 = !DILocation(line: 259, column: 32, scope: !4560)
!4563 = !DILocation(line: 260, column: 5, scope: !4560)
!4564 = !DILocation(line: 262, column: 9, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !887, file: !872, line: 262, column: 7)
!4566 = !DILocation(line: 262, column: 7, scope: !887)
!4567 = !DILocation(line: 263, column: 9, scope: !4565)
!4568 = !DILocation(line: 263, column: 5, scope: !4565)
!4569 = !DILocation(line: 264, column: 9, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !887, file: !872, line: 264, column: 7)
!4571 = !DILocation(line: 264, column: 14, scope: !4570)
!4572 = !DILocation(line: 265, column: 7, scope: !4570)
!4573 = !DILocation(line: 265, column: 11, scope: !4570)
!4574 = !DILocation(line: 266, column: 11, scope: !4570)
!4575 = !DILocation(line: 267, column: 14, scope: !4570)
!4576 = !DILocation(line: 264, column: 7, scope: !887)
!4577 = !DILocation(line: 268, column: 5, scope: !4570)
!4578 = !DILocation(line: 0, scope: !4389, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 269, column: 8, scope: !887)
!4580 = !DILocation(line: 0, scope: !4397, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 70, column: 25, scope: !4389, inlinedAt: !4579)
!4582 = !DILocation(line: 2059, column: 24, scope: !4397, inlinedAt: !4581)
!4583 = !DILocation(line: 2059, column: 10, scope: !4397, inlinedAt: !4581)
!4584 = !DILocation(line: 0, scope: !4322, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 70, column: 10, scope: !4389, inlinedAt: !4579)
!4586 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4585)
!4587 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4585)
!4588 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4585)
!4589 = !DILocation(line: 270, column: 7, scope: !887)
!4590 = !DILocation(line: 271, column: 3, scope: !887)
!4591 = distinct !DISubprogram(name: "xzalloc", scope: !872, file: !872, line: 279, type: !4342, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4592)
!4592 = !{!4593}
!4593 = !DILocalVariable(name: "s", arg: 1, scope: !4591, file: !872, line: 279, type: !140)
!4594 = !DILocation(line: 0, scope: !4591)
!4595 = !DILocalVariable(name: "n", arg: 1, scope: !4596, file: !872, line: 294, type: !140)
!4596 = distinct !DISubprogram(name: "xcalloc", scope: !872, file: !872, line: 294, type: !4458, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4597)
!4597 = !{!4595, !4598}
!4598 = !DILocalVariable(name: "s", arg: 2, scope: !4596, file: !872, line: 294, type: !140)
!4599 = !DILocation(line: 0, scope: !4596, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 281, column: 10, scope: !4591)
!4601 = !DILocation(line: 296, column: 25, scope: !4596, inlinedAt: !4600)
!4602 = !DILocation(line: 0, scope: !4322, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 296, column: 10, scope: !4596, inlinedAt: !4600)
!4604 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4603)
!4605 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4603)
!4606 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4603)
!4607 = !DILocation(line: 281, column: 3, scope: !4591)
!4608 = !DISubprogram(name: "calloc", scope: !1162, file: !1162, line: 543, type: !4458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4609 = !DILocation(line: 0, scope: !4596)
!4610 = !DILocation(line: 296, column: 25, scope: !4596)
!4611 = !DILocation(line: 0, scope: !4322, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 296, column: 10, scope: !4596)
!4613 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4612)
!4614 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4612)
!4615 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4612)
!4616 = !DILocation(line: 296, column: 3, scope: !4596)
!4617 = distinct !DISubprogram(name: "xizalloc", scope: !872, file: !872, line: 285, type: !4356, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4618)
!4618 = !{!4619}
!4619 = !DILocalVariable(name: "s", arg: 1, scope: !4617, file: !872, line: 285, type: !891)
!4620 = !DILocation(line: 0, scope: !4617)
!4621 = !DILocalVariable(name: "n", arg: 1, scope: !4622, file: !872, line: 300, type: !891)
!4622 = distinct !DISubprogram(name: "xicalloc", scope: !872, file: !872, line: 300, type: !4474, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4623)
!4623 = !{!4621, !4624}
!4624 = !DILocalVariable(name: "s", arg: 2, scope: !4622, file: !872, line: 300, type: !891)
!4625 = !DILocation(line: 0, scope: !4622, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 287, column: 10, scope: !4617)
!4627 = !DILocalVariable(name: "n", arg: 1, scope: !4628, file: !4363, line: 77, type: !891)
!4628 = distinct !DISubprogram(name: "icalloc", scope: !4363, file: !4363, line: 77, type: !4474, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4629)
!4629 = !{!4627, !4630}
!4630 = !DILocalVariable(name: "s", arg: 2, scope: !4628, file: !4363, line: 77, type: !891)
!4631 = !DILocation(line: 0, scope: !4628, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 302, column: 25, scope: !4622, inlinedAt: !4626)
!4633 = !DILocation(line: 91, column: 10, scope: !4628, inlinedAt: !4632)
!4634 = !DILocation(line: 0, scope: !4322, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 302, column: 10, scope: !4622, inlinedAt: !4626)
!4636 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4635)
!4637 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4635)
!4638 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4635)
!4639 = !DILocation(line: 287, column: 3, scope: !4617)
!4640 = !DILocation(line: 0, scope: !4622)
!4641 = !DILocation(line: 0, scope: !4628, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 302, column: 25, scope: !4622)
!4643 = !DILocation(line: 91, column: 10, scope: !4628, inlinedAt: !4642)
!4644 = !DILocation(line: 0, scope: !4322, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 302, column: 10, scope: !4622)
!4646 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4645)
!4647 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4645)
!4648 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4645)
!4649 = !DILocation(line: 302, column: 3, scope: !4622)
!4650 = distinct !DISubprogram(name: "xmemdup", scope: !872, file: !872, line: 310, type: !4651, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4653)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!138, !1186, !140}
!4653 = !{!4654, !4655}
!4654 = !DILocalVariable(name: "p", arg: 1, scope: !4650, file: !872, line: 310, type: !1186)
!4655 = !DILocalVariable(name: "s", arg: 2, scope: !4650, file: !872, line: 310, type: !140)
!4656 = !DILocation(line: 0, scope: !4650)
!4657 = !DILocation(line: 0, scope: !4341, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 312, column: 18, scope: !4650)
!4659 = !DILocation(line: 49, column: 25, scope: !4341, inlinedAt: !4658)
!4660 = !DILocation(line: 0, scope: !4322, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 49, column: 10, scope: !4341, inlinedAt: !4658)
!4662 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4661)
!4663 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4661)
!4664 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4661)
!4665 = !DILocalVariable(name: "__dest", arg: 1, scope: !4666, file: !2430, line: 26, type: !4669)
!4666 = distinct !DISubprogram(name: "memcpy", scope: !2430, file: !2430, line: 26, type: !4667, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4670)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!138, !4669, !1185, !140}
!4669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!4670 = !{!4665, !4671, !4672}
!4671 = !DILocalVariable(name: "__src", arg: 2, scope: !4666, file: !2430, line: 26, type: !1185)
!4672 = !DILocalVariable(name: "__len", arg: 3, scope: !4666, file: !2430, line: 26, type: !140)
!4673 = !DILocation(line: 0, scope: !4666, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 312, column: 10, scope: !4650)
!4675 = !DILocation(line: 29, column: 10, scope: !4666, inlinedAt: !4674)
!4676 = !DILocation(line: 312, column: 3, scope: !4650)
!4677 = distinct !DISubprogram(name: "ximemdup", scope: !872, file: !872, line: 316, type: !4678, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!138, !1186, !891}
!4680 = !{!4681, !4682}
!4681 = !DILocalVariable(name: "p", arg: 1, scope: !4677, file: !872, line: 316, type: !1186)
!4682 = !DILocalVariable(name: "s", arg: 2, scope: !4677, file: !872, line: 316, type: !891)
!4683 = !DILocation(line: 0, scope: !4677)
!4684 = !DILocation(line: 0, scope: !4355, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 318, column: 18, scope: !4677)
!4686 = !DILocation(line: 0, scope: !4362, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 55, column: 25, scope: !4355, inlinedAt: !4685)
!4688 = !DILocation(line: 57, column: 26, scope: !4362, inlinedAt: !4687)
!4689 = !DILocation(line: 0, scope: !4322, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 55, column: 10, scope: !4355, inlinedAt: !4685)
!4691 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4690)
!4692 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4690)
!4693 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4690)
!4694 = !DILocation(line: 0, scope: !4666, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 318, column: 10, scope: !4677)
!4696 = !DILocation(line: 29, column: 10, scope: !4666, inlinedAt: !4695)
!4697 = !DILocation(line: 318, column: 3, scope: !4677)
!4698 = distinct !DISubprogram(name: "ximemdup0", scope: !872, file: !872, line: 325, type: !4699, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!137, !1186, !891}
!4701 = !{!4702, !4703, !4704}
!4702 = !DILocalVariable(name: "p", arg: 1, scope: !4698, file: !872, line: 325, type: !1186)
!4703 = !DILocalVariable(name: "s", arg: 2, scope: !4698, file: !872, line: 325, type: !891)
!4704 = !DILocalVariable(name: "result", scope: !4698, file: !872, line: 327, type: !137)
!4705 = !DILocation(line: 0, scope: !4698)
!4706 = !DILocation(line: 327, column: 30, scope: !4698)
!4707 = !DILocation(line: 0, scope: !4355, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 327, column: 18, scope: !4698)
!4709 = !DILocation(line: 0, scope: !4362, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 55, column: 25, scope: !4355, inlinedAt: !4708)
!4711 = !DILocation(line: 57, column: 26, scope: !4362, inlinedAt: !4710)
!4712 = !DILocation(line: 0, scope: !4322, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 55, column: 10, scope: !4355, inlinedAt: !4708)
!4714 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4713)
!4715 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4713)
!4716 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4713)
!4717 = !DILocation(line: 328, column: 3, scope: !4698)
!4718 = !DILocation(line: 328, column: 13, scope: !4698)
!4719 = !DILocation(line: 0, scope: !4666, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 329, column: 10, scope: !4698)
!4721 = !DILocation(line: 29, column: 10, scope: !4666, inlinedAt: !4720)
!4722 = !DILocation(line: 329, column: 3, scope: !4698)
!4723 = distinct !DISubprogram(name: "xstrdup", scope: !872, file: !872, line: 335, type: !1164, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4724)
!4724 = !{!4725}
!4725 = !DILocalVariable(name: "string", arg: 1, scope: !4723, file: !872, line: 335, type: !143)
!4726 = !DILocation(line: 0, scope: !4723)
!4727 = !DILocation(line: 337, column: 27, scope: !4723)
!4728 = !DILocation(line: 337, column: 43, scope: !4723)
!4729 = !DILocation(line: 0, scope: !4650, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 337, column: 10, scope: !4723)
!4731 = !DILocation(line: 0, scope: !4341, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 312, column: 18, scope: !4650, inlinedAt: !4730)
!4733 = !DILocation(line: 49, column: 25, scope: !4341, inlinedAt: !4732)
!4734 = !DILocation(line: 0, scope: !4322, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 49, column: 10, scope: !4341, inlinedAt: !4732)
!4736 = !DILocation(line: 39, column: 8, scope: !4329, inlinedAt: !4735)
!4737 = !DILocation(line: 39, column: 7, scope: !4322, inlinedAt: !4735)
!4738 = !DILocation(line: 40, column: 5, scope: !4329, inlinedAt: !4735)
!4739 = !DILocation(line: 0, scope: !4666, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 312, column: 10, scope: !4650, inlinedAt: !4730)
!4741 = !DILocation(line: 29, column: 10, scope: !4666, inlinedAt: !4740)
!4742 = !DILocation(line: 337, column: 3, scope: !4723)
!4743 = distinct !DISubprogram(name: "xalloc_die", scope: !772, file: !772, line: 32, type: !479, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !906, retainedNodes: !4744)
!4744 = !{!4745}
!4745 = !DILocalVariable(name: "__errstatus", scope: !4746, file: !772, line: 34, type: !4747)
!4746 = distinct !DILexicalBlock(scope: !4743, file: !772, line: 34, column: 3)
!4747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4748 = !DILocation(line: 34, column: 3, scope: !4746)
!4749 = !DILocation(line: 0, scope: !4746)
!4750 = !DILocation(line: 40, column: 3, scope: !4743)
!4751 = distinct !DISubprogram(name: "close_stream", scope: !909, file: !909, line: 55, type: !4752, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !4788)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!80, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4756)
!4756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4757)
!4757 = !{!4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4756, file: !208, line: 51, baseType: !80, size: 32)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4756, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4756, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4756, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4756, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4756, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4756, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4756, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4756, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4756, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4756, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4756, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4756, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4756, file: !208, line: 70, baseType: !4772, size: 64, offset: 832)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4756, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4756, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4756, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4756, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4756, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4756, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4756, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4756, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4756, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4756, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4756, file: !208, line: 93, baseType: !4772, size: 64, offset: 1344)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4756, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4756, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4756, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4756, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4788 = !{!4789, !4790, !4792, !4793}
!4789 = !DILocalVariable(name: "stream", arg: 1, scope: !4751, file: !909, line: 55, type: !4754)
!4790 = !DILocalVariable(name: "some_pending", scope: !4751, file: !909, line: 57, type: !4791)
!4791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4792 = !DILocalVariable(name: "prev_fail", scope: !4751, file: !909, line: 58, type: !4791)
!4793 = !DILocalVariable(name: "fclose_fail", scope: !4751, file: !909, line: 59, type: !4791)
!4794 = !DILocation(line: 0, scope: !4751)
!4795 = !DILocation(line: 57, column: 30, scope: !4751)
!4796 = !DILocalVariable(name: "__stream", arg: 1, scope: !4797, file: !1548, line: 135, type: !4754)
!4797 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1548, file: !1548, line: 135, type: !4752, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !4798)
!4798 = !{!4796}
!4799 = !DILocation(line: 0, scope: !4797, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 58, column: 27, scope: !4751)
!4801 = !DILocation(line: 137, column: 10, scope: !4797, inlinedAt: !4800)
!4802 = !{!1557, !1039, i64 0}
!4803 = !DILocation(line: 58, column: 43, scope: !4751)
!4804 = !DILocation(line: 59, column: 29, scope: !4751)
!4805 = !DILocation(line: 59, column: 45, scope: !4751)
!4806 = !DILocation(line: 69, column: 17, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4751, file: !909, line: 69, column: 7)
!4808 = !DILocation(line: 57, column: 50, scope: !4751)
!4809 = !DILocation(line: 69, column: 33, scope: !4807)
!4810 = !DILocation(line: 69, column: 53, scope: !4807)
!4811 = !DILocation(line: 69, column: 59, scope: !4807)
!4812 = !DILocation(line: 69, column: 7, scope: !4751)
!4813 = !DILocation(line: 71, column: 11, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4807, file: !909, line: 70, column: 5)
!4815 = !DILocation(line: 72, column: 9, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4814, file: !909, line: 71, column: 11)
!4817 = !DILocation(line: 72, column: 15, scope: !4816)
!4818 = !DILocation(line: 77, column: 1, scope: !4751)
!4819 = !DISubprogram(name: "__fpending", scope: !4820, file: !4820, line: 75, type: !4821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4820 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!140, !4754}
!4823 = distinct !DISubprogram(name: "rpl_fclose", scope: !911, file: !911, line: 58, type: !4824, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4860)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!80, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4828)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4829)
!4829 = !{!4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4828, file: !208, line: 51, baseType: !80, size: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4828, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4828, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4828, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4828, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4828, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4828, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4828, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4828, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4828, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4828, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4828, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4828, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4828, file: !208, line: 70, baseType: !4844, size: 64, offset: 832)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4828, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4828, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4828, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4828, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4828, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4828, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4828, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4828, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4828, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4828, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4828, file: !208, line: 93, baseType: !4844, size: 64, offset: 1344)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4828, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4828, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4828, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4828, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4860 = !{!4861, !4862, !4863, !4864}
!4861 = !DILocalVariable(name: "fp", arg: 1, scope: !4823, file: !911, line: 58, type: !4826)
!4862 = !DILocalVariable(name: "saved_errno", scope: !4823, file: !911, line: 60, type: !80)
!4863 = !DILocalVariable(name: "fd", scope: !4823, file: !911, line: 63, type: !80)
!4864 = !DILocalVariable(name: "result", scope: !4823, file: !911, line: 74, type: !80)
!4865 = !DILocation(line: 0, scope: !4823)
!4866 = !DILocation(line: 63, column: 12, scope: !4823)
!4867 = !DILocation(line: 64, column: 10, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4823, file: !911, line: 64, column: 7)
!4869 = !DILocation(line: 64, column: 7, scope: !4823)
!4870 = !DILocation(line: 65, column: 12, scope: !4868)
!4871 = !DILocation(line: 65, column: 5, scope: !4868)
!4872 = !DILocation(line: 70, column: 9, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4823, file: !911, line: 70, column: 7)
!4874 = !DILocation(line: 70, column: 23, scope: !4873)
!4875 = !DILocation(line: 70, column: 33, scope: !4873)
!4876 = !DILocation(line: 70, column: 26, scope: !4873)
!4877 = !DILocation(line: 70, column: 59, scope: !4873)
!4878 = !DILocation(line: 71, column: 7, scope: !4873)
!4879 = !DILocation(line: 71, column: 10, scope: !4873)
!4880 = !DILocation(line: 70, column: 7, scope: !4823)
!4881 = !DILocation(line: 100, column: 12, scope: !4823)
!4882 = !DILocation(line: 105, column: 7, scope: !4823)
!4883 = !DILocation(line: 72, column: 19, scope: !4873)
!4884 = !DILocation(line: 105, column: 19, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4823, file: !911, line: 105, column: 7)
!4886 = !DILocation(line: 107, column: 13, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4885, file: !911, line: 106, column: 5)
!4888 = !DILocation(line: 109, column: 5, scope: !4887)
!4889 = !DILocation(line: 112, column: 1, scope: !4823)
!4890 = !DISubprogram(name: "fileno", scope: !1033, file: !1033, line: 809, type: !4824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4891 = !DISubprogram(name: "fclose", scope: !1033, file: !1033, line: 178, type: !4824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4892 = !DISubprogram(name: "__freading", scope: !4820, file: !4820, line: 51, type: !4824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4893 = !DISubprogram(name: "lseek", scope: !1618, file: !1618, line: 339, type: !4894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!230, !80, !230, !80}
!4896 = distinct !DISubprogram(name: "open_safer", scope: !913, file: !913, line: 29, type: !4897, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4899)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!80, !143, !80, null}
!4899 = !{!4900, !4901, !4902, !4903}
!4900 = !DILocalVariable(name: "file", arg: 1, scope: !4896, file: !913, line: 29, type: !143)
!4901 = !DILocalVariable(name: "flags", arg: 2, scope: !4896, file: !913, line: 29, type: !80)
!4902 = !DILocalVariable(name: "mode", scope: !4896, file: !913, line: 31, type: !934)
!4903 = !DILocalVariable(name: "ap", scope: !4904, file: !913, line: 35, type: !4906)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !913, line: 34, column: 5)
!4905 = distinct !DILexicalBlock(scope: !4896, file: !913, line: 33, column: 7)
!4906 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4907, line: 12, baseType: !4908)
!4907 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!4908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !913, baseType: !4909)
!4909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4910, size: 192, elements: !60)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4910, file: !913, line: 35, baseType: !99, size: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4910, file: !913, line: 35, baseType: !99, size: 32, offset: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4910, file: !913, line: 35, baseType: !138, size: 64, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4910, file: !913, line: 35, baseType: !138, size: 64, offset: 128)
!4916 = distinct !DIAssignID()
!4917 = !DILocation(line: 0, scope: !4904)
!4918 = !DILocation(line: 0, scope: !4896)
!4919 = !DILocation(line: 33, column: 13, scope: !4905)
!4920 = !DILocation(line: 33, column: 7, scope: !4896)
!4921 = !DILocation(line: 35, column: 7, scope: !4904)
!4922 = !DILocation(line: 36, column: 7, scope: !4904)
!4923 = !DILocation(line: 40, column: 14, scope: !4904)
!4924 = distinct !DIAssignID()
!4925 = distinct !DIAssignID()
!4926 = !DILocation(line: 42, column: 7, scope: !4904)
!4927 = !DILocation(line: 43, column: 5, scope: !4905)
!4928 = !DILocation(line: 43, column: 5, scope: !4904)
!4929 = !DILocation(line: 45, column: 20, scope: !4896)
!4930 = !DILocation(line: 45, column: 10, scope: !4896)
!4931 = !DILocation(line: 45, column: 3, scope: !4896)
!4932 = !DISubprogram(name: "open", scope: !1755, file: !1755, line: 181, type: !4897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4933 = distinct !DISubprogram(name: "rpl_fflush", scope: !915, file: !915, line: 130, type: !4934, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4970)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!80, !4936}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4938)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4938, file: !208, line: 51, baseType: !80, size: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4938, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4938, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4938, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4938, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4938, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4938, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4938, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4938, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4938, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4938, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4938, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4938, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4938, file: !208, line: 70, baseType: !4954, size: 64, offset: 832)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4938, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4938, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4938, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4938, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4938, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4938, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4938, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4938, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4938, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4938, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4938, file: !208, line: 93, baseType: !4954, size: 64, offset: 1344)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4938, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4938, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4938, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4938, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "stream", arg: 1, scope: !4933, file: !915, line: 130, type: !4936)
!4972 = !DILocation(line: 0, scope: !4933)
!4973 = !DILocation(line: 151, column: 14, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4933, file: !915, line: 151, column: 7)
!4975 = !DILocation(line: 151, column: 22, scope: !4974)
!4976 = !DILocation(line: 151, column: 27, scope: !4974)
!4977 = !DILocation(line: 151, column: 7, scope: !4933)
!4978 = !DILocation(line: 152, column: 12, scope: !4974)
!4979 = !DILocation(line: 152, column: 5, scope: !4974)
!4980 = !DILocalVariable(name: "fp", arg: 1, scope: !4981, file: !915, line: 42, type: !4936)
!4981 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !915, file: !915, line: 42, type: !4982, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4984)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !4936}
!4984 = !{!4980}
!4985 = !DILocation(line: 0, scope: !4981, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 157, column: 3, scope: !4933)
!4987 = !DILocation(line: 44, column: 12, scope: !4988, inlinedAt: !4986)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !915, line: 44, column: 7)
!4989 = !DILocation(line: 44, column: 19, scope: !4988, inlinedAt: !4986)
!4990 = !DILocation(line: 44, column: 7, scope: !4981, inlinedAt: !4986)
!4991 = !DILocation(line: 46, column: 5, scope: !4988, inlinedAt: !4986)
!4992 = !DILocation(line: 159, column: 10, scope: !4933)
!4993 = !DILocation(line: 159, column: 3, scope: !4933)
!4994 = !DILocation(line: 236, column: 1, scope: !4933)
!4995 = !DISubprogram(name: "fflush", scope: !1033, file: !1033, line: 230, type: !4934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4996 = distinct !DISubprogram(name: "rpl_fseeko", scope: !917, file: !917, line: 28, type: !4997, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !5034)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!80, !4999, !5033, !80}
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !5001)
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !5002)
!5002 = !{!5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5001, file: !208, line: 51, baseType: !80, size: 32)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5001, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5001, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5001, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5001, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5001, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5001, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5001, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5001, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5001, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5001, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5001, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5001, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5001, file: !208, line: 70, baseType: !5017, size: 64, offset: 832)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5001, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5001, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5001, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5001, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5001, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5001, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5001, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5001, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5001, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5001, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5001, file: !208, line: 93, baseType: !5017, size: 64, offset: 1344)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5001, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5001, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5001, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5001, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!5033 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1033, line: 63, baseType: !230)
!5034 = !{!5035, !5036, !5037, !5038}
!5035 = !DILocalVariable(name: "fp", arg: 1, scope: !4996, file: !917, line: 28, type: !4999)
!5036 = !DILocalVariable(name: "offset", arg: 2, scope: !4996, file: !917, line: 28, type: !5033)
!5037 = !DILocalVariable(name: "whence", arg: 3, scope: !4996, file: !917, line: 28, type: !80)
!5038 = !DILocalVariable(name: "pos", scope: !5039, file: !917, line: 123, type: !5033)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !917, line: 119, column: 5)
!5040 = distinct !DILexicalBlock(scope: !4996, file: !917, line: 55, column: 7)
!5041 = !DILocation(line: 0, scope: !4996)
!5042 = !DILocation(line: 55, column: 12, scope: !5040)
!5043 = !{!1557, !970, i64 16}
!5044 = !DILocation(line: 55, column: 33, scope: !5040)
!5045 = !{!1557, !970, i64 8}
!5046 = !DILocation(line: 55, column: 25, scope: !5040)
!5047 = !DILocation(line: 56, column: 7, scope: !5040)
!5048 = !DILocation(line: 56, column: 15, scope: !5040)
!5049 = !DILocation(line: 56, column: 37, scope: !5040)
!5050 = !{!1557, !970, i64 32}
!5051 = !DILocation(line: 56, column: 29, scope: !5040)
!5052 = !DILocation(line: 57, column: 7, scope: !5040)
!5053 = !DILocation(line: 57, column: 15, scope: !5040)
!5054 = !{!1557, !970, i64 72}
!5055 = !DILocation(line: 57, column: 29, scope: !5040)
!5056 = !DILocation(line: 55, column: 7, scope: !4996)
!5057 = !DILocation(line: 123, column: 26, scope: !5039)
!5058 = !DILocation(line: 123, column: 19, scope: !5039)
!5059 = !DILocation(line: 0, scope: !5039)
!5060 = !DILocation(line: 124, column: 15, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5039, file: !917, line: 124, column: 11)
!5062 = !DILocation(line: 124, column: 11, scope: !5039)
!5063 = !DILocation(line: 135, column: 19, scope: !5039)
!5064 = !DILocation(line: 136, column: 12, scope: !5039)
!5065 = !DILocation(line: 136, column: 20, scope: !5039)
!5066 = !{!1557, !1558, i64 144}
!5067 = !DILocation(line: 167, column: 7, scope: !5039)
!5068 = !DILocation(line: 169, column: 10, scope: !4996)
!5069 = !DILocation(line: 169, column: 3, scope: !4996)
!5070 = !DILocation(line: 170, column: 1, scope: !4996)
!5071 = !DISubprogram(name: "fseeko", scope: !1033, file: !1033, line: 736, type: !5072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!80, !4999, !230, !80}
!5074 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !779, file: !779, line: 100, type: !5075, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !5078)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!140, !2448, !143, !140, !5077}
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!5078 = !{!5079, !5080, !5081, !5082, !5083}
!5079 = !DILocalVariable(name: "pwc", arg: 1, scope: !5074, file: !779, line: 100, type: !2448)
!5080 = !DILocalVariable(name: "s", arg: 2, scope: !5074, file: !779, line: 100, type: !143)
!5081 = !DILocalVariable(name: "n", arg: 3, scope: !5074, file: !779, line: 100, type: !140)
!5082 = !DILocalVariable(name: "ps", arg: 4, scope: !5074, file: !779, line: 100, type: !5077)
!5083 = !DILocalVariable(name: "ret", scope: !5074, file: !779, line: 130, type: !140)
!5084 = !DILocation(line: 0, scope: !5074)
!5085 = !DILocation(line: 105, column: 9, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5074, file: !779, line: 105, column: 7)
!5087 = !DILocation(line: 105, column: 7, scope: !5074)
!5088 = !DILocation(line: 117, column: 10, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5074, file: !779, line: 117, column: 7)
!5090 = !DILocation(line: 117, column: 7, scope: !5074)
!5091 = !DILocation(line: 130, column: 16, scope: !5074)
!5092 = !DILocation(line: 135, column: 11, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5074, file: !779, line: 135, column: 7)
!5094 = !DILocation(line: 135, column: 25, scope: !5093)
!5095 = !DILocation(line: 135, column: 30, scope: !5093)
!5096 = !DILocation(line: 135, column: 7, scope: !5074)
!5097 = !DILocalVariable(name: "ps", arg: 1, scope: !5098, file: !2421, line: 1135, type: !5077)
!5098 = distinct !DISubprogram(name: "mbszero", scope: !2421, file: !2421, line: 1135, type: !5099, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !5101)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{null, !5077}
!5101 = !{!5097}
!5102 = !DILocation(line: 0, scope: !5098, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 137, column: 5, scope: !5093)
!5104 = !DILocalVariable(name: "__dest", arg: 1, scope: !5105, file: !2430, line: 57, type: !138)
!5105 = distinct !DISubprogram(name: "memset", scope: !2430, file: !2430, line: 57, type: !2431, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !5106)
!5106 = !{!5104, !5107, !5108}
!5107 = !DILocalVariable(name: "__ch", arg: 2, scope: !5105, file: !2430, line: 57, type: !80)
!5108 = !DILocalVariable(name: "__len", arg: 3, scope: !5105, file: !2430, line: 57, type: !140)
!5109 = !DILocation(line: 0, scope: !5105, inlinedAt: !5110)
!5110 = distinct !DILocation(line: 1137, column: 3, scope: !5098, inlinedAt: !5103)
!5111 = !DILocation(line: 59, column: 10, scope: !5105, inlinedAt: !5110)
!5112 = !DILocation(line: 137, column: 5, scope: !5093)
!5113 = !DILocation(line: 138, column: 11, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5074, file: !779, line: 138, column: 7)
!5115 = !DILocation(line: 138, column: 7, scope: !5074)
!5116 = !DILocation(line: 139, column: 5, scope: !5114)
!5117 = !DILocation(line: 143, column: 26, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5074, file: !779, line: 143, column: 7)
!5119 = !DILocation(line: 143, column: 41, scope: !5118)
!5120 = !DILocation(line: 143, column: 7, scope: !5074)
!5121 = !DILocation(line: 145, column: 15, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !779, line: 145, column: 11)
!5123 = distinct !DILexicalBlock(scope: !5118, file: !779, line: 144, column: 5)
!5124 = !DILocation(line: 145, column: 11, scope: !5123)
!5125 = !DILocation(line: 146, column: 32, scope: !5122)
!5126 = !DILocation(line: 146, column: 16, scope: !5122)
!5127 = !DILocation(line: 146, column: 14, scope: !5122)
!5128 = !DILocation(line: 146, column: 9, scope: !5122)
!5129 = !DILocation(line: 286, column: 1, scope: !5074)
!5130 = !DISubprogram(name: "mbsinit", scope: !5131, file: !5131, line: 293, type: !5132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5131 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!80, !5134}
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!5136 = distinct !DISubprogram(name: "mkancesdirs", scope: !919, file: !919, line: 65, type: !5137, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5140)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!893, !137, !5139, !1202, !138}
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!5140 = !{!5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5156, !5157}
!5141 = !DILocalVariable(name: "file", arg: 1, scope: !5136, file: !919, line: 65, type: !137)
!5142 = !DILocalVariable(name: "wd", arg: 2, scope: !5136, file: !919, line: 65, type: !5139)
!5143 = !DILocalVariable(name: "make_dir", arg: 3, scope: !5136, file: !919, line: 66, type: !1202)
!5144 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !5136, file: !919, line: 67, type: !138)
!5145 = !DILocalVariable(name: "sep", scope: !5136, file: !919, line: 72, type: !137)
!5146 = !DILocalVariable(name: "component", scope: !5136, file: !919, line: 76, type: !137)
!5147 = !DILocalVariable(name: "p", scope: !5136, file: !919, line: 78, type: !137)
!5148 = !DILocalVariable(name: "c", scope: !5136, file: !919, line: 79, type: !4)
!5149 = !DILocalVariable(name: "made_dir", scope: !5136, file: !919, line: 80, type: !191)
!5150 = !DILocalVariable(name: "make_dir_errno", scope: !5151, file: !919, line: 106, type: !80)
!5151 = distinct !DILexicalBlock(scope: !5152, file: !919, line: 99, column: 11)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !919, line: 98, column: 13)
!5153 = distinct !DILexicalBlock(scope: !5154, file: !919, line: 95, column: 7)
!5154 = distinct !DILexicalBlock(scope: !5155, file: !919, line: 94, column: 14)
!5155 = distinct !DILexicalBlock(scope: !5136, file: !919, line: 89, column: 9)
!5156 = !DILocalVariable(name: "savewd_chdir_options", scope: !5151, file: !919, line: 115, type: !80)
!5157 = !DILocalVariable(name: "chdir_result", scope: !5151, file: !919, line: 119, type: !80)
!5158 = !DILocation(line: 0, scope: !5136)
!5159 = !DILocation(line: 88, column: 15, scope: !5136)
!5160 = !DILocation(line: 88, column: 3, scope: !5136)
!5161 = !DILocation(line: 88, column: 17, scope: !5136)
!5162 = !DILocation(line: 89, column: 9, scope: !5155)
!5163 = !DILocation(line: 0, scope: !5155)
!5164 = !DILocation(line: 89, column: 9, scope: !5136)
!5165 = !DILocation(line: 91, column: 13, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5155, file: !919, line: 90, column: 7)
!5167 = !DILocation(line: 94, column: 26, scope: !5154)
!5168 = !DILocation(line: 94, column: 29, scope: !5154)
!5169 = !DILocation(line: 94, column: 32, scope: !5154)
!5170 = !DILocation(line: 98, column: 20, scope: !5152)
!5171 = !DILocation(line: 98, column: 32, scope: !5152)
!5172 = !DILocation(line: 98, column: 37, scope: !5152)
!5173 = !DILocation(line: 98, column: 40, scope: !5152)
!5174 = !DILocation(line: 98, column: 53, scope: !5152)
!5175 = !DILocation(line: 98, column: 13, scope: !5153)
!5176 = !DILocation(line: 102, column: 18, scope: !5151)
!5177 = !DILocation(line: 0, scope: !5151)
!5178 = !DILocation(line: 108, column: 17, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5151, file: !919, line: 107, column: 17)
!5180 = !DILocation(line: 107, column: 33, scope: !5179)
!5181 = !DILocation(line: 108, column: 20, scope: !5179)
!5182 = !DILocation(line: 108, column: 33, scope: !5179)
!5183 = !DILocation(line: 108, column: 40, scope: !5179)
!5184 = !DILocation(line: 108, column: 43, scope: !5179)
!5185 = !DILocation(line: 108, column: 56, scope: !5179)
!5186 = !DILocation(line: 107, column: 17, scope: !5151)
!5187 = !DILocation(line: 110, column: 22, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5179, file: !919, line: 110, column: 22)
!5189 = !DILocation(line: 110, column: 63, scope: !5188)
!5190 = !DILocation(line: 110, column: 22, scope: !5179)
!5191 = !DILocation(line: 111, column: 32, scope: !5188)
!5192 = !DILocation(line: 111, column: 15, scope: !5188)
!5193 = !DILocation(line: 116, column: 17, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5151, file: !919, line: 116, column: 17)
!5195 = !DILocation(line: 116, column: 17, scope: !5151)
!5196 = !DILocation(line: 120, column: 15, scope: !5151)
!5197 = !DILocation(line: 124, column: 30, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5151, file: !919, line: 124, column: 17)
!5199 = !DILocation(line: 124, column: 17, scope: !5151)
!5200 = !DILocation(line: 125, column: 20, scope: !5198)
!5201 = !DILocation(line: 127, column: 30, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5151, file: !919, line: 127, column: 17)
!5203 = !DILocation(line: 127, column: 17, scope: !5151)
!5204 = !DILocation(line: 129, column: 36, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !919, line: 129, column: 21)
!5206 = distinct !DILexicalBlock(scope: !5202, file: !919, line: 128, column: 15)
!5207 = !DILocation(line: 129, column: 41, scope: !5205)
!5208 = !DILocation(line: 129, column: 44, scope: !5205)
!5209 = !DILocation(line: 129, column: 50, scope: !5205)
!5210 = !DILocation(line: 129, column: 21, scope: !5206)
!5211 = !DILocation(line: 130, column: 25, scope: !5205)
!5212 = !DILocation(line: 130, column: 19, scope: !5205)
!5213 = !DILocation(line: 131, column: 24, scope: !5206)
!5214 = !DILocation(line: 80, column: 8, scope: !5136)
!5215 = distinct !{!5215, !5160, !5216, !1085}
!5216 = !DILocation(line: 136, column: 7, scope: !5136)
!5217 = !DILocation(line: 76, column: 9, scope: !5136)
!5218 = !DILocation(line: 138, column: 20, scope: !5136)
!5219 = !DILocation(line: 138, column: 3, scope: !5136)
!5220 = !DILocation(line: 139, column: 1, scope: !5136)
!5221 = distinct !DISubprogram(name: "dirchownmod", scope: !932, file: !932, line: 67, type: !5222, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5224)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!80, !80, !143, !934, !146, !148, !934, !934}
!5224 = !{!5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5254, !5255, !5258, !5261, !5264}
!5225 = !DILocalVariable(name: "fd", arg: 1, scope: !5221, file: !932, line: 67, type: !80)
!5226 = !DILocalVariable(name: "dir", arg: 2, scope: !5221, file: !932, line: 67, type: !143)
!5227 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !5221, file: !932, line: 67, type: !934)
!5228 = !DILocalVariable(name: "owner", arg: 4, scope: !5221, file: !932, line: 68, type: !146)
!5229 = !DILocalVariable(name: "group", arg: 5, scope: !5221, file: !932, line: 68, type: !148)
!5230 = !DILocalVariable(name: "mode", arg: 6, scope: !5221, file: !932, line: 69, type: !934)
!5231 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !5221, file: !932, line: 69, type: !934)
!5232 = !DILocalVariable(name: "st", scope: !5221, file: !932, line: 71, type: !5233)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1865, line: 26, size: 1152, elements: !5234)
!5234 = !{!5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5251, !5252, !5253}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5233, file: !1865, line: 31, baseType: !1868, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5233, file: !1865, line: 36, baseType: !1870, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5233, file: !1865, line: 44, baseType: !1872, size: 64, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5233, file: !1865, line: 45, baseType: !935, size: 32, offset: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5233, file: !1865, line: 47, baseType: !147, size: 32, offset: 224)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5233, file: !1865, line: 48, baseType: !149, size: 32, offset: 256)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !5233, file: !1865, line: 50, baseType: !80, size: 32, offset: 288)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5233, file: !1865, line: 52, baseType: !1868, size: 64, offset: 320)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5233, file: !1865, line: 57, baseType: !230, size: 64, offset: 384)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5233, file: !1865, line: 61, baseType: !1880, size: 64, offset: 448)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5233, file: !1865, line: 63, baseType: !1882, size: 64, offset: 512)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5233, file: !1865, line: 74, baseType: !5247, size: 128, offset: 576)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1885, line: 11, size: 128, elements: !5248)
!5248 = !{!5249, !5250}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5247, file: !1885, line: 16, baseType: !1888, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5247, file: !1885, line: 21, baseType: !1890, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5233, file: !1865, line: 75, baseType: !5247, size: 128, offset: 704)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5233, file: !1865, line: 76, baseType: !5247, size: 128, offset: 832)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5233, file: !1865, line: 89, baseType: !1894, size: 192, offset: 960)
!5254 = !DILocalVariable(name: "result", scope: !5221, file: !932, line: 72, type: !80)
!5255 = !DILocalVariable(name: "dir_mode", scope: !5256, file: !932, line: 76, type: !934)
!5256 = distinct !DILexicalBlock(scope: !5257, file: !932, line: 75, column: 5)
!5257 = distinct !DILexicalBlock(scope: !5221, file: !932, line: 74, column: 7)
!5258 = !DILocalVariable(name: "indeterminate", scope: !5259, file: !932, line: 93, type: !934)
!5259 = distinct !DILexicalBlock(scope: !5260, file: !932, line: 88, column: 9)
!5260 = distinct !DILexicalBlock(scope: !5256, file: !932, line: 82, column: 11)
!5261 = !DILocalVariable(name: "chmod_mode", scope: !5262, file: !932, line: 123, type: !934)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !932, line: 122, column: 13)
!5263 = distinct !DILexicalBlock(scope: !5259, file: !932, line: 121, column: 15)
!5264 = !DILocalVariable(name: "saved_errno", scope: !5265, file: !932, line: 140, type: !80)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !932, line: 139, column: 9)
!5266 = distinct !DILexicalBlock(scope: !5267, file: !932, line: 136, column: 11)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !932, line: 135, column: 5)
!5268 = distinct !DILexicalBlock(scope: !5221, file: !932, line: 134, column: 7)
!5269 = distinct !DIAssignID()
!5270 = !DILocation(line: 0, scope: !5221)
!5271 = !DILocation(line: 71, column: 3, scope: !5221)
!5272 = !DILocation(line: 72, column: 20, scope: !5221)
!5273 = !DILocation(line: 72, column: 17, scope: !5221)
!5274 = !DILocation(line: 72, column: 26, scope: !5221)
!5275 = !DILocation(line: 72, column: 44, scope: !5221)
!5276 = !DILocation(line: 74, column: 14, scope: !5257)
!5277 = !DILocation(line: 74, column: 7, scope: !5221)
!5278 = !DILocation(line: 76, column: 28, scope: !5256)
!5279 = !DILocation(line: 0, scope: !5256)
!5280 = !DILocation(line: 82, column: 13, scope: !5260)
!5281 = !DILocation(line: 82, column: 11, scope: !5256)
!5282 = !DILocation(line: 84, column: 11, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5260, file: !932, line: 83, column: 9)
!5284 = !DILocation(line: 84, column: 17, scope: !5283)
!5285 = !DILocation(line: 86, column: 9, scope: !5283)
!5286 = !DILocation(line: 0, scope: !5259)
!5287 = !DILocation(line: 100, column: 22, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5259, file: !932, line: 100, column: 15)
!5289 = !DILocation(line: 100, column: 36, scope: !5288)
!5290 = !DILocation(line: 101, column: 25, scope: !5288)
!5291 = !DILocation(line: 101, column: 39, scope: !5288)
!5292 = !DILocation(line: 103, column: 42, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5288, file: !932, line: 102, column: 13)
!5294 = !DILocation(line: 103, column: 25, scope: !5293)
!5295 = !DILocation(line: 104, column: 27, scope: !5293)
!5296 = !DILocation(line: 105, column: 38, scope: !5293)
!5297 = !DILocation(line: 105, column: 27, scope: !5293)
!5298 = !DILocation(line: 106, column: 27, scope: !5293)
!5299 = !DILocation(line: 107, column: 27, scope: !5293)
!5300 = !DILocation(line: 114, column: 26, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5293, file: !932, line: 114, column: 19)
!5302 = !DILocation(line: 114, column: 31, scope: !5301)
!5303 = !DILocation(line: 114, column: 44, scope: !5301)
!5304 = !DILocation(line: 114, column: 19, scope: !5293)
!5305 = !DILocation(line: 121, column: 42, scope: !5263)
!5306 = !DILocation(line: 121, column: 50, scope: !5263)
!5307 = !DILocation(line: 121, column: 67, scope: !5263)
!5308 = !DILocation(line: 121, column: 15, scope: !5259)
!5309 = !DILocation(line: 124, column: 34, scope: !5262)
!5310 = !DILocation(line: 124, column: 52, scope: !5262)
!5311 = !DILocation(line: 124, column: 22, scope: !5262)
!5312 = !DILocation(line: 0, scope: !5262)
!5313 = !DILocation(line: 125, column: 42, scope: !5262)
!5314 = !DILocation(line: 125, column: 25, scope: !5262)
!5315 = !DILocation(line: 126, column: 27, scope: !5262)
!5316 = !DILocation(line: 134, column: 7, scope: !5221)
!5317 = !DILocation(line: 127, column: 38, scope: !5262)
!5318 = !DILocation(line: 127, column: 27, scope: !5262)
!5319 = !DILocation(line: 128, column: 27, scope: !5262)
!5320 = !DILocation(line: 129, column: 27, scope: !5262)
!5321 = !DILocation(line: 134, column: 9, scope: !5268)
!5322 = !DILocation(line: 136, column: 18, scope: !5266)
!5323 = !DILocation(line: 136, column: 11, scope: !5267)
!5324 = !DILocation(line: 137, column: 18, scope: !5266)
!5325 = !DILocation(line: 137, column: 9, scope: !5266)
!5326 = !DILocation(line: 140, column: 29, scope: !5265)
!5327 = !DILocation(line: 0, scope: !5265)
!5328 = !DILocation(line: 141, column: 11, scope: !5265)
!5329 = !DILocation(line: 142, column: 17, scope: !5265)
!5330 = !DILocation(line: 147, column: 1, scope: !5221)
!5331 = !DILocation(line: 146, column: 3, scope: !5221)
!5332 = !DISubprogram(name: "fstat", scope: !1404, file: !1404, line: 210, type: !5333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!80, !80, !5335}
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5336 = !DISubprogram(name: "fchown", scope: !1618, file: !1618, line: 498, type: !5337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5337 = !DISubroutineType(types: !5338)
!5338 = !{!80, !80, !147, !149}
!5339 = !DISubprogram(name: "lchown", scope: !1618, file: !1618, line: 503, type: !5340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!80, !143, !147, !149}
!5342 = !DISubprogram(name: "chown", scope: !1618, file: !1618, line: 493, type: !5340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5343 = !DISubprogram(name: "fchmod", scope: !1404, file: !1404, line: 365, type: !5344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!80, !80, !935}
!5346 = !DISubprogram(name: "lchmod", scope: !1404, file: !1404, line: 359, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5347 = !DISubprogram(name: "chmod", scope: !1404, file: !1404, line: 352, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5348 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !937, file: !937, line: 27, type: !4306, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5349)
!5349 = !{!5350, !5351, !5352, !5353}
!5350 = !DILocalVariable(name: "ptr", arg: 1, scope: !5348, file: !937, line: 27, type: !138)
!5351 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5348, file: !937, line: 27, type: !140)
!5352 = !DILocalVariable(name: "size", arg: 3, scope: !5348, file: !937, line: 27, type: !140)
!5353 = !DILocalVariable(name: "nbytes", scope: !5348, file: !937, line: 29, type: !140)
!5354 = !DILocation(line: 0, scope: !5348)
!5355 = !DILocation(line: 30, column: 7, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5348, file: !937, line: 30, column: 7)
!5357 = !DILocation(line: 30, column: 7, scope: !5348)
!5358 = !DILocation(line: 32, column: 7, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5356, file: !937, line: 31, column: 5)
!5360 = !DILocation(line: 32, column: 13, scope: !5359)
!5361 = !DILocation(line: 33, column: 7, scope: !5359)
!5362 = !DILocalVariable(name: "ptr", arg: 1, scope: !5363, file: !4398, line: 2057, type: !138)
!5363 = distinct !DISubprogram(name: "rpl_realloc", scope: !4398, file: !4398, line: 2057, type: !4390, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5364)
!5364 = !{!5362, !5365}
!5365 = !DILocalVariable(name: "size", arg: 2, scope: !5363, file: !4398, line: 2057, type: !140)
!5366 = !DILocation(line: 0, scope: !5363, inlinedAt: !5367)
!5367 = distinct !DILocation(line: 37, column: 10, scope: !5348)
!5368 = !DILocation(line: 2059, column: 24, scope: !5363, inlinedAt: !5367)
!5369 = !DILocation(line: 2059, column: 10, scope: !5363, inlinedAt: !5367)
!5370 = !DILocation(line: 37, column: 3, scope: !5348)
!5371 = !DILocation(line: 38, column: 1, scope: !5348)
!5372 = distinct !DISubprogram(name: "fd_safer", scope: !939, file: !939, line: 37, type: !1643, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !5373)
!5373 = !{!5374, !5375, !5378}
!5374 = !DILocalVariable(name: "fd", arg: 1, scope: !5372, file: !939, line: 37, type: !80)
!5375 = !DILocalVariable(name: "f", scope: !5376, file: !939, line: 41, type: !80)
!5376 = distinct !DILexicalBlock(scope: !5377, file: !939, line: 40, column: 5)
!5377 = distinct !DILexicalBlock(scope: !5372, file: !939, line: 39, column: 7)
!5378 = !DILocalVariable(name: "saved_errno", scope: !5376, file: !939, line: 42, type: !80)
!5379 = !DILocation(line: 0, scope: !5372)
!5380 = !DILocation(line: 39, column: 26, scope: !5377)
!5381 = !DILocation(line: 41, column: 15, scope: !5376)
!5382 = !DILocation(line: 0, scope: !5376)
!5383 = !DILocation(line: 42, column: 25, scope: !5376)
!5384 = !DILocation(line: 43, column: 7, scope: !5376)
!5385 = !DILocation(line: 44, column: 13, scope: !5376)
!5386 = !DILocation(line: 46, column: 5, scope: !5376)
!5387 = !DILocation(line: 48, column: 3, scope: !5372)
!5388 = distinct !DISubprogram(name: "hard_locale", scope: !797, file: !797, line: 28, type: !5389, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !5391)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!191, !80}
!5391 = !{!5392, !5393}
!5392 = !DILocalVariable(name: "category", arg: 1, scope: !5388, file: !797, line: 28, type: !80)
!5393 = !DILocalVariable(name: "locale", scope: !5388, file: !797, line: 30, type: !5394)
!5394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5395)
!5395 = !{!5396}
!5396 = !DISubrange(count: 257)
!5397 = distinct !DIAssignID()
!5398 = !DILocation(line: 0, scope: !5388)
!5399 = !DILocation(line: 30, column: 3, scope: !5388)
!5400 = !DILocation(line: 32, column: 7, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5388, file: !797, line: 32, column: 7)
!5402 = !DILocation(line: 32, column: 7, scope: !5388)
!5403 = !DILocalVariable(name: "__s1", arg: 1, scope: !5404, file: !1051, line: 1359, type: !143)
!5404 = distinct !DISubprogram(name: "streq", scope: !1051, file: !1051, line: 1359, type: !1052, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !5405)
!5405 = !{!5403, !5406}
!5406 = !DILocalVariable(name: "__s2", arg: 2, scope: !5404, file: !1051, line: 1359, type: !143)
!5407 = !DILocation(line: 0, scope: !5404, inlinedAt: !5408)
!5408 = distinct !DILocation(line: 35, column: 9, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5388, file: !797, line: 35, column: 7)
!5410 = !DILocation(line: 1361, column: 11, scope: !5404, inlinedAt: !5408)
!5411 = !DILocation(line: 35, column: 29, scope: !5409)
!5412 = !DILocation(line: 0, scope: !5404, inlinedAt: !5413)
!5413 = distinct !DILocation(line: 35, column: 32, scope: !5409)
!5414 = !DILocation(line: 1361, column: 11, scope: !5404, inlinedAt: !5413)
!5415 = !DILocation(line: 1361, column: 10, scope: !5404, inlinedAt: !5413)
!5416 = !DILocation(line: 35, column: 7, scope: !5388)
!5417 = !DILocation(line: 46, column: 3, scope: !5388)
!5418 = !DILocation(line: 47, column: 1, scope: !5388)
!5419 = distinct !DISubprogram(name: "setlocale_null_r", scope: !945, file: !945, line: 154, type: !5420, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!80, !80, !137, !140}
!5422 = !{!5423, !5424, !5425}
!5423 = !DILocalVariable(name: "category", arg: 1, scope: !5419, file: !945, line: 154, type: !80)
!5424 = !DILocalVariable(name: "buf", arg: 2, scope: !5419, file: !945, line: 154, type: !137)
!5425 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5419, file: !945, line: 154, type: !140)
!5426 = !DILocation(line: 0, scope: !5419)
!5427 = !DILocation(line: 159, column: 10, scope: !5419)
!5428 = !DILocation(line: 159, column: 3, scope: !5419)
!5429 = distinct !DISubprogram(name: "setlocale_null", scope: !945, file: !945, line: 186, type: !5430, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5432)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!143, !80}
!5432 = !{!5433}
!5433 = !DILocalVariable(name: "category", arg: 1, scope: !5429, file: !945, line: 186, type: !80)
!5434 = !DILocation(line: 0, scope: !5429)
!5435 = !DILocation(line: 189, column: 10, scope: !5429)
!5436 = !DILocation(line: 189, column: 3, scope: !5429)
!5437 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !947, file: !947, line: 35, type: !5430, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !5438)
!5438 = !{!5439, !5440}
!5439 = !DILocalVariable(name: "category", arg: 1, scope: !5437, file: !947, line: 35, type: !80)
!5440 = !DILocalVariable(name: "result", scope: !5437, file: !947, line: 37, type: !143)
!5441 = !DILocation(line: 0, scope: !5437)
!5442 = !DILocation(line: 37, column: 24, scope: !5437)
!5443 = !DILocation(line: 62, column: 3, scope: !5437)
!5444 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !947, file: !947, line: 66, type: !5420, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !5445)
!5445 = !{!5446, !5447, !5448, !5449, !5450}
!5446 = !DILocalVariable(name: "category", arg: 1, scope: !5444, file: !947, line: 66, type: !80)
!5447 = !DILocalVariable(name: "buf", arg: 2, scope: !5444, file: !947, line: 66, type: !137)
!5448 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5444, file: !947, line: 66, type: !140)
!5449 = !DILocalVariable(name: "result", scope: !5444, file: !947, line: 111, type: !143)
!5450 = !DILocalVariable(name: "length", scope: !5451, file: !947, line: 125, type: !140)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !947, line: 124, column: 5)
!5452 = distinct !DILexicalBlock(scope: !5444, file: !947, line: 113, column: 7)
!5453 = !DILocation(line: 0, scope: !5444)
!5454 = !DILocation(line: 0, scope: !5437, inlinedAt: !5455)
!5455 = distinct !DILocation(line: 111, column: 24, scope: !5444)
!5456 = !DILocation(line: 37, column: 24, scope: !5437, inlinedAt: !5455)
!5457 = !DILocation(line: 113, column: 14, scope: !5452)
!5458 = !DILocation(line: 113, column: 7, scope: !5444)
!5459 = !DILocation(line: 116, column: 19, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5461, file: !947, line: 116, column: 11)
!5461 = distinct !DILexicalBlock(scope: !5452, file: !947, line: 114, column: 5)
!5462 = !DILocation(line: 116, column: 11, scope: !5461)
!5463 = !DILocation(line: 120, column: 16, scope: !5460)
!5464 = !DILocation(line: 120, column: 9, scope: !5460)
!5465 = !DILocation(line: 125, column: 23, scope: !5451)
!5466 = !DILocation(line: 0, scope: !5451)
!5467 = !DILocation(line: 126, column: 18, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5451, file: !947, line: 126, column: 11)
!5469 = !DILocation(line: 126, column: 11, scope: !5451)
!5470 = !DILocation(line: 128, column: 39, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5468, file: !947, line: 127, column: 9)
!5472 = !DILocalVariable(name: "__dest", arg: 1, scope: !5473, file: !2430, line: 26, type: !4669)
!5473 = distinct !DISubprogram(name: "memcpy", scope: !2430, file: !2430, line: 26, type: !4667, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !5474)
!5474 = !{!5472, !5475, !5476}
!5475 = !DILocalVariable(name: "__src", arg: 2, scope: !5473, file: !2430, line: 26, type: !1185)
!5476 = !DILocalVariable(name: "__len", arg: 3, scope: !5473, file: !2430, line: 26, type: !140)
!5477 = !DILocation(line: 0, scope: !5473, inlinedAt: !5478)
!5478 = distinct !DILocation(line: 128, column: 11, scope: !5471)
!5479 = !DILocation(line: 29, column: 10, scope: !5473, inlinedAt: !5478)
!5480 = !DILocation(line: 129, column: 11, scope: !5471)
!5481 = !DILocation(line: 133, column: 23, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5483, file: !947, line: 133, column: 15)
!5483 = distinct !DILexicalBlock(scope: !5468, file: !947, line: 132, column: 9)
!5484 = !DILocation(line: 133, column: 15, scope: !5483)
!5485 = !DILocation(line: 138, column: 44, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5482, file: !947, line: 134, column: 13)
!5487 = !DILocation(line: 0, scope: !5473, inlinedAt: !5488)
!5488 = distinct !DILocation(line: 138, column: 15, scope: !5486)
!5489 = !DILocation(line: 29, column: 10, scope: !5473, inlinedAt: !5488)
!5490 = !DILocation(line: 139, column: 15, scope: !5486)
!5491 = !DILocation(line: 139, column: 32, scope: !5486)
!5492 = !DILocation(line: 140, column: 13, scope: !5486)
!5493 = !DILocation(line: 0, scope: !5452)
!5494 = !DILocation(line: 145, column: 1, scope: !5444)
!5495 = distinct !DISubprogram(name: "dup_safer", scope: !949, file: !949, line: 31, type: !1643, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !5496)
!5496 = !{!5497}
!5497 = !DILocalVariable(name: "fd", arg: 1, scope: !5495, file: !949, line: 31, type: !80)
!5498 = !DILocation(line: 0, scope: !5495)
!5499 = !DILocation(line: 33, column: 10, scope: !5495)
!5500 = !DILocation(line: 33, column: 3, scope: !5495)
!5501 = distinct !DISubprogram(name: "rpl_fcntl", scope: !801, file: !801, line: 202, type: !1756, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !5502)
!5502 = !{!5503, !5504, !5505, !5515, !5516, !5519, !5521, !5525}
!5503 = !DILocalVariable(name: "fd", arg: 1, scope: !5501, file: !801, line: 202, type: !80)
!5504 = !DILocalVariable(name: "action", arg: 2, scope: !5501, file: !801, line: 202, type: !80)
!5505 = !DILocalVariable(name: "arg", scope: !5501, file: !801, line: 208, type: !5506)
!5506 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4907, line: 12, baseType: !5507)
!5507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !801, baseType: !5508)
!5508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5509, size: 192, elements: !60)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5510)
!5510 = !{!5511, !5512, !5513, !5514}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5509, file: !801, line: 208, baseType: !99, size: 32)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5509, file: !801, line: 208, baseType: !99, size: 32, offset: 32)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5509, file: !801, line: 208, baseType: !138, size: 64, offset: 64)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5509, file: !801, line: 208, baseType: !138, size: 64, offset: 128)
!5515 = !DILocalVariable(name: "result", scope: !5501, file: !801, line: 211, type: !80)
!5516 = !DILocalVariable(name: "target", scope: !5517, file: !801, line: 216, type: !80)
!5517 = distinct !DILexicalBlock(scope: !5518, file: !801, line: 215, column: 7)
!5518 = distinct !DILexicalBlock(scope: !5501, file: !801, line: 213, column: 5)
!5519 = !DILocalVariable(name: "target", scope: !5520, file: !801, line: 223, type: !80)
!5520 = distinct !DILexicalBlock(scope: !5518, file: !801, line: 222, column: 7)
!5521 = !DILocalVariable(name: "x", scope: !5522, file: !801, line: 418, type: !80)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !801, line: 417, column: 13)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !801, line: 261, column: 11)
!5524 = distinct !DILexicalBlock(scope: !5518, file: !801, line: 258, column: 7)
!5525 = !DILocalVariable(name: "p", scope: !5526, file: !801, line: 426, type: !138)
!5526 = distinct !DILexicalBlock(scope: !5523, file: !801, line: 425, column: 13)
!5527 = distinct !DIAssignID()
!5528 = !DILocation(line: 0, scope: !5501)
!5529 = !DILocation(line: 208, column: 3, scope: !5501)
!5530 = !DILocation(line: 209, column: 3, scope: !5501)
!5531 = !DILocation(line: 212, column: 3, scope: !5501)
!5532 = !DILocation(line: 216, column: 22, scope: !5517)
!5533 = distinct !DIAssignID()
!5534 = distinct !DIAssignID()
!5535 = !DILocation(line: 0, scope: !5517)
!5536 = !DILocalVariable(name: "fd", arg: 1, scope: !5537, file: !801, line: 444, type: !80)
!5537 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !801, file: !801, line: 444, type: !802, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !5538)
!5538 = !{!5536, !5539, !5540}
!5539 = !DILocalVariable(name: "target", arg: 2, scope: !5537, file: !801, line: 444, type: !80)
!5540 = !DILocalVariable(name: "result", scope: !5537, file: !801, line: 446, type: !80)
!5541 = !DILocation(line: 0, scope: !5537, inlinedAt: !5542)
!5542 = distinct !DILocation(line: 217, column: 18, scope: !5517)
!5543 = !DILocation(line: 479, column: 12, scope: !5537, inlinedAt: !5542)
!5544 = !DILocation(line: 223, column: 22, scope: !5520)
!5545 = distinct !DIAssignID()
!5546 = distinct !DIAssignID()
!5547 = !DILocation(line: 0, scope: !5520)
!5548 = !DILocation(line: 0, scope: !800, inlinedAt: !5549)
!5549 = distinct !DILocation(line: 224, column: 18, scope: !5520)
!5550 = !DILocation(line: 507, column: 12, scope: !5551, inlinedAt: !5549)
!5551 = distinct !DILexicalBlock(scope: !800, file: !801, line: 507, column: 7)
!5552 = !DILocation(line: 507, column: 9, scope: !5551, inlinedAt: !5549)
!5553 = !DILocation(line: 507, column: 7, scope: !800, inlinedAt: !5549)
!5554 = !DILocation(line: 509, column: 16, scope: !5555, inlinedAt: !5549)
!5555 = distinct !DILexicalBlock(scope: !5551, file: !801, line: 508, column: 5)
!5556 = !DILocation(line: 510, column: 13, scope: !5557, inlinedAt: !5549)
!5557 = distinct !DILexicalBlock(scope: !5555, file: !801, line: 510, column: 11)
!5558 = !DILocation(line: 510, column: 23, scope: !5557, inlinedAt: !5549)
!5559 = !DILocation(line: 510, column: 26, scope: !5557, inlinedAt: !5549)
!5560 = !DILocation(line: 510, column: 32, scope: !5557, inlinedAt: !5549)
!5561 = !DILocation(line: 510, column: 11, scope: !5555, inlinedAt: !5549)
!5562 = !DILocation(line: 512, column: 30, scope: !5563, inlinedAt: !5549)
!5563 = distinct !DILexicalBlock(scope: !5557, file: !801, line: 511, column: 9)
!5564 = !DILocation(line: 528, column: 19, scope: !812, inlinedAt: !5549)
!5565 = !DILocation(line: 0, scope: !5537, inlinedAt: !5566)
!5566 = distinct !DILocation(line: 520, column: 20, scope: !5567, inlinedAt: !5549)
!5567 = distinct !DILexicalBlock(scope: !5557, file: !801, line: 519, column: 9)
!5568 = !DILocation(line: 479, column: 12, scope: !5537, inlinedAt: !5566)
!5569 = !DILocation(line: 521, column: 22, scope: !5570, inlinedAt: !5549)
!5570 = distinct !DILexicalBlock(scope: !5567, file: !801, line: 521, column: 15)
!5571 = !DILocation(line: 521, column: 15, scope: !5567, inlinedAt: !5549)
!5572 = !DILocation(line: 522, column: 32, scope: !5570, inlinedAt: !5549)
!5573 = !DILocation(line: 522, column: 13, scope: !5570, inlinedAt: !5549)
!5574 = !DILocation(line: 0, scope: !5537, inlinedAt: !5575)
!5575 = distinct !DILocation(line: 527, column: 14, scope: !5551, inlinedAt: !5549)
!5576 = !DILocation(line: 479, column: 12, scope: !5537, inlinedAt: !5575)
!5577 = !DILocation(line: 0, scope: !5551, inlinedAt: !5549)
!5578 = !DILocation(line: 528, column: 9, scope: !812, inlinedAt: !5549)
!5579 = !DILocation(line: 530, column: 19, scope: !811, inlinedAt: !5549)
!5580 = !DILocation(line: 0, scope: !811, inlinedAt: !5549)
!5581 = !DILocation(line: 531, column: 17, scope: !815, inlinedAt: !5549)
!5582 = !DILocation(line: 531, column: 21, scope: !815, inlinedAt: !5549)
!5583 = !DILocation(line: 531, column: 54, scope: !815, inlinedAt: !5549)
!5584 = !DILocation(line: 531, column: 24, scope: !815, inlinedAt: !5549)
!5585 = !DILocation(line: 531, column: 68, scope: !815, inlinedAt: !5549)
!5586 = !DILocation(line: 531, column: 11, scope: !811, inlinedAt: !5549)
!5587 = !DILocation(line: 533, column: 29, scope: !814, inlinedAt: !5549)
!5588 = !DILocation(line: 0, scope: !814, inlinedAt: !5549)
!5589 = !DILocation(line: 534, column: 11, scope: !814, inlinedAt: !5549)
!5590 = !DILocation(line: 535, column: 17, scope: !814, inlinedAt: !5549)
!5591 = !DILocation(line: 537, column: 9, scope: !814, inlinedAt: !5549)
!5592 = !DILocation(line: 329, column: 22, scope: !5523)
!5593 = !DILocation(line: 330, column: 13, scope: !5523)
!5594 = !DILocation(line: 418, column: 23, scope: !5522)
!5595 = distinct !DIAssignID()
!5596 = distinct !DIAssignID()
!5597 = !DILocation(line: 0, scope: !5522)
!5598 = !DILocation(line: 419, column: 24, scope: !5522)
!5599 = !DILocation(line: 421, column: 13, scope: !5523)
!5600 = !DILocation(line: 426, column: 25, scope: !5526)
!5601 = distinct !DIAssignID()
!5602 = distinct !DIAssignID()
!5603 = !DILocation(line: 0, scope: !5526)
!5604 = !DILocation(line: 427, column: 24, scope: !5526)
!5605 = !DILocation(line: 429, column: 13, scope: !5523)
!5606 = !DILocation(line: 0, scope: !5518)
!5607 = !DILocation(line: 438, column: 3, scope: !5501)
!5608 = !DILocation(line: 441, column: 1, scope: !5501)
!5609 = !DILocation(line: 440, column: 3, scope: !5501)
