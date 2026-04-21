; ModuleID = 'src/mkdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mkdir_options = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
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
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.58, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 112 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.62, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.63, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !74
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !431
@.str.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !423
@.str.1.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !425
@.str.2.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !427
@.str.3.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !429
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !433
@stderr = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !439
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !475
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !441
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !465
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !467
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !469
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !471
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !473
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !477
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !479
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !481
@.str.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !486
@.str.1.51 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1, !dbg !489
@.str.2.52 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !491
@.str.3.53 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1, !dbg !493
@.str.4.54 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1, !dbg !498
@.str.5.55 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1, !dbg !503
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !505
@.str.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !511
@.str.1.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !513
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !515
@.str.68 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !546
@.str.1.69 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !549
@.str.2.70 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !551
@.str.3.71 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !556
@.str.4.72 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !558
@.str.5.73 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !560
@.str.6.74 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !562
@.str.7.75 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !564
@.str.8.76 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !566
@.str.9.77 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !568
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.68, ptr @.str.1.69, ptr @.str.2.70, ptr @.str.3.71, ptr @.str.4.72, ptr @.str.5.73, ptr @.str.6.74, ptr @.str.7.75, ptr @.str.8.76, ptr @.str.9.77, ptr null], align 8, !dbg !570
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !583
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !597
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !635
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !642
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !599
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !644
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !587
@.str.10.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !604
@.str.11.78 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !606
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !608
@.str.13.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !610
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !612
@.str.93 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1, !dbg !650
@.str.1.92 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1, !dbg !656
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1, !dbg !658
@.str.2.91 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !663
@.str.3.94 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1, !dbg !665
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1, !dbg !670
@.str.4.95 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1, !dbg !675
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1, !dbg !680
@.str.5.90 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !683
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1, !dbg !685
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !690
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !693
@.str.2.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !695
@.str.3.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !697
@.str.4.102 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !699
@.str.5.103 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !701
@.str.6.104 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !706
@.str.7.105 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !711
@.str.8.106 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !713
@.str.9.107 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !718
@.str.10.108 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !720
@.str.11.109 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !722
@.str.12.110 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !724
@.str.13.111 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !726
@.str.14.112 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !731
@.str.15.113 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !736
@.str.16.114 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !741
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !744
@.str.18.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !746
@.str.19.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !748
@.str.20.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !750
@.str.21.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !752
@.str.22.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !754
@.str.23.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !756
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !761
@exit_failure = dso_local global i32 1, align 4, !dbg !769
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !775
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !778
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !780
@.str.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !782
@internal_state = internal global %struct.savewd zeroinitializer, align 4, !dbg !785
@.str.166 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !800
@.str.1.167 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !803
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !805

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !964 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !968, metadata !DIExpression()), !dbg !969
  %2 = icmp eq i32 %0, 0, !dbg !970
  br i1 %2, label %8, label %3, !dbg !972

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !973, !tbaa !975
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !973
  %6 = load ptr, ptr @program_name, align 8, !dbg !973, !tbaa !975
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !973
  br label %39, !dbg !973

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !979
  %10 = load ptr, ptr @program_name, align 8, !dbg !979, !tbaa !975
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !979
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !981
  %13 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !975
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !981
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !982
  %16 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !975
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !982
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !985
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !985
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !986
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !986
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !987
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !987
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !988
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !988
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !989
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !989
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !990
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !990
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !991
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !992, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata !1011, metadata !1005, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression()), !dbg !1009
  tail call void @emit_bug_reporting_address() #40, !dbg !1012
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1013
  call void @llvm.dbg.value(metadata ptr %25, metadata !1007, metadata !DIExpression()), !dbg !1009
  %26 = icmp eq ptr %25, null, !dbg !1014
  br i1 %26, label %34, label %27, !dbg !1016

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #41, !dbg !1017
  %29 = icmp eq i32 %28, 0, !dbg !1017
  br i1 %29, label %34, label %30, !dbg !1018

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !1019
  %32 = load ptr, ptr @stdout, align 8, !dbg !1019, !tbaa !975
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1019
  br label %34, !dbg !1021

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1004, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1008, metadata !DIExpression()), !dbg !1009
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #40, !dbg !1022
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #40, !dbg !1022
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #40, !dbg !1023
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #40, !dbg !1023
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1024
  unreachable, !dbg !1024
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1025 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1029 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1035 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1038 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !181 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !185, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !186, metadata !DIExpression()), !dbg !1041
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1042, !tbaa !1043
  %3 = icmp eq i32 %2, -1, !dbg !1045
  br i1 %3, label %4, label %16, !dbg !1046

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #40, !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !187, metadata !DIExpression()), !dbg !1048
  %6 = icmp eq ptr %5, null, !dbg !1049
  br i1 %6, label %14, label %7, !dbg !1050

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1051, !tbaa !1052
  %9 = icmp eq i8 %8, 0, !dbg !1051
  br i1 %9, label %14, label %10, !dbg !1053

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1054, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !1060, metadata !DIExpression()), !dbg !1061
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #41, !dbg !1063
  %12 = icmp eq i32 %11, 0, !dbg !1064
  %13 = zext i1 %12 to i32, !dbg !1053
  br label %14, !dbg !1053

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1065, !tbaa !1043
  br label %16, !dbg !1066

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1067
  %18 = icmp eq i32 %17, 0, !dbg !1067
  br i1 %18, label %22, label %19, !dbg !1069

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1070, !tbaa !975
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1070
  br label %121, !dbg !1072

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !190, metadata !DIExpression()), !dbg !1041
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #41, !dbg !1073
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1074
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1041
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1075
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !193, metadata !DIExpression()), !dbg !1041
  %26 = icmp eq ptr %25, null, !dbg !1076
  br i1 %26, label %53, label %27, !dbg !1077

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1078
  br i1 %28, label %53, label %29, !dbg !1079

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !194, metadata !DIExpression()), !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !1080
  %30 = icmp ult ptr %24, %25, !dbg !1081
  br i1 %30, label %31, label %53, !dbg !1082

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1041
  %33 = load ptr, ptr %32, align 8, !tbaa !975
  br label %34, !dbg !1082

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !194, metadata !DIExpression()), !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !198, metadata !DIExpression()), !dbg !1080
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1083
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !194, metadata !DIExpression()), !dbg !1080
  %38 = load i8, ptr %35, align 1, !dbg !1083, !tbaa !1052
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1083
  %41 = load i16, ptr %40, align 2, !dbg !1083, !tbaa !1084
  %42 = freeze i16 %41, !dbg !1086
  %43 = lshr i16 %42, 13, !dbg !1086
  %44 = and i16 %43, 1, !dbg !1086
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1087
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !198, metadata !DIExpression()), !dbg !1080
  %47 = icmp ult ptr %37, %25, !dbg !1081
  %48 = icmp ult i64 %46, 2, !dbg !1088
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1088
  br i1 %49, label %34, label %50, !dbg !1082, !llvm.loop !1089

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1087
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1091
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1093
  br label %53, !dbg !1093

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1041
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !190, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !193, metadata !DIExpression()), !dbg !1041
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.26) #41, !dbg !1094
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !199, metadata !DIExpression()), !dbg !1041
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1095
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !200, metadata !DIExpression()), !dbg !1041
  br label %58, !dbg !1096

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1041
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !190, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !200, metadata !DIExpression()), !dbg !1041
  %61 = load i8, ptr %59, align 1, !dbg !1097, !tbaa !1052
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1098

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1099
  %64 = load i8, ptr %63, align 1, !dbg !1102, !tbaa !1052
  %65 = icmp ne i8 %64, 45, !dbg !1103
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1104
  br label %67, !dbg !1104

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !190, metadata !DIExpression()), !dbg !1041
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !1105
  %70 = load ptr, ptr %69, align 8, !dbg !1105, !tbaa !975
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1105
  %73 = load i16, ptr %72, align 2, !dbg !1105, !tbaa !1084
  %74 = and i16 %73, 8192, !dbg !1105
  %75 = icmp eq i16 %74, 0, !dbg !1105
  br i1 %75, label %89, label %76, !dbg !1107

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1108
  br i1 %77, label %91, label %78, !dbg !1111

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1112
  %80 = load i8, ptr %79, align 1, !dbg !1112, !tbaa !1052
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1112
  %83 = load i16, ptr %82, align 2, !dbg !1112, !tbaa !1084
  %84 = and i16 %83, 8192, !dbg !1112
  %85 = icmp eq i16 %84, 0, !dbg !1112
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1113
  br i1 %88, label %89, label %91, !dbg !1113

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1114
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !200, metadata !DIExpression()), !dbg !1041
  br label %58, !dbg !1096, !llvm.loop !1115

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1041
  %92 = ptrtoint ptr %24 to i64, !dbg !1117
  %93 = load ptr, ptr @stdout, align 8, !dbg !1117, !tbaa !975
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1117
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1054, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata !1011, metadata !1060, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !256, metadata !DIExpression()), !dbg !1041
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #41, !dbg !1138
  %96 = icmp eq i32 %95, 0, !dbg !1138
  br i1 %96, label %100, label %97, !dbg !1140

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #41, !dbg !1141
  %99 = icmp eq i32 %98, 0, !dbg !1141
  br i1 %99, label %100, label %103, !dbg !1142

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1143
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !1143
  br label %106, !dbg !1145

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1146
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !1146
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1148, !tbaa !975
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %107), !dbg !1148
  %109 = load ptr, ptr @stdout, align 8, !dbg !1149, !tbaa !975
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %109), !dbg !1149
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1150
  %112 = sub i64 %111, %92, !dbg !1150
  %113 = load ptr, ptr @stdout, align 8, !dbg !1150, !tbaa !975
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1150
  %115 = load ptr, ptr @stdout, align 8, !dbg !1151, !tbaa !975
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %115), !dbg !1151
  %117 = load ptr, ptr @stdout, align 8, !dbg !1152, !tbaa !975
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %117), !dbg !1152
  %119 = load ptr, ptr @stdout, align 8, !dbg !1153, !tbaa !975
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1153
  br label %121, !dbg !1154

121:                                              ; preds = %106, %19
  ret void, !dbg !1154
}

; Function Attrs: nounwind
declare !dbg !1155 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1159 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1163 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1165 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1168 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1171 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1174 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1177 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1183 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1184 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1190 {
  %3 = alloca %struct.mkdir_options, align 8, !DIAssignID !1228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1200, metadata !DIExpression(), metadata !1228, metadata ptr %3, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1195, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1196, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1197, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #40, !dbg !1230
  call void @llvm.dbg.assign(metadata ptr null, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1231, metadata ptr %3, metadata !DIExpression()), !dbg !1229
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 3, !dbg !1232
  store i32 511, ptr %4, align 8, !dbg !1233, !tbaa !1234, !DIAssignID !1236
  call void @llvm.dbg.assign(metadata i32 511, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32), metadata !1236, metadata ptr %4, metadata !DIExpression()), !dbg !1229
  %5 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 4, !dbg !1237
  call void @llvm.dbg.assign(metadata i32 0, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32), metadata !1238, metadata ptr %5, metadata !DIExpression()), !dbg !1229
  %6 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 6, !dbg !1239
  call void @llvm.dbg.assign(metadata ptr null, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64), metadata !1238, metadata ptr %6, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.assign(metadata ptr null, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !1238, metadata ptr %3, metadata !DIExpression(DW_OP_plus_uconst, 24)), !dbg !1229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false), !dbg !1240, !DIAssignID !1238
  %7 = load ptr, ptr %1, align 8, !dbg !1241, !tbaa !975
  tail call void @set_program_name(ptr noundef %7) #40, !dbg !1242
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #40, !dbg !1243
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #40, !dbg !1244
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #40, !dbg !1245
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1246
  br label %12, !dbg !1247

.loopexit:                                        ; preds = %22
  %.lcssa7 = phi ptr [ %18, %22 ]
  %.lcssa2 = phi ptr [ %21, %22 ]
  br label %12, !dbg !1247, !llvm.loop !1248

12:                                               ; preds = %.loopexit, %2
  %13 = phi i1 [ false, %2 ], [ true, %.loopexit ]
  %14 = phi ptr [ null, %2 ], [ @make_ancestor, %.loopexit ]
  %15 = phi ptr [ null, %2 ], [ %.lcssa7, %.loopexit ]
  %16 = phi ptr [ null, %2 ], [ %.lcssa2, %.loopexit ]
  br label %17, !dbg !1247

17:                                               ; preds = %12, %26
  %18 = phi ptr [ %15, %12 ], [ %27, %26 ]
  %19 = phi ptr [ %16, %12 ], [ %.lcssa3, %26 ]
  br label %20, !dbg !1247

20:                                               ; preds = %17, %24
  %21 = phi ptr [ %19, %17 ], [ %25, %24 ]
  br label %22, !dbg !1247

22:                                               ; preds = %33, %20
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1197, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1229
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1250
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !1198, metadata !DIExpression()), !dbg !1229
  switch i32 %23, label %39 [
    i32 -1, label %40
    i32 112, label %.loopexit
    i32 109, label %24
    i32 118, label %26
    i32 90, label %28
    i32 -2, label %34
    i32 -3, label %35
  ], !dbg !1247

24:                                               ; preds = %22
  %25 = load ptr, ptr @optarg, align 8, !dbg !1251, !tbaa !975
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1197, metadata !DIExpression()), !dbg !1229
  br label %20, !dbg !1254, !llvm.loop !1248

26:                                               ; preds = %22
  %.lcssa3 = phi ptr [ %21, %22 ]
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1255
  call void @llvm.dbg.assign(metadata ptr %27, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64), metadata !1256, metadata ptr %6, metadata !DIExpression()), !dbg !1229
  br label %17, !dbg !1257, !llvm.loop !1248

28:                                               ; preds = %22
  %29 = load ptr, ptr @optarg, align 8, !dbg !1258, !tbaa !975
  %30 = icmp eq ptr %29, null, !dbg !1258
  br i1 %30, label %33, label %31, !dbg !1262

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1263
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #40, !dbg !1263
  br label %33, !dbg !1265

33:                                               ; preds = %31, %28
  br label %22, !dbg !1229, !llvm.loop !1248

34:                                               ; preds = %22
  tail call void @usage(i32 noundef 0) #44, !dbg !1266
  unreachable, !dbg !1266

35:                                               ; preds = %22
  %36 = load ptr, ptr @stdout, align 8, !dbg !1267, !tbaa !975
  %37 = load ptr, ptr @Version, align 8, !dbg !1267, !tbaa !975
  %38 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #40, !dbg !1267
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %37, ptr noundef %38, ptr noundef null) #40, !dbg !1267
  tail call void @exit(i32 noundef 0) #42, !dbg !1267
  unreachable, !dbg !1267

39:                                               ; preds = %22
  tail call void @usage(i32 noundef 1) #44, !dbg !1268
  unreachable, !dbg !1268

40:                                               ; preds = %22
  %.lcssa14 = phi i1 [ %13, %22 ]
  %.lcssa10 = phi ptr [ %14, %22 ]
  %.lcssa6 = phi ptr [ %18, %22 ]
  %.lcssa1 = phi ptr [ %21, %22 ]
  store ptr %.lcssa6, ptr %6, align 8, !dbg !1269, !tbaa !1270, !DIAssignID !1256
  store ptr %.lcssa10, ptr %3, align 8, !dbg !1271, !tbaa !1272, !DIAssignID !1273
  %41 = load i32, ptr @optind, align 4, !dbg !1274, !tbaa !1043
  %42 = icmp eq i32 %41, %0, !dbg !1276
  br i1 %42, label %43, label %45, !dbg !1277

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1278
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %44) #40, !dbg !1278
  tail call void @usage(i32 noundef 1) #44, !dbg !1280
  unreachable, !dbg !1280

45:                                               ; preds = %40
  %46 = icmp ne ptr %.lcssa1, null
  %47 = select i1 %.lcssa14, i1 true, i1 %46, !dbg !1281
  br i1 %47, label %48, label %69, !dbg !1281

48:                                               ; preds = %45
  %49 = tail call i32 @umask(i32 noundef 0) #40, !dbg !1282
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1219, metadata !DIExpression()), !dbg !1283
  %50 = and i32 %49, -193, !dbg !1284
  %51 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 1, !dbg !1285
  store i32 %50, ptr %51, align 8, !dbg !1286, !tbaa !1287, !DIAssignID !1288
  call void @llvm.dbg.assign(metadata i32 %50, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32), metadata !1288, metadata ptr %51, metadata !DIExpression()), !dbg !1229
  br i1 %46, label %52, label %63, !dbg !1289

52:                                               ; preds = %48
  %53 = tail call noalias ptr @mode_compile(ptr noundef nonnull %.lcssa1) #40, !dbg !1290
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !1222, metadata !DIExpression()), !dbg !1291
  %54 = icmp eq ptr %53, null, !dbg !1292
  br i1 %54, label %55, label %58, !dbg !1294

55:                                               ; preds = %52
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1295
  %57 = tail call ptr @quote(ptr noundef nonnull %.lcssa1) #40, !dbg !1295
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %56, ptr noundef %57) #40, !dbg !1295
  unreachable, !dbg !1295

58:                                               ; preds = %52
  %59 = call i32 @mode_adjust(i32 noundef 511, i1 noundef true, i32 noundef %49, ptr noundef nonnull %53, ptr noundef nonnull %5) #41, !dbg !1296
  store i32 %59, ptr %4, align 8, !dbg !1297, !tbaa !1234, !DIAssignID !1298
  call void @llvm.dbg.assign(metadata i32 %59, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32), metadata !1298, metadata ptr %4, metadata !DIExpression()), !dbg !1229
  %60 = xor i32 %59, -1, !dbg !1299
  %61 = and i32 %49, %60, !dbg !1300
  %62 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1301
  store i32 %61, ptr %62, align 4, !dbg !1302, !tbaa !1303, !DIAssignID !1304
  call void @llvm.dbg.assign(metadata i32 %61, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !1304, metadata ptr %62, metadata !DIExpression()), !dbg !1229
  call void @free(ptr noundef nonnull %53) #40, !dbg !1305
  br label %65, !dbg !1306

63:                                               ; preds = %48
  store i32 511, ptr %4, align 8, !dbg !1307, !tbaa !1234, !DIAssignID !1309
  call void @llvm.dbg.assign(metadata i32 511, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32), metadata !1309, metadata ptr %4, metadata !DIExpression()), !dbg !1229
  %64 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1310
  store i32 %49, ptr %64, align 4, !dbg !1311, !tbaa !1303, !DIAssignID !1312
  call void @llvm.dbg.assign(metadata i32 %49, metadata !1200, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !1312, metadata ptr %64, metadata !DIExpression()), !dbg !1229
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %49, %63 ], [ %61, %58 ], !dbg !1313
  %67 = call i32 @umask(i32 noundef %66) #40, !dbg !1314
  %68 = load i32, ptr @optind, align 4, !dbg !1315, !tbaa !1043
  br label %69, !dbg !1316

69:                                               ; preds = %45, %65
  %70 = phi i32 [ %41, %45 ], [ %68, %65 ], !dbg !1315
  %71 = sub nsw i32 %0, %70, !dbg !1317
  %72 = sext i32 %70 to i64, !dbg !1318
  %73 = getelementptr inbounds ptr, ptr %1, i64 %72, !dbg !1318
  %74 = call i32 @savewd_process_files(i32 noundef %71, ptr noundef nonnull %73, ptr noundef nonnull @process_dir, ptr noundef nonnull %3) #40, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #40, !dbg !1320
  ret i32 %74, !dbg !1321
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !1322 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1325 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1326 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @make_ancestor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 !dbg !1329 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1331, metadata !DIExpression()), !dbg !1341
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1332, metadata !DIExpression()), !dbg !1341
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1333, metadata !DIExpression()), !dbg !1341
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1334, metadata !DIExpression()), !dbg !1341
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1342
  %5 = load ptr, ptr %4, align 8, !dbg !1342, !tbaa !1344
  %6 = icmp eq ptr %5, null, !dbg !1345
  br i1 %6, label %9, label %7, !dbg !1346

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1347, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %1, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 16384, metadata !1354, metadata !DIExpression()), !dbg !1355
  %8 = tail call ptr @__errno_location() #43, !dbg !1357
  store i32 95, ptr %8, align 4, !dbg !1358, !tbaa !1043
  br label %9, !dbg !1359

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 1, !dbg !1360
  %11 = load i32, ptr %10, align 8, !dbg !1360, !tbaa !1287
  %12 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 2, !dbg !1362
  %13 = load i32, ptr %12, align 4, !dbg !1362, !tbaa !1303
  %14 = icmp eq i32 %11, %13, !dbg !1363
  br i1 %14, label %17, label %15, !dbg !1364

15:                                               ; preds = %9
  %16 = tail call i32 @umask(i32 noundef %11) #40, !dbg !1365
  br label %17, !dbg !1365

17:                                               ; preds = %15, %9
  %18 = tail call i32 @mkdir(ptr noundef %1, i32 noundef 511) #40, !dbg !1366
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1337, metadata !DIExpression()), !dbg !1341
  %19 = load i32, ptr %10, align 8, !dbg !1367, !tbaa !1287
  %20 = load i32, ptr %12, align 4, !dbg !1368, !tbaa !1303
  %21 = icmp eq i32 %19, %20, !dbg !1369
  br i1 %21, label %26, label %22, !dbg !1370

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #43, !dbg !1371
  %24 = load i32, ptr %23, align 4, !dbg !1371, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1338, metadata !DIExpression()), !dbg !1372
  %25 = tail call i32 @umask(i32 noundef %20) #40, !dbg !1373
  store i32 %24, ptr %23, align 4, !dbg !1374, !tbaa !1043
  br label %26, !dbg !1375

26:                                               ; preds = %22, %17
  %27 = icmp eq i32 %18, 0, !dbg !1376
  br i1 %27, label %28, label %38, !dbg !1378

28:                                               ; preds = %26
  %29 = load i32, ptr %10, align 8, !dbg !1379, !tbaa !1287
  %30 = lshr i32 %29, 8, !dbg !1381
  %31 = and i32 %30, 1, !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1337, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %0, metadata !1382, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %2, metadata !1387, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %2, metadata !1388, metadata !DIExpression()), !dbg !1389
  %32 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 6, !dbg !1391
  %33 = load ptr, ptr %32, align 8, !dbg !1391, !tbaa !1270
  %34 = icmp eq ptr %33, null, !dbg !1393
  br i1 %34, label %38, label %35, !dbg !1394

35:                                               ; preds = %28
  %36 = load ptr, ptr @stdout, align 8, !dbg !1395, !tbaa !975
  %37 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #40, !dbg !1396
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %36, ptr noundef nonnull %33, ptr noundef %37) #40, !dbg !1397
  br label %38, !dbg !1397

38:                                               ; preds = %35, %28, %26
  %39 = phi i32 [ %18, %26 ], [ %31, %28 ], [ %31, %35 ], !dbg !1341
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1337, metadata !DIExpression()), !dbg !1341
  ret i32 %39, !dbg !1398
}

; Function Attrs: nounwind
declare !dbg !1399 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1405 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1409 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal noundef i32 @process_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10 !dbg !1412 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1417, metadata !DIExpression()), !dbg !1422
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1418, metadata !DIExpression()), !dbg !1422
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1419, metadata !DIExpression()), !dbg !1422
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1420, metadata !DIExpression()), !dbg !1422
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1423
  %5 = load ptr, ptr %4, align 8, !dbg !1423, !tbaa !1344
  %6 = icmp ne ptr %5, null, !dbg !1425
  %7 = load ptr, ptr %2, align 8, !dbg !1426, !tbaa !1272
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false, !dbg !1427
  br i1 %9, label %10, label %12, !dbg !1427

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1347, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata ptr %0, metadata !1353, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i32 16384, metadata !1354, metadata !DIExpression()), !dbg !1428
  %11 = tail call ptr @__errno_location() #43, !dbg !1432
  store i32 95, ptr %11, align 4, !dbg !1433, !tbaa !1043
  br label %12, !dbg !1434

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 3, !dbg !1435
  %14 = load i32, ptr %13, align 8, !dbg !1435, !tbaa !1234
  %15 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 4, !dbg !1436
  %16 = load i32, ptr %15, align 4, !dbg !1436, !tbaa !1437
  %17 = tail call i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %2, i32 noundef %14, ptr noundef nonnull @announce_mkdir, i32 noundef %16, i32 noundef -1, i32 noundef -1, i1 noundef true) #40, !dbg !1438
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1421, metadata !DIExpression()), !dbg !1422
  br i1 %17, label %18, label %26, !dbg !1439

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !1441, !tbaa !1344
  %20 = icmp eq ptr %19, null, !dbg !1442
  br i1 %20, label %26, label %21, !dbg !1443

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8, !dbg !1444, !tbaa !1272
  %23 = icmp eq ptr %22, null, !dbg !1445
  br i1 %23, label %26, label %24, !dbg !1446

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata ptr %19, metadata !1447, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr poison, metadata !1452, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i1 false, metadata !1453, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1454
  %25 = tail call ptr @__errno_location() #43, !dbg !1458
  store i32 95, ptr %25, align 4, !dbg !1459, !tbaa !1043
  br label %26, !dbg !1460

26:                                               ; preds = %24, %21, %18, %12
  %27 = xor i1 %17, true, !dbg !1438
  %28 = zext i1 %27 to i32, !dbg !1438
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1421, metadata !DIExpression()), !dbg !1422
  ret i32 %28, !dbg !1461
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1462 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @announce_mkdir(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !dbg !1383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1382, metadata !DIExpression()), !dbg !1466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1387, metadata !DIExpression()), !dbg !1466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1388, metadata !DIExpression()), !dbg !1466
  %3 = getelementptr inbounds %struct.mkdir_options, ptr %1, i64 0, i32 6, !dbg !1467
  %4 = load ptr, ptr %3, align 8, !dbg !1467, !tbaa !1270
  %5 = icmp eq ptr %4, null, !dbg !1468
  br i1 %5, label %9, label %6, !dbg !1469

6:                                                ; preds = %2
  %7 = load ptr, ptr @stdout, align 8, !dbg !1470, !tbaa !975
  %8 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #40, !dbg !1471
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %7, ptr noundef nonnull %4, ptr noundef %8) #40, !dbg !1472
  br label %9, !dbg !1472

9:                                                ; preds = %6, %2
  ret void, !dbg !1473
}

; Function Attrs: nofree nounwind
declare !dbg !1474 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1477 {
  %3 = alloca %struct.__va_list, align 8
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1528
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1517, metadata !DIExpression(), metadata !1528, metadata ptr %4, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1515, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1516, metadata !DIExpression()), !dbg !1529
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1530
  %5 = load ptr, ptr @program_name, align 8, !dbg !1531, !tbaa !975
  %6 = tail call i32 @fputs_unlocked(ptr noundef %5, ptr noundef nonnull %0), !dbg !1531
  %7 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.20, ptr noundef nonnull %0), !dbg !1532
  call void @llvm.va_start(ptr nonnull %4), !dbg !1533
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !1534, !noalias !1544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1548
  call void @llvm.dbg.value(metadata ptr %0, metadata !1540, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata ptr %1, metadata !1541, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata ptr poison, metadata !1542, metadata !DIExpression(DW_OP_deref)), !dbg !1549
  %8 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #40, !dbg !1534
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !1534, !noalias !1544
  call void @llvm.va_end(ptr nonnull %4), !dbg !1550
  call void @llvm.dbg.value(metadata i32 10, metadata !1551, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata ptr %0, metadata !1557, metadata !DIExpression()), !dbg !1558
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1560
  %10 = load ptr, ptr %9, align 8, !dbg !1560, !tbaa !1561
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1560
  %12 = load ptr, ptr %11, align 8, !dbg !1560, !tbaa !1564
  %13 = icmp ult ptr %10, %12, !dbg !1560
  br i1 %13, label %16, label %14, !dbg !1560, !prof !1565

14:                                               ; preds = %2
  %15 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #40, !dbg !1560
  br label %18, !dbg !1560

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1560
  store ptr %17, ptr %9, align 8, !dbg !1560, !tbaa !1561
  store i8 10, ptr %10, align 1, !dbg !1560, !tbaa !1052
  br label %18, !dbg !1560

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1566
  ret void, !dbg !1566
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare !dbg !1567 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

declare !dbg !1570 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1573 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1575, metadata !DIExpression()), !dbg !1576
  store ptr %0, ptr @file_name, align 8, !dbg !1577, !tbaa !975
  ret void, !dbg !1578
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1579 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1583, metadata !DIExpression()), !dbg !1584
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1585, !tbaa !1586
  ret void, !dbg !1588
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1589 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1594, !tbaa !975
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1595
  %3 = icmp eq i32 %2, 0, !dbg !1596
  br i1 %3, label %22, label %4, !dbg !1597

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1598, !tbaa !1586, !range !1599, !noundef !1011
  %6 = icmp eq i8 %5, 0, !dbg !1598
  br i1 %6, label %11, label %7, !dbg !1600

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1601
  %9 = load i32, ptr %8, align 4, !dbg !1601, !tbaa !1043
  %10 = icmp eq i32 %9, 32, !dbg !1602
  br i1 %10, label %22, label %11, !dbg !1603

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1.31, i32 noundef 5) #40, !dbg !1604
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1591, metadata !DIExpression()), !dbg !1605
  %13 = load ptr, ptr @file_name, align 8, !dbg !1606, !tbaa !975
  %14 = icmp eq ptr %13, null, !dbg !1606
  %15 = tail call ptr @__errno_location() #43, !dbg !1608
  %16 = load i32, ptr %15, align 4, !dbg !1608, !tbaa !1043
  br i1 %14, label %19, label %17, !dbg !1609

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1610
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.32, ptr noundef %18, ptr noundef %12) #40, !dbg !1610
  br label %20, !dbg !1610

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.33, ptr noundef %12) #40, !dbg !1611
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1612, !tbaa !1043
  tail call void @_exit(i32 noundef %21) #42, !dbg !1613
  unreachable, !dbg !1613

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1614, !tbaa !975
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1616
  %25 = icmp eq i32 %24, 0, !dbg !1617
  br i1 %25, label %28, label %26, !dbg !1618

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1619, !tbaa !1043
  tail call void @_exit(i32 noundef %27) #42, !dbg !1620
  unreachable, !dbg !1620

28:                                               ; preds = %22
  ret void, !dbg !1621
}

; Function Attrs: noreturn
declare !dbg !1622 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1624 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1628, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1629, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1630, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1632
  tail call fastcc void @flush_stdout(), !dbg !1633
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1634, !tbaa !975
  %7 = icmp eq ptr %6, null, !dbg !1634
  br i1 %7, label %9, label %8, !dbg !1636

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1637
  br label %13, !dbg !1637

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1638, !tbaa !975
  %11 = tail call ptr @getprogname() #41, !dbg !1638
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %11) #40, !dbg !1638
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1640, !tbaa.struct !1641
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1640
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1640
  ret void, !dbg !1642
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1643 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1645, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 1, metadata !1647, metadata !DIExpression()), !dbg !1652
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1655
  %2 = icmp slt i32 %1, 0, !dbg !1656
  br i1 %2, label %6, label %3, !dbg !1657

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1658, !tbaa !975
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1658
  br label %6, !dbg !1658

6:                                                ; preds = %3, %0
  ret void, !dbg !1659
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1660 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1666
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1662, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1663, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1664, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1665, metadata !DIExpression(DW_OP_deref)), !dbg !1667
  %7 = load ptr, ptr @stderr, align 8, !dbg !1668, !tbaa !975
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1669, !noalias !1713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %7, metadata !1709, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr %2, metadata !1710, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata ptr poison, metadata !1711, metadata !DIExpression(DW_OP_deref)), !dbg !1718
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1669
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1669, !noalias !1713
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1719, !tbaa !1043
  %10 = add i32 %9, 1, !dbg !1719
  store i32 %10, ptr @error_message_count, align 4, !dbg !1719, !tbaa !1043
  %11 = icmp eq i32 %1, 0, !dbg !1720
  br i1 %11, label %21, label %12, !dbg !1722

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1723, metadata !DIExpression(), metadata !1666, metadata ptr %5, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i32 %1, metadata !1726, metadata !DIExpression()), !dbg !1731
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1733
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %13, metadata !1727, metadata !DIExpression()), !dbg !1731
  %14 = icmp eq ptr %13, null, !dbg !1735
  br i1 %14, label %15, label %17, !dbg !1737

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #40, !dbg !1738
  call void @llvm.dbg.value(metadata ptr %16, metadata !1727, metadata !DIExpression()), !dbg !1731
  br label %17, !dbg !1739

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1731
  call void @llvm.dbg.value(metadata ptr %18, metadata !1727, metadata !DIExpression()), !dbg !1731
  %19 = load ptr, ptr @stderr, align 8, !dbg !1740, !tbaa !975
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %18) #40, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1741
  br label %21, !dbg !1742

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1743, !tbaa !975
  call void @llvm.dbg.value(metadata i32 10, metadata !1744, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %22, metadata !1749, metadata !DIExpression()), !dbg !1750
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1752
  %24 = load ptr, ptr %23, align 8, !dbg !1752, !tbaa !1561
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1752
  %26 = load ptr, ptr %25, align 8, !dbg !1752, !tbaa !1564
  %27 = icmp ult ptr %24, %26, !dbg !1752
  br i1 %27, label %30, label %28, !dbg !1752, !prof !1565

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !1752
  br label %32, !dbg !1752

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1752
  store ptr %31, ptr %23, align 8, !dbg !1752, !tbaa !1561
  store i8 10, ptr %24, align 1, !dbg !1752, !tbaa !1052
  br label %32, !dbg !1752

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1753, !tbaa !975
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !1753
  %35 = icmp eq i32 %0, 0, !dbg !1754
  br i1 %35, label %37, label %36, !dbg !1756

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !1757
  unreachable, !dbg !1757

37:                                               ; preds = %32
  ret void, !dbg !1758
}

; Function Attrs: nounwind
declare !dbg !1759 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1762 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1765 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1769 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1777
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1776, metadata !DIExpression(), metadata !1777, metadata ptr %4, metadata !DIExpression()), !dbg !1778
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1773, metadata !DIExpression()), !dbg !1778
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1774, metadata !DIExpression()), !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1775, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1779
  call void @llvm.va_start(ptr nonnull %4), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1781, !tbaa.struct !1641
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1781
  call void @llvm.va_end(ptr nonnull %4), !dbg !1782
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1783
  ret void, !dbg !1783
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !443 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !459, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !460, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !461, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !462, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !463, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !464, metadata !DIExpression(DW_OP_deref)), !dbg !1784
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1785, !tbaa !1043
  %9 = icmp eq i32 %8, 0, !dbg !1785
  br i1 %9, label %24, label %10, !dbg !1787

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1788, !tbaa !1043
  %12 = icmp eq i32 %11, %3, !dbg !1791
  br i1 %12, label %13, label %23, !dbg !1792

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1793, !tbaa !975
  %15 = icmp eq ptr %14, %2, !dbg !1794
  br i1 %15, label %37, label %16, !dbg !1795

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1796
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1797
  br i1 %19, label %20, label %23, !dbg !1797

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1798
  %22 = icmp eq i32 %21, 0, !dbg !1799
  br i1 %22, label %37, label %23, !dbg !1800

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1801, !tbaa !975
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1802, !tbaa !1043
  br label %24, !dbg !1803

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1804
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1805, !tbaa !975
  %26 = icmp eq ptr %25, null, !dbg !1805
  br i1 %26, label %28, label %27, !dbg !1807

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !1808
  br label %32, !dbg !1808

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1809, !tbaa !975
  %30 = tail call ptr @getprogname() #41, !dbg !1809
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %30) #40, !dbg !1809
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1811, !tbaa !975
  %34 = icmp eq ptr %2, null, !dbg !1811
  %35 = select i1 %34, ptr @.str.3.41, ptr @.str.2.42, !dbg !1811
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !1811
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1812, !tbaa.struct !1641
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1812
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1812
  br label %37, !dbg !1813

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1813
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1814 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1823, metadata !DIExpression(), metadata !1824, metadata ptr %6, metadata !DIExpression()), !dbg !1825
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1818, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1819, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1820, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1821, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1822, metadata !DIExpression()), !dbg !1825
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1826
  call void @llvm.va_start(ptr nonnull %6), !dbg !1827
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1828, !tbaa.struct !1641
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1828
  call void @llvm.va_end(ptr nonnull %6), !dbg !1829
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1830
  ret void, !dbg !1830
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1831 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1834, !tbaa !975
  ret ptr %1, !dbg !1835
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef %9) local_unnamed_addr #10 !dbg !1836 {
  %11 = alloca %struct.stat, align 8, !DIAssignID !1911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1865, metadata !DIExpression(), metadata !1911, metadata ptr %11, metadata !DIExpression()), !dbg !1912
  %12 = alloca [2 x i32], align 4, !DIAssignID !1913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1903, metadata !DIExpression(), metadata !1913, metadata ptr %12, metadata !DIExpression()), !dbg !1914
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1842, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1843, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1844, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1845, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1846, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1847, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1848, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1849, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1850, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  %13 = load i8, ptr %0, align 1, !dbg !1916, !tbaa !1052
  %14 = icmp eq i8 %13, 47, !dbg !1916
  br i1 %14, label %22, label %15, !dbg !1916

15:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1917, metadata !DIExpression()), !dbg !1924
  %16 = load i32, ptr %1, align 4, !dbg !1926, !tbaa !1927
  %17 = icmp ult i32 %16, 4, !dbg !1929
  br i1 %17, label %22, label %18, !dbg !1930

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.savewd, ptr %1, i64 0, i32 1, !dbg !1931
  %20 = load i32, ptr %19, align 4, !dbg !1932, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1852, metadata !DIExpression()), !dbg !1915
  %21 = icmp eq i32 %20, 0, !dbg !1933
  br i1 %21, label %22, label %119, !dbg !1934

22:                                               ; preds = %15, %10, %18
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1853, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1856, metadata !DIExpression()), !dbg !1935
  %23 = icmp eq ptr %2, null, !dbg !1936
  br i1 %23, label %32, label %24, !dbg !1938

24:                                               ; preds = %22
  %25 = tail call i64 @mkancesdirs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1856, metadata !DIExpression()), !dbg !1935
  %26 = icmp slt i64 %25, 0, !dbg !1941
  br i1 %26, label %27, label %32, !dbg !1943

27:                                               ; preds = %24
  %28 = icmp eq i64 %25, -1, !dbg !1944
  br i1 %28, label %29, label %123, !dbg !1947

29:                                               ; preds = %27
  %30 = tail call ptr @__errno_location() #43, !dbg !1948
  %31 = load i32, ptr %30, align 4, !dbg !1948, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !1852, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1856, metadata !DIExpression()), !dbg !1935
  br label %119, !dbg !1949

32:                                               ; preds = %24, %22
  %33 = phi i64 [ 0, %22 ], [ %25, %24 ]
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1852, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1856, metadata !DIExpression()), !dbg !1935
  %34 = and i32 %8, %7, !dbg !1950
  %35 = icmp eq i32 %34, -1, !dbg !1950
  tail call void @llvm.dbg.value(metadata i1 %35, metadata !1857, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1951
  %36 = and i32 %6, 3072, !dbg !1952
  %37 = and i32 %4, 512, !dbg !1953
  %38 = or disjoint i32 %36, %37, !dbg !1954
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1860, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1861, metadata !DIExpression()), !dbg !1951
  %39 = and i32 %4, -64, !dbg !1955
  %40 = icmp eq i32 %38, 0, !dbg !1955
  %41 = and i32 %4, -19, !dbg !1955
  %42 = select i1 %40, i32 %4, i32 %41, !dbg !1955
  %43 = select i1 %35, i32 %42, i32 %39, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1861, metadata !DIExpression()), !dbg !1951
  %44 = getelementptr inbounds i8, ptr %0, i64 %33, !dbg !1956
  %45 = tail call i32 @mkdir(ptr noundef nonnull %44, i32 noundef %43) #40, !dbg !1957
  %46 = icmp eq i32 %45, 0, !dbg !1958
  br i1 %46, label %47, label %53, !dbg !1959

47:                                               ; preds = %32
  %48 = and i32 %4, 511, !dbg !1960
  %49 = and i32 %48, %6, !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1862, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1962
  tail call void %5(ptr noundef nonnull %0, ptr noundef %3) #40, !dbg !1963
  %50 = or disjoint i32 %38, %49, !dbg !1964
  %51 = icmp eq i32 %50, 0, !dbg !1964
  %52 = and i1 %35, %51, !dbg !1964
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1852, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 3, metadata !1853, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1861, metadata !DIExpression()), !dbg !1951
  tail call void @llvm.dbg.value(metadata i1 %52, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  br i1 %52, label %123, label %77, !dbg !1965

53:                                               ; preds = %32
  %54 = tail call ptr @__errno_location() #43, !dbg !1966
  %55 = load i32, ptr %54, align 4, !dbg !1966, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1852, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1853, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1861, metadata !DIExpression()), !dbg !1951
  switch i32 %55, label %56 [
    i32 20, label %119
    i32 2, label %119
  ], !dbg !1968

56:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !1851, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  br i1 %9, label %57, label %77, !dbg !1965

57:                                               ; preds = %56
  %58 = icmp eq i32 %55, 0, !dbg !1969
  br i1 %58, label %123, label %59, !dbg !1971

59:                                               ; preds = %57
  br i1 %23, label %119, label %60, !dbg !1972

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #40, !dbg !1973
  %61 = call i32 @stat(ptr noundef nonnull %44, ptr noundef nonnull %11) #40, !dbg !1974
  %62 = icmp eq i32 %61, 0, !dbg !1976
  br i1 %62, label %63, label %68, !dbg !1977

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.stat, ptr %11, i64 0, i32 2, !dbg !1978
  %65 = load i32, ptr %64, align 8, !dbg !1978, !tbaa !1981
  %66 = and i32 %65, 61440, !dbg !1978
  %67 = icmp eq i32 %66, 16384, !dbg !1978
  br i1 %67, label %75, label %76, !dbg !1984

68:                                               ; preds = %60
  %69 = icmp eq i32 %55, 17, !dbg !1985
  br i1 %69, label %70, label %76, !dbg !1987

70:                                               ; preds = %68
  %71 = load i32, ptr %54, align 4, !dbg !1988, !tbaa !1043
  switch i32 %71, label %72 [
    i32 2, label %76
    i32 20, label %76
  ], !dbg !1989

72:                                               ; preds = %70
  %73 = tail call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1.51, i32 noundef 5) #40, !dbg !1990
  %74 = tail call ptr @quote(ptr noundef nonnull %0) #40, !dbg !1990
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %73, ptr noundef %74) #40, !dbg !1990
  br label %75, !dbg !1992

75:                                               ; preds = %72, %63
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #40, !dbg !1993
  br label %123

76:                                               ; preds = %63, %68, %70, %70
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #40, !dbg !1993
  br label %119

77:                                               ; preds = %47, %56
  %78 = phi i32 [ %43, %47 ], [ -1, %56 ]
  %79 = phi i32 [ 3, %47 ], [ 2, %56 ]
  %80 = phi i32 [ 0, %47 ], [ %55, %56 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #40, !dbg !1994
  %81 = call i32 @savewd_chdir(ptr noundef %1, ptr noundef nonnull %44, i32 noundef %79, ptr noundef nonnull %12) #40, !dbg !1995
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !1905, metadata !DIExpression()), !dbg !1914
  %82 = icmp slt i32 %81, -1, !dbg !1996
  br i1 %82, label %117, label %83, !dbg !1997

83:                                               ; preds = %77
  %84 = icmp eq i32 %81, 0, !dbg !1998
  br i1 %84, label %89, label %85, !dbg !1999

85:                                               ; preds = %83
  %86 = tail call ptr @__errno_location() #43, !dbg !2000
  %87 = load i32, ptr %86, align 4, !dbg !2000, !tbaa !1043
  %88 = icmp eq i32 %87, 13, !dbg !2001
  br i1 %88, label %89, label %108, !dbg !2002

89:                                               ; preds = %85, %83
  %90 = phi ptr [ %44, %85 ], [ @.str.2.52, %83 ], !dbg !2003
  tail call void @llvm.dbg.value(metadata i1 %84, metadata !1906, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2004
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1910, metadata !DIExpression()), !dbg !2004
  %91 = load i32, ptr %12, align 4, !dbg !2005, !tbaa !1043
  %92 = call i32 @dirchownmod(i32 noundef %91, ptr noundef %90, i32 noundef %78, i32 noundef %7, i32 noundef %8, i32 noundef %4, i32 noundef %6) #40, !dbg !2007
  %93 = icmp eq i32 %92, 0, !dbg !2008
  br i1 %93, label %117, label %94, !dbg !2009

94:                                               ; preds = %89
  %95 = icmp eq i32 %80, 0, !dbg !2010
  br i1 %95, label %96, label %98, !dbg !2012

96:                                               ; preds = %94
  %97 = tail call ptr @__errno_location() #43, !dbg !2013
  br label %102, !dbg !2012

98:                                               ; preds = %94
  br i1 %23, label %115, label %99, !dbg !2015

99:                                               ; preds = %98
  %100 = tail call ptr @__errno_location() #43, !dbg !2016
  %101 = load i32, ptr %100, align 4, !dbg !2016, !tbaa !1043
  switch i32 %101, label %102 [
    i32 2, label %115
    i32 20, label %115
  ], !dbg !2017

102:                                              ; preds = %96, %99
  %103 = phi ptr [ %97, %96 ], [ %100, %99 ], !dbg !2013
  %104 = load i32, ptr %103, align 4, !dbg !2013, !tbaa !1043
  %105 = select i1 %35, ptr @.str.3.53, ptr @.str.4.54, !dbg !2013
  %106 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull %105, i32 noundef 5) #40, !dbg !2013
  %107 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !2013
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %104, ptr noundef %106, ptr noundef %107) #40, !dbg !2013
  br label %117, !dbg !2018

108:                                              ; preds = %85
  %109 = icmp eq i32 %80, 0, !dbg !2019
  %110 = select i1 %109, i32 %87, i32 %80, !dbg !2022
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1852, metadata !DIExpression()), !dbg !1915
  %111 = load i32, ptr %12, align 4, !dbg !2023, !tbaa !1043
  %112 = icmp sgt i32 %111, -1, !dbg !2025
  br i1 %112, label %113, label %115, !dbg !2026

113:                                              ; preds = %108
  %114 = call i32 @close(i32 noundef %111) #40, !dbg !2027
  br label %115, !dbg !2027

115:                                              ; preds = %113, %108, %99, %99, %98
  %116 = phi i32 [ %80, %99 ], [ %80, %99 ], [ %80, %98 ], [ %110, %108 ], [ %110, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1852, metadata !DIExpression()), !dbg !1915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #40, !dbg !2028
  br label %119

117:                                              ; preds = %102, %89, %77
  %118 = phi i1 [ true, %77 ], [ false, %102 ], [ true, %89 ], !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1852, metadata !DIExpression()), !dbg !1915
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #40, !dbg !2028
  br label %123

119:                                              ; preds = %59, %53, %53, %76, %115, %29, %18
  %120 = phi i32 [ %20, %18 ], [ %116, %115 ], [ %55, %53 ], [ %55, %59 ], [ %55, %76 ], [ %55, %53 ], [ %31, %29 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1852, metadata !DIExpression()), !dbg !1915
  %121 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.5.55, i32 noundef 5) #40, !dbg !2031
  %122 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !2031
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %120, ptr noundef %121, ptr noundef %122) #40, !dbg !2031
  br label %123, !dbg !2032

123:                                              ; preds = %47, %27, %117, %75, %57, %119
  %124 = phi i1 [ false, %119 ], [ true, %27 ], [ %118, %117 ], [ true, %57 ], [ %62, %75 ], [ true, %47 ], !dbg !1915
  ret i1 %124, !dbg !2033
}

; Function Attrs: nofree nounwind
declare !dbg !2034 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !2039 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !2040 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2052, metadata !DIExpression()), !dbg !2082
  %2 = load i8, ptr %0, align 1, !dbg !2083, !tbaa !1052
  %3 = and i8 %2, -8, !dbg !2084
  %4 = icmp eq i8 %3, 48, !dbg !2084
  br i1 %4, label %.preheader, label %.preheader6, !dbg !2084

.preheader6:                                      ; preds = %1
  br label %34, !dbg !2085

.preheader:                                       ; preds = %1
  br label %5, !dbg !2086

5:                                                ; preds = %.preheader, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %.preheader ], !dbg !2087
  %7 = phi i32 [ %12, %14 ], [ 0, %.preheader ], !dbg !2089
  %8 = phi ptr [ %15, %14 ], [ %0, %.preheader ], !dbg !2089
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2053, metadata !DIExpression()), !dbg !2089
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2056, metadata !DIExpression()), !dbg !2089
  %9 = shl i32 %7, 3, !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2053, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2089
  %10 = zext nneg i8 %6 to i32, !dbg !2087
  %11 = add i32 %9, -48, !dbg !2091
  %12 = add nsw i32 %11, %10, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2056, metadata !DIExpression()), !dbg !2089
  %13 = icmp ugt i32 %12, 4095, !dbg !2093
  br i1 %13, label %.loopexit, label %14, !dbg !2095

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !2096
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !2053, metadata !DIExpression()), !dbg !2089
  %16 = load i8, ptr %15, align 1, !dbg !2097, !tbaa !1052
  %17 = and i8 %16, -8, !dbg !2098
  %18 = icmp eq i8 %17, 48, !dbg !2098
  br i1 %18, label %5, label %19, !dbg !2098, !llvm.loop !2099

19:                                               ; preds = %14
  %.lcssa9 = phi ptr [ %15, %14 ], !dbg !2096
  %.lcssa8 = phi i8 [ %16, %14 ], !dbg !2097
  %.lcssa7 = phi i32 [ %12, %14 ], !dbg !2092
  %20 = icmp eq i8 %.lcssa8, 0, !dbg !2101
  br i1 %20, label %21, label %139, !dbg !2103

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %.lcssa7, metadata !2057, metadata !DIExpression()), !dbg !2089
  %22 = ptrtoint ptr %.lcssa9 to i64, !dbg !2104
  %23 = ptrtoint ptr %0 to i64, !dbg !2104
  %24 = sub i64 %22, %23, !dbg !2104
  %25 = icmp slt i64 %24, 5, !dbg !2105
  %26 = or i32 %.lcssa7, 1023, !dbg !2106
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2058, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %.lcssa7, metadata !2107, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %27, metadata !2112, metadata !DIExpression()), !dbg !2114
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #46, !dbg !2116
  call void @llvm.dbg.value(metadata ptr %28, metadata !2113, metadata !DIExpression()), !dbg !2114
  store i8 61, ptr %28, align 4, !dbg !2117, !tbaa !2118
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !2120
  store i8 1, ptr %29, align 1, !dbg !2121, !tbaa !2122
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !2123
  store i32 4095, ptr %30, align 4, !dbg !2124, !tbaa !2125
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !2126
  store i32 %.lcssa7, ptr %31, align 4, !dbg !2127, !tbaa !2128
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !2129
  store i32 %27, ptr %32, align 4, !dbg !2130, !tbaa !2131
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !2132
  store i8 0, ptr %33, align 1, !dbg !2133, !tbaa !2122
  br label %139, !dbg !2134

34:                                               ; preds = %.preheader6, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %.preheader6 ], !dbg !2135
  %36 = phi i64 [ %43, %41 ], [ 1, %.preheader6 ], !dbg !2137
  %37 = phi ptr [ %44, %41 ], [ %0, %.preheader6 ], !dbg !2138
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !2062, metadata !DIExpression()), !dbg !2139
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2060, metadata !DIExpression()), !dbg !2137
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !2085

38:                                               ; preds = %34
  %.lcssa24 = phi i64 [ %36, %34 ], !dbg !2137
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %.lcssa24, i64 noundef 16) #47, !dbg !2140
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !2059, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2064, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2065, metadata !DIExpression()), !dbg !2082
  br label %46, !dbg !2141

40:                                               ; preds = %34
  br label %41, !dbg !2142

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !2143
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !2060, metadata !DIExpression()), !dbg !2137
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2144
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !2062, metadata !DIExpression()), !dbg !2139
  %45 = load i8, ptr %44, align 1, !dbg !2135, !tbaa !1052
  br label %34, !dbg !2145, !llvm.loop !2146

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %.lcssa20, %134 ], !dbg !2148
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !2149
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2073, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !2065, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !2064, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2066, metadata !DIExpression()), !dbg !2151
  br label %49, !dbg !2152

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !2153
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !2066, metadata !DIExpression()), !dbg !2151
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !2065, metadata !DIExpression()), !dbg !2082
  %52 = load i8, ptr %50, align 1, !dbg !2154, !tbaa !1052
  switch i8 %52, label %.loopexit5 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !2157

53:                                               ; preds = %49, %49, %49
  %.lcssa14 = phi ptr [ %50, %49 ], [ %50, %49 ], [ %50, %49 ], !dbg !2153
  %.lcssa12 = phi i32 [ %51, %49 ], [ %51, %49 ], [ %51, %49 ], !dbg !2151
  %.lcssa10 = phi i8 [ %52, %49 ], [ %52, %49 ], [ %52, %49 ], !dbg !2154
  br label %63, !dbg !2158

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !2159
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !2066, metadata !DIExpression()), !dbg !2151
  br label %60, !dbg !2161

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !2162
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !2066, metadata !DIExpression()), !dbg !2151
  br label %60, !dbg !2163

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !2066, metadata !DIExpression()), !dbg !2151
  br label %60, !dbg !2165

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !2066, metadata !DIExpression()), !dbg !2151
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !2065, metadata !DIExpression()), !dbg !2082
  br label %49, !dbg !2168, !llvm.loop !2169

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %.lcssa10, %53 ], [ %132, %133 ], !dbg !2172
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !2082
  %66 = phi ptr [ %.lcssa14, %53 ], [ %115, %133 ], !dbg !2153
  %67 = phi i32 [ %.lcssa12, %53 ], [ %121, %133 ], !dbg !2173
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2073, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !2066, metadata !DIExpression()), !dbg !2151
  tail call void @llvm.dbg.value(metadata ptr %66, metadata !2065, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !2064, metadata !DIExpression()), !dbg !2082
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !2174
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !2065, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i8 %64, metadata !2071, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2074, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 3, metadata !2075, metadata !DIExpression()), !dbg !2150
  %69 = load i8, ptr %68, align 1, !dbg !2175, !tbaa !1052
  switch i8 %69, label %.preheader1 [
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
  ], !dbg !2158

.preheader1:                                      ; preds = %63
  br label %94, !dbg !2176

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !2178

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !2179
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !2150
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !2076, metadata !DIExpression()), !dbg !2181
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !2065, metadata !DIExpression()), !dbg !2082
  %75 = shl i32 %74, 3, !dbg !2182
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !2065, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2082
  %76 = zext nneg i8 %72 to i32, !dbg !2179
  %77 = add i32 %75, -48, !dbg !2183
  %78 = add nsw i32 %77, %76, !dbg !2184
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !2076, metadata !DIExpression()), !dbg !2181
  %79 = icmp ugt i32 %78, 4095, !dbg !2185
  br i1 %79, label %.loopexit3, label %80, !dbg !2187

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !2188
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !2065, metadata !DIExpression()), !dbg !2082
  %82 = load i8, ptr %81, align 1, !dbg !2189, !tbaa !1052
  %83 = and i8 %82, -8, !dbg !2190
  %84 = icmp eq i8 %83, 48, !dbg !2190
  br i1 %84, label %71, label %85, !dbg !2190, !llvm.loop !2191

85:                                               ; preds = %80
  %.lcssa17 = phi ptr [ %81, %80 ], !dbg !2188
  %.lcssa16 = phi i8 [ %82, %80 ], !dbg !2189
  %.lcssa15 = phi i32 [ %78, %80 ], !dbg !2184
  %86 = icmp eq i32 %67, 0, !dbg !2193
  br i1 %86, label %87, label %.loopexit4, !dbg !2195

87:                                               ; preds = %85
  switch i8 %.lcssa16, label %.loopexit4 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !2196

88:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 448, metadata !2073, metadata !DIExpression()), !dbg !2150
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2197
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !2065, metadata !DIExpression()), !dbg !2082
  br label %114, !dbg !2198

90:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 56, metadata !2073, metadata !DIExpression()), !dbg !2150
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2199
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !2065, metadata !DIExpression()), !dbg !2082
  br label %114, !dbg !2200

92:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 7, metadata !2073, metadata !DIExpression()), !dbg !2150
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2201
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !2065, metadata !DIExpression()), !dbg !2082
  br label %114, !dbg !2202

94:                                               ; preds = %.preheader1, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %.preheader1 ], !dbg !2203
  %96 = phi ptr [ %112, %109 ], [ %68, %.preheader1 ], !dbg !2150
  %97 = phi i32 [ %110, %109 ], [ 0, %.preheader1 ], !dbg !2205
  %98 = phi i8 [ %111, %109 ], [ 1, %.preheader1 ], !dbg !2206
  tail call void @llvm.dbg.value(metadata i8 %98, metadata !2075, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !2073, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !2065, metadata !DIExpression()), !dbg !2082
  switch i8 %95, label %.loopexit2 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !2207

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !2073, metadata !DIExpression()), !dbg !2150
  br label %109, !dbg !2210

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !2211
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2073, metadata !DIExpression()), !dbg !2150
  br label %109, !dbg !2212

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !2073, metadata !DIExpression()), !dbg !2150
  br label %109, !dbg !2214

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !2215
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !2073, metadata !DIExpression()), !dbg !2150
  br label %109, !dbg !2216

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !2073, metadata !DIExpression()), !dbg !2150
  br label %109, !dbg !2218

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !2205
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !2075, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !2073, metadata !DIExpression()), !dbg !2150
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !2219
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !2065, metadata !DIExpression()), !dbg !2082
  %113 = load i8, ptr %112, align 1, !dbg !2203, !tbaa !1052
  br label %94, !dbg !2220, !llvm.loop !2221

.loopexit2:                                       ; preds = %94
  %.lcssa19 = phi ptr [ %96, %94 ], !dbg !2150
  %.lcssa18 = phi i32 [ %97, %94 ], !dbg !2205
  %.lcssa = phi i8 [ %98, %94 ], !dbg !2206
  br label %114, !dbg !2223

114:                                              ; preds = %.loopexit2, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %.lcssa17, %87 ], [ %.lcssa17, %87 ], [ %.lcssa19, %.loopexit2 ], !dbg !2150
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %.loopexit2 ], !dbg !2173
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %.lcssa15, %87 ], [ %.lcssa15, %87 ], [ %.lcssa18, %.loopexit2 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %.loopexit2 ], !dbg !2224
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %.loopexit2 ], !dbg !2224
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %.lcssa, %.loopexit2 ], !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !2075, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !2074, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !2073, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !2066, metadata !DIExpression()), !dbg !2151
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !2065, metadata !DIExpression()), !dbg !2082
  %121 = freeze i32 %116, !dbg !2223
  %122 = add i64 %65, 1, !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2064, metadata !DIExpression()), !dbg !2082
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !2226
  tail call void @llvm.dbg.value(metadata ptr %123, metadata !2080, metadata !DIExpression()), !dbg !2150
  store i8 %64, ptr %123, align 4, !dbg !2227, !tbaa !2118
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !2228
  store i8 %120, ptr %124, align 1, !dbg !2229, !tbaa !2122
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !2230
  store i32 %121, ptr %125, align 4, !dbg !2231, !tbaa !2125
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !2232
  store i32 %117, ptr %126, align 4, !dbg !2233, !tbaa !2128
  %127 = icmp eq i32 %121, 0, !dbg !2223
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !2223
  %129 = and i32 %128, %117, !dbg !2223
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !2223
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !2234
  store i32 %130, ptr %131, align 4, !dbg !2235, !tbaa !2131
  %132 = load i8, ptr %115, align 1, !dbg !2236, !tbaa !1052
  switch i8 %132, label %.loopexit4 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !2237

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !2150

134:                                              ; preds = %114
  %.lcssa22 = phi ptr [ %115, %114 ], !dbg !2150
  %.lcssa20 = phi i64 [ %122, %114 ], !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !2073, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata ptr %.lcssa22, metadata !2065, metadata !DIExpression()), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %.lcssa20, metadata !2064, metadata !DIExpression()), !dbg !2082
  %135 = getelementptr inbounds i8, ptr %.lcssa22, i64 1, !dbg !2238
  tail call void @llvm.dbg.value(metadata ptr %135, metadata !2065, metadata !DIExpression()), !dbg !2082
  br label %46, !dbg !2239, !llvm.loop !2240

136:                                              ; preds = %114
  %.lcssa21 = phi i64 [ %122, %114 ], !dbg !2225
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %.lcssa21, i32 1, !dbg !2243
  store i8 0, ptr %137, align 1, !dbg !2246, !tbaa !2122
  br label %139, !dbg !2247

.loopexit3:                                       ; preds = %71
  br label %138, !dbg !2248

.loopexit4:                                       ; preds = %114, %87, %85
  br label %138, !dbg !2248

.loopexit5:                                       ; preds = %49
  br label %138, !dbg !2248

138:                                              ; preds = %.loopexit5, %.loopexit4, %.loopexit3
  call void @llvm.dbg.label(metadata !2081), !dbg !2249
  tail call void @free(ptr noundef nonnull %39) #40, !dbg !2248
  br label %139, !dbg !2250

.loopexit:                                        ; preds = %5
  br label %139, !dbg !2251

139:                                              ; preds = %.loopexit, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %.loopexit ]
  ret ptr %140, !dbg !2251
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !2252 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !2278
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2255, metadata !DIExpression(), metadata !2278, metadata ptr %2, metadata !DIExpression()), !dbg !2279
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2279
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #40, !dbg !2280
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #40, !dbg !2281
  %4 = icmp eq i32 %3, 0, !dbg !2283
  br i1 %4, label %5, label %14, !dbg !2284

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !2285
  %7 = load i32, ptr %6, align 8, !dbg !2285, !tbaa !1981
  call void @llvm.dbg.value(metadata i32 %7, metadata !2107, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 4095, metadata !2112, metadata !DIExpression()), !dbg !2286
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #46, !dbg !2288
  call void @llvm.dbg.value(metadata ptr %8, metadata !2113, metadata !DIExpression()), !dbg !2286
  store i8 61, ptr %8, align 4, !dbg !2289, !tbaa !2118
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !2290
  store i8 1, ptr %9, align 1, !dbg !2291, !tbaa !2122
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !2292
  store i32 4095, ptr %10, align 4, !dbg !2293, !tbaa !2125
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !2294
  store i32 %7, ptr %11, align 4, !dbg !2295, !tbaa !2128
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !2296
  store i32 4095, ptr %12, align 4, !dbg !2297, !tbaa !2131
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !2298
  store i8 0, ptr %13, align 1, !dbg !2299, !tbaa !2122
  br label %14, !dbg !2300

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !2279
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #40, !dbg !2301
  ret ptr %15, !dbg !2301
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #20 !dbg !2302 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2309, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !2310, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2311, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2312, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2313, metadata !DIExpression()), !dbg !2325
  %6 = and i32 %0, 4095, !dbg !2326
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2314, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2315, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2312, metadata !DIExpression()), !dbg !2325
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !2327
  %8 = load i8, ptr %7, align 1, !dbg !2327, !tbaa !2122
  %9 = icmp eq i8 %8, 0, !dbg !2328
  br i1 %9, label %78, label %10, !dbg !2329

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !2329

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !2312, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2314, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !2315, metadata !DIExpression()), !dbg !2325
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !2330
  %20 = load i32, ptr %19, align 4, !dbg !2330, !tbaa !2125
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2316, metadata !DIExpression()), !dbg !2331
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !2332
  %22 = load i32, ptr %21, align 4, !dbg !2332, !tbaa !2131
  %23 = xor i32 %22, -1, !dbg !2333
  %24 = and i32 %11, %23, !dbg !2334
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !2320, metadata !DIExpression()), !dbg !2331
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !2335
  %26 = load i32, ptr %25, align 4, !dbg !2335, !tbaa !2128
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !2321, metadata !DIExpression()), !dbg !2331
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !2336

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !2337
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2321, metadata !DIExpression()), !dbg !2331
  %29 = and i32 %28, 292, !dbg !2339
  %30 = icmp eq i32 %29, 0, !dbg !2340
  %31 = select i1 %30, i32 0, i32 292, !dbg !2340
  %32 = and i32 %28, 146, !dbg !2341
  %33 = icmp eq i32 %32, 0, !dbg !2342
  %34 = select i1 %33, i32 0, i32 146, !dbg !2342
  %35 = and i32 %28, 73, !dbg !2343
  %36 = icmp eq i32 %35, 0, !dbg !2344
  %37 = select i1 %36, i32 0, i32 73, !dbg !2344
  %38 = or disjoint i32 %34, %31, !dbg !2345
  %39 = or disjoint i32 %38, %37, !dbg !2346
  %40 = or i32 %39, %28, !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !2321, metadata !DIExpression()), !dbg !2331
  br label %47, !dbg !2347

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !2348
  %43 = or i32 %42, %12, !dbg !2350
  %44 = icmp eq i32 %43, 0, !dbg !2350
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !2351
  br label %47, !dbg !2351

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !2321, metadata !DIExpression()), !dbg !2331
  %49 = icmp eq i32 %20, 0, !dbg !2352
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !2352
  %51 = xor i32 %24, -1, !dbg !2353
  %52 = and i32 %50, %51, !dbg !2354
  %53 = and i32 %52, %48, !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !2321, metadata !DIExpression()), !dbg !2331
  %54 = load i8, ptr %16, align 4, !dbg !2356, !tbaa !2118
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !2357

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !2358
  %57 = select i1 %49, i32 0, i32 %56, !dbg !2358
  %58 = or i32 %57, %24, !dbg !2359
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !2322, metadata !DIExpression()), !dbg !2360
  %59 = and i32 %58, 4095, !dbg !2361
  %60 = xor i32 %59, 4095, !dbg !2361
  %61 = or i32 %60, %18, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !2315, metadata !DIExpression()), !dbg !2325
  %62 = and i32 %58, %17, !dbg !2363
  %63 = or i32 %53, %62, !dbg !2364
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !2314, metadata !DIExpression()), !dbg !2325
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !2315, metadata !DIExpression()), !dbg !2325
  %66 = or i32 %53, %17, !dbg !2366
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !2314, metadata !DIExpression()), !dbg !2325
  br label %71, !dbg !2367

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !2368
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !2315, metadata !DIExpression()), !dbg !2325
  %69 = xor i32 %53, -1, !dbg !2369
  %70 = and i32 %17, %69, !dbg !2370
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !2314, metadata !DIExpression()), !dbg !2325
  br label %71, !dbg !2371

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !2325
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !2314, metadata !DIExpression()), !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !2315, metadata !DIExpression()), !dbg !2325
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !2372
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2312, metadata !DIExpression()), !dbg !2325
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !2327
  %76 = load i8, ptr %75, align 1, !dbg !2327, !tbaa !2122
  %77 = icmp eq i8 %76, 0, !dbg !2328
  br i1 %77, label %.loopexit, label %14, !dbg !2329, !llvm.loop !2373

.loopexit:                                        ; preds = %71
  %.lcssa1 = phi i32 [ %72, %71 ], !dbg !2325
  %.lcssa = phi i32 [ %73, %71 ], !dbg !2325
  br label %78, !dbg !2375

78:                                               ; preds = %.loopexit, %5
  %79 = phi i32 [ 0, %5 ], [ %.lcssa1, %.loopexit ], !dbg !2377
  %80 = phi i32 [ %6, %5 ], [ %.lcssa, %.loopexit ], !dbg !2378
  %81 = icmp eq ptr %4, null, !dbg !2375
  br i1 %81, label %83, label %82, !dbg !2379

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !2380, !tbaa !1043
  br label %83, !dbg !2381

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !2382
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2385, metadata !DIExpression()), !dbg !2388
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2389
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2386, metadata !DIExpression()), !dbg !2388
  %3 = icmp eq ptr %2, null, !dbg !2390
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2390
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2387, metadata !DIExpression()), !dbg !2388
  %6 = ptrtoint ptr %5 to i64, !dbg !2391
  %7 = ptrtoint ptr %0 to i64, !dbg !2391
  %8 = sub i64 %6, %7, !dbg !2391
  %9 = icmp sgt i64 %8, 6, !dbg !2393
  br i1 %9, label %10, label %19, !dbg !2394

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2395
  call void @llvm.dbg.value(metadata ptr %11, metadata !2396, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 7, metadata !2402, metadata !DIExpression()), !dbg !2403
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.64, i64 7), !dbg !2405
  %13 = icmp eq i32 %12, 0, !dbg !2406
  br i1 %13, label %14, label %19, !dbg !2407

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2385, metadata !DIExpression()), !dbg !2388
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.65, i64 noundef 3) #41, !dbg !2408
  %16 = icmp eq i32 %15, 0, !dbg !2411
  %17 = select i1 %16, i64 3, i64 0, !dbg !2412
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2412
  br label %19, !dbg !2412

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2388
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2387, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2385, metadata !DIExpression()), !dbg !2388
  store ptr %20, ptr @program_name, align 8, !dbg !2413, !tbaa !975
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2414, !tbaa !975
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2415, !tbaa !975
  ret void, !dbg !2416
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2417 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !517 {
  %3 = alloca i32, align 4, !DIAssignID !2418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !527, metadata !DIExpression(), metadata !2418, metadata ptr %3, metadata !DIExpression()), !dbg !2419
  %4 = alloca %struct.savewd, align 8, !DIAssignID !2420
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !2420, metadata ptr %4, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !524, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !525, metadata !DIExpression()), !dbg !2419
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2421
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !526, metadata !DIExpression()), !dbg !2419
  %6 = icmp eq ptr %5, %0, !dbg !2422
  br i1 %6, label %7, label %14, !dbg !2424

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2426
  call void @llvm.dbg.value(metadata ptr %4, metadata !2427, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %4, metadata !2436, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 8, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i64 0, ptr %4, align 8, !dbg !2446
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2447
  %9 = icmp eq i64 %8, 2, !dbg !2449
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2450
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2419
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2451
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2419
  ret ptr %15, !dbg !2451
}

; Function Attrs: nounwind
declare !dbg !2452 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2458 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2463, metadata !DIExpression()), !dbg !2466
  %2 = tail call ptr @__errno_location() #43, !dbg !2467
  %3 = load i32, ptr %2, align 4, !dbg !2467, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2464, metadata !DIExpression()), !dbg !2466
  %4 = icmp eq ptr %0, null, !dbg !2468
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2468
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #48, !dbg !2469
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i32 %3, ptr %2, align 4, !dbg !2470, !tbaa !1043
  ret ptr %6, !dbg !2471
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !2472 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2478, metadata !DIExpression()), !dbg !2479
  %2 = icmp eq ptr %0, null, !dbg !2480
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2480
  %4 = load i32, ptr %3, align 8, !dbg !2481, !tbaa !2482
  ret i32 %4, !dbg !2484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2485 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2490, metadata !DIExpression()), !dbg !2491
  %3 = icmp eq ptr %0, null, !dbg !2492
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2492
  store i32 %1, ptr %4, align 8, !dbg !2493, !tbaa !2482
  ret void, !dbg !2494
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2495 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2500, metadata !DIExpression()), !dbg !2507
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2501, metadata !DIExpression()), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2502, metadata !DIExpression()), !dbg !2507
  %4 = icmp eq ptr %0, null, !dbg !2508
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2508
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2509
  %7 = lshr i8 %1, 5, !dbg !2510
  %8 = zext nneg i8 %7 to i64, !dbg !2510
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2503, metadata !DIExpression()), !dbg !2507
  %10 = and i8 %1, 31, !dbg !2512
  %11 = zext nneg i8 %10 to i32, !dbg !2512
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2505, metadata !DIExpression()), !dbg !2507
  %12 = load i32, ptr %9, align 4, !dbg !2513, !tbaa !1043
  %13 = lshr i32 %12, %11, !dbg !2514
  %14 = and i32 %13, 1, !dbg !2515
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2506, metadata !DIExpression()), !dbg !2507
  %15 = xor i32 %13, %2, !dbg !2516
  %16 = and i32 %15, 1, !dbg !2516
  %17 = shl nuw i32 %16, %11, !dbg !2517
  %18 = xor i32 %17, %12, !dbg !2518
  store i32 %18, ptr %9, align 4, !dbg !2518, !tbaa !1043
  ret i32 %14, !dbg !2519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2520 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2524, metadata !DIExpression()), !dbg !2527
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2525, metadata !DIExpression()), !dbg !2527
  %3 = icmp eq ptr %0, null, !dbg !2528
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2530
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2524, metadata !DIExpression()), !dbg !2527
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2531
  %6 = load i32, ptr %5, align 4, !dbg !2531, !tbaa !2532
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2526, metadata !DIExpression()), !dbg !2527
  store i32 %1, ptr %5, align 4, !dbg !2533, !tbaa !2532
  ret i32 %6, !dbg !2534
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2535 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2539, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2540, metadata !DIExpression()), !dbg !2542
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2541, metadata !DIExpression()), !dbg !2542
  %4 = icmp eq ptr %0, null, !dbg !2543
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2545
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2539, metadata !DIExpression()), !dbg !2542
  store i32 10, ptr %5, align 8, !dbg !2546, !tbaa !2482
  %6 = icmp ne ptr %1, null, !dbg !2547
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2549
  br i1 %8, label %10, label %9, !dbg !2549

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2550
  unreachable, !dbg !2550

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2551
  store ptr %1, ptr %11, align 8, !dbg !2552, !tbaa !2553
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2554
  store ptr %2, ptr %12, align 8, !dbg !2555, !tbaa !2556
  ret void, !dbg !2557
}

; Function Attrs: noreturn nounwind
declare !dbg !2558 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2559 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2563, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2564, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2565, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2566, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2567, metadata !DIExpression()), !dbg !2571
  %6 = icmp eq ptr %4, null, !dbg !2572
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2572
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2568, metadata !DIExpression()), !dbg !2571
  %8 = tail call ptr @__errno_location() #43, !dbg !2573
  %9 = load i32, ptr %8, align 4, !dbg !2573, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2569, metadata !DIExpression()), !dbg !2571
  %10 = load i32, ptr %7, align 8, !dbg !2574, !tbaa !2482
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2575
  %12 = load i32, ptr %11, align 4, !dbg !2575, !tbaa !2532
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2576
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2577
  %15 = load ptr, ptr %14, align 8, !dbg !2577, !tbaa !2553
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2578
  %17 = load ptr, ptr %16, align 8, !dbg !2578, !tbaa !2556
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2579
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2570, metadata !DIExpression()), !dbg !2571
  store i32 %9, ptr %8, align 4, !dbg !2580, !tbaa !1043
  ret i64 %18, !dbg !2581
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2582 {
  %10 = alloca i32, align 4, !DIAssignID !2650
  %11 = alloca %struct.savewd, align 8, !DIAssignID !2651
  %12 = alloca i32, align 4, !DIAssignID !2652
  %13 = alloca %struct.savewd, align 8, !DIAssignID !2653
  %14 = alloca %struct.savewd, align 8, !DIAssignID !2654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2628, metadata !DIExpression(), metadata !2654, metadata ptr %14, metadata !DIExpression()), !dbg !2655
  %15 = alloca i32, align 4, !DIAssignID !2656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2631, metadata !DIExpression(), metadata !2656, metadata ptr %15, metadata !DIExpression()), !dbg !2657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2590, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2591, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2592, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2593, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2594, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2595, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2596, metadata !DIExpression()), !dbg !2658
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2659
  %17 = icmp eq i64 %16, 1, !dbg !2660
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2600, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2601, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2603, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2605, metadata !DIExpression()), !dbg !2658
  %18 = and i32 %5, 2, !dbg !2661
  %19 = icmp ne i32 %18, 0, !dbg !2661
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2661

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2662
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2663
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2664
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2603, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2602, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2601, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2600, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2591, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2596, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2595, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2592, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.label(metadata !2606), !dbg !2665
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2658
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
  ], !dbg !2666

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2603, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2592, metadata !DIExpression()), !dbg !2658
  br label %101, !dbg !2667

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2603, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2592, metadata !DIExpression()), !dbg !2658
  br i1 %36, label %101, label %42, !dbg !2667

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2668
  br i1 %43, label %101, label %44, !dbg !2672

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2668, !tbaa !1052
  br label %101, !dbg !2668

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !621, metadata !DIExpression(), metadata !2652, metadata ptr %12, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.assign(metadata i1 undef, metadata !622, metadata !DIExpression(), metadata !2653, metadata ptr %13, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr @.str.11.78, metadata !618, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 %28, metadata !619, metadata !DIExpression()), !dbg !2673
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.11.78, i32 noundef 5) #40, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %46, metadata !620, metadata !DIExpression()), !dbg !2673
  %47 = icmp eq ptr %46, @.str.11.78, !dbg !2678
  br i1 %47, label %48, label %57, !dbg !2680

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2681
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2682
  call void @llvm.dbg.value(metadata ptr %13, metadata !2683, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %13, metadata !2691, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 8, metadata !2695, metadata !DIExpression()), !dbg !2696
  store i64 0, ptr %13, align 8, !dbg !2698
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2699
  %50 = icmp eq i64 %49, 3, !dbg !2701
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2702
  %54 = icmp eq i32 %28, 9, !dbg !2702
  %55 = select i1 %54, ptr @.str.10.80, ptr @.str.12.81, !dbg !2702
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2702
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2703
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2673
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2595, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !621, metadata !DIExpression(), metadata !2650, metadata ptr %10, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.assign(metadata i1 undef, metadata !622, metadata !DIExpression(), metadata !2651, metadata ptr %11, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr @.str.12.81, metadata !618, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 %28, metadata !619, metadata !DIExpression()), !dbg !2704
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.12.81, i32 noundef 5) #40, !dbg !2706
  call void @llvm.dbg.value(metadata ptr %59, metadata !620, metadata !DIExpression()), !dbg !2704
  %60 = icmp eq ptr %59, @.str.12.81, !dbg !2707
  br i1 %60, label %61, label %70, !dbg !2708

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2709
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %11, metadata !2683, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %11, metadata !2691, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 8, metadata !2695, metadata !DIExpression()), !dbg !2713
  store i64 0, ptr %11, align 8, !dbg !2715
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2716
  %63 = icmp eq i64 %62, 3, !dbg !2717
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2718
  %67 = icmp eq i32 %28, 9, !dbg !2718
  %68 = select i1 %67, ptr @.str.10.80, ptr @.str.12.81, !dbg !2718
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2718
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2719
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2596, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2595, metadata !DIExpression()), !dbg !2658
  br i1 %36, label %88, label %73, !dbg !2720

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2608, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2598, metadata !DIExpression()), !dbg !2658
  %74 = load i8, ptr %71, align 1, !dbg !2722, !tbaa !1052
  %75 = icmp eq i8 %74, 0, !dbg !2724
  br i1 %75, label %88, label %.preheader11, !dbg !2724

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2724

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2608, metadata !DIExpression()), !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2598, metadata !DIExpression()), !dbg !2658
  %80 = icmp ult i64 %79, %39, !dbg !2725
  br i1 %80, label %81, label %83, !dbg !2728

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2725
  store i8 %77, ptr %82, align 1, !dbg !2725, !tbaa !1052
  br label %83, !dbg !2725

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2598, metadata !DIExpression()), !dbg !2658
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2608, metadata !DIExpression()), !dbg !2721
  %86 = load i8, ptr %85, align 1, !dbg !2722, !tbaa !1052
  %87 = icmp eq i8 %86, 0, !dbg !2724
  br i1 %87, label %.loopexit12, label %76, !dbg !2724, !llvm.loop !2730

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2728
  br label %88, !dbg !2732

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2602, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2600, metadata !DIExpression()), !dbg !2658
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2601, metadata !DIExpression()), !dbg !2658
  br label %101, !dbg !2734

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2602, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2603, metadata !DIExpression()), !dbg !2658
  br label %101, !dbg !2735

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2603, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2602, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2592, metadata !DIExpression()), !dbg !2658
  br label %101, !dbg !2736

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2603, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2602, metadata !DIExpression()), !dbg !2658
  br i1 %36, label %101, label %95, !dbg !2737

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2603, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2602, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2592, metadata !DIExpression()), !dbg !2658
  br i1 %36, label %101, label %95, !dbg !2736

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2738
  br i1 %97, label %101, label %98, !dbg !2742

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2738, !tbaa !1052
  br label %101, !dbg !2738

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2658
  br label %101, !dbg !2743

100:                                              ; preds = %27
  call void @abort() #42, !dbg !2744
  unreachable, !dbg !2744

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2733
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.80, %42 ], [ @.str.10.80, %44 ], [ @.str.10.80, %41 ], [ %33, %27 ], [ @.str.12.81, %95 ], [ @.str.12.81, %98 ], [ @.str.12.81, %94 ], [ @.str.10.80, %40 ], [ @.str.12.81, %91 ], [ @.str.12.81, %92 ], [ @.str.12.81, %93 ], !dbg !2658
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2658
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2603, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2602, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2601, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2600, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2596, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2595, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2592, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2613, metadata !DIExpression()), !dbg !2745
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
  br label %121, !dbg !2746

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2733
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2662
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2747
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2613, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2591, metadata !DIExpression()), !dbg !2658
  %130 = icmp eq i64 %122, -1, !dbg !2748
  br i1 %130, label %131, label %135, !dbg !2749

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2750
  %133 = load i8, ptr %132, align 1, !dbg !2750, !tbaa !1052
  %134 = icmp eq i8 %133, 0, !dbg !2751
  br i1 %134, label %573, label %137, !dbg !2752

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2753
  br i1 %136, label %573, label %137, !dbg !2752

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2615, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2618, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2619, metadata !DIExpression()), !dbg !2754
  br i1 %113, label %138, label %151, !dbg !2755

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2757
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2758
  br i1 %140, label %141, label %143, !dbg !2758

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2591, metadata !DIExpression()), !dbg !2658
  br label %143, !dbg !2760

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2591, metadata !DIExpression()), !dbg !2658
  %145 = icmp ugt i64 %139, %144, !dbg !2761
  br i1 %145, label %151, label %146, !dbg !2762

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2763
  call void @llvm.dbg.value(metadata ptr %147, metadata !2764, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %106, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %107, metadata !2768, metadata !DIExpression()), !dbg !2769
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2771
  %149 = icmp eq i32 %148, 0, !dbg !2772
  %150 = and i1 %149, %109, !dbg !2773
  br i1 %150, label %.loopexit7, label %151, !dbg !2773

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2591, metadata !DIExpression()), !dbg !2658
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2774
  %155 = load i8, ptr %154, align 1, !dbg !2774, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2620, metadata !DIExpression()), !dbg !2754
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
  ], !dbg !2775

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2776

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2777

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2618, metadata !DIExpression()), !dbg !2754
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2781
  br i1 %159, label %176, label %160, !dbg !2781

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2783
  br i1 %161, label %162, label %164, !dbg !2787

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2783
  store i8 39, ptr %163, align 1, !dbg !2783, !tbaa !1052
  br label %164, !dbg !2783

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2598, metadata !DIExpression()), !dbg !2658
  %166 = icmp ult i64 %165, %129, !dbg !2788
  br i1 %166, label %167, label %169, !dbg !2791

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2788
  store i8 36, ptr %168, align 1, !dbg !2788, !tbaa !1052
  br label %169, !dbg !2788

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2791
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2598, metadata !DIExpression()), !dbg !2658
  %171 = icmp ult i64 %170, %129, !dbg !2792
  br i1 %171, label %172, label %174, !dbg !2795

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2792
  store i8 39, ptr %173, align 1, !dbg !2792, !tbaa !1052
  br label %174, !dbg !2792

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2607, metadata !DIExpression()), !dbg !2658
  br label %176, !dbg !2796

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2658
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2598, metadata !DIExpression()), !dbg !2658
  %179 = icmp ult i64 %177, %129, !dbg !2797
  br i1 %179, label %180, label %182, !dbg !2800

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2797
  store i8 92, ptr %181, align 1, !dbg !2797, !tbaa !1052
  br label %182, !dbg !2797

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2598, metadata !DIExpression()), !dbg !2658
  br i1 %110, label %184, label %476, !dbg !2801

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2803
  %186 = icmp ult i64 %185, %152, !dbg !2804
  br i1 %186, label %187, label %433, !dbg !2805

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2806
  %189 = load i8, ptr %188, align 1, !dbg !2806, !tbaa !1052
  %190 = add i8 %189, -48, !dbg !2807
  %191 = icmp ult i8 %190, 10, !dbg !2807
  br i1 %191, label %192, label %433, !dbg !2807

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2808
  br i1 %193, label %194, label %196, !dbg !2812

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2808
  store i8 48, ptr %195, align 1, !dbg !2808, !tbaa !1052
  br label %196, !dbg !2808

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2598, metadata !DIExpression()), !dbg !2658
  %198 = icmp ult i64 %197, %129, !dbg !2813
  br i1 %198, label %199, label %201, !dbg !2816

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2813
  store i8 48, ptr %200, align 1, !dbg !2813, !tbaa !1052
  br label %201, !dbg !2813

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2598, metadata !DIExpression()), !dbg !2658
  br label %433, !dbg !2817

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2818

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2819

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2820

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2822

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2824
  %209 = icmp ult i64 %208, %152, !dbg !2825
  br i1 %209, label %210, label %433, !dbg !2826

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2827
  %212 = load i8, ptr %211, align 1, !dbg !2827, !tbaa !1052
  %213 = icmp eq i8 %212, 63, !dbg !2828
  br i1 %213, label %214, label %433, !dbg !2829

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2830
  %216 = load i8, ptr %215, align 1, !dbg !2830, !tbaa !1052
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
  ], !dbg !2831

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2832

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2620, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2613, metadata !DIExpression()), !dbg !2745
  %219 = icmp ult i64 %123, %129, !dbg !2834
  br i1 %219, label %220, label %222, !dbg !2837

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2834
  store i8 63, ptr %221, align 1, !dbg !2834, !tbaa !1052
  br label %222, !dbg !2834

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2598, metadata !DIExpression()), !dbg !2658
  %224 = icmp ult i64 %223, %129, !dbg !2838
  br i1 %224, label %225, label %227, !dbg !2841

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2838
  store i8 34, ptr %226, align 1, !dbg !2838, !tbaa !1052
  br label %227, !dbg !2838

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2598, metadata !DIExpression()), !dbg !2658
  %229 = icmp ult i64 %228, %129, !dbg !2842
  br i1 %229, label %230, label %232, !dbg !2845

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2842
  store i8 34, ptr %231, align 1, !dbg !2842, !tbaa !1052
  br label %232, !dbg !2842

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2845
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2598, metadata !DIExpression()), !dbg !2658
  %234 = icmp ult i64 %233, %129, !dbg !2846
  br i1 %234, label %235, label %237, !dbg !2849

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2846
  store i8 63, ptr %236, align 1, !dbg !2846, !tbaa !1052
  br label %237, !dbg !2846

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2849
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2598, metadata !DIExpression()), !dbg !2658
  br label %433, !dbg !2850

239:                                              ; preds = %151
  br label %249, !dbg !2851

240:                                              ; preds = %151
  br label %249, !dbg !2852

241:                                              ; preds = %151
  br label %247, !dbg !2853

242:                                              ; preds = %151
  br label %247, !dbg !2854

243:                                              ; preds = %151
  br label %249, !dbg !2855

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2856

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2857

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2860

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2862
  call void @llvm.dbg.label(metadata !2621), !dbg !2863
  br i1 %118, label %.loopexit8, label %249, !dbg !2864

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2862
  call void @llvm.dbg.label(metadata !2624), !dbg !2866
  br i1 %108, label %487, label %444, !dbg !2867

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2868

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2869, !tbaa !1052
  %254 = icmp eq i8 %253, 0, !dbg !2871
  br i1 %254, label %255, label %433, !dbg !2872

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2873
  br i1 %256, label %257, label %433, !dbg !2875

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2619, metadata !DIExpression()), !dbg !2754
  br label %258, !dbg !2876

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2754
  br i1 %115, label %260, label %433, !dbg !2877

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2879

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2619, metadata !DIExpression()), !dbg !2754
  br i1 %115, label %262, label %433, !dbg !2880

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2881

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2884
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2886
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2886
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2886
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2599, metadata !DIExpression()), !dbg !2658
  %269 = icmp ult i64 %123, %268, !dbg !2887
  br i1 %269, label %270, label %272, !dbg !2890

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2887
  store i8 39, ptr %271, align 1, !dbg !2887, !tbaa !1052
  br label %272, !dbg !2887

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2598, metadata !DIExpression()), !dbg !2658
  %274 = icmp ult i64 %273, %268, !dbg !2891
  br i1 %274, label %275, label %277, !dbg !2894

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2891
  store i8 92, ptr %276, align 1, !dbg !2891, !tbaa !1052
  br label %277, !dbg !2891

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2894
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2598, metadata !DIExpression()), !dbg !2658
  %279 = icmp ult i64 %278, %268, !dbg !2895
  br i1 %279, label %280, label %282, !dbg !2898

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2895
  store i8 39, ptr %281, align 1, !dbg !2895, !tbaa !1052
  br label %282, !dbg !2895

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2658
  br label %433, !dbg !2899

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2900

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2625, metadata !DIExpression()), !dbg !2901
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !2902
  %287 = load ptr, ptr %286, align 8, !dbg !2902, !tbaa !975
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2902
  %290 = load i16, ptr %289, align 2, !dbg !2902, !tbaa !1084
  %291 = and i16 %290, 16384, !dbg !2902
  %292 = icmp ne i16 %291, 0, !dbg !2904
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2627, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2901
  br label %334, !dbg !2905

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2906
  call void @llvm.dbg.value(metadata ptr %14, metadata !2683, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %14, metadata !2691, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 8, metadata !2695, metadata !DIExpression()), !dbg !2909
  store i64 0, ptr %14, align 8, !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2625, metadata !DIExpression()), !dbg !2901
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2627, metadata !DIExpression()), !dbg !2901
  %294 = icmp eq i64 %152, -1, !dbg !2912
  br i1 %294, label %295, label %297, !dbg !2914

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2915
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2591, metadata !DIExpression()), !dbg !2658
  br label %297, !dbg !2916

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2591, metadata !DIExpression()), !dbg !2658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2917
  %299 = sub i64 %298, %128, !dbg !2918
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !2919
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2635, metadata !DIExpression()), !dbg !2657
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2920

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2625, metadata !DIExpression()), !dbg !2901
  %302 = icmp ult i64 %128, %298, !dbg !2921
  br i1 %302, label %.preheader5, label %329, !dbg !2923

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2924

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2627, metadata !DIExpression()), !dbg !2901
  br label %329, !dbg !2925

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2625, metadata !DIExpression()), !dbg !2901
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2927
  %308 = load i8, ptr %307, align 1, !dbg !2927, !tbaa !1052
  %309 = icmp eq i8 %308, 0, !dbg !2923
  br i1 %309, label %.loopexit6, label %310, !dbg !2924

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2928
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2625, metadata !DIExpression()), !dbg !2901
  %312 = add i64 %311, %128, !dbg !2929
  %313 = icmp eq i64 %311, %299, !dbg !2921
  br i1 %313, label %.loopexit6, label %304, !dbg !2923, !llvm.loop !2930

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2636, metadata !DIExpression()), !dbg !2931
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2932
  %317 = and i1 %316, %109, !dbg !2932
  br i1 %317, label %.preheader3, label %325, !dbg !2932

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2933

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2636, metadata !DIExpression()), !dbg !2931
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2934
  %321 = load i8, ptr %320, align 1, !dbg !2934, !tbaa !1052
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2936

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2636, metadata !DIExpression()), !dbg !2931
  %324 = icmp eq i64 %323, %300, !dbg !2938
  br i1 %324, label %.loopexit4, label %318, !dbg !2933, !llvm.loop !2939

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2941

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2941, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %326, metadata !2943, metadata !DIExpression()), !dbg !2951
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !2953
  %328 = icmp ne i32 %327, 0, !dbg !2954
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2627, metadata !DIExpression()), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2625, metadata !DIExpression()), !dbg !2901
  br label %329, !dbg !2955

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2956

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2627, metadata !DIExpression()), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2625, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2957
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2627, metadata !DIExpression()), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2625, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2957
  call void @llvm.dbg.label(metadata !2649), !dbg !2958
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2959
  br label %624, !dbg !2959

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2754
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2961
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2627, metadata !DIExpression()), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2625, metadata !DIExpression()), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2591, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2619, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2754
  %338 = icmp ult i64 %336, 2, !dbg !2962
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2963
  br i1 %340, label %433, label %341, !dbg !2963

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2644, metadata !DIExpression()), !dbg !2965
  br label %343, !dbg !2966

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2658
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2745
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2620, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2613, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2598, metadata !DIExpression()), !dbg !2658
  br i1 %339, label %394, label %350, !dbg !2967

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2972

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2618, metadata !DIExpression()), !dbg !2754
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2975
  br i1 %352, label %369, label %353, !dbg !2975

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2977
  br i1 %354, label %355, label %357, !dbg !2981

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2977
  store i8 39, ptr %356, align 1, !dbg !2977, !tbaa !1052
  br label %357, !dbg !2977

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2598, metadata !DIExpression()), !dbg !2658
  %359 = icmp ult i64 %358, %129, !dbg !2982
  br i1 %359, label %360, label %362, !dbg !2985

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2982
  store i8 36, ptr %361, align 1, !dbg !2982, !tbaa !1052
  br label %362, !dbg !2982

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2598, metadata !DIExpression()), !dbg !2658
  %364 = icmp ult i64 %363, %129, !dbg !2986
  br i1 %364, label %365, label %367, !dbg !2989

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2986
  store i8 39, ptr %366, align 1, !dbg !2986, !tbaa !1052
  br label %367, !dbg !2986

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2607, metadata !DIExpression()), !dbg !2658
  br label %369, !dbg !2990

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2658
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2598, metadata !DIExpression()), !dbg !2658
  %372 = icmp ult i64 %370, %129, !dbg !2991
  br i1 %372, label %373, label %375, !dbg !2994

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2991
  store i8 92, ptr %374, align 1, !dbg !2991, !tbaa !1052
  br label %375, !dbg !2991

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2994
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2598, metadata !DIExpression()), !dbg !2658
  %377 = icmp ult i64 %376, %129, !dbg !2995
  br i1 %377, label %378, label %382, !dbg !2998

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2995
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2995
  store i8 %380, ptr %381, align 1, !dbg !2995, !tbaa !1052
  br label %382, !dbg !2995

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2598, metadata !DIExpression()), !dbg !2658
  %384 = icmp ult i64 %383, %129, !dbg !2999
  br i1 %384, label %385, label %390, !dbg !3002

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2999
  %388 = or disjoint i8 %387, 48, !dbg !2999
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2999
  store i8 %388, ptr %389, align 1, !dbg !2999, !tbaa !1052
  br label %390, !dbg !2999

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2598, metadata !DIExpression()), !dbg !2658
  %392 = and i8 %349, 7, !dbg !3003
  %393 = or disjoint i8 %392, 48, !dbg !3004
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2620, metadata !DIExpression()), !dbg !2754
  br label %401, !dbg !3005

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3006

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3007
  br i1 %396, label %397, label %399, !dbg !3012

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3007
  store i8 92, ptr %398, align 1, !dbg !3007, !tbaa !1052
  br label %399, !dbg !3007

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2615, metadata !DIExpression()), !dbg !2754
  br label %401, !dbg !3013

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2658
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2620, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2598, metadata !DIExpression()), !dbg !2658
  %407 = add i64 %346, 1, !dbg !3014
  %408 = icmp ugt i64 %342, %407, !dbg !3016
  br i1 %408, label %409, label %.loopexit2, !dbg !3017

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3018
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3018
  br i1 %411, label %423, label %412, !dbg !3018

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3021
  br i1 %413, label %414, label %416, !dbg !3025

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3021
  store i8 39, ptr %415, align 1, !dbg !3021, !tbaa !1052
  br label %416, !dbg !3021

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3025
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2598, metadata !DIExpression()), !dbg !2658
  %418 = icmp ult i64 %417, %129, !dbg !3026
  br i1 %418, label %419, label %421, !dbg !3029

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3026
  store i8 39, ptr %420, align 1, !dbg !3026, !tbaa !1052
  br label %421, !dbg !3026

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2658
  br label %423, !dbg !3030

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3031
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2598, metadata !DIExpression()), !dbg !2658
  %426 = icmp ult i64 %424, %129, !dbg !3032
  br i1 %426, label %427, label %429, !dbg !3035

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3032
  store i8 %406, ptr %428, align 1, !dbg !3032, !tbaa !1052
  br label %429, !dbg !3032

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2613, metadata !DIExpression()), !dbg !2745
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3036
  %432 = load i8, ptr %431, align 1, !dbg !3036, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2620, metadata !DIExpression()), !dbg !2754
  br label %343, !dbg !3037, !llvm.loop !3038

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3041
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2658
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2662
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2745
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2754
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2620, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2615, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2613, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2591, metadata !DIExpression()), !dbg !2658
  br i1 %111, label %455, label %444, !dbg !3042

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
  br i1 %120, label %456, label %476, !dbg !3044

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3045

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
  %467 = lshr i8 %458, 5, !dbg !3046
  %468 = zext nneg i8 %467 to i64, !dbg !3046
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3047
  %470 = load i32, ptr %469, align 4, !dbg !3047, !tbaa !1043
  %471 = and i8 %458, 31, !dbg !3048
  %472 = zext nneg i8 %471 to i32, !dbg !3048
  %473 = shl nuw i32 1, %472, !dbg !3049
  %474 = and i32 %470, %473, !dbg !3049
  %475 = icmp eq i32 %474, 0, !dbg !3049
  br i1 %475, label %476, label %487, !dbg !3050

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
  br i1 %153, label %487, label %523, !dbg !3051

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3041
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2658
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2662
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3052
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2754
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2620, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2613, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2591, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.label(metadata !2647), !dbg !3053
  br i1 %109, label %.loopexit8, label %497, !dbg !3054

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2618, metadata !DIExpression()), !dbg !2754
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3056
  br i1 %498, label %515, label %499, !dbg !3056

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3058
  br i1 %500, label %501, label %503, !dbg !3062

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3058
  store i8 39, ptr %502, align 1, !dbg !3058, !tbaa !1052
  br label %503, !dbg !3058

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2598, metadata !DIExpression()), !dbg !2658
  %505 = icmp ult i64 %504, %496, !dbg !3063
  br i1 %505, label %506, label %508, !dbg !3066

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3063
  store i8 36, ptr %507, align 1, !dbg !3063, !tbaa !1052
  br label %508, !dbg !3063

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2598, metadata !DIExpression()), !dbg !2658
  %510 = icmp ult i64 %509, %496, !dbg !3067
  br i1 %510, label %511, label %513, !dbg !3070

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3067
  store i8 39, ptr %512, align 1, !dbg !3067, !tbaa !1052
  br label %513, !dbg !3067

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2607, metadata !DIExpression()), !dbg !2658
  br label %515, !dbg !3071

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2754
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2598, metadata !DIExpression()), !dbg !2658
  %518 = icmp ult i64 %516, %496, !dbg !3072
  br i1 %518, label %519, label %521, !dbg !3075

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3072
  store i8 92, ptr %520, align 1, !dbg !3072, !tbaa !1052
  br label %521, !dbg !3072

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2620, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2613, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2591, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.label(metadata !2648), !dbg !3076
  br label %547, !dbg !3077

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2658
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2754
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2745
  br label %523, !dbg !3077

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3041
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2658
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2662
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3052
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3080
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2620, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2613, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2591, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.label(metadata !2648), !dbg !3076
  %534 = xor i1 %528, true, !dbg !3077
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3077
  br i1 %535, label %547, label %536, !dbg !3077

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3081
  br i1 %537, label %538, label %540, !dbg !3085

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3081
  store i8 39, ptr %539, align 1, !dbg !3081, !tbaa !1052
  br label %540, !dbg !3081

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2598, metadata !DIExpression()), !dbg !2658
  %542 = icmp ult i64 %541, %533, !dbg !3086
  br i1 %542, label %543, label %545, !dbg !3089

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3086
  store i8 39, ptr %544, align 1, !dbg !3086, !tbaa !1052
  br label %545, !dbg !3086

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2658
  br label %547, !dbg !3090

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2754
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2598, metadata !DIExpression()), !dbg !2658
  %557 = icmp ult i64 %555, %548, !dbg !3091
  br i1 %557, label %558, label %560, !dbg !3094

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3091
  store i8 %549, ptr %559, align 1, !dbg !3091, !tbaa !1052
  br label %560, !dbg !3091

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2598, metadata !DIExpression()), !dbg !2658
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3095
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2658
  br label %563, !dbg !3096

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3041
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2658
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2662
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3052
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2613, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2591, metadata !DIExpression()), !dbg !2658
  %572 = add i64 %570, 1, !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2613, metadata !DIExpression()), !dbg !2745
  br label %121, !dbg !3098, !llvm.loop !3099

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2733
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2662
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2589, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2599, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2598, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2591, metadata !DIExpression()), !dbg !2658
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3101
  %575 = xor i1 %109, true, !dbg !3103
  %576 = or i1 %574, %575, !dbg !3103
  %577 = or i1 %576, %110, !dbg !3103
  br i1 %577, label %578, label %.loopexit13, !dbg !3103

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3104
  %580 = xor i1 %.lcssa38, true, !dbg !3104
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3104
  br i1 %581, label %589, label %582, !dbg !3104

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3106

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2662
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3108
  br label %638, !dbg !3110

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3111
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3113
  br i1 %588, label %27, label %589, !dbg !3113

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2658
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2733
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3114
  %592 = or i1 %591, %590, !dbg !3116
  br i1 %592, label %608, label %593, !dbg !3116

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2600, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2598, metadata !DIExpression()), !dbg !2658
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3117, !tbaa !1052
  %595 = icmp eq i8 %594, 0, !dbg !3120
  br i1 %595, label %608, label %.preheader, !dbg !3120

.preheader:                                       ; preds = %593
  br label %596, !dbg !3120

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2600, metadata !DIExpression()), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2598, metadata !DIExpression()), !dbg !2658
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3121
  br i1 %600, label %601, label %603, !dbg !3124

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3121
  store i8 %597, ptr %602, align 1, !dbg !3121, !tbaa !1052
  br label %603, !dbg !3121

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2598, metadata !DIExpression()), !dbg !2658
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3125
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2600, metadata !DIExpression()), !dbg !2658
  %606 = load i8, ptr %605, align 1, !dbg !3117, !tbaa !1052
  %607 = icmp eq i8 %606, 0, !dbg !3120
  br i1 %607, label %.loopexit, label %596, !dbg !3120, !llvm.loop !3126

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3124
  br label %608, !dbg !3128

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2598, metadata !DIExpression()), !dbg !2658
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3128
  br i1 %610, label %611, label %638, !dbg !3130

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3131
  store i8 0, ptr %612, align 1, !dbg !3132, !tbaa !1052
  br label %638, !dbg !3131

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2649), !dbg !2958
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3133
  br i1 %614, label %624, label %630, !dbg !2959

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2754
  br label %615, !dbg !3133

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3133

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3133

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2649), !dbg !2958
  %622 = icmp eq i32 %616, 2, !dbg !3133
  %623 = select i1 %619, i32 4, i32 2, !dbg !2959
  br i1 %622, label %624, label %630, !dbg !2959

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2959

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2760
  br label %630, !dbg !3134

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2592, metadata !DIExpression()), !dbg !2658
  %636 = and i32 %5, -3, !dbg !3134
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3135
  br label %638, !dbg !3136

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3137
}

; Function Attrs: nounwind
declare !dbg !3138 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3141 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3144 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3146 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3150, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3153
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3152, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata ptr %0, metadata !3154, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata ptr null, metadata !3160, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata ptr %2, metadata !3161, metadata !DIExpression()), !dbg !3167
  %4 = icmp eq ptr %2, null, !dbg !3169
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3169
  call void @llvm.dbg.value(metadata ptr %5, metadata !3162, metadata !DIExpression()), !dbg !3167
  %6 = tail call ptr @__errno_location() #43, !dbg !3170
  %7 = load i32, ptr %6, align 4, !dbg !3170, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %7, metadata !3163, metadata !DIExpression()), !dbg !3167
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3171
  %9 = load i32, ptr %8, align 4, !dbg !3171, !tbaa !2532
  %10 = or i32 %9, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %10, metadata !3164, metadata !DIExpression()), !dbg !3167
  %11 = load i32, ptr %5, align 8, !dbg !3173, !tbaa !2482
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3174
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3175
  %14 = load ptr, ptr %13, align 8, !dbg !3175, !tbaa !2553
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3176
  %16 = load ptr, ptr %15, align 8, !dbg !3176, !tbaa !2556
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3177
  %18 = add i64 %17, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %18, metadata !3165, metadata !DIExpression()), !dbg !3167
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %19, metadata !3166, metadata !DIExpression()), !dbg !3167
  %20 = load i32, ptr %5, align 8, !dbg !3180, !tbaa !2482
  %21 = load ptr, ptr %13, align 8, !dbg !3181, !tbaa !2553
  %22 = load ptr, ptr %15, align 8, !dbg !3182, !tbaa !2556
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3183
  store i32 %7, ptr %6, align 4, !dbg !3184, !tbaa !1043
  ret ptr %19, !dbg !3185
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3155 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3154, metadata !DIExpression()), !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3186
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3160, metadata !DIExpression()), !dbg !3186
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3161, metadata !DIExpression()), !dbg !3186
  %5 = icmp eq ptr %3, null, !dbg !3187
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3187
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3162, metadata !DIExpression()), !dbg !3186
  %7 = tail call ptr @__errno_location() #43, !dbg !3188
  %8 = load i32, ptr %7, align 4, !dbg !3188, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3163, metadata !DIExpression()), !dbg !3186
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3189
  %10 = load i32, ptr %9, align 4, !dbg !3189, !tbaa !2532
  %11 = icmp eq ptr %2, null, !dbg !3190
  %12 = zext i1 %11 to i32, !dbg !3190
  %13 = or i32 %10, %12, !dbg !3191
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3164, metadata !DIExpression()), !dbg !3186
  %14 = load i32, ptr %6, align 8, !dbg !3192, !tbaa !2482
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3193
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3194
  %17 = load ptr, ptr %16, align 8, !dbg !3194, !tbaa !2553
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3195
  %19 = load ptr, ptr %18, align 8, !dbg !3195, !tbaa !2556
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3196
  %21 = add i64 %20, 1, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3165, metadata !DIExpression()), !dbg !3186
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !3198
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3166, metadata !DIExpression()), !dbg !3186
  %23 = load i32, ptr %6, align 8, !dbg !3199, !tbaa !2482
  %24 = load ptr, ptr %16, align 8, !dbg !3200, !tbaa !2553
  %25 = load ptr, ptr %18, align 8, !dbg !3201, !tbaa !2556
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3202
  store i32 %8, ptr %7, align 4, !dbg !3203, !tbaa !1043
  br i1 %11, label %28, label %27, !dbg !3204

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3205, !tbaa !3207
  br label %28, !dbg !3208

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3209
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3210 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3215, !tbaa !975
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3212, metadata !DIExpression()), !dbg !3216
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3213, metadata !DIExpression()), !dbg !3217
  %2 = load i32, ptr @nslots, align 4, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3213, metadata !DIExpression()), !dbg !3217
  %3 = icmp sgt i32 %2, 1, !dbg !3218
  br i1 %3, label %4, label %6, !dbg !3220

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3218
  br label %10, !dbg !3220

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3221

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3221
  %8 = load ptr, ptr %7, align 8, !dbg !3221, !tbaa !3223
  %9 = icmp eq ptr %8, @slot0, !dbg !3225
  br i1 %9, label %17, label %16, !dbg !3226

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3213, metadata !DIExpression()), !dbg !3217
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3227
  %13 = load ptr, ptr %12, align 8, !dbg !3227, !tbaa !3223
  tail call void @free(ptr noundef %13) #40, !dbg !3228
  %14 = add nuw nsw i64 %11, 1, !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3213, metadata !DIExpression()), !dbg !3217
  %15 = icmp eq i64 %14, %5, !dbg !3218
  br i1 %15, label %.loopexit, label %10, !dbg !3220, !llvm.loop !3230

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3232
  store i64 256, ptr @slotvec0, align 8, !dbg !3234, !tbaa !3235
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3236, !tbaa !3223
  br label %17, !dbg !3237

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3238
  br i1 %18, label %20, label %19, !dbg !3240

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3241
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3243, !tbaa !975
  br label %20, !dbg !3244

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3245, !tbaa !1043
  ret void, !dbg !3246
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3247 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3250, metadata !DIExpression()), !dbg !3251
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3252
  ret ptr %3, !dbg !3253
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3254 {
  %5 = alloca i64, align 8, !DIAssignID !3274
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3268, metadata !DIExpression(), metadata !3274, metadata ptr %5, metadata !DIExpression()), !dbg !3275
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3259, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3260, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3261, metadata !DIExpression()), !dbg !3276
  %6 = tail call ptr @__errno_location() #43, !dbg !3277
  %7 = load i32, ptr %6, align 4, !dbg !3277, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3262, metadata !DIExpression()), !dbg !3276
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3278, !tbaa !975
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3263, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3264, metadata !DIExpression()), !dbg !3276
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3279
  br i1 %9, label %10, label %11, !dbg !3279

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3281
  unreachable, !dbg !3281

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3282, !tbaa !1043
  %13 = icmp sgt i32 %12, %0, !dbg !3283
  br i1 %13, label %32, label %14, !dbg !3284

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3285
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3265, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3286
  %16 = sext i32 %12 to i64, !dbg !3287
  store i64 %16, ptr %5, align 8, !dbg !3288, !tbaa !3207, !DIAssignID !3289
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3268, metadata !DIExpression(), metadata !3289, metadata ptr %5, metadata !DIExpression()), !dbg !3275
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3290
  %18 = add nuw nsw i32 %0, 1, !dbg !3291
  %19 = sub i32 %18, %12, !dbg !3292
  %20 = sext i32 %19 to i64, !dbg !3293
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3294
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3263, metadata !DIExpression()), !dbg !3276
  store ptr %21, ptr @slotvec, align 8, !dbg !3295, !tbaa !975
  br i1 %15, label %22, label %23, !dbg !3296

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3297, !tbaa.struct !3299
  br label %23, !dbg !3300

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3301, !tbaa !1043
  %25 = sext i32 %24 to i64, !dbg !3302
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3302
  %27 = load i64, ptr %5, align 8, !dbg !3303, !tbaa !3207
  %28 = sub nsw i64 %27, %25, !dbg !3304
  %29 = shl i64 %28, 4, !dbg !3305
  call void @llvm.dbg.value(metadata ptr %26, metadata !2691, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %29, metadata !2695, metadata !DIExpression()), !dbg !3306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3308
  %30 = load i64, ptr %5, align 8, !dbg !3309, !tbaa !3207
  %31 = trunc i64 %30 to i32, !dbg !3309
  store i32 %31, ptr @nslots, align 4, !dbg !3310, !tbaa !1043
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3311
  br label %32, !dbg !3312

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3276
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3263, metadata !DIExpression()), !dbg !3276
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3313
  %36 = load i64, ptr %35, align 8, !dbg !3314, !tbaa !3235
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3269, metadata !DIExpression()), !dbg !3315
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3316
  %38 = load ptr, ptr %37, align 8, !dbg !3316, !tbaa !3223
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3271, metadata !DIExpression()), !dbg !3315
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3317
  %40 = load i32, ptr %39, align 4, !dbg !3317, !tbaa !2532
  %41 = or i32 %40, 1, !dbg !3318
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3272, metadata !DIExpression()), !dbg !3315
  %42 = load i32, ptr %3, align 8, !dbg !3319, !tbaa !2482
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3320
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3321
  %45 = load ptr, ptr %44, align 8, !dbg !3321, !tbaa !2553
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3322
  %47 = load ptr, ptr %46, align 8, !dbg !3322, !tbaa !2556
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3273, metadata !DIExpression()), !dbg !3315
  %49 = icmp ugt i64 %36, %48, !dbg !3324
  br i1 %49, label %60, label %50, !dbg !3326

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3269, metadata !DIExpression()), !dbg !3315
  store i64 %51, ptr %35, align 8, !dbg !3329, !tbaa !3235
  %52 = icmp eq ptr %38, @slot0, !dbg !3330
  br i1 %52, label %54, label %53, !dbg !3332

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3333
  br label %54, !dbg !3333

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !3334
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3271, metadata !DIExpression()), !dbg !3315
  store ptr %55, ptr %37, align 8, !dbg !3335, !tbaa !3223
  %56 = load i32, ptr %3, align 8, !dbg !3336, !tbaa !2482
  %57 = load ptr, ptr %44, align 8, !dbg !3337, !tbaa !2553
  %58 = load ptr, ptr %46, align 8, !dbg !3338, !tbaa !2556
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3339
  br label %60, !dbg !3340

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3315
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3271, metadata !DIExpression()), !dbg !3315
  store i32 %7, ptr %6, align 4, !dbg !3341, !tbaa !1043
  ret ptr %61, !dbg !3342
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3343 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3348, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3349, metadata !DIExpression()), !dbg !3350
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3351
  ret ptr %4, !dbg !3352
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3353 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 0, metadata !3249, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata ptr %0, metadata !3250, metadata !DIExpression()), !dbg !3357
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3359
  ret ptr %2, !dbg !3360
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %0, metadata !3348, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %1, metadata !3349, metadata !DIExpression()), !dbg !3368
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3370
  ret ptr %3, !dbg !3371
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3372 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3379, metadata !DIExpression(), metadata !3380, metadata ptr %4, metadata !DIExpression()), !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3376, metadata !DIExpression()), !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3377, metadata !DIExpression()), !dbg !3381
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3378, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3382
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3383), !dbg !3386
  call void @llvm.dbg.value(metadata i32 %1, metadata !3387, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3392, metadata !DIExpression()), !dbg !3395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3395, !alias.scope !3383, !DIAssignID !3396
  call void @llvm.dbg.assign(metadata i8 0, metadata !3379, metadata !DIExpression(), metadata !3396, metadata ptr %4, metadata !DIExpression()), !dbg !3381
  %5 = icmp eq i32 %1, 10, !dbg !3397
  br i1 %5, label %6, label %7, !dbg !3399

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3400, !noalias !3383
  unreachable, !dbg !3400

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3401, !tbaa !2482, !alias.scope !3383, !DIAssignID !3402
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3402, metadata ptr %4, metadata !DIExpression()), !dbg !3381
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3403
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3404
  ret ptr %8, !dbg !3405
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3406 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3414, metadata !DIExpression(), metadata !3415, metadata ptr %5, metadata !DIExpression()), !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()), !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3411, metadata !DIExpression()), !dbg !3416
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3412, metadata !DIExpression()), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3418), !dbg !3421
  call void @llvm.dbg.value(metadata i32 %1, metadata !3387, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3392, metadata !DIExpression()), !dbg !3424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3424, !alias.scope !3418, !DIAssignID !3425
  call void @llvm.dbg.assign(metadata i8 0, metadata !3414, metadata !DIExpression(), metadata !3425, metadata ptr %5, metadata !DIExpression()), !dbg !3416
  %6 = icmp eq i32 %1, 10, !dbg !3426
  br i1 %6, label %7, label %8, !dbg !3427

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3428, !noalias !3418
  unreachable, !dbg !3428

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3429, !tbaa !2482, !alias.scope !3418, !DIAssignID !3430
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3430, metadata ptr %5, metadata !DIExpression()), !dbg !3416
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3431
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3432
  ret ptr %9, !dbg !3433
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3434 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3440
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3438, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3439, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3379, metadata !DIExpression(), metadata !3440, metadata ptr %3, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %0, metadata !3377, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata ptr %1, metadata !3378, metadata !DIExpression()), !dbg !3442
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3445), !dbg !3448
  call void @llvm.dbg.value(metadata i32 %0, metadata !3387, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3392, metadata !DIExpression()), !dbg !3451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3451, !alias.scope !3445, !DIAssignID !3452
  call void @llvm.dbg.assign(metadata i8 0, metadata !3379, metadata !DIExpression(), metadata !3452, metadata ptr %3, metadata !DIExpression()), !dbg !3442
  %4 = icmp eq i32 %0, 10, !dbg !3453
  br i1 %4, label %5, label %6, !dbg !3454

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3455, !noalias !3445
  unreachable, !dbg !3455

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3456, !tbaa !2482, !alias.scope !3445, !DIAssignID !3457
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3457, metadata ptr %3, metadata !DIExpression()), !dbg !3442
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3458
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3459
  ret ptr %7, !dbg !3460
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3461 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3468
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3465, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3466, metadata !DIExpression()), !dbg !3469
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3467, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3414, metadata !DIExpression(), metadata !3468, metadata ptr %4, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 0, metadata !3410, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %1, metadata !3412, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %2, metadata !3413, metadata !DIExpression()), !dbg !3470
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %0, metadata !3387, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3392, metadata !DIExpression()), !dbg !3479
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3479, !alias.scope !3473, !DIAssignID !3480
  call void @llvm.dbg.assign(metadata i8 0, metadata !3414, metadata !DIExpression(), metadata !3480, metadata ptr %4, metadata !DIExpression()), !dbg !3470
  %5 = icmp eq i32 %0, 10, !dbg !3481
  br i1 %5, label %6, label %7, !dbg !3482

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3483, !noalias !3473
  unreachable, !dbg !3483

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3484, !tbaa !2482, !alias.scope !3473, !DIAssignID !3485
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3485, metadata ptr %4, metadata !DIExpression()), !dbg !3470
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3487
  ret ptr %8, !dbg !3488
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3489 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3497
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3497, metadata ptr %4, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3493, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3494, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3495, metadata !DIExpression()), !dbg !3498
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3500, !tbaa.struct !3501, !DIAssignID !3502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3502, metadata ptr %4, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2499, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2500, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2501, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2502, metadata !DIExpression()), !dbg !3503
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3505
  %6 = lshr i8 %2, 5, !dbg !3506
  %7 = zext nneg i8 %6 to i64, !dbg !3506
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3507
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2503, metadata !DIExpression()), !dbg !3503
  %9 = and i8 %2, 31, !dbg !3508
  %10 = zext nneg i8 %9 to i32, !dbg !3508
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2505, metadata !DIExpression()), !dbg !3503
  %11 = load i32, ptr %8, align 4, !dbg !3509, !tbaa !1043
  %12 = lshr i32 %11, %10, !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2506, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3503
  %13 = and i32 %12, 1, !dbg !3511
  %14 = xor i32 %13, 1, !dbg !3511
  %15 = shl nuw i32 %14, %10, !dbg !3512
  %16 = xor i32 %15, %11, !dbg !3513
  store i32 %16, ptr %8, align 4, !dbg !3513, !tbaa !1043
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3514
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3515
  ret ptr %17, !dbg !3516
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3517 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3523
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3524
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3522, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3523, metadata ptr %3, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %0, metadata !3493, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 -1, metadata !3494, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8 %1, metadata !3495, metadata !DIExpression()), !dbg !3525
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3528, !tbaa.struct !3501, !DIAssignID !3529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3529, metadata ptr %3, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %3, metadata !2499, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8 %1, metadata !2500, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 1, metadata !2501, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8 %1, metadata !2502, metadata !DIExpression()), !dbg !3530
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3532
  %5 = lshr i8 %1, 5, !dbg !3533
  %6 = zext nneg i8 %5 to i64, !dbg !3533
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %7, metadata !2503, metadata !DIExpression()), !dbg !3530
  %8 = and i8 %1, 31, !dbg !3535
  %9 = zext nneg i8 %8 to i32, !dbg !3535
  call void @llvm.dbg.value(metadata i32 %9, metadata !2505, metadata !DIExpression()), !dbg !3530
  %10 = load i32, ptr %7, align 4, !dbg !3536, !tbaa !1043
  %11 = lshr i32 %10, %9, !dbg !3537
  call void @llvm.dbg.value(metadata i32 %11, metadata !2506, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3530
  %12 = and i32 %11, 1, !dbg !3538
  %13 = xor i32 %12, 1, !dbg !3538
  %14 = shl nuw i32 %13, %9, !dbg !3539
  %15 = xor i32 %14, %10, !dbg !3540
  store i32 %15, ptr %7, align 4, !dbg !3540, !tbaa !1043
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3541
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3542
  ret ptr %16, !dbg !3543
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3544 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3547
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3546, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8 58, metadata !3522, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3547, metadata ptr %2, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata ptr %0, metadata !3493, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 -1, metadata !3494, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i8 58, metadata !3495, metadata !DIExpression()), !dbg !3551
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3554, !tbaa.struct !3501, !DIAssignID !3555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3555, metadata ptr %2, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata ptr %2, metadata !2499, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i8 58, metadata !2500, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 1, metadata !2501, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i8 58, metadata !2502, metadata !DIExpression()), !dbg !3556
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3558
  call void @llvm.dbg.value(metadata ptr %3, metadata !2503, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 26, metadata !2505, metadata !DIExpression()), !dbg !3556
  %4 = load i32, ptr %3, align 4, !dbg !3559, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %4, metadata !2506, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3556
  %5 = or i32 %4, 67108864, !dbg !3560
  store i32 %5, ptr %3, align 4, !dbg !3560, !tbaa !1043
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3561
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3562
  ret ptr %6, !dbg !3563
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3564 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3568
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3566, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3568, metadata ptr %3, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %0, metadata !3493, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %1, metadata !3494, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 58, metadata !3495, metadata !DIExpression()), !dbg !3570
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3573, !tbaa.struct !3501, !DIAssignID !3574
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3496, metadata !DIExpression(), metadata !3574, metadata ptr %3, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %3, metadata !2499, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8 58, metadata !2500, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i32 1, metadata !2501, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8 58, metadata !2502, metadata !DIExpression()), !dbg !3575
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3577
  call void @llvm.dbg.value(metadata ptr %4, metadata !2503, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i32 26, metadata !2505, metadata !DIExpression()), !dbg !3575
  %5 = load i32, ptr %4, align 4, !dbg !3578, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %5, metadata !2506, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3575
  %6 = or i32 %5, 67108864, !dbg !3579
  store i32 %6, ptr %4, align 4, !dbg !3579, !tbaa !1043
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3580
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3581
  ret ptr %7, !dbg !3582
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3583 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3589
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3588, metadata !DIExpression(), metadata !3589, metadata ptr %4, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3392, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3591
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3585, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3586, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3587, metadata !DIExpression()), !dbg !3590
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3593
  call void @llvm.dbg.value(metadata i32 %1, metadata !3387, metadata !DIExpression()), !dbg !3594
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3594
  %5 = icmp eq i32 %1, 10, !dbg !3595
  br i1 %5, label %6, label %7, !dbg !3596

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3597, !noalias !3598
  unreachable, !dbg !3597

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3392, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3594
  store i32 %1, ptr %4, align 8, !dbg !3601, !tbaa.struct !3501, !DIAssignID !3602
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3601
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3601
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3588, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3602, metadata ptr %4, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3588, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3603, metadata ptr %8, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2499, metadata !DIExpression()), !dbg !3604
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2500, metadata !DIExpression()), !dbg !3604
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2501, metadata !DIExpression()), !dbg !3604
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2502, metadata !DIExpression()), !dbg !3604
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3606
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2503, metadata !DIExpression()), !dbg !3604
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2505, metadata !DIExpression()), !dbg !3604
  %10 = load i32, ptr %9, align 4, !dbg !3607, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2506, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3604
  %11 = or i32 %10, 67108864, !dbg !3608
  store i32 %11, ptr %9, align 4, !dbg !3608, !tbaa !1043, !DIAssignID !3609
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3588, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3609, metadata ptr %9, metadata !DIExpression()), !dbg !3590
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3610
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3611
  ret ptr %12, !dbg !3612
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3613 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3621
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3617, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3618, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3619, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3621, metadata ptr %5, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %1, metadata !3629, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %2, metadata !3630, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %3, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 -1, metadata !3632, metadata !DIExpression()), !dbg !3633
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3636, !tbaa.struct !3501, !DIAssignID !3637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3637, metadata ptr %5, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3638, metadata ptr undef, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %5, metadata !2539, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr %1, metadata !2540, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr %2, metadata !2541, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata ptr %5, metadata !2539, metadata !DIExpression()), !dbg !3639
  store i32 10, ptr %5, align 8, !dbg !3641, !tbaa !2482, !DIAssignID !3642
  call void @llvm.dbg.assign(metadata i32 10, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3642, metadata ptr %5, metadata !DIExpression()), !dbg !3633
  %6 = icmp ne ptr %1, null, !dbg !3643
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3644
  br i1 %8, label %10, label %9, !dbg !3644

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3645
  unreachable, !dbg !3645

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3646
  store ptr %1, ptr %11, align 8, !dbg !3647, !tbaa !2553, !DIAssignID !3648
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3648, metadata ptr %11, metadata !DIExpression()), !dbg !3633
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3649
  store ptr %2, ptr %12, align 8, !dbg !3650, !tbaa !2556, !DIAssignID !3651
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3651, metadata ptr %12, metadata !DIExpression()), !dbg !3633
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3652
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3653
  ret ptr %13, !dbg !3654
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3624 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3655, metadata ptr %6, metadata !DIExpression()), !dbg !3656
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3656
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3629, metadata !DIExpression()), !dbg !3656
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3630, metadata !DIExpression()), !dbg !3656
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3631, metadata !DIExpression()), !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3632, metadata !DIExpression()), !dbg !3656
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3658, !tbaa.struct !3501, !DIAssignID !3659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3659, metadata ptr %6, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3660, metadata ptr undef, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %6, metadata !2539, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %1, metadata !2540, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %2, metadata !2541, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %6, metadata !2539, metadata !DIExpression()), !dbg !3661
  store i32 10, ptr %6, align 8, !dbg !3663, !tbaa !2482, !DIAssignID !3664
  call void @llvm.dbg.assign(metadata i32 10, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3664, metadata ptr %6, metadata !DIExpression()), !dbg !3656
  %7 = icmp ne ptr %1, null, !dbg !3665
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3666
  br i1 %9, label %11, label %10, !dbg !3666

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3667
  unreachable, !dbg !3667

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3668
  store ptr %1, ptr %12, align 8, !dbg !3669, !tbaa !2553, !DIAssignID !3670
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3670, metadata ptr %12, metadata !DIExpression()), !dbg !3656
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3671
  store ptr %2, ptr %13, align 8, !dbg !3672, !tbaa !2556, !DIAssignID !3673
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3673, metadata ptr %13, metadata !DIExpression()), !dbg !3656
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3674
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3675
  ret ptr %14, !dbg !3676
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3677 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3682, metadata !DIExpression()), !dbg !3685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !3617, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %1, metadata !3619, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr %2, metadata !3620, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3684, metadata ptr %4, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %1, metadata !3630, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %2, metadata !3631, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 -1, metadata !3632, metadata !DIExpression()), !dbg !3688
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3691, !tbaa.struct !3501, !DIAssignID !3692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3692, metadata ptr %4, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3693, metadata ptr undef, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %4, metadata !2539, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %1, metadata !2541, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %4, metadata !2539, metadata !DIExpression()), !dbg !3694
  store i32 10, ptr %4, align 8, !dbg !3696, !tbaa !2482, !DIAssignID !3697
  call void @llvm.dbg.assign(metadata i32 10, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3697, metadata ptr %4, metadata !DIExpression()), !dbg !3688
  %5 = icmp ne ptr %0, null, !dbg !3698
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3699
  br i1 %7, label %9, label %8, !dbg !3699

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3700
  unreachable, !dbg !3700

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3701
  store ptr %0, ptr %10, align 8, !dbg !3702, !tbaa !2553, !DIAssignID !3703
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3703, metadata ptr %10, metadata !DIExpression()), !dbg !3688
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3704
  store ptr %1, ptr %11, align 8, !dbg !3705, !tbaa !2556, !DIAssignID !3706
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3706, metadata ptr %11, metadata !DIExpression()), !dbg !3688
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3708
  ret ptr %12, !dbg !3709
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3710 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3718
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3714, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3715, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3716, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3718, metadata ptr %5, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %1, metadata !3630, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %2, metadata !3631, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %3, metadata !3632, metadata !DIExpression()), !dbg !3720
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3723, !tbaa.struct !3501, !DIAssignID !3724
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(), metadata !3724, metadata ptr %5, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3725, metadata ptr undef, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %5, metadata !2539, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %1, metadata !2541, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata ptr %5, metadata !2539, metadata !DIExpression()), !dbg !3726
  store i32 10, ptr %5, align 8, !dbg !3728, !tbaa !2482, !DIAssignID !3729
  call void @llvm.dbg.assign(metadata i32 10, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3729, metadata ptr %5, metadata !DIExpression()), !dbg !3720
  %6 = icmp ne ptr %0, null, !dbg !3730
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3731
  br i1 %8, label %10, label %9, !dbg !3731

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3732
  unreachable, !dbg !3732

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3733
  store ptr %0, ptr %11, align 8, !dbg !3734, !tbaa !2553, !DIAssignID !3735
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3735, metadata ptr %11, metadata !DIExpression()), !dbg !3720
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3736
  store ptr %1, ptr %12, align 8, !dbg !3737, !tbaa !2556, !DIAssignID !3738
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3623, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3738, metadata ptr %12, metadata !DIExpression()), !dbg !3720
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3739
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3740
  ret ptr %13, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3742 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3746, metadata !DIExpression()), !dbg !3749
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3749
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3748, metadata !DIExpression()), !dbg !3749
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3750
  ret ptr %4, !dbg !3751
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3752 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3757, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i32 0, metadata !3746, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3759
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3761
  ret ptr %3, !dbg !3762
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3763 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3769
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3768, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 %0, metadata !3746, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 -1, metadata !3748, metadata !DIExpression()), !dbg !3770
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3772
  ret ptr %3, !dbg !3773
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3774 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 0, metadata !3767, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %0, metadata !3768, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3746, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i64 -1, metadata !3748, metadata !DIExpression()), !dbg !3782
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3784
  ret ptr %2, !dbg !3785
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @savewd_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #26 !dbg !3786 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3791, metadata !DIExpression()), !dbg !3792
  store i32 0, ptr %0, align 4, !dbg !3793, !tbaa !1927
  ret void, !dbg !3794
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @savewd_errno(ptr nocapture noundef readonly %0) local_unnamed_addr #27 !dbg !3795 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3802
  %2 = load i32, ptr %0, align 4, !dbg !3803, !tbaa !1927
  %3 = icmp ult i32 %2, 4, !dbg !3804
  br i1 %3, label %7, label %4, !dbg !3805

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3806
  %6 = load i32, ptr %5, align 4, !dbg !3807, !tbaa !1052
  br label %7, !dbg !3805

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ], !dbg !3805
  ret i32 %8, !dbg !3808
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_chdir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #10 !dbg !3809 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3813, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3814, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3815, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3816, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3817, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3818, metadata !DIExpression()), !dbg !3822
  %5 = icmp eq ptr %3, null, !dbg !3823
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7, !dbg !3825
  br i1 %8, label %27, label %9, !dbg !3825

9:                                                ; preds = %4
  %10 = shl i32 %2, 15, !dbg !3826
  %11 = and i32 %10, 32768, !dbg !3826
  %12 = or disjoint i32 %11, 18688, !dbg !3828
  %13 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %1, i32 noundef %12) #40, !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3817, metadata !DIExpression()), !dbg !3822
  br i1 %5, label %18, label %14, !dbg !3830

14:                                               ; preds = %9
  store i32 %13, ptr %3, align 4, !dbg !3831, !tbaa !1043
  %15 = tail call ptr @__errno_location() #43, !dbg !3834
  %16 = load i32, ptr %15, align 4, !dbg !3834, !tbaa !1043
  %17 = getelementptr inbounds i32, ptr %3, i64 1, !dbg !3835
  store i32 %16, ptr %17, align 4, !dbg !3836, !tbaa !1043
  br label %18, !dbg !3837

18:                                               ; preds = %14, %9
  %19 = icmp slt i32 %13, 0, !dbg !3838
  br i1 %19, label %20, label %24, !dbg !3840

20:                                               ; preds = %18
  %21 = tail call ptr @__errno_location() #43, !dbg !3841
  %22 = load i32, ptr %21, align 4, !dbg !3841, !tbaa !1043
  %23 = icmp eq i32 %22, 13, !dbg !3842
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3818, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3817, metadata !DIExpression()), !dbg !3822
  br i1 %23, label %27, label %85, !dbg !3843

24:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3818, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3817, metadata !DIExpression()), !dbg !3822
  %25 = and i32 %2, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %74, !dbg !3845

27:                                               ; preds = %20, %4, %24
  %28 = phi i32 [ %13, %24 ], [ -1, %4 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !3846, metadata !DIExpression()), !dbg !3855
  %29 = load i32, ptr %0, align 4, !dbg !3859, !tbaa !1927
  switch i32 %29, label %55 [
    i32 0, label %30
    i32 3, label %42
    i32 1, label %56
    i32 2, label %56
    i32 4, label %56
    i32 5, label %56
  ], !dbg !3860

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef nonnull @.str.5.90, i32 noundef 0) #40, !dbg !3861
  call void @llvm.dbg.value(metadata i32 %31, metadata !3851, metadata !DIExpression()), !dbg !3862
  %32 = icmp sgt i32 %31, -1, !dbg !3863
  br i1 %32, label %33, label %35, !dbg !3865

33:                                               ; preds = %30
  store i32 1, ptr %0, align 4, !dbg !3866, !tbaa !1927
  %34 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3868
  store i32 %31, ptr %34, align 4, !dbg !3869, !tbaa !1052
  br label %56, !dbg !3870

35:                                               ; preds = %30
  %36 = tail call ptr @__errno_location() #43, !dbg !3871
  %37 = load i32, ptr %36, align 4, !dbg !3871, !tbaa !1043
  call void @llvm.dbg.value(metadata i1 poison, metadata !3854, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3862
  switch i32 %37, label %38 [
    i32 116, label %41
    i32 13, label %41
  ], !dbg !3872

38:                                               ; preds = %35
  store i32 4, ptr %0, align 4, !dbg !3873, !tbaa !1927
  %39 = load i32, ptr %36, align 4, !dbg !3876, !tbaa !1043
  %40 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3877
  store i32 %39, ptr %40, align 4, !dbg !3878, !tbaa !1052
  br label %56, !dbg !3879

41:                                               ; preds = %35, %35
  store <2 x i32> <i32 3, i32 -1>, ptr %0, align 4, !dbg !3880, !tbaa !1052
  br label %46, !dbg !3881

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !dbg !3882, !tbaa !1052
  %45 = icmp slt i32 %44, 0, !dbg !3884
  br i1 %45, label %46, label %56, !dbg !3881

46:                                               ; preds = %42, %41
  %47 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3885
  %48 = tail call i32 @fork() #40, !dbg !3886
  store i32 %48, ptr %47, align 4, !dbg !3888, !tbaa !1052
  %49 = icmp eq i32 %48, 0, !dbg !3889
  br i1 %49, label %56, label %50, !dbg !3891

50:                                               ; preds = %46
  %51 = icmp sgt i32 %48, 0, !dbg !3892
  br i1 %51, label %74, label %52, !dbg !3895

52:                                               ; preds = %50
  store i32 4, ptr %0, align 4, !dbg !3896, !tbaa !1927
  %53 = tail call ptr @__errno_location() #43, !dbg !3897
  %54 = load i32, ptr %53, align 4, !dbg !3897, !tbaa !1043
  store i32 %54, ptr %47, align 4, !dbg !3898, !tbaa !1052
  br label %56, !dbg !3899

55:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_save) #42, !dbg !3900
  unreachable, !dbg !3900

56:                                               ; preds = %27, %27, %27, %27, %42, %52, %46, %33, %38
  %57 = icmp slt i32 %28, 0, !dbg !3903
  br i1 %57, label %58, label %60, !dbg !3905

58:                                               ; preds = %56
  %59 = tail call i32 @chdir(ptr noundef %1) #40, !dbg !3906
  br label %62, !dbg !3905

60:                                               ; preds = %56
  %61 = tail call i32 @fchdir(i32 noundef %28) #40, !dbg !3907
  br label %62, !dbg !3905

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ], !dbg !3905
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !3818, metadata !DIExpression()), !dbg !3822
  %64 = icmp eq i32 %63, 0, !dbg !3908
  br i1 %64, label %65, label %74, !dbg !3910

65:                                               ; preds = %62
  %66 = load i32, ptr %0, align 4, !dbg !3911, !tbaa !1927
  switch i32 %66, label %73 [
    i32 1, label %67
    i32 4, label %74
    i32 2, label %74
    i32 5, label %74
    i32 3, label %68
  ], !dbg !3912

67:                                               ; preds = %65
  store i32 2, ptr %0, align 4, !dbg !3913, !tbaa !1927
  br label %74, !dbg !3915

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3916
  %70 = load i32, ptr %69, align 4, !dbg !3916, !tbaa !1052
  %71 = icmp eq i32 %70, 0, !dbg !3916
  br i1 %71, label %74, label %72, !dbg !3919

72:                                               ; preds = %68
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1.92, i32 noundef 162, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #42, !dbg !3916
  unreachable, !dbg !3916

73:                                               ; preds = %65
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #42, !dbg !3920
  unreachable, !dbg !3920

74:                                               ; preds = %50, %24, %67, %65, %65, %65, %68, %62
  %75 = phi i32 [ %28, %68 ], [ %28, %65 ], [ %28, %65 ], [ %28, %65 ], [ %28, %67 ], [ %28, %62 ], [ %13, %24 ], [ %28, %50 ]
  %76 = phi i32 [ 0, %68 ], [ 0, %65 ], [ 0, %65 ], [ 0, %65 ], [ 0, %67 ], [ %63, %62 ], [ 0, %24 ], [ -2, %50 ], !dbg !3822
  %77 = phi ptr [ %3, %68 ], [ %3, %65 ], [ %3, %65 ], [ %3, %65 ], [ %3, %67 ], [ %3, %62 ], [ %3, %24 ], [ null, %50 ]
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !3816, metadata !DIExpression()), !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !3818, metadata !DIExpression()), !dbg !3822
  %78 = icmp slt i32 %75, 0, !dbg !3923
  %79 = icmp ne ptr %77, null
  %80 = or i1 %78, %79, !dbg !3924
  br i1 %80, label %85, label %81, !dbg !3924

81:                                               ; preds = %74
  %82 = tail call ptr @__errno_location() #43, !dbg !3925
  %83 = load i32, ptr %82, align 4, !dbg !3925, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !3819, metadata !DIExpression()), !dbg !3926
  %84 = tail call i32 @close(i32 noundef %75) #40, !dbg !3927
  store i32 %83, ptr %82, align 4, !dbg !3928, !tbaa !1043
  br label %85, !dbg !3929

85:                                               ; preds = %20, %81, %74
  %86 = phi i32 [ %76, %81 ], [ %76, %74 ], [ -1, %20 ]
  ret i32 %86, !dbg !3930
}

; Function Attrs: nofree nounwind
declare !dbg !3931 i32 @fork() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !3934 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3938 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3941 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_restore(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3942 {
  %3 = alloca i32, align 4, !DIAssignID !3957
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3954, metadata !DIExpression(), metadata !3957, metadata ptr %3, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3946, metadata !DIExpression()), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3947, metadata !DIExpression()), !dbg !3959
  %4 = load i32, ptr %0, align 4, !dbg !3960, !tbaa !1927
  switch i32 %4, label %50 [
    i32 0, label %51
    i32 1, label %51
    i32 2, label %9
    i32 4, label %5
    i32 3, label %23
  ], !dbg !3961

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !dbg !3962, !tbaa !1052
  %8 = tail call ptr @__errno_location() #43, !dbg !3963
  br label %20, !dbg !3961

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3964
  %11 = load i32, ptr %10, align 4, !dbg !3965, !tbaa !1052
  %12 = tail call i32 @fchdir(i32 noundef %11) #40, !dbg !3966
  %13 = icmp eq i32 %12, 0, !dbg !3967
  br i1 %13, label %14, label %15, !dbg !3968

14:                                               ; preds = %9
  store i32 1, ptr %0, align 4, !dbg !3969, !tbaa !1927
  br label %51, !dbg !3971

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #43, !dbg !3972
  %17 = load i32, ptr %16, align 4, !dbg !3972, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3948, metadata !DIExpression()), !dbg !3973
  %18 = load i32, ptr %10, align 4, !dbg !3974, !tbaa !1052
  %19 = tail call i32 @close(i32 noundef %18) #40, !dbg !3975
  store i32 4, ptr %0, align 4, !dbg !3976, !tbaa !1927
  store i32 %17, ptr %10, align 4, !dbg !3977, !tbaa !1052
  br label %20, !dbg !3978

20:                                               ; preds = %5, %15
  %21 = phi ptr [ %8, %5 ], [ %16, %15 ], !dbg !3963
  %22 = phi i32 [ %7, %5 ], [ %17, %15 ], !dbg !3962
  store i32 %22, ptr %21, align 4, !dbg !3979, !tbaa !1043
  br label %51, !dbg !3980

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3981
  %25 = load i32, ptr %24, align 4, !dbg !3982, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !3952, metadata !DIExpression()), !dbg !3983
  %26 = icmp eq i32 %25, 0, !dbg !3984
  br i1 %26, label %27, label %28, !dbg !3986

27:                                               ; preds = %23
  tail call void @_exit(i32 noundef %1) #42, !dbg !3987
  unreachable, !dbg !3987

28:                                               ; preds = %23
  %29 = icmp slt i32 %25, 1, !dbg !3988
  br i1 %29, label %51, label %30, !dbg !3989

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !3990
  br label %31, !dbg !3991

31:                                               ; preds = %34, %30
  %32 = call i32 @waitpid(i32 noundef %25, ptr noundef nonnull %3, i32 noundef 0) #40, !dbg !3992
  %33 = icmp slt i32 %32, 0, !dbg !3993
  br i1 %33, label %34, label %39, !dbg !3991

34:                                               ; preds = %31
  %35 = tail call ptr @__errno_location() #43, !dbg !3994
  %36 = load i32, ptr %35, align 4, !dbg !3994, !tbaa !1043
  %37 = icmp eq i32 %36, 4, !dbg !3994
  br i1 %37, label %31, label %38, !dbg !3997, !llvm.loop !3998

38:                                               ; preds = %34
  call void @__assert_fail(ptr noundef nonnull @.str.3.94, ptr noundef nonnull @.str.1.92, i32 noundef 223, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #42, !dbg !3994
  unreachable, !dbg !3994

39:                                               ; preds = %31
  store i32 -1, ptr %24, align 4, !dbg !4000, !tbaa !1052
  %40 = load i32, ptr %3, align 4, !dbg !4001, !tbaa !1043
  %41 = and i32 %40, 127, !dbg !4001
  %42 = icmp eq i32 %41, 0, !dbg !4001
  br i1 %42, label %46, label %43, !dbg !4003

43:                                               ; preds = %39
  %44 = call i32 @raise(i32 noundef %41) #40, !dbg !4004
  %45 = load i32, ptr %3, align 4, !dbg !4005, !tbaa !1043
  br label %46, !dbg !4004

46:                                               ; preds = %39, %43
  %47 = phi i32 [ %40, %39 ], [ %45, %43 ], !dbg !4005
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !4006
  br label %51

50:                                               ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #42, !dbg !4007
  unreachable, !dbg !4007

51:                                               ; preds = %14, %2, %2, %28, %46, %20
  %52 = phi i32 [ %49, %46 ], [ -1, %20 ], [ 0, %28 ], [ 0, %2 ], [ 0, %2 ], [ 0, %14 ], !dbg !3959
  ret i32 %52, !dbg !4010
}

declare !dbg !4011 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !4015 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @savewd_finish(ptr nocapture noundef %0) local_unnamed_addr #10 !dbg !4017 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4019, metadata !DIExpression()), !dbg !4020
  %2 = load i32, ptr %0, align 4, !dbg !4021, !tbaa !1927
  switch i32 %2, label %14 [
    i32 4, label %17
    i32 1, label %3
    i32 2, label %3
    i32 0, label %7
    i32 3, label %9
  ], !dbg !4022

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !4023
  %5 = load i32, ptr %4, align 4, !dbg !4025, !tbaa !1052
  %6 = tail call i32 @close(i32 noundef %5) #40, !dbg !4026
  br label %7, !dbg !4026

7:                                                ; preds = %1, %3
  %8 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !4027
  br label %15, !dbg !4028

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !4029
  %11 = load i32, ptr %10, align 4, !dbg !4029, !tbaa !1052
  %12 = icmp slt i32 %11, 0, !dbg !4029
  br i1 %12, label %15, label %13, !dbg !4032

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4029
  unreachable, !dbg !4029

14:                                               ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4033
  unreachable, !dbg !4033

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %10, %9 ]
  store i32 0, ptr %16, align 4, !dbg !4036, !tbaa !1052
  br label %17, !dbg !4037

17:                                               ; preds = %15, %1
  store i32 5, ptr %0, align 4, !dbg !4037, !tbaa !1927
  ret void, !dbg !4038
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_process_files(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4039 {
  %5 = alloca %struct.savewd, align 4, !DIAssignID !4067
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4053, metadata !DIExpression(), metadata !4067, metadata ptr %5, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4046, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4047, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4048, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4049, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4050, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4052, metadata !DIExpression()), !dbg !4068
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !4069
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3791, metadata !DIExpression()), !dbg !4070
  store i32 0, ptr %5, align 4, !dbg !4072, !tbaa !1927, !DIAssignID !4073
  call void @llvm.dbg.assign(metadata i32 0, metadata !4053, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4073, metadata ptr %5, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4051, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4068
  %6 = zext i32 %0 to i64, !dbg !4074
  br label %7, !dbg !4074

7:                                                ; preds = %11, %4
  %8 = phi i64 [ %12, %11 ], [ %6, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4051, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4068
  %9 = trunc i64 %8 to i32, !dbg !4076
  %10 = icmp sgt i32 %9, 0, !dbg !4076
  br i1 %10, label %11, label %.loopexit1, !dbg !4078

11:                                               ; preds = %7
  %12 = add nsw i64 %8, -1, !dbg !4079
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !4051, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4068
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !4051, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4068
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !4080
  %15 = load ptr, ptr %14, align 8, !dbg !4080, !tbaa !975
  %16 = load i8, ptr %15, align 1, !dbg !4080, !tbaa !1052
  %17 = icmp eq i8 %16, 47, !dbg !4080
  br i1 %17, label %7, label %18, !dbg !4082, !llvm.loop !4083

18:                                               ; preds = %11
  %.lcssa5 = phi i64 [ %12, %11 ], !dbg !4079
  %.lcssa4 = phi i32 [ %9, %11 ], !dbg !4076
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4050, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4052, metadata !DIExpression()), !dbg !4068
  %19 = icmp eq i32 %.lcssa4, 1, !dbg !4085
  br i1 %19, label %57, label %20, !dbg !4086

20:                                               ; preds = %18
  %21 = trunc i64 %.lcssa5 to i32
  %22 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1
  %23 = tail call i32 @llvm.smax.i32(i32 %21, i32 1), !dbg !4086
  %24 = zext nneg i32 %23 to i64, !dbg !4085
  br label %25, !dbg !4086

25:                                               ; preds = %20, %48
  %26 = phi i64 [ 0, %20 ], [ %40, %48 ]
  %27 = phi i32 [ 0, %20 ], [ %49, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !4050, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !4052, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !4087, metadata !DIExpression()), !dbg !4092
  %28 = load i32, ptr %5, align 4, !dbg !4094, !tbaa !1927
  %29 = icmp eq i32 %28, 3, !dbg !4095
  %30 = load i32, ptr %22, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false, !dbg !4096
  br i1 %32, label %38, label %33, !dbg !4096

33:                                               ; preds = %25
  %34 = getelementptr inbounds ptr, ptr %1, i64 %26, !dbg !4097
  %35 = load ptr, ptr %34, align 8, !dbg !4097, !tbaa !975
  %36 = call i32 %2(ptr noundef %35, ptr noundef nonnull %5, ptr noundef %3) #40, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4054, metadata !DIExpression()), !dbg !4099
  %37 = call i32 @llvm.smax.i32(i32 %27, i32 %36), !dbg !4100
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4052, metadata !DIExpression()), !dbg !4068
  br label %38, !dbg !4101

38:                                               ; preds = %25, %33
  %39 = phi i32 [ %37, %33 ], [ %27, %25 ], !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !4052, metadata !DIExpression()), !dbg !4068
  %40 = add nuw nsw i64 %26, 1, !dbg !4102
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40, !dbg !4102
  %42 = load ptr, ptr %41, align 8, !dbg !4102, !tbaa !975
  %43 = load i8, ptr %42, align 1, !dbg !4102, !tbaa !1052
  %44 = icmp eq i8 %43, 47, !dbg !4102
  br i1 %44, label %48, label %45, !dbg !4103

45:                                               ; preds = %38
  %46 = call i32 @savewd_restore(ptr noundef nonnull %5, i32 noundef %39), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4060, metadata !DIExpression()), !dbg !4105
  %47 = call i32 @llvm.smax.i32(i32 %39, i32 %46), !dbg !4106
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4052, metadata !DIExpression()), !dbg !4068
  br label %48, !dbg !4107

48:                                               ; preds = %38, %45
  %49 = phi i32 [ %39, %38 ], [ %47, %45 ], !dbg !4068
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !4050, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !4052, metadata !DIExpression()), !dbg !4068
  %50 = icmp eq i64 %40, %24, !dbg !4085
  br i1 %50, label %51, label %25, !dbg !4086, !llvm.loop !4108

51:                                               ; preds = %48
  %.lcssa2 = phi i32 [ %49, %48 ], !dbg !4068
  %52 = load i32, ptr %5, align 4, !dbg !4110, !tbaa !1927
  call void @llvm.dbg.value(metadata ptr %5, metadata !4019, metadata !DIExpression()), !dbg !4112
  switch i32 %52, label %66 [
    i32 4, label %71
    i32 1, label %53
    i32 2, label %53
    i32 0, label %57
    i32 3, label %61
  ], !dbg !4113

53:                                               ; preds = %51, %51
  %54 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4114
  %55 = load i32, ptr %54, align 4, !dbg !4115, !tbaa !1052
  %56 = call i32 @close(i32 noundef %55) #40, !dbg !4116
  br label %57, !dbg !4116

.loopexit1:                                       ; preds = %7
  br label %57, !dbg !4117

57:                                               ; preds = %.loopexit1, %18, %53, %51
  %58 = phi i32 [ %23, %53 ], [ %23, %51 ], [ 0, %18 ], [ 0, %.loopexit1 ]
  %59 = phi i32 [ %.lcssa2, %53 ], [ %.lcssa2, %51 ], [ 0, %18 ], [ 0, %.loopexit1 ]
  %60 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4117
  br label %67, !dbg !4118

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4119
  %63 = load i32, ptr %62, align 4, !dbg !4119, !tbaa !1052
  %64 = icmp slt i32 %63, 0, !dbg !4119
  br i1 %64, label %67, label %65, !dbg !4120

65:                                               ; preds = %61
  call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4119
  unreachable, !dbg !4119

66:                                               ; preds = %51
  call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #42, !dbg !4121
  unreachable, !dbg !4121

67:                                               ; preds = %61, %57
  %68 = phi i32 [ %58, %57 ], [ %23, %61 ]
  %69 = phi i32 [ %59, %57 ], [ %.lcssa2, %61 ]
  %70 = phi ptr [ %60, %57 ], [ %62, %61 ]
  store i32 0, ptr %70, align 4, !dbg !4122, !tbaa !1052
  br label %71, !dbg !4123

71:                                               ; preds = %51, %67
  %72 = phi i32 [ %23, %51 ], [ %68, %67 ]
  %73 = phi i32 [ %.lcssa2, %51 ], [ %69, %67 ]
  store i32 5, ptr %5, align 4, !dbg !4123, !tbaa !1927, !DIAssignID !4124
  call void @llvm.dbg.assign(metadata i32 5, metadata !4053, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4124, metadata ptr %5, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4050, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !4052, metadata !DIExpression()), !dbg !4068
  %74 = icmp slt i32 %72, %0, !dbg !4125
  br i1 %74, label %75, label %86, !dbg !4126

75:                                               ; preds = %71
  %76 = zext nneg i32 %72 to i64, !dbg !4126
  br label %77, !dbg !4126

77:                                               ; preds = %75, %77
  %78 = phi i64 [ %76, %75 ], [ %84, %77 ]
  %79 = phi i32 [ %73, %75 ], [ %83, %77 ]
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !4050, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %79, metadata !4052, metadata !DIExpression()), !dbg !4068
  %80 = getelementptr inbounds ptr, ptr %1, i64 %78, !dbg !4127
  %81 = load ptr, ptr %80, align 8, !dbg !4127, !tbaa !975
  %82 = call i32 %2(ptr noundef %81, ptr noundef nonnull %5, ptr noundef %3) #40, !dbg !4128
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !4063, metadata !DIExpression()), !dbg !4129
  %83 = call i32 @llvm.smax.i32(i32 %79, i32 %82), !dbg !4130
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !4052, metadata !DIExpression()), !dbg !4068
  %84 = add nuw nsw i64 %78, 1, !dbg !4131
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !4050, metadata !DIExpression()), !dbg !4068
  %85 = icmp eq i64 %84, %6, !dbg !4125
  br i1 %85, label %.loopexit, label %77, !dbg !4126, !llvm.loop !4132

.loopexit:                                        ; preds = %77
  %.lcssa = phi i32 [ %83, %77 ], !dbg !4130
  br label %86, !dbg !4134

86:                                               ; preds = %.loopexit, %71
  %87 = phi i32 [ %73, %71 ], [ %.lcssa, %.loopexit ], !dbg !4068
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !4134
  ret i32 %87, !dbg !4135
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4136 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4175, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4176, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4177, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4178, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4179, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4180, metadata !DIExpression()), !dbg !4181
  %7 = icmp eq ptr %1, null, !dbg !4182
  br i1 %7, label %10, label %8, !dbg !4184

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4185
  br label %12, !dbg !4185

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.99, ptr noundef %2, ptr noundef %3) #40, !dbg !4186
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.3.101, i32 noundef 5) #40, !dbg !4187
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4187
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4188
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.5.103, i32 noundef 5) #40, !dbg !4189
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.104) #40, !dbg !4189
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4190
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
  ], !dbg !4191

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.7.105, i32 noundef 5) #40, !dbg !4192
  %21 = load ptr, ptr %4, align 8, !dbg !4192, !tbaa !975
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4192
  br label %147, !dbg !4194

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.8.106, i32 noundef 5) #40, !dbg !4195
  %25 = load ptr, ptr %4, align 8, !dbg !4195, !tbaa !975
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4195
  %27 = load ptr, ptr %26, align 8, !dbg !4195, !tbaa !975
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4195
  br label %147, !dbg !4196

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.9.107, i32 noundef 5) #40, !dbg !4197
  %31 = load ptr, ptr %4, align 8, !dbg !4197, !tbaa !975
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4197
  %33 = load ptr, ptr %32, align 8, !dbg !4197, !tbaa !975
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4197
  %35 = load ptr, ptr %34, align 8, !dbg !4197, !tbaa !975
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4197
  br label %147, !dbg !4198

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.10.108, i32 noundef 5) #40, !dbg !4199
  %39 = load ptr, ptr %4, align 8, !dbg !4199, !tbaa !975
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4199
  %41 = load ptr, ptr %40, align 8, !dbg !4199, !tbaa !975
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4199
  %43 = load ptr, ptr %42, align 8, !dbg !4199, !tbaa !975
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4199
  %45 = load ptr, ptr %44, align 8, !dbg !4199, !tbaa !975
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4199
  br label %147, !dbg !4200

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.11.109, i32 noundef 5) #40, !dbg !4201
  %49 = load ptr, ptr %4, align 8, !dbg !4201, !tbaa !975
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4201
  %51 = load ptr, ptr %50, align 8, !dbg !4201, !tbaa !975
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4201
  %53 = load ptr, ptr %52, align 8, !dbg !4201, !tbaa !975
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4201
  %55 = load ptr, ptr %54, align 8, !dbg !4201, !tbaa !975
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4201
  %57 = load ptr, ptr %56, align 8, !dbg !4201, !tbaa !975
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4201
  br label %147, !dbg !4202

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.12.110, i32 noundef 5) #40, !dbg !4203
  %61 = load ptr, ptr %4, align 8, !dbg !4203, !tbaa !975
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4203
  %63 = load ptr, ptr %62, align 8, !dbg !4203, !tbaa !975
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4203
  %65 = load ptr, ptr %64, align 8, !dbg !4203, !tbaa !975
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4203
  %67 = load ptr, ptr %66, align 8, !dbg !4203, !tbaa !975
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4203
  %69 = load ptr, ptr %68, align 8, !dbg !4203, !tbaa !975
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4203
  %71 = load ptr, ptr %70, align 8, !dbg !4203, !tbaa !975
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4203
  br label %147, !dbg !4204

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.13.111, i32 noundef 5) #40, !dbg !4205
  %75 = load ptr, ptr %4, align 8, !dbg !4205, !tbaa !975
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4205
  %77 = load ptr, ptr %76, align 8, !dbg !4205, !tbaa !975
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4205
  %79 = load ptr, ptr %78, align 8, !dbg !4205, !tbaa !975
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4205
  %81 = load ptr, ptr %80, align 8, !dbg !4205, !tbaa !975
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4205
  %83 = load ptr, ptr %82, align 8, !dbg !4205, !tbaa !975
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4205
  %85 = load ptr, ptr %84, align 8, !dbg !4205, !tbaa !975
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4205
  %87 = load ptr, ptr %86, align 8, !dbg !4205, !tbaa !975
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4205
  br label %147, !dbg !4206

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.14.112, i32 noundef 5) #40, !dbg !4207
  %91 = load ptr, ptr %4, align 8, !dbg !4207, !tbaa !975
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4207
  %93 = load ptr, ptr %92, align 8, !dbg !4207, !tbaa !975
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4207
  %95 = load ptr, ptr %94, align 8, !dbg !4207, !tbaa !975
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4207
  %97 = load ptr, ptr %96, align 8, !dbg !4207, !tbaa !975
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4207
  %99 = load ptr, ptr %98, align 8, !dbg !4207, !tbaa !975
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4207
  %101 = load ptr, ptr %100, align 8, !dbg !4207, !tbaa !975
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4207
  %103 = load ptr, ptr %102, align 8, !dbg !4207, !tbaa !975
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4207
  %105 = load ptr, ptr %104, align 8, !dbg !4207, !tbaa !975
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4207
  br label %147, !dbg !4208

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.15.113, i32 noundef 5) #40, !dbg !4209
  %109 = load ptr, ptr %4, align 8, !dbg !4209, !tbaa !975
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4209
  %111 = load ptr, ptr %110, align 8, !dbg !4209, !tbaa !975
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4209
  %113 = load ptr, ptr %112, align 8, !dbg !4209, !tbaa !975
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4209
  %115 = load ptr, ptr %114, align 8, !dbg !4209, !tbaa !975
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4209
  %117 = load ptr, ptr %116, align 8, !dbg !4209, !tbaa !975
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4209
  %119 = load ptr, ptr %118, align 8, !dbg !4209, !tbaa !975
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4209
  %121 = load ptr, ptr %120, align 8, !dbg !4209, !tbaa !975
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4209
  %123 = load ptr, ptr %122, align 8, !dbg !4209, !tbaa !975
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4209
  %125 = load ptr, ptr %124, align 8, !dbg !4209, !tbaa !975
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4209
  br label %147, !dbg !4210

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.16.114, i32 noundef 5) #40, !dbg !4211
  %129 = load ptr, ptr %4, align 8, !dbg !4211, !tbaa !975
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4211
  %131 = load ptr, ptr %130, align 8, !dbg !4211, !tbaa !975
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4211
  %133 = load ptr, ptr %132, align 8, !dbg !4211, !tbaa !975
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4211
  %135 = load ptr, ptr %134, align 8, !dbg !4211, !tbaa !975
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4211
  %137 = load ptr, ptr %136, align 8, !dbg !4211, !tbaa !975
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4211
  %139 = load ptr, ptr %138, align 8, !dbg !4211, !tbaa !975
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4211
  %141 = load ptr, ptr %140, align 8, !dbg !4211, !tbaa !975
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4211
  %143 = load ptr, ptr %142, align 8, !dbg !4211, !tbaa !975
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4211
  %145 = load ptr, ptr %144, align 8, !dbg !4211, !tbaa !975
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4211
  br label %147, !dbg !4212

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4213
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4214 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4219, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4220, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4222, metadata !DIExpression()), !dbg !4224
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4223, metadata !DIExpression()), !dbg !4224
  br label %6, !dbg !4225

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4223, metadata !DIExpression()), !dbg !4224
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4228
  %9 = load ptr, ptr %8, align 8, !dbg !4228, !tbaa !975
  %10 = icmp eq ptr %9, null, !dbg !4230
  %11 = add i64 %7, 1, !dbg !4231
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4223, metadata !DIExpression()), !dbg !4224
  br i1 %10, label %12, label %6, !dbg !4230, !llvm.loop !4232

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4227
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4234
  ret void, !dbg !4235
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4236 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4258
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4256, metadata !DIExpression(), metadata !4258, metadata ptr %6, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4250, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4251, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4252, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4253, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4254, metadata !DIExpression(DW_OP_deref)), !dbg !4259
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4260
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4255, metadata !DIExpression()), !dbg !4259
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4255, metadata !DIExpression()), !dbg !4259
  %10 = icmp sgt i32 %9, -1, !dbg !4261
  br i1 %10, label %18, label %11, !dbg !4261

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4261
  store i32 %12, ptr %7, align 8, !dbg !4261
  %13 = icmp ult i32 %9, -7, !dbg !4261
  br i1 %13, label %14, label %18, !dbg !4261

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4261
  %16 = sext i32 %9 to i64, !dbg !4261
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4261
  br label %22, !dbg !4261

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4261
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4261
  store ptr %21, ptr %4, align 8, !dbg !4261
  br label %22, !dbg !4261

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4261
  %25 = load ptr, ptr %24, align 8, !dbg !4261
  store ptr %25, ptr %6, align 8, !dbg !4264, !tbaa !975
  %26 = icmp eq ptr %25, null, !dbg !4265
  br i1 %26, label %197, label %27, !dbg !4266

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4255, metadata !DIExpression()), !dbg !4259
  %28 = icmp sgt i32 %23, -1, !dbg !4261
  br i1 %28, label %36, label %29, !dbg !4261

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4261
  store i32 %30, ptr %7, align 8, !dbg !4261
  %31 = icmp ult i32 %23, -7, !dbg !4261
  br i1 %31, label %32, label %36, !dbg !4261

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4261
  %34 = sext i32 %23 to i64, !dbg !4261
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4261
  br label %40, !dbg !4261

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4261
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4261
  store ptr %39, ptr %4, align 8, !dbg !4261
  br label %40, !dbg !4261

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4261
  %43 = load ptr, ptr %42, align 8, !dbg !4261
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4267
  store ptr %43, ptr %44, align 8, !dbg !4264, !tbaa !975
  %45 = icmp eq ptr %43, null, !dbg !4265
  br i1 %45, label %197, label %46, !dbg !4266

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4255, metadata !DIExpression()), !dbg !4259
  %47 = icmp sgt i32 %41, -1, !dbg !4261
  br i1 %47, label %55, label %48, !dbg !4261

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4261
  store i32 %49, ptr %7, align 8, !dbg !4261
  %50 = icmp ult i32 %41, -7, !dbg !4261
  br i1 %50, label %51, label %55, !dbg !4261

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4261
  %53 = sext i32 %41 to i64, !dbg !4261
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4261
  br label %59, !dbg !4261

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4261
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4261
  store ptr %58, ptr %4, align 8, !dbg !4261
  br label %59, !dbg !4261

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4261
  %62 = load ptr, ptr %61, align 8, !dbg !4261
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4267
  store ptr %62, ptr %63, align 8, !dbg !4264, !tbaa !975
  %64 = icmp eq ptr %62, null, !dbg !4265
  br i1 %64, label %197, label %65, !dbg !4266

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4255, metadata !DIExpression()), !dbg !4259
  %66 = icmp sgt i32 %60, -1, !dbg !4261
  br i1 %66, label %74, label %67, !dbg !4261

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4261
  store i32 %68, ptr %7, align 8, !dbg !4261
  %69 = icmp ult i32 %60, -7, !dbg !4261
  br i1 %69, label %70, label %74, !dbg !4261

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4261
  %72 = sext i32 %60 to i64, !dbg !4261
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4261
  br label %78, !dbg !4261

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4261
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4261
  store ptr %77, ptr %4, align 8, !dbg !4261
  br label %78, !dbg !4261

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4261
  %81 = load ptr, ptr %80, align 8, !dbg !4261
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4267
  store ptr %81, ptr %82, align 8, !dbg !4264, !tbaa !975
  %83 = icmp eq ptr %81, null, !dbg !4265
  br i1 %83, label %197, label %84, !dbg !4266

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4255, metadata !DIExpression()), !dbg !4259
  %85 = icmp sgt i32 %79, -1, !dbg !4261
  br i1 %85, label %93, label %86, !dbg !4261

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4261
  store i32 %87, ptr %7, align 8, !dbg !4261
  %88 = icmp ult i32 %79, -7, !dbg !4261
  br i1 %88, label %89, label %93, !dbg !4261

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4261
  %91 = sext i32 %79 to i64, !dbg !4261
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4261
  br label %97, !dbg !4261

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4261
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4261
  store ptr %96, ptr %4, align 8, !dbg !4261
  br label %97, !dbg !4261

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4261
  %100 = load ptr, ptr %99, align 8, !dbg !4261
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4267
  store ptr %100, ptr %101, align 8, !dbg !4264, !tbaa !975
  %102 = icmp eq ptr %100, null, !dbg !4265
  br i1 %102, label %197, label %103, !dbg !4266

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4255, metadata !DIExpression()), !dbg !4259
  %104 = icmp sgt i32 %98, -1, !dbg !4261
  br i1 %104, label %112, label %105, !dbg !4261

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4261
  store i32 %106, ptr %7, align 8, !dbg !4261
  %107 = icmp ult i32 %98, -7, !dbg !4261
  br i1 %107, label %108, label %112, !dbg !4261

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4261
  %110 = sext i32 %98 to i64, !dbg !4261
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4261
  br label %116, !dbg !4261

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4261
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4261
  store ptr %115, ptr %4, align 8, !dbg !4261
  br label %116, !dbg !4261

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4261
  %119 = load ptr, ptr %118, align 8, !dbg !4261
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4267
  store ptr %119, ptr %120, align 8, !dbg !4264, !tbaa !975
  %121 = icmp eq ptr %119, null, !dbg !4265
  br i1 %121, label %197, label %122, !dbg !4266

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4255, metadata !DIExpression()), !dbg !4259
  %123 = icmp sgt i32 %117, -1, !dbg !4261
  br i1 %123, label %131, label %124, !dbg !4261

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4261
  store i32 %125, ptr %7, align 8, !dbg !4261
  %126 = icmp ult i32 %117, -7, !dbg !4261
  br i1 %126, label %127, label %131, !dbg !4261

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4261
  %129 = sext i32 %117 to i64, !dbg !4261
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4261
  br label %135, !dbg !4261

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4261
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4261
  store ptr %134, ptr %4, align 8, !dbg !4261
  br label %135, !dbg !4261

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4261
  %138 = load ptr, ptr %137, align 8, !dbg !4261
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4267
  store ptr %138, ptr %139, align 8, !dbg !4264, !tbaa !975
  %140 = icmp eq ptr %138, null, !dbg !4265
  br i1 %140, label %197, label %141, !dbg !4266

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4255, metadata !DIExpression()), !dbg !4259
  %142 = icmp sgt i32 %136, -1, !dbg !4261
  br i1 %142, label %150, label %143, !dbg !4261

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4261
  store i32 %144, ptr %7, align 8, !dbg !4261
  %145 = icmp ult i32 %136, -7, !dbg !4261
  br i1 %145, label %146, label %150, !dbg !4261

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4261
  %148 = sext i32 %136 to i64, !dbg !4261
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4261
  br label %154, !dbg !4261

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4261
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4261
  store ptr %153, ptr %4, align 8, !dbg !4261
  br label %154, !dbg !4261

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4261
  %157 = load ptr, ptr %156, align 8, !dbg !4261
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4267
  store ptr %157, ptr %158, align 8, !dbg !4264, !tbaa !975
  %159 = icmp eq ptr %157, null, !dbg !4265
  br i1 %159, label %197, label %160, !dbg !4266

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4255, metadata !DIExpression()), !dbg !4259
  %161 = icmp sgt i32 %155, -1, !dbg !4261
  br i1 %161, label %169, label %162, !dbg !4261

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4261
  store i32 %163, ptr %7, align 8, !dbg !4261
  %164 = icmp ult i32 %155, -7, !dbg !4261
  br i1 %164, label %165, label %169, !dbg !4261

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4261
  %167 = sext i32 %155 to i64, !dbg !4261
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4261
  br label %173, !dbg !4261

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4261
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4261
  store ptr %172, ptr %4, align 8, !dbg !4261
  br label %173, !dbg !4261

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4261
  %176 = load ptr, ptr %175, align 8, !dbg !4261
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4267
  store ptr %176, ptr %177, align 8, !dbg !4264, !tbaa !975
  %178 = icmp eq ptr %176, null, !dbg !4265
  br i1 %178, label %197, label %179, !dbg !4266

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4255, metadata !DIExpression()), !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4255, metadata !DIExpression()), !dbg !4259
  %180 = icmp sgt i32 %174, -1, !dbg !4261
  br i1 %180, label %188, label %181, !dbg !4261

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4261
  store i32 %182, ptr %7, align 8, !dbg !4261
  %183 = icmp ult i32 %174, -7, !dbg !4261
  br i1 %183, label %184, label %188, !dbg !4261

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4261
  %186 = sext i32 %174 to i64, !dbg !4261
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4261
  br label %191, !dbg !4261

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4261
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4261
  store ptr %190, ptr %4, align 8, !dbg !4261
  br label %191, !dbg !4261

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4261
  %193 = load ptr, ptr %192, align 8, !dbg !4261
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4267
  store ptr %193, ptr %194, align 8, !dbg !4264, !tbaa !975
  %195 = icmp eq ptr %193, null, !dbg !4265
  %196 = select i1 %195, i64 9, i64 10, !dbg !4266
  br label %197, !dbg !4266

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4268
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4269
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4270
  ret void, !dbg !4270
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4271 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4280
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4279, metadata !DIExpression(), metadata !4280, metadata ptr %5, metadata !DIExpression()), !dbg !4281
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4275, metadata !DIExpression()), !dbg !4281
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4276, metadata !DIExpression()), !dbg !4281
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4277, metadata !DIExpression()), !dbg !4281
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4278, metadata !DIExpression()), !dbg !4281
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4282
  call void @llvm.va_start(ptr nonnull %5), !dbg !4283
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4284, !tbaa.struct !1641
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4284
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4284
  call void @llvm.va_end(ptr nonnull %5), !dbg !4285
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4286
  ret void, !dbg !4286
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4287 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4288, !tbaa !975
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %1), !dbg !4288
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.17.119, i32 noundef 5) #40, !dbg !4289
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.120) #40, !dbg !4289
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.19.121, i32 noundef 5) #40, !dbg !4290
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.122, ptr noundef nonnull @.str.21.123) #40, !dbg !4290
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.22.124, i32 noundef 5) #40, !dbg !4291
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.125) #40, !dbg !4291
  ret void, !dbg !4292
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4293 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4301
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4301
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata ptr %0, metadata !4302, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %1, metadata !4305, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %2, metadata !4306, metadata !DIExpression()), !dbg !4307
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4309
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4315
  %5 = icmp eq ptr %4, null, !dbg !4317
  br i1 %5, label %6, label %7, !dbg !4319

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4320
  unreachable, !dbg !4320

7:                                                ; preds = %3
  ret ptr %4, !dbg !4321
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4303 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4302, metadata !DIExpression()), !dbg !4322
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4305, metadata !DIExpression()), !dbg !4322
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4306, metadata !DIExpression()), !dbg !4322
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4323
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4324
  %5 = icmp eq ptr %4, null, !dbg !4326
  br i1 %5, label %6, label %7, !dbg !4327

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4328
  unreachable, !dbg !4328

7:                                                ; preds = %3
  ret ptr %4, !dbg !4329
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4330 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4334, metadata !DIExpression()), !dbg !4335
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4336
  call void @llvm.dbg.value(metadata ptr %2, metadata !4310, metadata !DIExpression()), !dbg !4337
  %3 = icmp eq ptr %2, null, !dbg !4339
  br i1 %3, label %4, label %5, !dbg !4340

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4341
  unreachable, !dbg !4341

5:                                                ; preds = %1
  ret ptr %2, !dbg !4342
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4343 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4344 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 %0, metadata !4350, metadata !DIExpression()), !dbg !4354
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4356
  call void @llvm.dbg.value(metadata ptr %2, metadata !4310, metadata !DIExpression()), !dbg !4357
  %3 = icmp eq ptr %2, null, !dbg !4359
  br i1 %3, label %4, label %5, !dbg !4360

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4361
  unreachable, !dbg !4361

5:                                                ; preds = %1
  ret ptr %2, !dbg !4362
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4363 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %0, metadata !4334, metadata !DIExpression()), !dbg !4369
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !4371
  call void @llvm.dbg.value(metadata ptr %2, metadata !4310, metadata !DIExpression()), !dbg !4372
  %3 = icmp eq ptr %2, null, !dbg !4374
  br i1 %3, label %4, label %5, !dbg !4375

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4376
  unreachable, !dbg !4376

5:                                                ; preds = %1
  ret ptr %2, !dbg !4377
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4378 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4382, metadata !DIExpression()), !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4383, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %0, metadata !4385, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64 %1, metadata !4389, metadata !DIExpression()), !dbg !4390
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4392
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4393
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4394
  %5 = icmp eq ptr %4, null, !dbg !4396
  br i1 %5, label %6, label %7, !dbg !4397

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4398
  unreachable, !dbg !4398

7:                                                ; preds = %2
  ret ptr %4, !dbg !4399
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4400 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4401 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4405, metadata !DIExpression()), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata ptr %0, metadata !4408, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i64 %1, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %0, metadata !4385, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %1, metadata !4389, metadata !DIExpression()), !dbg !4414
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4416
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4417
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4418
  %5 = icmp eq ptr %4, null, !dbg !4420
  br i1 %5, label %6, label %7, !dbg !4421

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4422
  unreachable, !dbg !4422

7:                                                ; preds = %2
  ret ptr %4, !dbg !4423
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4424 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4428, metadata !DIExpression()), !dbg !4431
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4429, metadata !DIExpression()), !dbg !4431
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.value(metadata ptr %0, metadata !4432, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64 %1, metadata !4435, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64 %2, metadata !4436, metadata !DIExpression()), !dbg !4437
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4439
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4440
  %5 = icmp eq ptr %4, null, !dbg !4442
  br i1 %5, label %6, label %7, !dbg !4443

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4444
  unreachable, !dbg !4444

7:                                                ; preds = %3
  ret ptr %4, !dbg !4445
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4446 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4450, metadata !DIExpression()), !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4451, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr null, metadata !4302, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %0, metadata !4305, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.value(metadata i64 %1, metadata !4306, metadata !DIExpression()), !dbg !4453
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4455
  call void @llvm.dbg.value(metadata ptr %3, metadata !4310, metadata !DIExpression()), !dbg !4456
  %4 = icmp eq ptr %3, null, !dbg !4458
  br i1 %4, label %5, label %6, !dbg !4459

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4460
  unreachable, !dbg !4460

6:                                                ; preds = %2
  ret ptr %3, !dbg !4461
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4462 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4466, metadata !DIExpression()), !dbg !4468
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4467, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata ptr null, metadata !4428, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %0, metadata !4429, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i64 %1, metadata !4430, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata ptr null, metadata !4432, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %0, metadata !4435, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %1, metadata !4436, metadata !DIExpression()), !dbg !4471
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4473
  call void @llvm.dbg.value(metadata ptr %3, metadata !4310, metadata !DIExpression()), !dbg !4474
  %4 = icmp eq ptr %3, null, !dbg !4476
  br i1 %4, label %5, label %6, !dbg !4477

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4478
  unreachable, !dbg !4478

6:                                                ; preds = %2
  ret ptr %3, !dbg !4479
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4480 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4484, metadata !DIExpression()), !dbg !4486
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata ptr %0, metadata !887, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata ptr %1, metadata !888, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 1, metadata !889, metadata !DIExpression()), !dbg !4487
  %3 = load i64, ptr %1, align 8, !dbg !4489, !tbaa !3207
  call void @llvm.dbg.value(metadata i64 %3, metadata !890, metadata !DIExpression()), !dbg !4487
  %4 = icmp eq ptr %0, null, !dbg !4490
  br i1 %4, label %5, label %8, !dbg !4492

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4493
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4496
  br label %15, !dbg !4496

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4497
  %10 = add nuw i64 %9, 1, !dbg !4497
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4497
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4497
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4497
  call void @llvm.dbg.value(metadata i64 %13, metadata !890, metadata !DIExpression()), !dbg !4487
  br i1 %12, label %14, label %15, !dbg !4500

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4501
  unreachable, !dbg !4501

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4487
  call void @llvm.dbg.value(metadata i64 %16, metadata !890, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata ptr %0, metadata !4302, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 %16, metadata !4305, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 1, metadata !4306, metadata !DIExpression()), !dbg !4502
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4504
  call void @llvm.dbg.value(metadata ptr %17, metadata !4310, metadata !DIExpression()), !dbg !4505
  %18 = icmp eq ptr %17, null, !dbg !4507
  br i1 %18, label %19, label %20, !dbg !4508

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4509
  unreachable, !dbg !4509

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !887, metadata !DIExpression()), !dbg !4487
  store i64 %16, ptr %1, align 8, !dbg !4510, !tbaa !3207
  ret ptr %17, !dbg !4511
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !882 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !887, metadata !DIExpression()), !dbg !4512
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !888, metadata !DIExpression()), !dbg !4512
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !889, metadata !DIExpression()), !dbg !4512
  %4 = load i64, ptr %1, align 8, !dbg !4513, !tbaa !3207
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !890, metadata !DIExpression()), !dbg !4512
  %5 = icmp eq ptr %0, null, !dbg !4514
  br i1 %5, label %6, label %13, !dbg !4515

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4516
  br i1 %7, label %8, label %20, !dbg !4517

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4518
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !890, metadata !DIExpression()), !dbg !4512
  %10 = icmp ugt i64 %2, 128, !dbg !4520
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4521
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !890, metadata !DIExpression()), !dbg !4512
  br label %20, !dbg !4522

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4523
  %15 = add nuw i64 %14, 1, !dbg !4523
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4523
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4523
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4523
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !890, metadata !DIExpression()), !dbg !4512
  br i1 %17, label %19, label %20, !dbg !4524

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4525
  unreachable, !dbg !4525

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4512
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !890, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata ptr %0, metadata !4302, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %21, metadata !4305, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %2, metadata !4306, metadata !DIExpression()), !dbg !4526
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4528
  call void @llvm.dbg.value(metadata ptr %22, metadata !4310, metadata !DIExpression()), !dbg !4529
  %23 = icmp eq ptr %22, null, !dbg !4531
  br i1 %23, label %24, label %25, !dbg !4532

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4533
  unreachable, !dbg !4533

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !887, metadata !DIExpression()), !dbg !4512
  store i64 %21, ptr %1, align 8, !dbg !4534, !tbaa !3207
  ret ptr %22, !dbg !4535
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !894 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !903, metadata !DIExpression()), !dbg !4536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !904, metadata !DIExpression()), !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !905, metadata !DIExpression()), !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !906, metadata !DIExpression()), !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !907, metadata !DIExpression()), !dbg !4536
  %6 = load i64, ptr %1, align 8, !dbg !4537, !tbaa !3207
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !908, metadata !DIExpression()), !dbg !4536
  %7 = ashr i64 %6, 1, !dbg !4538
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4538
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4538
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4538
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !909, metadata !DIExpression()), !dbg !4536
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4540
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !909, metadata !DIExpression()), !dbg !4536
  %12 = icmp sgt i64 %3, -1, !dbg !4541
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4543
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !909, metadata !DIExpression()), !dbg !4536
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4544
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4544
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4544
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !910, metadata !DIExpression()), !dbg !4536
  %18 = icmp slt i64 %17, 128, !dbg !4544
  %19 = select i1 %18, i64 128, i64 0, !dbg !4544
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4544
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !911, metadata !DIExpression()), !dbg !4536
  %21 = icmp eq i64 %20, 0, !dbg !4545
  br i1 %21, label %28, label %22, !dbg !4547

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4548
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !909, metadata !DIExpression()), !dbg !4536
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !910, metadata !DIExpression()), !dbg !4536
  br label %28, !dbg !4551

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4536
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !910, metadata !DIExpression()), !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !909, metadata !DIExpression()), !dbg !4536
  %31 = icmp eq ptr %0, null, !dbg !4552
  br i1 %31, label %32, label %33, !dbg !4554

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4555, !tbaa !3207
  br label %33, !dbg !4556

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4557
  %35 = icmp slt i64 %34, %2, !dbg !4559
  br i1 %35, label %36, label %48, !dbg !4560

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4561
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4561
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4561
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !909, metadata !DIExpression()), !dbg !4536
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4562
  br i1 %42, label %47, label %43, !dbg !4562

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4563
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4563
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4563
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !910, metadata !DIExpression()), !dbg !4536
  br i1 %45, label %47, label %48, !dbg !4564

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !4565
  unreachable, !dbg !4565

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4536
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !910, metadata !DIExpression()), !dbg !4536
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !909, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr %0, metadata !4382, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i64 %50, metadata !4383, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata ptr %0, metadata !4385, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata i64 %50, metadata !4389, metadata !DIExpression()), !dbg !4568
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4570
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #48, !dbg !4571
  call void @llvm.dbg.value(metadata ptr %52, metadata !4310, metadata !DIExpression()), !dbg !4572
  %53 = icmp eq ptr %52, null, !dbg !4574
  br i1 %53, label %54, label %55, !dbg !4575

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !4576
  unreachable, !dbg !4576

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !903, metadata !DIExpression()), !dbg !4536
  store i64 %49, ptr %1, align 8, !dbg !4577, !tbaa !3207
  ret ptr %52, !dbg !4578
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4579 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.value(metadata i64 %0, metadata !4583, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 1, metadata !4586, metadata !DIExpression()), !dbg !4587
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4589
  call void @llvm.dbg.value(metadata ptr %2, metadata !4310, metadata !DIExpression()), !dbg !4590
  %3 = icmp eq ptr %2, null, !dbg !4592
  br i1 %3, label %4, label %5, !dbg !4593

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4594
  unreachable, !dbg !4594

5:                                                ; preds = %1
  ret ptr %2, !dbg !4595
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4596 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4584 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4583, metadata !DIExpression()), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4586, metadata !DIExpression()), !dbg !4597
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4598
  call void @llvm.dbg.value(metadata ptr %3, metadata !4310, metadata !DIExpression()), !dbg !4599
  %4 = icmp eq ptr %3, null, !dbg !4601
  br i1 %4, label %5, label %6, !dbg !4602

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4603
  unreachable, !dbg !4603

6:                                                ; preds = %2
  ret ptr %3, !dbg !4604
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4605 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4607, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %0, metadata !4609, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 1, metadata !4612, metadata !DIExpression()), !dbg !4613
  call void @llvm.dbg.value(metadata i64 %0, metadata !4615, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 1, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 %0, metadata !4615, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 1, metadata !4618, metadata !DIExpression()), !dbg !4619
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4621
  call void @llvm.dbg.value(metadata ptr %2, metadata !4310, metadata !DIExpression()), !dbg !4622
  %3 = icmp eq ptr %2, null, !dbg !4624
  br i1 %3, label %4, label %5, !dbg !4625

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4626
  unreachable, !dbg !4626

5:                                                ; preds = %1
  ret ptr %2, !dbg !4627
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4610 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4609, metadata !DIExpression()), !dbg !4628
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4612, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %0, metadata !4615, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %1, metadata !4618, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %0, metadata !4615, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %1, metadata !4618, metadata !DIExpression()), !dbg !4629
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4631
  call void @llvm.dbg.value(metadata ptr %3, metadata !4310, metadata !DIExpression()), !dbg !4632
  %4 = icmp eq ptr %3, null, !dbg !4634
  br i1 %4, label %5, label %6, !dbg !4635

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4636
  unreachable, !dbg !4636

6:                                                ; preds = %2
  ret ptr %3, !dbg !4637
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4638 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4644
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4643, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64 %1, metadata !4334, metadata !DIExpression()), !dbg !4645
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4647
  call void @llvm.dbg.value(metadata ptr %3, metadata !4310, metadata !DIExpression()), !dbg !4648
  %4 = icmp eq ptr %3, null, !dbg !4650
  br i1 %4, label %5, label %6, !dbg !4651

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4652
  unreachable, !dbg !4652

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4653, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.value(metadata i64 %1, metadata !4660, metadata !DIExpression()), !dbg !4661
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4663
  ret ptr %3, !dbg !4664
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4665 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4669, metadata !DIExpression()), !dbg !4671
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 %1, metadata !4348, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %1, metadata !4350, metadata !DIExpression()), !dbg !4674
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !4676
  call void @llvm.dbg.value(metadata ptr %3, metadata !4310, metadata !DIExpression()), !dbg !4677
  %4 = icmp eq ptr %3, null, !dbg !4679
  br i1 %4, label %5, label %6, !dbg !4680

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4681
  unreachable, !dbg !4681

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4653, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i64 %1, metadata !4660, metadata !DIExpression()), !dbg !4682
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4684
  ret ptr %3, !dbg !4685
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4686 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4690, metadata !DIExpression()), !dbg !4693
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4691, metadata !DIExpression()), !dbg !4693
  %3 = add nsw i64 %1, 1, !dbg !4694
  call void @llvm.dbg.value(metadata i64 %3, metadata !4348, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata i64 %3, metadata !4350, metadata !DIExpression()), !dbg !4697
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4699
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4700
  %5 = icmp eq ptr %4, null, !dbg !4702
  br i1 %5, label %6, label %7, !dbg !4703

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4704
  unreachable, !dbg !4704

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4692, metadata !DIExpression()), !dbg !4693
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4705
  store i8 0, ptr %8, align 1, !dbg !4706, !tbaa !1052
  call void @llvm.dbg.value(metadata ptr %4, metadata !4653, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %1, metadata !4660, metadata !DIExpression()), !dbg !4707
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4709
  ret ptr %4, !dbg !4710
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4711 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4713, metadata !DIExpression()), !dbg !4714
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4715
  %3 = add i64 %2, 1, !dbg !4716
  call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 %3, metadata !4643, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 %3, metadata !4334, metadata !DIExpression()), !dbg !4719
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !4721
  call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4722
  %5 = icmp eq ptr %4, null, !dbg !4724
  br i1 %5, label %6, label %7, !dbg !4725

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4726
  unreachable, !dbg !4726

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4653, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata ptr %0, metadata !4659, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %3, metadata !4660, metadata !DIExpression()), !dbg !4727
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4729
  ret ptr %4, !dbg !4730
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4731 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4736, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4733, metadata !DIExpression()), !dbg !4737
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #40, !dbg !4736
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #40, !dbg !4736
  %3 = icmp eq i32 %1, 0, !dbg !4736
  tail call void @llvm.assume(i1 %3), !dbg !4736
  tail call void @abort() #42, !dbg !4738
  unreachable, !dbg !4738
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4739 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4777, metadata !DIExpression()), !dbg !4782
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4783
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4778, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4782
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4784, metadata !DIExpression()), !dbg !4787
  %3 = load i32, ptr %0, align 8, !dbg !4789, !tbaa !4790
  %4 = and i32 %3, 32, !dbg !4791
  %5 = icmp eq i32 %4, 0, !dbg !4791
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4782
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4792
  %7 = icmp eq i32 %6, 0, !dbg !4793
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4781, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4782
  br i1 %5, label %8, label %18, !dbg !4794

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4796
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4782
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4797
  %11 = xor i1 %7, true, !dbg !4797
  %12 = sext i1 %11 to i32, !dbg !4797
  br i1 %10, label %21, label %13, !dbg !4797

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4798
  %15 = load i32, ptr %14, align 4, !dbg !4798, !tbaa !1043
  %16 = icmp ne i32 %15, 9, !dbg !4799
  %17 = sext i1 %16 to i32, !dbg !4800
  br label %21, !dbg !4800

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4801

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4803
  store i32 0, ptr %20, align 4, !dbg !4805, !tbaa !1043
  br label %21, !dbg !4803

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4782
  ret i32 %22, !dbg !4806
}

; Function Attrs: nounwind
declare !dbg !4807 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4811 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4849, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4853
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4851, metadata !DIExpression()), !dbg !4853
  %3 = icmp slt i32 %2, 0, !dbg !4855
  br i1 %3, label %4, label %6, !dbg !4857

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4858
  br label %24, !dbg !4859

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4860
  %8 = icmp eq i32 %7, 0, !dbg !4860
  br i1 %8, label %13, label %9, !dbg !4862

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4863
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4864
  %12 = icmp eq i64 %11, -1, !dbg !4865
  br i1 %12, label %16, label %13, !dbg !4866

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4867
  %15 = icmp eq i32 %14, 0, !dbg !4867
  br i1 %15, label %16, label %18, !dbg !4868

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4852, metadata !DIExpression()), !dbg !4853
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4869
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4852, metadata !DIExpression()), !dbg !4853
  br label %24, !dbg !4870

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4871
  %20 = load i32, ptr %19, align 4, !dbg !4871, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4850, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4852, metadata !DIExpression()), !dbg !4853
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4869
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4852, metadata !DIExpression()), !dbg !4853
  %22 = icmp eq i32 %20, 0, !dbg !4872
  br i1 %22, label %24, label %23, !dbg !4870

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4874, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4852, metadata !DIExpression()), !dbg !4853
  br label %24, !dbg !4876

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4853
  ret i32 %25, !dbg !4877
}

; Function Attrs: nofree nounwind
declare !dbg !4878 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4879 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4880 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4881 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(ptr nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4884 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !4904
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4891, metadata !DIExpression(), metadata !4904, metadata ptr %3, metadata !DIExpression()), !dbg !4905
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4888, metadata !DIExpression()), !dbg !4906
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4889, metadata !DIExpression()), !dbg !4906
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4890, metadata !DIExpression()), !dbg !4906
  %4 = and i32 %1, 64, !dbg !4907
  %5 = icmp eq i32 %4, 0, !dbg !4907
  br i1 %5, label %24, label %6, !dbg !4908

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !4909
  call void @llvm.va_start(ptr nonnull %3), !dbg !4910
  %7 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4911
  %8 = load i32, ptr %7, align 8, !dbg !4911
  %9 = icmp sgt i32 %8, -1, !dbg !4911
  br i1 %9, label %18, label %10, !dbg !4911

10:                                               ; preds = %6
  %11 = add nsw i32 %8, 8, !dbg !4911
  store i32 %11, ptr %7, align 8, !dbg !4911, !DIAssignID !4912
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4912, metadata ptr %7, metadata !DIExpression()), !dbg !4905
  %12 = icmp ult i32 %8, -7, !dbg !4911
  br i1 %12, label %13, label %18, !dbg !4911

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4911
  %15 = load ptr, ptr %14, align 8, !dbg !4911
  %16 = sext i32 %8 to i64, !dbg !4911
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4911
  br label %21, !dbg !4911

18:                                               ; preds = %10, %6
  %19 = load ptr, ptr %3, align 8, !dbg !4911
  %20 = getelementptr inbounds i8, ptr %19, i64 8, !dbg !4911
  store ptr %20, ptr %3, align 8, !dbg !4911, !DIAssignID !4913
  call void @llvm.dbg.assign(metadata ptr %20, metadata !4891, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4913, metadata ptr %3, metadata !DIExpression()), !dbg !4905
  br label %21, !dbg !4911

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %17, %13 ], [ %19, %18 ], !dbg !4911
  %23 = load i32, ptr %22, align 8, !dbg !4911
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !4890, metadata !DIExpression()), !dbg !4906
  call void @llvm.va_end(ptr nonnull %3), !dbg !4914
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !4915
  br label %24, !dbg !4916

24:                                               ; preds = %21, %2
  %25 = phi i32 [ %23, %21 ], [ 0, %2 ], !dbg !4906
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !4890, metadata !DIExpression()), !dbg !4906
  %26 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %25) #40, !dbg !4917
  %27 = call i32 @fd_safer(i32 noundef %26) #40, !dbg !4918
  ret i32 %27, !dbg !4919
}

; Function Attrs: nofree
declare !dbg !4920 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4921 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4959, metadata !DIExpression()), !dbg !4960
  %2 = icmp eq ptr %0, null, !dbg !4961
  br i1 %2, label %6, label %3, !dbg !4963

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4964
  %5 = icmp eq i32 %4, 0, !dbg !4964
  br i1 %5, label %6, label %8, !dbg !4965

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4966
  br label %16, !dbg !4967

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4968, metadata !DIExpression()), !dbg !4973
  %9 = load i32, ptr %0, align 8, !dbg !4975, !tbaa !4790
  %10 = and i32 %9, 256, !dbg !4977
  %11 = icmp eq i32 %10, 0, !dbg !4977
  br i1 %11, label %14, label %12, !dbg !4978

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4979
  br label %14, !dbg !4979

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4980
  br label %16, !dbg !4981

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4960
  ret i32 %17, !dbg !4982
}

; Function Attrs: nofree nounwind
declare !dbg !4983 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4984 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5023, metadata !DIExpression()), !dbg !5029
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5024, metadata !DIExpression()), !dbg !5029
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5025, metadata !DIExpression()), !dbg !5029
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5030
  %5 = load ptr, ptr %4, align 8, !dbg !5030, !tbaa !5031
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5032
  %7 = load ptr, ptr %6, align 8, !dbg !5032, !tbaa !5033
  %8 = icmp eq ptr %5, %7, !dbg !5034
  br i1 %8, label %9, label %27, !dbg !5035

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5036
  %11 = load ptr, ptr %10, align 8, !dbg !5036, !tbaa !1561
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5037
  %13 = load ptr, ptr %12, align 8, !dbg !5037, !tbaa !5038
  %14 = icmp eq ptr %11, %13, !dbg !5039
  br i1 %14, label %15, label %27, !dbg !5040

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5041
  %17 = load ptr, ptr %16, align 8, !dbg !5041, !tbaa !5042
  %18 = icmp eq ptr %17, null, !dbg !5043
  br i1 %18, label %19, label %27, !dbg !5044

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5045
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5046
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5026, metadata !DIExpression()), !dbg !5047
  %22 = icmp eq i64 %21, -1, !dbg !5048
  br i1 %22, label %29, label %23, !dbg !5050

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5051, !tbaa !4790
  %25 = and i32 %24, -17, !dbg !5051
  store i32 %25, ptr %0, align 8, !dbg !5051, !tbaa !4790
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5052
  store i64 %21, ptr %26, align 8, !dbg !5053, !tbaa !5054
  br label %29, !dbg !5055

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5056
  br label %29, !dbg !5057

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5029
  ret i32 %30, !dbg !5058
}

; Function Attrs: nofree nounwind
declare !dbg !5059 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5062 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5067, metadata !DIExpression()), !dbg !5072
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5068, metadata !DIExpression()), !dbg !5072
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5069, metadata !DIExpression()), !dbg !5072
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5070, metadata !DIExpression()), !dbg !5072
  %5 = icmp eq ptr %1, null, !dbg !5073
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5075
  %7 = select i1 %5, ptr @.str.155, ptr %1, !dbg !5075
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5075
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5069, metadata !DIExpression()), !dbg !5072
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5068, metadata !DIExpression()), !dbg !5072
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5067, metadata !DIExpression()), !dbg !5072
  %9 = icmp eq ptr %3, null, !dbg !5076
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5078
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5070, metadata !DIExpression()), !dbg !5072
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !5079
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5071, metadata !DIExpression()), !dbg !5072
  %12 = icmp ult i64 %11, -3, !dbg !5080
  br i1 %12, label %13, label %17, !dbg !5082

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !5083
  %15 = icmp eq i32 %14, 0, !dbg !5083
  br i1 %15, label %16, label %29, !dbg !5084

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5085, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.value(metadata ptr %10, metadata !5092, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.value(metadata i32 0, metadata !5095, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.value(metadata i64 8, metadata !5096, metadata !DIExpression()), !dbg !5097
  store i64 0, ptr %10, align 1, !dbg !5099
  br label %29, !dbg !5100

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5101
  br i1 %18, label %19, label %20, !dbg !5103

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5104
  unreachable, !dbg !5104

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5105

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !5107
  br i1 %23, label %29, label %24, !dbg !5108

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5109
  br i1 %25, label %29, label %26, !dbg !5112

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5113, !tbaa !1052
  %28 = zext i8 %27 to i32, !dbg !5114
  store i32 %28, ptr %6, align 4, !dbg !5115, !tbaa !1043
  br label %29, !dbg !5116

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5072
  ret i64 %30, !dbg !5117
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5118 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nounwind uwtable
define dso_local i64 @mkancesdirs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5124 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5129, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5130, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5131, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5132, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr null, metadata !5133, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5134, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5135, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata i8 0, metadata !5137, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !5137, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5135, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5146
  %5 = load i8, ptr %0, align 1, !dbg !5147, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !5136, metadata !DIExpression()), !dbg !5146
  %6 = icmp eq i8 %5, 0, !dbg !5148
  br i1 %6, label %76, label %.preheader, !dbg !5148

.preheader:                                       ; preds = %4
  br label %7, !dbg !5148

7:                                                ; preds = %.preheader, %70
  %8 = phi i8 [ %71, %70 ], [ %5, %.preheader ]
  %9 = phi ptr [ %13, %70 ], [ %0, %.preheader ]
  %10 = phi i1 [ %74, %70 ], [ false, %.preheader ]
  %11 = phi ptr [ %73, %70 ], [ null, %.preheader ]
  %12 = phi ptr [ %72, %70 ], [ %0, %.preheader ]
  %13 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !5149
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !5133, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !5134, metadata !DIExpression()), !dbg !5146
  %14 = load i8, ptr %13, align 1, !dbg !5150, !tbaa !1052
  %15 = icmp eq i8 %14, 47, !dbg !5150
  %16 = icmp eq i8 %8, 47, !dbg !5151
  br i1 %15, label %17, label %19, !dbg !5152

17:                                               ; preds = %7
  %18 = select i1 %16, ptr %11, ptr %13, !dbg !5153
  br label %70, !dbg !5153

19:                                               ; preds = %7
  br i1 %16, label %20, label %70, !dbg !5155

20:                                               ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !5156
  %22 = icmp ne ptr %11, null
  %23 = select i1 %21, i1 %22, i1 false, !dbg !5157
  br i1 %23, label %24, label %66, !dbg !5157

24:                                               ; preds = %20
  %25 = ptrtoint ptr %11 to i64, !dbg !5158
  %26 = ptrtoint ptr %12 to i64, !dbg !5158
  %27 = sub i64 %25, %26, !dbg !5158
  %28 = icmp eq i64 %27, 1, !dbg !5159
  br i1 %28, label %29, label %33, !dbg !5160

29:                                               ; preds = %24
  %30 = load i8, ptr %12, align 1, !dbg !5161, !tbaa !1052
  %31 = icmp eq i8 %30, 46, !dbg !5162
  br i1 %31, label %66, label %32, !dbg !5163

32:                                               ; preds = %29
  store i8 0, ptr %11, align 1, !dbg !5164, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5138, metadata !DIExpression()), !dbg !5165
  br label %42, !dbg !5166

33:                                               ; preds = %24
  store i8 0, ptr %11, align 1, !dbg !5164, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5138, metadata !DIExpression()), !dbg !5165
  %34 = icmp eq i64 %27, 2, !dbg !5168
  br i1 %34, label %35, label %42, !dbg !5166

35:                                               ; preds = %33
  %36 = load i8, ptr %12, align 1, !dbg !5169, !tbaa !1052
  %37 = icmp eq i8 %36, 46, !dbg !5170
  br i1 %37, label %38, label %42, !dbg !5171

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !5172
  %40 = load i8, ptr %39, align 1, !dbg !5172, !tbaa !1052
  %41 = icmp eq i8 %40, 46, !dbg !5173
  br i1 %41, label %49, label %42, !dbg !5174

42:                                               ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(ptr noundef nonnull %0, ptr noundef %12, ptr noundef %3) #40, !dbg !5175
  %44 = icmp slt i32 %43, 0, !dbg !5177
  br i1 %44, label %45, label %49, !dbg !5178

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #43, !dbg !5179
  %47 = load i32, ptr %46, align 4, !dbg !5179, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5138, metadata !DIExpression()), !dbg !5165
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !5137, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5144, metadata !DIExpression()), !dbg !5165
  %48 = zext i1 %10 to i32, !dbg !5180
  br label %49, !dbg !5180

49:                                               ; preds = %45, %42, %38
  %50 = phi i32 [ 0, %38 ], [ 0, %42 ], [ %47, %45 ]
  %51 = phi i1 [ false, %38 ], [ true, %42 ], [ %10, %45 ]
  %52 = phi i32 [ 0, %38 ], [ 1, %42 ], [ %48, %45 ]
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !5144, metadata !DIExpression()), !dbg !5165
  %53 = tail call i32 @savewd_chdir(ptr noundef %1, ptr noundef %12, i32 noundef %52, ptr noundef null) #40, !dbg !5181
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !5145, metadata !DIExpression()), !dbg !5165
  %54 = icmp eq i32 %53, -1, !dbg !5182
  br i1 %54, label %57, label %55, !dbg !5184

55:                                               ; preds = %49
  store i8 47, ptr %11, align 1, !dbg !5185, !tbaa !1052
  %56 = icmp eq i32 %53, 0, !dbg !5186
  br i1 %56, label %66, label %57, !dbg !5188

57:                                               ; preds = %49, %55
  %.lcssa1 = phi i32 [ %50, %49 ], [ %50, %55 ]
  %.lcssa = phi i32 [ %53, %49 ], [ %53, %55 ], !dbg !5181
  %58 = icmp eq i32 %.lcssa1, 0, !dbg !5189
  br i1 %58, label %64, label %59, !dbg !5192

59:                                               ; preds = %57
  %60 = tail call ptr @__errno_location() #43, !dbg !5193
  %61 = load i32, ptr %60, align 4, !dbg !5193, !tbaa !1043
  %62 = icmp eq i32 %61, 2, !dbg !5194
  br i1 %62, label %63, label %64, !dbg !5195

63:                                               ; preds = %59
  store i32 %.lcssa1, ptr %60, align 4, !dbg !5196, !tbaa !1043
  br label %64, !dbg !5197

64:                                               ; preds = %57, %59, %63
  %65 = sext i32 %.lcssa to i64, !dbg !5198
  br label %81

66:                                               ; preds = %20, %29, %55
  %67 = phi ptr [ %13, %55 ], [ %13, %29 ], [ %12, %20 ]
  %68 = phi i1 [ %51, %55 ], [ %10, %29 ], [ %10, %20 ]
  %69 = load i8, ptr %13, align 1, !dbg !5147, !tbaa !1052
  br label %70, !dbg !5147

70:                                               ; preds = %66, %17, %19
  %71 = phi i8 [ %69, %66 ], [ 47, %17 ], [ %14, %19 ], !dbg !5147
  %72 = phi ptr [ %67, %66 ], [ %12, %17 ], [ %12, %19 ], !dbg !5146
  %73 = phi ptr [ %11, %66 ], [ %18, %17 ], [ %11, %19 ], !dbg !5146
  %74 = phi i1 [ %68, %66 ], [ %10, %17 ], [ %10, %19 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !5137, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !5133, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !5134, metadata !DIExpression()), !dbg !5146
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !5135, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5146
  tail call void @llvm.dbg.value(metadata i8 %71, metadata !5136, metadata !DIExpression()), !dbg !5146
  %75 = icmp eq i8 %71, 0, !dbg !5148
  br i1 %75, label %.loopexit, label %7, !dbg !5148, !llvm.loop !5199

.loopexit:                                        ; preds = %70
  %.lcssa2 = phi ptr [ %72, %70 ], !dbg !5146
  br label %76, !dbg !5201

76:                                               ; preds = %.loopexit, %4
  %77 = phi ptr [ %0, %4 ], [ %.lcssa2, %.loopexit ], !dbg !5202
  %78 = ptrtoint ptr %77 to i64, !dbg !5201
  %79 = ptrtoint ptr %0 to i64, !dbg !5201
  %80 = sub i64 %78, %79, !dbg !5201
  br label %81, !dbg !5203

81:                                               ; preds = %64, %76
  %82 = phi i64 [ %65, %64 ], [ %80, %76 ], !dbg !5146
  ret i64 %82, !dbg !5204
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dirchownmod(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #10 !dbg !5205 {
  %8 = alloca %struct.stat, align 8, !DIAssignID !5254
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5216, metadata !DIExpression(), metadata !5254, metadata ptr %8, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5209, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5210, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5211, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !5212, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !5213, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !5214, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !5215, metadata !DIExpression()), !dbg !5255
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #40, !dbg !5256
  %9 = icmp slt i32 %0, 0, !dbg !5257
  br i1 %9, label %10, label %12, !dbg !5258

10:                                               ; preds = %7
  %11 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %8) #40, !dbg !5259
  br label %14, !dbg !5258

12:                                               ; preds = %7
  %13 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %8) #40, !dbg !5260
  br label %14, !dbg !5258

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ], !dbg !5258
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !5239, metadata !DIExpression()), !dbg !5255
  %16 = icmp eq i32 %15, 0, !dbg !5261
  br i1 %16, label %17, label %74, !dbg !5262

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 2, !dbg !5263
  %19 = load i32, ptr %18, align 8, !dbg !5263, !tbaa !1981
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !5240, metadata !DIExpression()), !dbg !5264
  %20 = and i32 %19, 61440, !dbg !5265
  %21 = icmp eq i32 %20, 16384, !dbg !5265
  br i1 %21, label %24, label %22, !dbg !5266

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #43, !dbg !5267
  store i32 20, ptr %23, align 4, !dbg !5269, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5239, metadata !DIExpression()), !dbg !5255
  br label %74, !dbg !5270

24:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5243, metadata !DIExpression()), !dbg !5271
  %25 = icmp eq i32 %3, -1, !dbg !5272
  %26 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, %3
  %29 = select i1 %25, i1 true, i1 %28, !dbg !5274
  br i1 %29, label %30, label %36, !dbg !5274

30:                                               ; preds = %24
  %31 = icmp eq i32 %4, -1, !dbg !5275
  %32 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %4
  %35 = select i1 %31, i1 true, i1 %34, !dbg !5276
  br i1 %35, label %54, label %36, !dbg !5276

36:                                               ; preds = %30, %24
  %37 = icmp sgt i32 %0, -1, !dbg !5277
  br i1 %37, label %38, label %40, !dbg !5279

38:                                               ; preds = %36
  %39 = tail call i32 @fchown(i32 noundef %0, i32 noundef %3, i32 noundef %4) #40, !dbg !5280
  br label %46, !dbg !5279

40:                                               ; preds = %36
  %41 = icmp eq i32 %2, -1, !dbg !5281
  br i1 %41, label %44, label %42, !dbg !5282

42:                                               ; preds = %40
  %43 = tail call i32 @lchown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #40, !dbg !5283
  br label %46, !dbg !5282

44:                                               ; preds = %40
  %45 = tail call i32 @chown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #40, !dbg !5284
  br label %46, !dbg !5282

46:                                               ; preds = %42, %44, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ], [ %45, %44 ], !dbg !5279
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5239, metadata !DIExpression()), !dbg !5255
  %48 = icmp eq i32 %47, 0, !dbg !5285
  br i1 %48, label %49, label %74, !dbg !5287

49:                                               ; preds = %46
  %50 = and i32 %19, 73, !dbg !5288
  %51 = icmp eq i32 %50, 0, !dbg !5288
  %52 = and i32 %19, 3072
  %53 = select i1 %51, i32 0, i32 %52, !dbg !5289
  br label %54, !dbg !5289

54:                                               ; preds = %30, %49
  %55 = phi i32 [ %53, %49 ], [ 0, %30 ]
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5239, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !5243, metadata !DIExpression()), !dbg !5271
  %56 = xor i32 %19, %5, !dbg !5290
  %57 = or i32 %55, %56, !dbg !5291
  %58 = and i32 %57, %6, !dbg !5292
  %59 = icmp eq i32 %58, 0, !dbg !5292
  br i1 %59, label %74, label %60, !dbg !5293

60:                                               ; preds = %54
  %61 = and i32 %6, 4095, !dbg !5294
  %62 = xor i32 %61, 4095, !dbg !5294
  %63 = and i32 %62, %19, !dbg !5295
  %64 = or i32 %63, %5, !dbg !5296
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !5246, metadata !DIExpression()), !dbg !5297
  %65 = icmp sgt i32 %0, -1, !dbg !5298
  br i1 %65, label %66, label %68, !dbg !5299

66:                                               ; preds = %60
  %67 = tail call i32 @fchmod(i32 noundef %0, i32 noundef %64) #40, !dbg !5300
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !5239, metadata !DIExpression()), !dbg !5255
  br label %77, !dbg !5301

68:                                               ; preds = %60
  %69 = icmp eq i32 %2, -1, !dbg !5302
  br i1 %69, label %72, label %70, !dbg !5303

70:                                               ; preds = %68
  %71 = tail call i32 @lchmod(ptr noundef %1, i32 noundef %64) #40, !dbg !5304
  br label %86, !dbg !5303

72:                                               ; preds = %68
  %73 = tail call i32 @chmod(ptr noundef %1, i32 noundef %64) #40, !dbg !5305
  br label %86, !dbg !5303

74:                                               ; preds = %46, %22, %54, %14
  %75 = phi i32 [ %15, %14 ], [ -1, %22 ], [ 0, %54 ], [ %47, %46 ], !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %75, metadata !5239, metadata !DIExpression()), !dbg !5255
  %76 = icmp sgt i32 %0, -1, !dbg !5306
  br i1 %76, label %77, label %86, !dbg !5301

77:                                               ; preds = %66, %74
  %78 = phi i32 [ %67, %66 ], [ %75, %74 ]
  %79 = icmp eq i32 %78, 0, !dbg !5307
  br i1 %79, label %80, label %82, !dbg !5308

80:                                               ; preds = %77
  %81 = tail call i32 @close(i32 noundef %0) #40, !dbg !5309
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !5239, metadata !DIExpression()), !dbg !5255
  br label %86, !dbg !5310

82:                                               ; preds = %77
  %83 = tail call ptr @__errno_location() #43, !dbg !5311
  %84 = load i32, ptr %83, align 4, !dbg !5311, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !5249, metadata !DIExpression()), !dbg !5312
  %85 = tail call i32 @close(i32 noundef %0) #40, !dbg !5313
  store i32 %84, ptr %83, align 4, !dbg !5314, !tbaa !1043
  br label %86

86:                                               ; preds = %70, %72, %80, %82, %74
  %87 = phi i32 [ %81, %80 ], [ %78, %82 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], !dbg !5255
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !5239, metadata !DIExpression()), !dbg !5255
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #40, !dbg !5315
  ret i32 %87, !dbg !5316
}

; Function Attrs: nofree nounwind
declare !dbg !5317 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5321 i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5324 noundef i32 @lchown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5327 noundef i32 @chown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5328 i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5331 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5332 noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5333 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5335, metadata !DIExpression()), !dbg !5339
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5336, metadata !DIExpression()), !dbg !5339
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5337, metadata !DIExpression()), !dbg !5339
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5340
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5340
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5338, metadata !DIExpression()), !dbg !5339
  br i1 %5, label %6, label %8, !dbg !5342

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5343
  store i32 12, ptr %7, align 4, !dbg !5345, !tbaa !1043
  br label %12, !dbg !5346

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5340
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5338, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata ptr %0, metadata !5347, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.value(metadata i64 %9, metadata !5350, metadata !DIExpression()), !dbg !5351
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5353
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #48, !dbg !5354
  br label %12, !dbg !5355

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5339
  ret ptr %13, !dbg !5356
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5357 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5359, metadata !DIExpression()), !dbg !5364
  %2 = icmp ult i32 %0, 3, !dbg !5365
  br i1 %2, label %3, label %8, !dbg !5365

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #40, !dbg !5366
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !5360, metadata !DIExpression()), !dbg !5367
  %5 = tail call ptr @__errno_location() #43, !dbg !5368
  %6 = load i32, ptr %5, align 4, !dbg !5368, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !5363, metadata !DIExpression()), !dbg !5367
  %7 = tail call i32 @close(i32 noundef %0) #40, !dbg !5369
  store i32 %6, ptr %5, align 4, !dbg !5370, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !5359, metadata !DIExpression()), !dbg !5364
  br label %8, !dbg !5371

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !5359, metadata !DIExpression()), !dbg !5364
  ret i32 %9, !dbg !5372
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5373 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5378, metadata !DIExpression(), metadata !5382, metadata ptr %2, metadata !DIExpression()), !dbg !5383
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5377, metadata !DIExpression()), !dbg !5383
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5384
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5385
  %4 = icmp eq i32 %3, 0, !dbg !5385
  br i1 %4, label %5, label %12, !dbg !5387

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5388, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.value(metadata ptr @.str.166, metadata !5391, metadata !DIExpression()), !dbg !5392
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.166, i64 2), !dbg !5395
  %7 = icmp eq i32 %6, 0, !dbg !5396
  br i1 %7, label %11, label %8, !dbg !5397

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5388, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.value(metadata ptr @.str.1.167, metadata !5391, metadata !DIExpression()), !dbg !5398
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.167, i64 6), !dbg !5400
  %10 = icmp eq i32 %9, 0, !dbg !5401
  br i1 %10, label %11, label %12, !dbg !5402

11:                                               ; preds = %8, %5
  br label %12, !dbg !5403

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5383
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5404
  ret i1 %13, !dbg !5404
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5405 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5409, metadata !DIExpression()), !dbg !5412
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5410, metadata !DIExpression()), !dbg !5412
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5411, metadata !DIExpression()), !dbg !5412
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5413
  ret i32 %4, !dbg !5414
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5415 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5419, metadata !DIExpression()), !dbg !5420
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5421
  ret ptr %2, !dbg !5422
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5423 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5425, metadata !DIExpression()), !dbg !5427
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5428
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5426, metadata !DIExpression()), !dbg !5427
  ret ptr %2, !dbg !5429
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5430 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5432, metadata !DIExpression()), !dbg !5439
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5433, metadata !DIExpression()), !dbg !5439
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5434, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i32 %0, metadata !5425, metadata !DIExpression()), !dbg !5440
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5442
  call void @llvm.dbg.value(metadata ptr %4, metadata !5426, metadata !DIExpression()), !dbg !5440
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5435, metadata !DIExpression()), !dbg !5439
  %5 = icmp eq ptr %4, null, !dbg !5443
  br i1 %5, label %6, label %9, !dbg !5444

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5445
  br i1 %7, label %19, label %8, !dbg !5448

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5449, !tbaa !1052
  br label %19, !dbg !5450

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5451
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5436, metadata !DIExpression()), !dbg !5452
  %11 = icmp ult i64 %10, %2, !dbg !5453
  br i1 %11, label %12, label %14, !dbg !5455

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5456
  call void @llvm.dbg.value(metadata ptr %1, metadata !5458, metadata !DIExpression()), !dbg !5463
  call void @llvm.dbg.value(metadata ptr %4, metadata !5461, metadata !DIExpression()), !dbg !5463
  call void @llvm.dbg.value(metadata i64 %13, metadata !5462, metadata !DIExpression()), !dbg !5463
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5465
  br label %19, !dbg !5466

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5467
  br i1 %15, label %19, label %16, !dbg !5470

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5471
  call void @llvm.dbg.value(metadata ptr %1, metadata !5458, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.value(metadata ptr %4, metadata !5461, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.value(metadata i64 %17, metadata !5462, metadata !DIExpression()), !dbg !5473
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5475
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5476
  store i8 0, ptr %18, align 1, !dbg !5477, !tbaa !1052
  br label %19, !dbg !5478

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5479
  ret i32 %20, !dbg !5480
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5481 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5483, metadata !DIExpression()), !dbg !5484
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #40, !dbg !5485
  ret i32 %2, !dbg !5486
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !5487 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !5513
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5491, metadata !DIExpression(), metadata !5513, metadata ptr %3, metadata !DIExpression()), !dbg !5514
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5489, metadata !DIExpression()), !dbg !5514
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !5490, metadata !DIExpression()), !dbg !5514
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !5515
  call void @llvm.va_start(ptr nonnull %3), !dbg !5516
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5501, metadata !DIExpression()), !dbg !5514
  switch i32 %1, label %96 [
    i32 0, label %4
    i32 1030, label %23
    i32 1, label %75
    i32 3, label %75
    i32 1025, label %75
    i32 9, label %75
    i32 1032, label %75
    i32 1034, label %75
    i32 11, label %75
    i32 1033, label %77
    i32 1031, label %77
    i32 10, label %77
    i32 1026, label %77
    i32 2, label %77
    i32 4, label %77
    i32 1024, label %77
    i32 8, label %77
  ], !dbg !5517

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5518
  %6 = load i32, ptr %5, align 8, !dbg !5518
  %7 = icmp sgt i32 %6, -1, !dbg !5518
  br i1 %7, label %16, label %8, !dbg !5518

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !5518
  store i32 %9, ptr %5, align 8, !dbg !5518, !DIAssignID !5519
  call void @llvm.dbg.assign(metadata i32 %9, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !5519, metadata ptr %5, metadata !DIExpression()), !dbg !5514
  %10 = icmp ult i32 %6, -7, !dbg !5518
  br i1 %10, label %11, label %16, !dbg !5518

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5518
  %13 = load ptr, ptr %12, align 8, !dbg !5518
  %14 = sext i32 %6 to i64, !dbg !5518
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !5518
  br label %19, !dbg !5518

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !5518
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !5518
  store ptr %18, ptr %3, align 8, !dbg !5518, !DIAssignID !5520
  call void @llvm.dbg.assign(metadata ptr %18, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !5520, metadata ptr %3, metadata !DIExpression()), !dbg !5514
  br label %19, !dbg !5518

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !5518
  %21 = load i32, ptr %20, align 8, !dbg !5518
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !5502, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.value(metadata i32 %0, metadata !5522, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.value(metadata i32 %21, metadata !5525, metadata !DIExpression()), !dbg !5527
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #40, !dbg !5529
  call void @llvm.dbg.value(metadata i32 %22, metadata !5526, metadata !DIExpression()), !dbg !5527
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !5501, metadata !DIExpression()), !dbg !5514
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5530
  %25 = load i32, ptr %24, align 8, !dbg !5530
  %26 = icmp sgt i32 %25, -1, !dbg !5530
  br i1 %26, label %35, label %27, !dbg !5530

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !5530
  store i32 %28, ptr %24, align 8, !dbg !5530, !DIAssignID !5531
  call void @llvm.dbg.assign(metadata i32 %28, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !5531, metadata ptr %24, metadata !DIExpression()), !dbg !5514
  %29 = icmp ult i32 %25, -7, !dbg !5530
  br i1 %29, label %30, label %35, !dbg !5530

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5530
  %32 = load ptr, ptr %31, align 8, !dbg !5530
  %33 = sext i32 %25 to i64, !dbg !5530
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !5530
  br label %38, !dbg !5530

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !5530
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !5530
  store ptr %37, ptr %3, align 8, !dbg !5530, !DIAssignID !5532
  call void @llvm.dbg.assign(metadata ptr %37, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !5532, metadata ptr %3, metadata !DIExpression()), !dbg !5514
  br label %38, !dbg !5530

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !5530
  %40 = load i32, ptr %39, align 8, !dbg !5530
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !5505, metadata !DIExpression()), !dbg !5533
  call void @llvm.dbg.value(metadata i32 %0, metadata !814, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.value(metadata i32 %40, metadata !815, metadata !DIExpression()), !dbg !5534
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5536, !tbaa !1043
  %42 = icmp sgt i32 %41, -1, !dbg !5538
  br i1 %42, label %43, label %55, !dbg !5539

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #40, !dbg !5540
  call void @llvm.dbg.value(metadata i32 %44, metadata !816, metadata !DIExpression()), !dbg !5534
  %45 = icmp sgt i32 %44, -1, !dbg !5542
  br i1 %45, label %50, label %46, !dbg !5544

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #43, !dbg !5545
  %48 = load i32, ptr %47, align 4, !dbg !5545, !tbaa !1043
  %49 = icmp eq i32 %48, 22, !dbg !5546
  br i1 %49, label %51, label %50, !dbg !5547

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5548, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %44, metadata !816, metadata !DIExpression()), !dbg !5534
  br label %115, !dbg !5550

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !5522, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.value(metadata i32 %40, metadata !5525, metadata !DIExpression()), !dbg !5551
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !5554
  call void @llvm.dbg.value(metadata i32 %52, metadata !5526, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.value(metadata i32 %52, metadata !816, metadata !DIExpression()), !dbg !5534
  %53 = icmp sgt i32 %52, -1, !dbg !5555
  br i1 %53, label %54, label %115, !dbg !5557

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5558, !tbaa !1043
  br label %59, !dbg !5559

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !5522, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.value(metadata i32 %40, metadata !5525, metadata !DIExpression()), !dbg !5560
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !5562
  call void @llvm.dbg.value(metadata i32 %56, metadata !5526, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.value(metadata i32 %56, metadata !816, metadata !DIExpression()), !dbg !5534
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !5563
  call void @llvm.dbg.value(metadata i32 %61, metadata !816, metadata !DIExpression()), !dbg !5534
  %62 = icmp sgt i32 %61, -1, !dbg !5564
  %63 = select i1 %62, i1 %60, i1 false, !dbg !5550
  br i1 %63, label %64, label %115, !dbg !5550

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #40, !dbg !5565
  call void @llvm.dbg.value(metadata i32 %65, metadata !817, metadata !DIExpression()), !dbg !5566
  %66 = icmp slt i32 %65, 0, !dbg !5567
  br i1 %66, label %71, label %67, !dbg !5568

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !5569
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #40, !dbg !5570
  %70 = icmp eq i32 %69, -1, !dbg !5571
  br i1 %70, label %71, label %115, !dbg !5572

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #43, !dbg !5573
  %73 = load i32, ptr %72, align 4, !dbg !5573, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %73, metadata !820, metadata !DIExpression()), !dbg !5574
  %74 = call i32 @close(i32 noundef %61) #40, !dbg !5575
  store i32 %73, ptr %72, align 4, !dbg !5576, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 -1, metadata !816, metadata !DIExpression()), !dbg !5534
  br label %115, !dbg !5577

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !5578
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !5501, metadata !DIExpression()), !dbg !5514
  br label %115, !dbg !5579

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5580
  %79 = load i32, ptr %78, align 8, !dbg !5580
  %80 = icmp sgt i32 %79, -1, !dbg !5580
  br i1 %80, label %89, label %81, !dbg !5580

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !5580
  store i32 %82, ptr %78, align 8, !dbg !5580, !DIAssignID !5581
  call void @llvm.dbg.assign(metadata i32 %82, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !5581, metadata ptr %78, metadata !DIExpression()), !dbg !5514
  %83 = icmp ult i32 %79, -7, !dbg !5580
  br i1 %83, label %84, label %89, !dbg !5580

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5580
  %86 = load ptr, ptr %85, align 8, !dbg !5580
  %87 = sext i32 %79 to i64, !dbg !5580
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !5580
  br label %92, !dbg !5580

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !5580
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !5580
  store ptr %91, ptr %3, align 8, !dbg !5580, !DIAssignID !5582
  call void @llvm.dbg.assign(metadata ptr %91, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !5582, metadata ptr %3, metadata !DIExpression()), !dbg !5514
  br label %92, !dbg !5580

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !5580
  %94 = load i32, ptr %93, align 8, !dbg !5580
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !5507, metadata !DIExpression()), !dbg !5583
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #40, !dbg !5584
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !5501, metadata !DIExpression()), !dbg !5514
  br label %115, !dbg !5585

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5586
  %98 = load i32, ptr %97, align 8, !dbg !5586
  %99 = icmp sgt i32 %98, -1, !dbg !5586
  br i1 %99, label %108, label %100, !dbg !5586

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !5586
  store i32 %101, ptr %97, align 8, !dbg !5586, !DIAssignID !5587
  call void @llvm.dbg.assign(metadata i32 %101, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !5587, metadata ptr %97, metadata !DIExpression()), !dbg !5514
  %102 = icmp ult i32 %98, -7, !dbg !5586
  br i1 %102, label %103, label %108, !dbg !5586

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5586
  %105 = load ptr, ptr %104, align 8, !dbg !5586
  %106 = sext i32 %98 to i64, !dbg !5586
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !5586
  br label %111, !dbg !5586

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !5586
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !5586
  store ptr %110, ptr %3, align 8, !dbg !5586, !DIAssignID !5588
  call void @llvm.dbg.assign(metadata ptr %110, metadata !5491, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !5588, metadata ptr %3, metadata !DIExpression()), !dbg !5514
  br label %111, !dbg !5586

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !5586
  %113 = load ptr, ptr %112, align 8, !dbg !5586
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !5511, metadata !DIExpression()), !dbg !5589
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #40, !dbg !5590
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !5501, metadata !DIExpression()), !dbg !5514
  br label %115, !dbg !5591

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !5592
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !5501, metadata !DIExpression()), !dbg !5514
  call void @llvm.va_end(ptr nonnull %3), !dbg !5593
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !5594
  ret i32 %116, !dbg !5595
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
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(0,1) }
attributes #48 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!76, !823, !826, !416, !420, !435, !771, !828, !830, !849, !507, !521, !572, !858, !871, !763, !878, !913, !915, !917, !919, !921, !923, !787, !925, !938, !943, !945, !947, !949, !951, !953, !811}
!llvm.ident = !{!955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955, !955}
!llvm.module.flags = !{!956, !957, !958, !959, !960, !961, !962, !963}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mkdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d793d15b84a01608d40780cfd3f61f54")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!82 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!83 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!96 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !98, line: 154, baseType: !80)
!98 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!206 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !209)
!208 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!401 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!434 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !435, file: !436, line: 66, type: !483, isLocal: false, isDefinition: true)
!435 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !437, globals: !438, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!437 = !{!138, !145}
!438 = !{!439, !441, !465, !467, !469, !471, !433, !473, !475, !477, !479, !481}
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !436, line: 272, type: !263, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "old_file_name", scope: !443, file: !436, line: 304, type: !143, isLocal: true, isDefinition: true)
!443 = distinct !DISubprogram(name: "verror_at_line", scope: !436, file: !436, line: 298, type: !444, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !458)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !80, !80, !143, !99, !143, !446}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !447, line: 52, baseType: !448)
!447 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !449, line: 12, baseType: !450)
!449 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !436, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !452)
!452 = !{!453, !454, !455, !456, !457}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !451, file: !436, baseType: !138, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !451, file: !436, baseType: !138, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !451, file: !436, baseType: !138, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !451, file: !436, baseType: !80, size: 32, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !451, file: !436, baseType: !80, size: 32, offset: 224)
!458 = !{!459, !460, !461, !462, !463, !464}
!459 = !DILocalVariable(name: "status", arg: 1, scope: !443, file: !436, line: 298, type: !80)
!460 = !DILocalVariable(name: "errnum", arg: 2, scope: !443, file: !436, line: 298, type: !80)
!461 = !DILocalVariable(name: "file_name", arg: 3, scope: !443, file: !436, line: 298, type: !143)
!462 = !DILocalVariable(name: "line_number", arg: 4, scope: !443, file: !436, line: 298, type: !99)
!463 = !DILocalVariable(name: "message", arg: 5, scope: !443, file: !436, line: 298, type: !143)
!464 = !DILocalVariable(name: "args", arg: 6, scope: !443, file: !436, line: 298, type: !446)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "old_line_number", scope: !443, file: !436, line: 305, type: !99, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !436, line: 338, type: !270, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !302, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !277, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "error_message_count", scope: !435, file: !436, line: 69, type: !99, isLocal: false, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !435, file: !436, line: 295, type: !80, isLocal: false, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !297, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !153, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !436, line: 214, type: !263, isLocal: true, isDefinition: true)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null}
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !488, line: 164, type: !297, isLocal: true, isDefinition: true)
!488 = !DIFile(filename: "lib/mkdir-p.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35fabba6c7fba2a5201f9ea7f8c0e0d1")
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !488, line: 164, type: !329, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !488, line: 180, type: !277, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !488, line: 189, type: !495, isLocal: true, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 32)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !488, line: 189, type: !500, isLocal: true, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 42)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !488, line: 208, type: !363, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "program_name", scope: !507, file: !508, line: 31, type: !143, isLocal: false, isDefinition: true)
!507 = distinct !DICompileUnit(language: DW_LANG_C11, file: !508, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !509, globals: !510, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!509 = !{!138, !137}
!510 = !{!505, !511, !513}
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !508, line: 46, type: !302, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !508, line: 49, type: !270, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "utf07FF", scope: !517, file: !518, line: 46, type: !545, isLocal: true, isDefinition: true)
!517 = distinct !DISubprogram(name: "proper_name_lite", scope: !518, file: !518, line: 38, type: !519, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !523)
!518 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!519 = !DISubroutineType(types: !520)
!520 = !{!143, !143, !143}
!521 = distinct !DICompileUnit(language: DW_LANG_C11, file: !518, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !522, splitDebugInlining: false, nameTableKind: None)
!522 = !{!515}
!523 = !{!524, !525, !526, !527, !532}
!524 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !517, file: !518, line: 38, type: !143)
!525 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !517, file: !518, line: 38, type: !143)
!526 = !DILocalVariable(name: "translation", scope: !517, file: !518, line: 40, type: !143)
!527 = !DILocalVariable(name: "w", scope: !517, file: !518, line: 47, type: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !529, line: 37, baseType: !530)
!529 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !98, line: 57, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !99)
!532 = !DILocalVariable(name: "mbs", scope: !517, file: !518, line: 48, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !534, line: 6, baseType: !535)
!534 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !536, line: 21, baseType: !537)
!536 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 13, size: 64, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !537, file: !536, line: 15, baseType: !80, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !537, file: !536, line: 20, baseType: !541, size: 32, offset: 32)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !536, line: 16, size: 32, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !541, file: !536, line: 18, baseType: !99, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !541, file: !536, line: 19, baseType: !270, size: 32)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16, elements: !278)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !548, line: 78, type: !302, isLocal: true, isDefinition: true)
!548 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !548, line: 79, type: !19, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !548, line: 80, type: !553, isLocal: true, isDefinition: true)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 13)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !548, line: 81, type: !553, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !548, line: 82, type: !252, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !548, line: 83, type: !277, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !548, line: 84, type: !302, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !548, line: 85, type: !297, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !548, line: 86, type: !297, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !548, line: 87, type: !302, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !572, file: !548, line: 76, type: !646, isLocal: false, isDefinition: true)
!572 = distinct !DICompileUnit(language: DW_LANG_C11, file: !548, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !573, retainedTypes: !581, globals: !582, splitDebugInlining: false, nameTableKind: None)
!573 = !{!574, !576, !107}
!574 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !575, line: 42, baseType: !99, size: 32, elements: !124)
!575 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!576 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !575, line: 254, baseType: !99, size: 32, elements: !577)
!577 = !{!578, !579, !580}
!578 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!579 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!580 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!581 = !{!138, !80, !139, !140}
!582 = !{!546, !549, !551, !556, !558, !560, !562, !564, !566, !568, !570, !583, !587, !597, !599, !604, !606, !608, !610, !612, !635, !642, !644}
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !572, file: !548, line: 92, type: !585, isLocal: false, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 320, elements: !65)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !572, file: !548, line: 1040, type: !589, isLocal: false, isDefinition: true)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !548, line: 56, size: 448, elements: !590)
!590 = !{!591, !592, !593, !595, !596}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !589, file: !548, line: 59, baseType: !574, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !548, line: 62, baseType: !80, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !589, file: !548, line: 66, baseType: !594, size: 256, offset: 64)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !303)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !589, file: !548, line: 69, baseType: !143, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !589, file: !548, line: 72, baseType: !143, size: 64, offset: 384)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !572, file: !548, line: 107, type: !589, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "slot0", scope: !572, file: !548, line: 831, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 256)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !548, line: 321, type: !277, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !548, line: 357, type: !277, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !548, line: 358, type: !277, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !548, line: 199, type: !297, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "quote", scope: !614, file: !548, line: 228, type: !633, isLocal: true, isDefinition: true)
!614 = distinct !DISubprogram(name: "gettext_quote", scope: !548, file: !548, line: 197, type: !615, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{!143, !143, !574}
!617 = !{!618, !619, !620, !621, !622}
!618 = !DILocalVariable(name: "msgid", arg: 1, scope: !614, file: !548, line: 197, type: !143)
!619 = !DILocalVariable(name: "s", arg: 2, scope: !614, file: !548, line: 197, type: !574)
!620 = !DILocalVariable(name: "translation", scope: !614, file: !548, line: 199, type: !143)
!621 = !DILocalVariable(name: "w", scope: !614, file: !548, line: 229, type: !528)
!622 = !DILocalVariable(name: "mbs", scope: !614, file: !548, line: 230, type: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !534, line: 6, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !536, line: 21, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 13, size: 64, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !625, file: !536, line: 15, baseType: !80, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !625, file: !536, line: 20, baseType: !629, size: 32, offset: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !536, line: 16, size: 32, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !629, file: !536, line: 18, baseType: !99, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !629, file: !536, line: 19, baseType: !270, size: 32)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !634)
!634 = !{!279, !272}
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "slotvec", scope: !572, file: !548, line: 834, type: !637, isLocal: true, isDefinition: true)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !548, line: 823, size: 128, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !638, file: !548, line: 825, baseType: !140, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !638, file: !548, line: 826, baseType: !137, size: 64, offset: 64)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "nslots", scope: !572, file: !548, line: 832, type: !80, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "slotvec0", scope: !572, file: !548, line: 833, type: !638, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 704, elements: !648)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!648 = !{!649}
!649 = !DISubrange(count: 11)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !652, line: 162, type: !653, isLocal: true, isDefinition: true)
!652 = !DIFile(filename: "lib/savewd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0cafd16d007fc7abd1f9bf11434952af")
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 19)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !652, line: 162, type: !553, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !652, line: 162, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 480, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 60)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !652, line: 166, type: !277, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !652, line: 223, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 28)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !652, line: 223, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 328, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 41)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !652, line: 256, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 18)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !652, line: 256, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 288, elements: !10)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !652, line: 55, type: !277, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !652, line: 106, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 280, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 35)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !692, line: 67, type: !373, isLocal: true, isDefinition: true)
!692 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !692, line: 69, type: !297, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !692, line: 83, type: !297, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !692, line: 83, type: !270, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !692, line: 85, type: !277, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !692, line: 88, type: !703, isLocal: true, isDefinition: true)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 171)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !692, line: 88, type: !708, isLocal: true, isDefinition: true)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 34)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !692, line: 105, type: !168, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !692, line: 109, type: !715, isLocal: true, isDefinition: true)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 23)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !692, line: 113, type: !667, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !692, line: 120, type: !495, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !692, line: 127, type: !9, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !692, line: 134, type: !324, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !692, line: 142, type: !728, isLocal: true, isDefinition: true)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 44)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !692, line: 150, type: !733, isLocal: true, isDefinition: true)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 48)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !692, line: 159, type: !738, isLocal: true, isDefinition: true)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 52)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !692, line: 170, type: !743, isLocal: true, isDefinition: true)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !661)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !692, line: 248, type: !252, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !692, line: 248, type: !349, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !692, line: 254, type: !252, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !692, line: 254, type: !163, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !692, line: 254, type: !324, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !692, line: 259, type: !3, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !692, line: 259, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 29)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !763, file: !764, line: 26, type: !766, isLocal: false, isDefinition: true)
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !765, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!765 = !{!761}
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 376, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 47)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "exit_failure", scope: !771, file: !772, line: 24, type: !774, isLocal: false, isDefinition: true)
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !773, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!773 = !{!769}
!774 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !777, line: 34, type: !286, isLocal: true, isDefinition: true)
!777 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !777, line: 34, type: !297, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !777, line: 34, type: !319, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !784, line: 108, type: !59, isLocal: true, isDefinition: true)
!784 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "internal_state", scope: !787, file: !784, line: 97, type: !790, isLocal: true, isDefinition: true)
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !788, globals: !789, splitDebugInlining: false, nameTableKind: None)
!788 = !{!138, !140, !145}
!789 = !{!782, !785}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !534, line: 6, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !536, line: 21, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 13, size: 64, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !792, file: !536, line: 15, baseType: !80, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !792, file: !536, line: 20, baseType: !796, size: 32, offset: 32)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !536, line: 16, size: 32, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !796, file: !536, line: 18, baseType: !99, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !796, file: !536, line: 19, baseType: !270, size: 32)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !802, line: 35, type: !277, isLocal: true, isDefinition: true)
!802 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !802, line: 35, type: !19, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !807, file: !808, line: 506, type: !80, isLocal: true, isDefinition: true)
!807 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !808, file: !808, line: 485, type: !809, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !813)
!808 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!809 = !DISubroutineType(types: !810)
!810 = !{!80, !80, !80}
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !812, splitDebugInlining: false, nameTableKind: None)
!812 = !{!805}
!813 = !{!814, !815, !816, !817, !820}
!814 = !DILocalVariable(name: "fd", arg: 1, scope: !807, file: !808, line: 485, type: !80)
!815 = !DILocalVariable(name: "target", arg: 2, scope: !807, file: !808, line: 485, type: !80)
!816 = !DILocalVariable(name: "result", scope: !807, file: !808, line: 487, type: !80)
!817 = !DILocalVariable(name: "flags", scope: !818, file: !808, line: 530, type: !80)
!818 = distinct !DILexicalBlock(scope: !819, file: !808, line: 529, column: 5)
!819 = distinct !DILexicalBlock(scope: !807, file: !808, line: 528, column: 7)
!820 = !DILocalVariable(name: "saved_errno", scope: !821, file: !808, line: 533, type: !80)
!821 = distinct !DILexicalBlock(scope: !822, file: !808, line: 532, column: 9)
!822 = distinct !DILexicalBlock(scope: !818, file: !808, line: 531, column: 11)
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/prog-fprintf.o -MD -MP -MF src/.deps/prog-fprintf.Tpo -c src/prog-fprintf.c -o src/.prog-fprintf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, globals: !825, splitDebugInlining: false, nameTableKind: None)
!824 = !{!145}
!825 = !{!408}
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/selinux.o -MD -MP -MF src/.deps/selinux.Tpo -c src/selinux.c -o src/.selinux.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !488, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mkdir-p.o -MD -MP -MF lib/.deps/libcoreutils_a-mkdir-p.Tpo -c lib/mkdir-p.c -o lib/.libcoreutils_a-mkdir-p.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !831, retainedTypes: !847, globals: !848, splitDebugInlining: false, nameTableKind: None)
!831 = !{!832, !843}
!832 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !834, file: !833, line: 45, baseType: !99, size: 32, elements: !100)
!833 = !DIFile(filename: "lib/savewd.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ad4dd1c19e06c974b5c544edb9d47f86")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !833, line: 42, size: 64, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !834, file: !833, line: 73, baseType: !832, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !834, file: !833, line: 81, baseType: !838, size: 32, offset: 32)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !833, line: 76, size: 32, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !838, file: !833, line: 78, baseType: !80, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !838, file: !833, line: 79, baseType: !80, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !838, file: !833, line: 80, baseType: !95, size: 32)
!843 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !833, line: 93, baseType: !99, size: 32, elements: !844)
!844 = !{!845, !846}
!845 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1)
!846 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2)
!847 = !{!146, !148}
!848 = !{!486, !489, !491, !493, !498, !503}
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !850, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-modechange.o -MD -MP -MF lib/.deps/libcoreutils_a-modechange.Tpo -c lib/modechange.c -o lib/.libcoreutils_a-modechange.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !851, splitDebugInlining: false, nameTableKind: None)
!850 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!851 = !{!852}
!852 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !850, line: 78, baseType: !99, size: 32, elements: !853)
!853 = !{!854, !855, !856, !857}
!854 = !DIEnumerator(name: "MODE_DONE", value: 0)
!855 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!856 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!857 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!858 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-savewd.o -MD -MP -MF lib/.deps/libcoreutils_a-savewd.Tpo -c lib/savewd.c -o lib/.libcoreutils_a-savewd.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !859, globals: !870, splitDebugInlining: false, nameTableKind: None)
!859 = !{!860, !843}
!860 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !861, file: !833, line: 45, baseType: !99, size: 32, elements: !100)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !833, line: 42, size: 64, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !861, file: !833, line: 73, baseType: !860, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !861, file: !833, line: 81, baseType: !865, size: 32, offset: 32)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !833, line: 76, size: 32, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !865, file: !833, line: 78, baseType: !80, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !865, file: !833, line: 79, baseType: !80, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !865, file: !833, line: 80, baseType: !95, size: 32)
!870 = !{!650, !656, !658, !663, !665, !670, !675, !680, !683, !685}
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !872, retainedTypes: !876, globals: !877, splitDebugInlining: false, nameTableKind: None)
!872 = !{!873}
!873 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !692, line: 40, baseType: !99, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!876 = !{!138}
!877 = !{!690, !693, !695, !697, !699, !701, !706, !711, !713, !718, !720, !722, !724, !726, !731, !736, !741, !744, !746, !748, !750, !752, !754, !756}
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !879, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !880, retainedTypes: !912, splitDebugInlining: false, nameTableKind: None)
!879 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!880 = !{!881, !893}
!881 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !882, file: !879, line: 188, baseType: !99, size: 32, elements: !891)
!882 = distinct !DISubprogram(name: "x2nrealloc", scope: !879, file: !879, line: 176, type: !883, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !886)
!883 = !DISubroutineType(types: !884)
!884 = !{!138, !138, !885, !140}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!886 = !{!887, !888, !889, !890}
!887 = !DILocalVariable(name: "p", arg: 1, scope: !882, file: !879, line: 176, type: !138)
!888 = !DILocalVariable(name: "pn", arg: 2, scope: !882, file: !879, line: 176, type: !885)
!889 = !DILocalVariable(name: "s", arg: 3, scope: !882, file: !879, line: 176, type: !140)
!890 = !DILocalVariable(name: "n", scope: !882, file: !879, line: 178, type: !140)
!891 = !{!892}
!892 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!893 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !894, file: !879, line: 228, baseType: !99, size: 32, elements: !891)
!894 = distinct !DISubprogram(name: "xpalloc", scope: !879, file: !879, line: 223, type: !895, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !902)
!895 = !DISubroutineType(types: !896)
!896 = !{!138, !138, !897, !898, !900, !898}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !899, line: 130, baseType: !900)
!899 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !901, line: 18, baseType: !231)
!901 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911}
!903 = !DILocalVariable(name: "pa", arg: 1, scope: !894, file: !879, line: 223, type: !138)
!904 = !DILocalVariable(name: "pn", arg: 2, scope: !894, file: !879, line: 223, type: !897)
!905 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !894, file: !879, line: 223, type: !898)
!906 = !DILocalVariable(name: "n_max", arg: 4, scope: !894, file: !879, line: 223, type: !900)
!907 = !DILocalVariable(name: "s", arg: 5, scope: !894, file: !879, line: 223, type: !898)
!908 = !DILocalVariable(name: "n0", scope: !894, file: !879, line: 230, type: !898)
!909 = !DILocalVariable(name: "n", scope: !894, file: !879, line: 237, type: !898)
!910 = !DILocalVariable(name: "nbytes", scope: !894, file: !879, line: 248, type: !898)
!911 = !DILocalVariable(name: "adjusted_nbytes", scope: !894, file: !879, line: 252, type: !898)
!912 = !{!137, !138}
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !914, splitDebugInlining: false, nameTableKind: None)
!914 = !{!775, !778, !780}
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!917 = distinct !DICompileUnit(language: DW_LANG_C11, file: !918, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-open-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-open-safer.Tpo -c lib/open-safer.c -o lib/.libcoreutils_a-open-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mkancesdirs.o -MD -MP -MF lib/.deps/libcoreutils_a-mkancesdirs.Tpo -c lib/mkancesdirs.c -o lib/.libcoreutils_a-mkancesdirs.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !927, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6b54240f33d18f510b92d67eeccd60e")
!927 = !{!928, !843}
!928 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !929, file: !833, line: 45, baseType: !99, size: 32, elements: !100)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !833, line: 42, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !929, file: !833, line: 73, baseType: !928, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !929, file: !833, line: 81, baseType: !933, size: 32, offset: 32)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !929, file: !833, line: 76, size: 32, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !933, file: !833, line: 78, baseType: !80, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !933, file: !833, line: 79, baseType: !80, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !933, file: !833, line: 80, baseType: !95, size: 32)
!938 = distinct !DICompileUnit(language: DW_LANG_C11, file: !939, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dirchownmod.o -MD -MP -MF lib/.deps/libcoreutils_a-dirchownmod.Tpo -c lib/dirchownmod.c -o lib/.libcoreutils_a-dirchownmod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !940, splitDebugInlining: false, nameTableKind: None)
!939 = !DIFile(filename: "lib/dirchownmod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b1a0bf6d4e9295f75572be521597aa1e")
!940 = !{!146, !148, !941}
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !96, line: 69, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !98, line: 150, baseType: !99)
!943 = distinct !DICompileUnit(language: DW_LANG_C11, file: !944, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!944 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!945 = distinct !DICompileUnit(language: DW_LANG_C11, file: !946, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer.Tpo -c lib/fd-safer.c -o lib/.libcoreutils_a-fd-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!946 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!947 = distinct !DICompileUnit(language: DW_LANG_C11, file: !802, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !948, splitDebugInlining: false, nameTableKind: None)
!948 = !{!800, !803}
!949 = distinct !DICompileUnit(language: DW_LANG_C11, file: !950, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!950 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!951 = distinct !DICompileUnit(language: DW_LANG_C11, file: !952, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!952 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!953 = distinct !DICompileUnit(language: DW_LANG_C11, file: !954, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!954 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!955 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!956 = !{i32 7, !"Dwarf Version", i32 5}
!957 = !{i32 2, !"Debug Info Version", i32 3}
!958 = !{i32 1, !"wchar_size", i32 4}
!959 = !{i32 8, !"PIC Level", i32 2}
!960 = !{i32 7, !"PIE Level", i32 2}
!961 = !{i32 7, !"uwtable", i32 2}
!962 = !{i32 7, !"frame-pointer", i32 1}
!963 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!964 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 51, type: !965, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !80}
!967 = !{!968}
!968 = !DILocalVariable(name: "status", arg: 1, scope: !964, file: !2, line: 51, type: !80)
!969 = !DILocation(line: 0, scope: !964)
!970 = !DILocation(line: 53, column: 14, scope: !971)
!971 = distinct !DILexicalBlock(scope: !964, file: !2, line: 53, column: 7)
!972 = !DILocation(line: 53, column: 7, scope: !964)
!973 = !DILocation(line: 54, column: 5, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !2, line: 54, column: 5)
!975 = !{!976, !976, i64 0}
!976 = !{!"any pointer", !977, i64 0}
!977 = !{!"omnipotent char", !978, i64 0}
!978 = !{!"Simple C/C++ TBAA"}
!979 = !DILocation(line: 57, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !971, file: !2, line: 56, column: 5)
!981 = !DILocation(line: 58, column: 7, scope: !980)
!982 = !DILocation(line: 736, column: 3, scope: !983, inlinedAt: !984)
!983 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !79, file: !79, line: 734, type: !484, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!984 = distinct !DILocation(line: 62, column: 7, scope: !980)
!985 = !DILocation(line: 64, column: 7, scope: !980)
!986 = !DILocation(line: 68, column: 7, scope: !980)
!987 = !DILocation(line: 73, column: 7, scope: !980)
!988 = !DILocation(line: 77, column: 7, scope: !980)
!989 = !DILocation(line: 82, column: 7, scope: !980)
!990 = !DILocation(line: 87, column: 7, scope: !980)
!991 = !DILocation(line: 88, column: 7, scope: !980)
!992 = !DILocalVariable(name: "program", arg: 1, scope: !993, file: !79, line: 836, type: !143)
!993 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !79, file: !79, line: 836, type: !994, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !996)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !143}
!996 = !{!992, !997, !1004, !1005, !1007, !1008}
!997 = !DILocalVariable(name: "infomap", scope: !993, file: !79, line: 838, type: !998)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 896, elements: !298)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !993, file: !79, line: 838, size: 128, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1000, file: !79, line: 838, baseType: !143, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1000, file: !79, line: 838, baseType: !143, size: 64, offset: 64)
!1004 = !DILocalVariable(name: "node", scope: !993, file: !79, line: 848, type: !143)
!1005 = !DILocalVariable(name: "map_prog", scope: !993, file: !79, line: 849, type: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1007 = !DILocalVariable(name: "lc_messages", scope: !993, file: !79, line: 861, type: !143)
!1008 = !DILocalVariable(name: "url_program", scope: !993, file: !79, line: 874, type: !143)
!1009 = !DILocation(line: 0, scope: !993, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 89, column: 7, scope: !980)
!1011 = !{}
!1012 = !DILocation(line: 857, column: 3, scope: !993, inlinedAt: !1010)
!1013 = !DILocation(line: 861, column: 29, scope: !993, inlinedAt: !1010)
!1014 = !DILocation(line: 862, column: 7, scope: !1015, inlinedAt: !1010)
!1015 = distinct !DILexicalBlock(scope: !993, file: !79, line: 862, column: 7)
!1016 = !DILocation(line: 862, column: 19, scope: !1015, inlinedAt: !1010)
!1017 = !DILocation(line: 862, column: 22, scope: !1015, inlinedAt: !1010)
!1018 = !DILocation(line: 862, column: 7, scope: !993, inlinedAt: !1010)
!1019 = !DILocation(line: 868, column: 7, scope: !1020, inlinedAt: !1010)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !79, line: 863, column: 5)
!1021 = !DILocation(line: 870, column: 5, scope: !1020, inlinedAt: !1010)
!1022 = !DILocation(line: 875, column: 3, scope: !993, inlinedAt: !1010)
!1023 = !DILocation(line: 877, column: 3, scope: !993, inlinedAt: !1010)
!1024 = !DILocation(line: 91, column: 3, scope: !964)
!1025 = !DISubprogram(name: "dcgettext", scope: !1026, file: !1026, line: 51, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!137, !143, !143, !80}
!1029 = !DISubprogram(name: "__fprintf_chk", scope: !1030, file: !1030, line: 93, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!80, !1033, !80, !1034, null}
!1033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!1034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!1035 = !DISubprogram(name: "__printf_chk", scope: !1030, file: !1030, line: 95, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!80, !80, !1034, null}
!1038 = !DISubprogram(name: "fputs_unlocked", scope: !447, file: !447, line: 691, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!80, !1034, !1033}
!1041 = !DILocation(line: 0, scope: !181)
!1042 = !DILocation(line: 581, column: 7, scope: !189)
!1043 = !{!1044, !1044, i64 0}
!1044 = !{!"int", !977, i64 0}
!1045 = !DILocation(line: 581, column: 19, scope: !189)
!1046 = !DILocation(line: 581, column: 7, scope: !181)
!1047 = !DILocation(line: 585, column: 26, scope: !188)
!1048 = !DILocation(line: 0, scope: !188)
!1049 = !DILocation(line: 586, column: 23, scope: !188)
!1050 = !DILocation(line: 586, column: 28, scope: !188)
!1051 = !DILocation(line: 586, column: 32, scope: !188)
!1052 = !{!977, !977, i64 0}
!1053 = !DILocation(line: 586, column: 38, scope: !188)
!1054 = !DILocalVariable(name: "__s1", arg: 1, scope: !1055, file: !1056, line: 1359, type: !143)
!1055 = distinct !DISubprogram(name: "streq", scope: !1056, file: !1056, line: 1359, type: !1057, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1059)
!1056 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!191, !143, !143}
!1059 = !{!1054, !1060}
!1060 = !DILocalVariable(name: "__s2", arg: 2, scope: !1055, file: !1056, line: 1359, type: !143)
!1061 = !DILocation(line: 0, scope: !1055, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 586, column: 41, scope: !188)
!1063 = !DILocation(line: 1361, column: 11, scope: !1055, inlinedAt: !1062)
!1064 = !DILocation(line: 1361, column: 10, scope: !1055, inlinedAt: !1062)
!1065 = !DILocation(line: 586, column: 19, scope: !188)
!1066 = !DILocation(line: 587, column: 5, scope: !188)
!1067 = !DILocation(line: 588, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !181, file: !79, line: 588, column: 7)
!1069 = !DILocation(line: 588, column: 7, scope: !181)
!1070 = !DILocation(line: 590, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !79, line: 589, column: 5)
!1072 = !DILocation(line: 591, column: 7, scope: !1071)
!1073 = !DILocation(line: 595, column: 37, scope: !181)
!1074 = !DILocation(line: 595, column: 35, scope: !181)
!1075 = !DILocation(line: 596, column: 29, scope: !181)
!1076 = !DILocation(line: 597, column: 8, scope: !197)
!1077 = !DILocation(line: 597, column: 7, scope: !181)
!1078 = !DILocation(line: 604, column: 24, scope: !196)
!1079 = !DILocation(line: 604, column: 12, scope: !197)
!1080 = !DILocation(line: 0, scope: !195)
!1081 = !DILocation(line: 610, column: 16, scope: !195)
!1082 = !DILocation(line: 610, column: 7, scope: !195)
!1083 = !DILocation(line: 611, column: 21, scope: !195)
!1084 = !{!1085, !1085, i64 0}
!1085 = !{!"short", !977, i64 0}
!1086 = !DILocation(line: 611, column: 19, scope: !195)
!1087 = !DILocation(line: 611, column: 16, scope: !195)
!1088 = !DILocation(line: 610, column: 30, scope: !195)
!1089 = distinct !{!1089, !1082, !1083, !1090}
!1090 = !{!"llvm.loop.mustprogress"}
!1091 = !DILocation(line: 612, column: 18, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !195, file: !79, line: 612, column: 11)
!1093 = !DILocation(line: 612, column: 11, scope: !195)
!1094 = !DILocation(line: 620, column: 23, scope: !181)
!1095 = !DILocation(line: 625, column: 39, scope: !181)
!1096 = !DILocation(line: 626, column: 3, scope: !181)
!1097 = !DILocation(line: 626, column: 10, scope: !181)
!1098 = !DILocation(line: 626, column: 21, scope: !181)
!1099 = !DILocation(line: 628, column: 44, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 628, column: 11)
!1101 = distinct !DILexicalBlock(scope: !181, file: !79, line: 627, column: 5)
!1102 = !DILocation(line: 628, column: 32, scope: !1100)
!1103 = !DILocation(line: 628, column: 49, scope: !1100)
!1104 = !DILocation(line: 628, column: 11, scope: !1101)
!1105 = !DILocation(line: 630, column: 11, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 630, column: 11)
!1107 = !DILocation(line: 630, column: 11, scope: !1101)
!1108 = !DILocation(line: 632, column: 26, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !79, line: 632, column: 15)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !79, line: 631, column: 9)
!1111 = !DILocation(line: 632, column: 34, scope: !1109)
!1112 = !DILocation(line: 632, column: 37, scope: !1109)
!1113 = !DILocation(line: 632, column: 15, scope: !1110)
!1114 = !DILocation(line: 640, column: 16, scope: !1101)
!1115 = distinct !{!1115, !1096, !1116, !1090}
!1116 = !DILocation(line: 641, column: 5, scope: !181)
!1117 = !DILocation(line: 644, column: 3, scope: !181)
!1118 = !DILocation(line: 0, scope: !1055, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 648, column: 31, scope: !181)
!1120 = !DILocation(line: 0, scope: !1055, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 649, column: 31, scope: !181)
!1122 = !DILocation(line: 0, scope: !1055, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 650, column: 31, scope: !181)
!1124 = !DILocation(line: 0, scope: !1055, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 651, column: 31, scope: !181)
!1126 = !DILocation(line: 0, scope: !1055, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 652, column: 31, scope: !181)
!1128 = !DILocation(line: 0, scope: !1055, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 653, column: 31, scope: !181)
!1130 = !DILocation(line: 0, scope: !1055, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 654, column: 31, scope: !181)
!1132 = !DILocation(line: 0, scope: !1055, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 655, column: 31, scope: !181)
!1134 = !DILocation(line: 0, scope: !1055, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 656, column: 31, scope: !181)
!1136 = !DILocation(line: 0, scope: !1055, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 657, column: 31, scope: !181)
!1138 = !DILocation(line: 663, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !181, file: !79, line: 663, column: 7)
!1140 = !DILocation(line: 664, column: 7, scope: !1139)
!1141 = !DILocation(line: 664, column: 10, scope: !1139)
!1142 = !DILocation(line: 663, column: 7, scope: !181)
!1143 = !DILocation(line: 669, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !79, line: 665, column: 5)
!1145 = !DILocation(line: 671, column: 5, scope: !1144)
!1146 = !DILocation(line: 676, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !79, line: 673, column: 5)
!1148 = !DILocation(line: 679, column: 3, scope: !181)
!1149 = !DILocation(line: 683, column: 3, scope: !181)
!1150 = !DILocation(line: 686, column: 3, scope: !181)
!1151 = !DILocation(line: 688, column: 3, scope: !181)
!1152 = !DILocation(line: 691, column: 3, scope: !181)
!1153 = !DILocation(line: 695, column: 3, scope: !181)
!1154 = !DILocation(line: 696, column: 1, scope: !181)
!1155 = !DISubprogram(name: "setlocale", scope: !1156, file: !1156, line: 122, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!137, !80, !143}
!1159 = !DISubprogram(name: "strncmp", scope: !1160, file: !1160, line: 159, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!80, !143, !143, !140}
!1163 = !DISubprogram(name: "exit", scope: !1164, file: !1164, line: 624, type: !965, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1164 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1165 = !DISubprogram(name: "getenv", scope: !1164, file: !1164, line: 641, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!137, !143}
!1168 = !DISubprogram(name: "strcmp", scope: !1160, file: !1160, line: 156, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!80, !143, !143}
!1171 = !DISubprogram(name: "strspn", scope: !1160, file: !1160, line: 297, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!142, !143, !143}
!1174 = !DISubprogram(name: "strchr", scope: !1160, file: !1160, line: 246, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!137, !143, !80}
!1177 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1183 = !DISubprogram(name: "strcspn", scope: !1160, file: !1160, line: 293, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubprogram(name: "fwrite_unlocked", scope: !447, file: !447, line: 704, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!140, !1187, !140, !140, !1033}
!1187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1190 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 202, type: !1191, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1194)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!80, !80, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1216, !1219, !1222}
!1195 = !DILocalVariable(name: "argc", arg: 1, scope: !1190, file: !2, line: 202, type: !80)
!1196 = !DILocalVariable(name: "argv", arg: 2, scope: !1190, file: !2, line: 202, type: !1193)
!1197 = !DILocalVariable(name: "specified_mode", scope: !1190, file: !2, line: 204, type: !143)
!1198 = !DILocalVariable(name: "optc", scope: !1190, file: !2, line: 205, type: !80)
!1199 = !DILocalVariable(name: "scontext", scope: !1190, file: !2, line: 206, type: !143)
!1200 = !DILocalVariable(name: "options", scope: !1190, file: !2, line: 207, type: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !2, line: 95, size: 320, elements: !1202)
!1202 = !{!1203, !1207, !1208, !1209, !1210, !1211, !1215}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !1201, file: !2, line: 99, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!80, !143, !143, !138}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !1201, file: !2, line: 102, baseType: !941, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !1201, file: !2, line: 105, baseType: !941, size: 32, offset: 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1201, file: !2, line: 108, baseType: !941, size: 32, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !1201, file: !2, line: 111, baseType: !941, size: 32, offset: 160)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !1201, file: !2, line: 114, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1214, line: 53, flags: DIFlagFwdDecl)
!1214 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !1201, file: !2, line: 117, baseType: !143, size: 64, offset: 256)
!1216 = !DILocalVariable(name: "ret", scope: !1217, file: !2, line: 279, type: !80)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 278, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 277, column: 7)
!1219 = !DILocalVariable(name: "umask_value", scope: !1220, file: !2, line: 294, type: !941)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 293, column: 5)
!1221 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 292, column: 7)
!1222 = !DILocalVariable(name: "change", scope: !1223, file: !2, line: 299, type: !1225)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 298, column: 9)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 297, column: 11)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1227, line: 35, flags: DIFlagFwdDecl)
!1227 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1228 = distinct !DIAssignID()
!1229 = !DILocation(line: 0, scope: !1190)
!1230 = !DILocation(line: 207, column: 3, scope: !1190)
!1231 = distinct !DIAssignID()
!1232 = !DILocation(line: 210, column: 11, scope: !1190)
!1233 = !DILocation(line: 210, column: 16, scope: !1190)
!1234 = !{!1235, !1044, i64 16}
!1235 = !{!"mkdir_options", !976, i64 0, !1044, i64 8, !1044, i64 12, !1044, i64 16, !1044, i64 20, !976, i64 24, !976, i64 32}
!1236 = distinct !DIAssignID()
!1237 = !DILocation(line: 211, column: 11, scope: !1190)
!1238 = distinct !DIAssignID()
!1239 = !DILocation(line: 212, column: 11, scope: !1190)
!1240 = !DILocation(line: 212, column: 36, scope: !1190)
!1241 = !DILocation(line: 216, column: 21, scope: !1190)
!1242 = !DILocation(line: 216, column: 3, scope: !1190)
!1243 = !DILocation(line: 217, column: 3, scope: !1190)
!1244 = !DILocation(line: 218, column: 3, scope: !1190)
!1245 = !DILocation(line: 219, column: 3, scope: !1190)
!1246 = !DILocation(line: 221, column: 3, scope: !1190)
!1247 = !DILocation(line: 223, column: 3, scope: !1190)
!1248 = distinct !{!1248, !1247, !1249, !1090}
!1249 = !DILocation(line: 266, column: 5, scope: !1190)
!1250 = !DILocation(line: 223, column: 18, scope: !1190)
!1251 = !DILocation(line: 231, column: 28, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 226, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 224, column: 5)
!1254 = !DILocation(line: 232, column: 11, scope: !1252)
!1255 = !DILocation(line: 234, column: 46, scope: !1252)
!1256 = distinct !DIAssignID()
!1257 = !DILocation(line: 235, column: 11, scope: !1252)
!1258 = !DILocation(line: 254, column: 20, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 254, column: 20)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 242, column: 20)
!1261 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 237, column: 15)
!1262 = !DILocation(line: 254, column: 20, scope: !1260)
!1263 = !DILocation(line: 256, column: 15, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 255, column: 13)
!1265 = !DILocation(line: 259, column: 13, scope: !1264)
!1266 = !DILocation(line: 261, column: 9, scope: !1252)
!1267 = !DILocation(line: 262, column: 9, scope: !1252)
!1268 = !DILocation(line: 264, column: 11, scope: !1252)
!1269 = !DILocation(line: 234, column: 44, scope: !1252)
!1270 = !{!1235, !976, i64 32}
!1271 = !DILocation(line: 228, column: 42, scope: !1252)
!1272 = !{!1235, !976, i64 0}
!1273 = distinct !DIAssignID()
!1274 = !DILocation(line: 268, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 268, column: 7)
!1276 = !DILocation(line: 268, column: 14, scope: !1275)
!1277 = !DILocation(line: 268, column: 7, scope: !1190)
!1278 = !DILocation(line: 270, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 269, column: 5)
!1280 = !DILocation(line: 271, column: 7, scope: !1279)
!1281 = !DILocation(line: 292, column: 38, scope: !1221)
!1282 = !DILocation(line: 294, column: 28, scope: !1220)
!1283 = !DILocation(line: 0, scope: !1220)
!1284 = !DILocation(line: 295, column: 44, scope: !1220)
!1285 = !DILocation(line: 295, column: 15, scope: !1220)
!1286 = !DILocation(line: 295, column: 30, scope: !1220)
!1287 = !{!1235, !1044, i64 8}
!1288 = distinct !DIAssignID()
!1289 = !DILocation(line: 297, column: 11, scope: !1220)
!1290 = !DILocation(line: 299, column: 40, scope: !1223)
!1291 = !DILocation(line: 0, scope: !1223)
!1292 = !DILocation(line: 300, column: 16, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 300, column: 15)
!1294 = !DILocation(line: 300, column: 15, scope: !1223)
!1295 = !DILocation(line: 301, column: 13, scope: !1293)
!1296 = !DILocation(line: 303, column: 26, scope: !1223)
!1297 = !DILocation(line: 303, column: 24, scope: !1223)
!1298 = distinct !DIAssignID()
!1299 = !DILocation(line: 305, column: 46, scope: !1223)
!1300 = !DILocation(line: 305, column: 44, scope: !1223)
!1301 = !DILocation(line: 305, column: 19, scope: !1223)
!1302 = !DILocation(line: 305, column: 30, scope: !1223)
!1303 = !{!1235, !1044, i64 12}
!1304 = distinct !DIAssignID()
!1305 = !DILocation(line: 306, column: 11, scope: !1223)
!1306 = !DILocation(line: 307, column: 9, scope: !1223)
!1307 = !DILocation(line: 310, column: 24, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 309, column: 9)
!1309 = distinct !DIAssignID()
!1310 = !DILocation(line: 311, column: 19, scope: !1308)
!1311 = !DILocation(line: 311, column: 30, scope: !1308)
!1312 = distinct !DIAssignID()
!1313 = !DILocation(line: 314, column: 22, scope: !1220)
!1314 = !DILocation(line: 314, column: 7, scope: !1220)
!1315 = !DILocation(line: 317, column: 39, scope: !1190)
!1316 = !DILocation(line: 315, column: 5, scope: !1220)
!1317 = !DILocation(line: 317, column: 37, scope: !1190)
!1318 = !DILocation(line: 317, column: 52, scope: !1190)
!1319 = !DILocation(line: 317, column: 10, scope: !1190)
!1320 = !DILocation(line: 319, column: 1, scope: !1190)
!1321 = !DILocation(line: 317, column: 3, scope: !1190)
!1322 = !DISubprogram(name: "bindtextdomain", scope: !1026, file: !1026, line: 86, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!137, !143, !143}
!1325 = !DISubprogram(name: "textdomain", scope: !1026, file: !1026, line: 82, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1326 = !DISubprogram(name: "atexit", scope: !1164, file: !1164, line: 602, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!80, !483}
!1329 = distinct !DISubprogram(name: "make_ancestor", scope: !2, file: !2, line: 135, type: !1205, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1330)
!1330 = !{!1331, !1332, !1333, !1334, !1337, !1338}
!1331 = !DILocalVariable(name: "dir", arg: 1, scope: !1329, file: !2, line: 135, type: !143)
!1332 = !DILocalVariable(name: "component", arg: 2, scope: !1329, file: !2, line: 135, type: !143)
!1333 = !DILocalVariable(name: "options", arg: 3, scope: !1329, file: !2, line: 135, type: !138)
!1334 = !DILocalVariable(name: "o", scope: !1329, file: !2, line: 137, type: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1337 = !DILocalVariable(name: "r", scope: !1329, file: !2, line: 147, type: !80)
!1338 = !DILocalVariable(name: "mkdir_errno", scope: !1339, file: !2, line: 150, type: !80)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 149, column: 5)
!1340 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 148, column: 7)
!1341 = !DILocation(line: 0, scope: !1329)
!1342 = !DILocation(line: 139, column: 10, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 139, column: 7)
!1344 = !{!1235, !976, i64 24}
!1345 = !DILocation(line: 139, column: 7, scope: !1343)
!1346 = !DILocation(line: 140, column: 7, scope: !1343)
!1347 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1348, file: !1349, line: 49, type: !1212)
!1348 = distinct !DISubprogram(name: "defaultcon", scope: !1349, file: !1349, line: 49, type: !1350, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1352)
!1349 = !DIFile(filename: "src/selinux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!80, !1212, !143, !941}
!1352 = !{!1347, !1353, !1354}
!1353 = !DILocalVariable(name: "path", arg: 2, scope: !1348, file: !1349, line: 50, type: !143)
!1354 = !DILocalVariable(name: "mode", arg: 3, scope: !1348, file: !1349, line: 50, type: !941)
!1355 = !DILocation(line: 0, scope: !1348, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 140, column: 10, scope: !1343)
!1357 = !DILocation(line: 51, column: 3, scope: !1348, inlinedAt: !1356)
!1358 = !DILocation(line: 51, column: 9, scope: !1348, inlinedAt: !1356)
!1359 = !DILocation(line: 139, column: 7, scope: !1329)
!1360 = !DILocation(line: 145, column: 10, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 145, column: 7)
!1362 = !DILocation(line: 145, column: 31, scope: !1361)
!1363 = !DILocation(line: 145, column: 25, scope: !1361)
!1364 = !DILocation(line: 145, column: 7, scope: !1329)
!1365 = !DILocation(line: 146, column: 5, scope: !1361)
!1366 = !DILocation(line: 147, column: 11, scope: !1329)
!1367 = !DILocation(line: 148, column: 10, scope: !1340)
!1368 = !DILocation(line: 148, column: 31, scope: !1340)
!1369 = !DILocation(line: 148, column: 25, scope: !1340)
!1370 = !DILocation(line: 148, column: 7, scope: !1329)
!1371 = !DILocation(line: 150, column: 25, scope: !1339)
!1372 = !DILocation(line: 0, scope: !1339)
!1373 = !DILocation(line: 151, column: 7, scope: !1339)
!1374 = !DILocation(line: 152, column: 13, scope: !1339)
!1375 = !DILocation(line: 153, column: 5, scope: !1339)
!1376 = !DILocation(line: 154, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 154, column: 7)
!1378 = !DILocation(line: 154, column: 7, scope: !1329)
!1379 = !DILocation(line: 156, column: 15, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 155, column: 5)
!1381 = !DILocation(line: 156, column: 41, scope: !1380)
!1382 = !DILocalVariable(name: "dir", arg: 1, scope: !1383, file: !2, line: 122, type: !143)
!1383 = distinct !DISubprogram(name: "announce_mkdir", scope: !2, file: !2, line: 122, type: !1384, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !143, !138}
!1386 = !{!1382, !1387, !1388}
!1387 = !DILocalVariable(name: "options", arg: 2, scope: !1383, file: !2, line: 122, type: !138)
!1388 = !DILocalVariable(name: "o", scope: !1383, file: !2, line: 124, type: !1335)
!1389 = !DILocation(line: 0, scope: !1383, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 157, column: 7, scope: !1380)
!1391 = !DILocation(line: 125, column: 10, scope: !1392, inlinedAt: !1390)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 125, column: 7)
!1393 = !DILocation(line: 125, column: 7, scope: !1392, inlinedAt: !1390)
!1394 = !DILocation(line: 125, column: 7, scope: !1383, inlinedAt: !1390)
!1395 = !DILocation(line: 126, column: 19, scope: !1392, inlinedAt: !1390)
!1396 = !DILocation(line: 126, column: 56, scope: !1392, inlinedAt: !1390)
!1397 = !DILocation(line: 126, column: 5, scope: !1392, inlinedAt: !1390)
!1398 = !DILocation(line: 159, column: 3, scope: !1329)
!1399 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!80, !80, !1402, !143, !1404, !406}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1405 = !DISubprogram(name: "umask", scope: !1406, file: !1406, line: 380, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!942, !942}
!1409 = !DISubprogram(name: "free", scope: !1164, file: !1164, line: 555, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !138}
!1412 = distinct !DISubprogram(name: "process_dir", scope: !2, file: !2, line: 164, type: !1413, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1416)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!80, !137, !1415, !138}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1416 = !{!1417, !1418, !1419, !1420, !1421}
!1417 = !DILocalVariable(name: "dir", arg: 1, scope: !1412, file: !2, line: 164, type: !137)
!1418 = !DILocalVariable(name: "wd", arg: 2, scope: !1412, file: !2, line: 164, type: !1415)
!1419 = !DILocalVariable(name: "options", arg: 3, scope: !1412, file: !2, line: 164, type: !138)
!1420 = !DILocalVariable(name: "o", scope: !1412, file: !2, line: 166, type: !1335)
!1421 = !DILocalVariable(name: "ret", scope: !1412, file: !2, line: 178, type: !80)
!1422 = !DILocation(line: 0, scope: !1412)
!1423 = !DILocation(line: 169, column: 10, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 169, column: 7)
!1425 = !DILocation(line: 169, column: 7, scope: !1424)
!1426 = !DILocation(line: 178, column: 44, scope: !1412)
!1427 = !DILocation(line: 169, column: 7, scope: !1412)
!1428 = !DILocation(line: 0, scope: !1348, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 172, column: 14, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 171, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 170, column: 5)
!1432 = !DILocation(line: 51, column: 3, scope: !1348, inlinedAt: !1429)
!1433 = !DILocation(line: 51, column: 9, scope: !1348, inlinedAt: !1429)
!1434 = !DILocation(line: 171, column: 11, scope: !1431)
!1435 = !DILocation(line: 179, column: 35, scope: !1412)
!1436 = !DILocation(line: 180, column: 35, scope: !1412)
!1437 = !{!1235, !1044, i64 20}
!1438 = !DILocation(line: 178, column: 14, scope: !1412)
!1439 = !DILocation(line: 189, column: 27, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 189, column: 7)
!1441 = !DILocation(line: 189, column: 33, scope: !1440)
!1442 = !DILocation(line: 189, column: 30, scope: !1440)
!1443 = !DILocation(line: 190, column: 7, scope: !1440)
!1444 = !DILocation(line: 190, column: 13, scope: !1440)
!1445 = !DILocation(line: 190, column: 10, scope: !1440)
!1446 = !DILocation(line: 189, column: 7, scope: !1412)
!1447 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1448, file: !1349, line: 44, type: !1212)
!1448 = distinct !DISubprogram(name: "restorecon", scope: !1349, file: !1349, line: 44, type: !1449, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!191, !1212, !143, !191}
!1451 = !{!1447, !1452, !1453}
!1452 = !DILocalVariable(name: "path", arg: 2, scope: !1448, file: !1349, line: 45, type: !143)
!1453 = !DILocalVariable(name: "recurse", arg: 3, scope: !1448, file: !1349, line: 45, type: !191)
!1454 = !DILocation(line: 0, scope: !1448, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 192, column: 13, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 192, column: 11)
!1457 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 191, column: 5)
!1458 = !DILocation(line: 46, column: 3, scope: !1448, inlinedAt: !1455)
!1459 = !DILocation(line: 46, column: 9, scope: !1448, inlinedAt: !1455)
!1460 = !DILocation(line: 192, column: 11, scope: !1457)
!1461 = !DILocation(line: 198, column: 3, scope: !1412)
!1462 = !DISubprogram(name: "__errno_location", scope: !1463, file: !1463, line: 37, type: !1464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1463 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!406}
!1466 = !DILocation(line: 0, scope: !1383)
!1467 = !DILocation(line: 125, column: 10, scope: !1392)
!1468 = !DILocation(line: 125, column: 7, scope: !1392)
!1469 = !DILocation(line: 125, column: 7, scope: !1383)
!1470 = !DILocation(line: 126, column: 19, scope: !1392)
!1471 = !DILocation(line: 126, column: 56, scope: !1392)
!1472 = !DILocation(line: 126, column: 5, scope: !1392)
!1473 = !DILocation(line: 127, column: 1, scope: !1383)
!1474 = !DISubprogram(name: "mkdir", scope: !1406, file: !1406, line: 389, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!80, !143, !942}
!1477 = distinct !DISubprogram(name: "prog_fprintf", scope: !410, file: !410, line: 28, type: !1478, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !1514)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1480, !143, null}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1482, file: !208, line: 51, baseType: !80, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1482, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1482, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1482, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1482, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1482, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1482, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1482, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1482, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1482, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1482, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1482, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1482, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1482, file: !208, line: 70, baseType: !1498, size: 64, offset: 832)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1482, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1482, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1482, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1482, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1482, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1482, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1482, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1482, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1482, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1482, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1482, file: !208, line: 93, baseType: !1498, size: 64, offset: 1344)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1482, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1482, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1482, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1482, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1514 = !{!1515, !1516, !1517}
!1515 = !DILocalVariable(name: "fp", arg: 1, scope: !1477, file: !410, line: 28, type: !1480)
!1516 = !DILocalVariable(name: "fmt", arg: 2, scope: !1477, file: !410, line: 28, type: !143)
!1517 = !DILocalVariable(name: "ap", scope: !1477, file: !410, line: 30, type: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !447, line: 52, baseType: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !449, line: 12, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !410, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1521, file: !410, line: 30, baseType: !138, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1521, file: !410, line: 30, baseType: !138, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1521, file: !410, line: 30, baseType: !138, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1521, file: !410, line: 30, baseType: !80, size: 32, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1521, file: !410, line: 30, baseType: !80, size: 32, offset: 224)
!1528 = distinct !DIAssignID()
!1529 = !DILocation(line: 0, scope: !1477)
!1530 = !DILocation(line: 30, column: 3, scope: !1477)
!1531 = !DILocation(line: 31, column: 3, scope: !1477)
!1532 = !DILocation(line: 32, column: 3, scope: !1477)
!1533 = !DILocation(line: 33, column: 3, scope: !1477)
!1534 = !DILocation(line: 135, column: 10, scope: !1535, inlinedAt: !1543)
!1535 = distinct !DISubprogram(name: "vfprintf", scope: !1030, file: !1030, line: 132, type: !1536, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !1539)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!80, !1538, !1034, !1519}
!1538 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1480)
!1539 = !{!1540, !1541, !1542}
!1540 = !DILocalVariable(name: "__stream", arg: 1, scope: !1535, file: !1030, line: 132, type: !1538)
!1541 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1535, file: !1030, line: 133, type: !1034)
!1542 = !DILocalVariable(name: "__ap", arg: 3, scope: !1535, file: !1030, line: 133, type: !1519)
!1543 = distinct !DILocation(line: 34, column: 3, scope: !1477)
!1544 = !{!1545, !1547}
!1545 = distinct !{!1545, !1546, !"vfprintf.inline: argument 0"}
!1546 = distinct !{!1546, !"vfprintf.inline"}
!1547 = distinct !{!1547, !1546, !"vfprintf.inline: argument 1"}
!1548 = !DILocation(line: 34, column: 3, scope: !1477)
!1549 = !DILocation(line: 0, scope: !1535, inlinedAt: !1543)
!1550 = !DILocation(line: 35, column: 3, scope: !1477)
!1551 = !DILocalVariable(name: "__c", arg: 1, scope: !1552, file: !1553, line: 91, type: !80)
!1552 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1553, file: !1553, line: 91, type: !1554, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !1556)
!1553 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!80, !80, !1480}
!1556 = !{!1551, !1557}
!1557 = !DILocalVariable(name: "__stream", arg: 2, scope: !1552, file: !1553, line: 91, type: !1480)
!1558 = !DILocation(line: 0, scope: !1552, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 36, column: 3, scope: !1477)
!1560 = !DILocation(line: 93, column: 10, scope: !1552, inlinedAt: !1559)
!1561 = !{!1562, !976, i64 40}
!1562 = !{!"_IO_FILE", !1044, i64 0, !976, i64 8, !976, i64 16, !976, i64 24, !976, i64 32, !976, i64 40, !976, i64 48, !976, i64 56, !976, i64 64, !976, i64 72, !976, i64 80, !976, i64 88, !976, i64 96, !976, i64 104, !1044, i64 112, !1044, i64 116, !1563, i64 120, !1085, i64 128, !977, i64 130, !977, i64 131, !976, i64 136, !1563, i64 144, !976, i64 152, !976, i64 160, !976, i64 168, !976, i64 176, !1563, i64 184, !1044, i64 192, !977, i64 196}
!1563 = !{!"long", !977, i64 0}
!1564 = !{!1562, !976, i64 48}
!1565 = !{!"branch_weights", i32 2000, i32 1}
!1566 = !DILocation(line: 37, column: 1, scope: !1477)
!1567 = !DISubprogram(name: "__vfprintf_chk", scope: !1030, file: !1030, line: 96, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!80, !1538, !80, !1034, !1519}
!1570 = !DISubprogram(name: "__overflow", scope: !447, file: !447, line: 886, type: !1571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!80, !1480, !80}
!1573 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !421, file: !421, line: 50, type: !994, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1574)
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "file", arg: 1, scope: !1573, file: !421, line: 50, type: !143)
!1576 = !DILocation(line: 0, scope: !1573)
!1577 = !DILocation(line: 52, column: 13, scope: !1573)
!1578 = !DILocation(line: 53, column: 1, scope: !1573)
!1579 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !421, file: !421, line: 87, type: !1580, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !191}
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "ignore", arg: 1, scope: !1579, file: !421, line: 87, type: !191)
!1584 = !DILocation(line: 0, scope: !1579)
!1585 = !DILocation(line: 89, column: 16, scope: !1579)
!1586 = !{!1587, !1587, i64 0}
!1587 = !{!"_Bool", !977, i64 0}
!1588 = !DILocation(line: 90, column: 1, scope: !1579)
!1589 = distinct !DISubprogram(name: "close_stdout", scope: !421, file: !421, line: 116, type: !484, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1590)
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "write_error", scope: !1592, file: !421, line: 121, type: !143)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !421, line: 120, column: 5)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !421, line: 118, column: 7)
!1594 = !DILocation(line: 118, column: 21, scope: !1593)
!1595 = !DILocation(line: 118, column: 7, scope: !1593)
!1596 = !DILocation(line: 118, column: 29, scope: !1593)
!1597 = !DILocation(line: 119, column: 7, scope: !1593)
!1598 = !DILocation(line: 119, column: 12, scope: !1593)
!1599 = !{i8 0, i8 2}
!1600 = !DILocation(line: 119, column: 25, scope: !1593)
!1601 = !DILocation(line: 119, column: 28, scope: !1593)
!1602 = !DILocation(line: 119, column: 34, scope: !1593)
!1603 = !DILocation(line: 118, column: 7, scope: !1589)
!1604 = !DILocation(line: 121, column: 33, scope: !1592)
!1605 = !DILocation(line: 0, scope: !1592)
!1606 = !DILocation(line: 122, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1592, file: !421, line: 122, column: 11)
!1608 = !DILocation(line: 0, scope: !1607)
!1609 = !DILocation(line: 122, column: 11, scope: !1592)
!1610 = !DILocation(line: 123, column: 9, scope: !1607)
!1611 = !DILocation(line: 126, column: 9, scope: !1607)
!1612 = !DILocation(line: 128, column: 14, scope: !1592)
!1613 = !DILocation(line: 128, column: 7, scope: !1592)
!1614 = !DILocation(line: 133, column: 42, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1589, file: !421, line: 133, column: 7)
!1616 = !DILocation(line: 133, column: 28, scope: !1615)
!1617 = !DILocation(line: 133, column: 50, scope: !1615)
!1618 = !DILocation(line: 133, column: 7, scope: !1589)
!1619 = !DILocation(line: 134, column: 12, scope: !1615)
!1620 = !DILocation(line: 134, column: 5, scope: !1615)
!1621 = !DILocation(line: 135, column: 1, scope: !1589)
!1622 = !DISubprogram(name: "_exit", scope: !1623, file: !1623, line: 624, type: !965, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1623 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1624 = distinct !DISubprogram(name: "verror", scope: !436, file: !436, line: 251, type: !1625, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !80, !80, !143, !446}
!1627 = !{!1628, !1629, !1630, !1631}
!1628 = !DILocalVariable(name: "status", arg: 1, scope: !1624, file: !436, line: 251, type: !80)
!1629 = !DILocalVariable(name: "errnum", arg: 2, scope: !1624, file: !436, line: 251, type: !80)
!1630 = !DILocalVariable(name: "message", arg: 3, scope: !1624, file: !436, line: 251, type: !143)
!1631 = !DILocalVariable(name: "args", arg: 4, scope: !1624, file: !436, line: 251, type: !446)
!1632 = !DILocation(line: 0, scope: !1624)
!1633 = !DILocation(line: 261, column: 3, scope: !1624)
!1634 = !DILocation(line: 265, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1624, file: !436, line: 265, column: 7)
!1636 = !DILocation(line: 265, column: 7, scope: !1624)
!1637 = !DILocation(line: 266, column: 5, scope: !1635)
!1638 = !DILocation(line: 272, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !436, line: 268, column: 5)
!1640 = !DILocation(line: 276, column: 3, scope: !1624)
!1641 = !{i64 0, i64 8, !975, i64 8, i64 8, !975, i64 16, i64 8, !975, i64 24, i64 4, !1043, i64 28, i64 4, !1043}
!1642 = !DILocation(line: 282, column: 1, scope: !1624)
!1643 = distinct !DISubprogram(name: "flush_stdout", scope: !436, file: !436, line: 163, type: !484, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1644)
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "stdout_fd", scope: !1643, file: !436, line: 166, type: !80)
!1646 = !DILocation(line: 0, scope: !1643)
!1647 = !DILocalVariable(name: "fd", arg: 1, scope: !1648, file: !436, line: 145, type: !80)
!1648 = distinct !DISubprogram(name: "is_open", scope: !436, file: !436, line: 145, type: !1649, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!80, !80}
!1651 = !{!1647}
!1652 = !DILocation(line: 0, scope: !1648, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 182, column: 25, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 182, column: 7)
!1655 = !DILocation(line: 157, column: 15, scope: !1648, inlinedAt: !1653)
!1656 = !DILocation(line: 157, column: 12, scope: !1648, inlinedAt: !1653)
!1657 = !DILocation(line: 182, column: 7, scope: !1643)
!1658 = !DILocation(line: 184, column: 5, scope: !1654)
!1659 = !DILocation(line: 185, column: 1, scope: !1643)
!1660 = distinct !DISubprogram(name: "error_tail", scope: !436, file: !436, line: 219, type: !1625, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1661)
!1661 = !{!1662, !1663, !1664, !1665}
!1662 = !DILocalVariable(name: "status", arg: 1, scope: !1660, file: !436, line: 219, type: !80)
!1663 = !DILocalVariable(name: "errnum", arg: 2, scope: !1660, file: !436, line: 219, type: !80)
!1664 = !DILocalVariable(name: "message", arg: 3, scope: !1660, file: !436, line: 219, type: !143)
!1665 = !DILocalVariable(name: "args", arg: 4, scope: !1660, file: !436, line: 219, type: !446)
!1666 = distinct !DIAssignID()
!1667 = !DILocation(line: 0, scope: !1660)
!1668 = !DILocation(line: 229, column: 13, scope: !1660)
!1669 = !DILocation(line: 135, column: 10, scope: !1670, inlinedAt: !1712)
!1670 = distinct !DISubprogram(name: "vfprintf", scope: !1030, file: !1030, line: 132, type: !1671, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1708)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!80, !1673, !1034, !448}
!1673 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1676, file: !208, line: 51, baseType: !80, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1676, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1676, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1676, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1676, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1676, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1676, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1676, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1676, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1676, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1676, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1676, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1676, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1676, file: !208, line: 70, baseType: !1692, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1676, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1676, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1676, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1676, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1676, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1676, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1676, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1676, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1676, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1676, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1676, file: !208, line: 93, baseType: !1692, size: 64, offset: 1344)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1676, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1676, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1676, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1676, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1708 = !{!1709, !1710, !1711}
!1709 = !DILocalVariable(name: "__stream", arg: 1, scope: !1670, file: !1030, line: 132, type: !1673)
!1710 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1670, file: !1030, line: 133, type: !1034)
!1711 = !DILocalVariable(name: "__ap", arg: 3, scope: !1670, file: !1030, line: 133, type: !448)
!1712 = distinct !DILocation(line: 229, column: 3, scope: !1660)
!1713 = !{!1714, !1716}
!1714 = distinct !{!1714, !1715, !"vfprintf.inline: argument 0"}
!1715 = distinct !{!1715, !"vfprintf.inline"}
!1716 = distinct !{!1716, !1715, !"vfprintf.inline: argument 1"}
!1717 = !DILocation(line: 229, column: 3, scope: !1660)
!1718 = !DILocation(line: 0, scope: !1670, inlinedAt: !1712)
!1719 = !DILocation(line: 232, column: 3, scope: !1660)
!1720 = !DILocation(line: 233, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1660, file: !436, line: 233, column: 7)
!1722 = !DILocation(line: 233, column: 7, scope: !1660)
!1723 = !DILocalVariable(name: "errbuf", scope: !1724, file: !436, line: 193, type: !1728)
!1724 = distinct !DISubprogram(name: "print_errno_message", scope: !436, file: !436, line: 188, type: !965, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1725)
!1725 = !{!1726, !1727, !1723}
!1726 = !DILocalVariable(name: "errnum", arg: 1, scope: !1724, file: !436, line: 188, type: !80)
!1727 = !DILocalVariable(name: "s", scope: !1724, file: !436, line: 190, type: !143)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 1024)
!1731 = !DILocation(line: 0, scope: !1724, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 234, column: 5, scope: !1721)
!1733 = !DILocation(line: 193, column: 3, scope: !1724, inlinedAt: !1732)
!1734 = !DILocation(line: 195, column: 7, scope: !1724, inlinedAt: !1732)
!1735 = !DILocation(line: 207, column: 9, scope: !1736, inlinedAt: !1732)
!1736 = distinct !DILexicalBlock(scope: !1724, file: !436, line: 207, column: 7)
!1737 = !DILocation(line: 207, column: 7, scope: !1724, inlinedAt: !1732)
!1738 = !DILocation(line: 208, column: 9, scope: !1736, inlinedAt: !1732)
!1739 = !DILocation(line: 208, column: 5, scope: !1736, inlinedAt: !1732)
!1740 = !DILocation(line: 214, column: 3, scope: !1724, inlinedAt: !1732)
!1741 = !DILocation(line: 216, column: 1, scope: !1724, inlinedAt: !1732)
!1742 = !DILocation(line: 234, column: 5, scope: !1721)
!1743 = !DILocation(line: 238, column: 3, scope: !1660)
!1744 = !DILocalVariable(name: "__c", arg: 1, scope: !1745, file: !1553, line: 101, type: !80)
!1745 = distinct !DISubprogram(name: "putc_unlocked", scope: !1553, file: !1553, line: 101, type: !1746, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!80, !80, !1674}
!1748 = !{!1744, !1749}
!1749 = !DILocalVariable(name: "__stream", arg: 2, scope: !1745, file: !1553, line: 101, type: !1674)
!1750 = !DILocation(line: 0, scope: !1745, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 238, column: 3, scope: !1660)
!1752 = !DILocation(line: 103, column: 10, scope: !1745, inlinedAt: !1751)
!1753 = !DILocation(line: 240, column: 3, scope: !1660)
!1754 = !DILocation(line: 241, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1660, file: !436, line: 241, column: 7)
!1756 = !DILocation(line: 241, column: 7, scope: !1660)
!1757 = !DILocation(line: 242, column: 5, scope: !1755)
!1758 = !DILocation(line: 243, column: 1, scope: !1660)
!1759 = !DISubprogram(name: "strerror_r", scope: !1160, file: !1160, line: 444, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!137, !80, !137, !140}
!1762 = !DISubprogram(name: "fflush_unlocked", scope: !447, file: !447, line: 239, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!80, !1674}
!1765 = !DISubprogram(name: "fcntl", scope: !1766, file: !1766, line: 149, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1766 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!80, !80, !80, null}
!1769 = distinct !DISubprogram(name: "error", scope: !436, file: !436, line: 285, type: !1770, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !80, !80, !143, null}
!1772 = !{!1773, !1774, !1775, !1776}
!1773 = !DILocalVariable(name: "status", arg: 1, scope: !1769, file: !436, line: 285, type: !80)
!1774 = !DILocalVariable(name: "errnum", arg: 2, scope: !1769, file: !436, line: 285, type: !80)
!1775 = !DILocalVariable(name: "message", arg: 3, scope: !1769, file: !436, line: 285, type: !143)
!1776 = !DILocalVariable(name: "ap", scope: !1769, file: !436, line: 287, type: !446)
!1777 = distinct !DIAssignID()
!1778 = !DILocation(line: 0, scope: !1769)
!1779 = !DILocation(line: 287, column: 3, scope: !1769)
!1780 = !DILocation(line: 288, column: 3, scope: !1769)
!1781 = !DILocation(line: 289, column: 3, scope: !1769)
!1782 = !DILocation(line: 290, column: 3, scope: !1769)
!1783 = !DILocation(line: 291, column: 1, scope: !1769)
!1784 = !DILocation(line: 0, scope: !443)
!1785 = !DILocation(line: 302, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !443, file: !436, line: 302, column: 7)
!1787 = !DILocation(line: 302, column: 7, scope: !443)
!1788 = !DILocation(line: 307, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !436, line: 307, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !436, line: 303, column: 5)
!1791 = !DILocation(line: 307, column: 27, scope: !1789)
!1792 = !DILocation(line: 308, column: 11, scope: !1789)
!1793 = !DILocation(line: 308, column: 28, scope: !1789)
!1794 = !DILocation(line: 308, column: 25, scope: !1789)
!1795 = !DILocation(line: 309, column: 15, scope: !1789)
!1796 = !DILocation(line: 309, column: 33, scope: !1789)
!1797 = !DILocation(line: 310, column: 19, scope: !1789)
!1798 = !DILocation(line: 311, column: 22, scope: !1789)
!1799 = !DILocation(line: 311, column: 56, scope: !1789)
!1800 = !DILocation(line: 307, column: 11, scope: !1790)
!1801 = !DILocation(line: 316, column: 21, scope: !1790)
!1802 = !DILocation(line: 317, column: 23, scope: !1790)
!1803 = !DILocation(line: 318, column: 5, scope: !1790)
!1804 = !DILocation(line: 327, column: 3, scope: !443)
!1805 = !DILocation(line: 331, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !443, file: !436, line: 331, column: 7)
!1807 = !DILocation(line: 331, column: 7, scope: !443)
!1808 = !DILocation(line: 332, column: 5, scope: !1806)
!1809 = !DILocation(line: 338, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !436, line: 334, column: 5)
!1811 = !DILocation(line: 346, column: 3, scope: !443)
!1812 = !DILocation(line: 350, column: 3, scope: !443)
!1813 = !DILocation(line: 356, column: 1, scope: !443)
!1814 = distinct !DISubprogram(name: "error_at_line", scope: !436, file: !436, line: 359, type: !1815, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !80, !80, !143, !99, !143, null}
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823}
!1818 = !DILocalVariable(name: "status", arg: 1, scope: !1814, file: !436, line: 359, type: !80)
!1819 = !DILocalVariable(name: "errnum", arg: 2, scope: !1814, file: !436, line: 359, type: !80)
!1820 = !DILocalVariable(name: "file_name", arg: 3, scope: !1814, file: !436, line: 359, type: !143)
!1821 = !DILocalVariable(name: "line_number", arg: 4, scope: !1814, file: !436, line: 360, type: !99)
!1822 = !DILocalVariable(name: "message", arg: 5, scope: !1814, file: !436, line: 360, type: !143)
!1823 = !DILocalVariable(name: "ap", scope: !1814, file: !436, line: 362, type: !446)
!1824 = distinct !DIAssignID()
!1825 = !DILocation(line: 0, scope: !1814)
!1826 = !DILocation(line: 362, column: 3, scope: !1814)
!1827 = !DILocation(line: 363, column: 3, scope: !1814)
!1828 = !DILocation(line: 364, column: 3, scope: !1814)
!1829 = !DILocation(line: 366, column: 3, scope: !1814)
!1830 = !DILocation(line: 367, column: 1, scope: !1814)
!1831 = distinct !DISubprogram(name: "getprogname", scope: !829, file: !829, line: 54, type: !1832, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!143}
!1834 = !DILocation(line: 58, column: 10, scope: !1831)
!1835 = !DILocation(line: 58, column: 3, scope: !1831)
!1836 = distinct !DISubprogram(name: "make_dir_parents", scope: !488, file: !488, line: 85, type: !1837, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !1841)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!191, !137, !1839, !1204, !138, !941, !1840, !941, !146, !148, !191}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1856, !1857, !1860, !1861, !1862, !1865, !1903, !1905, !1906, !1910}
!1842 = !DILocalVariable(name: "dir", arg: 1, scope: !1836, file: !488, line: 85, type: !137)
!1843 = !DILocalVariable(name: "wd", arg: 2, scope: !1836, file: !488, line: 86, type: !1839)
!1844 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1836, file: !488, line: 87, type: !1204)
!1845 = !DILocalVariable(name: "options", arg: 4, scope: !1836, file: !488, line: 88, type: !138)
!1846 = !DILocalVariable(name: "mode", arg: 5, scope: !1836, file: !488, line: 89, type: !941)
!1847 = !DILocalVariable(name: "announce", arg: 6, scope: !1836, file: !488, line: 90, type: !1840)
!1848 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1836, file: !488, line: 91, type: !941)
!1849 = !DILocalVariable(name: "owner", arg: 8, scope: !1836, file: !488, line: 92, type: !146)
!1850 = !DILocalVariable(name: "group", arg: 9, scope: !1836, file: !488, line: 93, type: !148)
!1851 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1836, file: !488, line: 94, type: !191)
!1852 = !DILocalVariable(name: "mkdir_errno", scope: !1836, file: !488, line: 96, type: !80)
!1853 = !DILocalVariable(name: "savewd_chdir_options", scope: !1854, file: !488, line: 100, type: !80)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !488, line: 99, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1836, file: !488, line: 98, column: 7)
!1856 = !DILocalVariable(name: "prefix_len", scope: !1854, file: !488, line: 102, type: !900)
!1857 = !DILocalVariable(name: "keep_owner", scope: !1858, file: !488, line: 121, type: !191)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !488, line: 115, column: 9)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !488, line: 114, column: 11)
!1860 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1858, file: !488, line: 122, type: !191)
!1861 = !DILocalVariable(name: "mkdir_mode", scope: !1858, file: !488, line: 124, type: !941)
!1862 = !DILocalVariable(name: "umask_must_be_ok", scope: !1863, file: !488, line: 134, type: !191)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !488, line: 131, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1858, file: !488, line: 130, column: 15)
!1865 = !DILocalVariable(name: "st", scope: !1866, file: !488, line: 155, type: !1871)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !488, line: 154, column: 17)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !488, line: 153, column: 19)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !488, line: 150, column: 13)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !488, line: 149, column: 20)
!1870 = distinct !DILexicalBlock(scope: !1858, file: !488, line: 147, column: 15)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1872, line: 44, size: 1024, elements: !1873)
!1872 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1873 = !{!1874, !1876, !1878, !1879, !1881, !1882, !1883, !1884, !1885, !1886, !1888, !1889, !1891, !1899, !1900, !1901}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1871, file: !1872, line: 46, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !98, line: 145, baseType: !142)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1871, file: !1872, line: 47, baseType: !1877, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !98, line: 148, baseType: !142)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1871, file: !1872, line: 48, baseType: !942, size: 32, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1871, file: !1872, line: 49, baseType: !1880, size: 32, offset: 160)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !98, line: 151, baseType: !99)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1871, file: !1872, line: 50, baseType: !147, size: 32, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1871, file: !1872, line: 51, baseType: !149, size: 32, offset: 224)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1871, file: !1872, line: 52, baseType: !1875, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1871, file: !1872, line: 53, baseType: !1875, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1871, file: !1872, line: 54, baseType: !230, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1871, file: !1872, line: 55, baseType: !1887, size: 32, offset: 448)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !98, line: 175, baseType: !80)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1871, file: !1872, line: 56, baseType: !80, size: 32, offset: 480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1871, file: !1872, line: 57, baseType: !1890, size: 64, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !98, line: 180, baseType: !231)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1871, file: !1872, line: 65, baseType: !1892, size: 128, offset: 576)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1893, line: 11, size: 128, elements: !1894)
!1893 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1894 = !{!1895, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1892, file: !1893, line: 16, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !98, line: 160, baseType: !231)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1892, file: !1893, line: 21, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !98, line: 197, baseType: !231)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1871, file: !1872, line: 66, baseType: !1892, size: 128, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1871, file: !1872, line: 67, baseType: !1892, size: 128, offset: 832)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1871, file: !1872, line: 79, baseType: !1902, size: 64, offset: 960)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !278)
!1903 = !DILocalVariable(name: "open_result", scope: !1904, file: !488, line: 171, type: !1902)
!1904 = distinct !DILexicalBlock(scope: !1869, file: !488, line: 170, column: 13)
!1905 = !DILocalVariable(name: "chdir_result", scope: !1904, file: !488, line: 172, type: !80)
!1906 = !DILocalVariable(name: "chdir_ok", scope: !1907, file: !488, line: 179, type: !191)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !488, line: 178, column: 17)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !488, line: 177, column: 24)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !488, line: 175, column: 19)
!1910 = !DILocalVariable(name: "subdir", scope: !1907, file: !488, line: 180, type: !143)
!1911 = distinct !DIAssignID()
!1912 = !DILocation(line: 0, scope: !1866)
!1913 = distinct !DIAssignID()
!1914 = !DILocation(line: 0, scope: !1904)
!1915 = !DILocation(line: 0, scope: !1836)
!1916 = !DILocation(line: 96, column: 22, scope: !1836)
!1917 = !DILocalVariable(name: "wd", arg: 1, scope: !1918, file: !833, line: 131, type: !1921)
!1918 = distinct !DISubprogram(name: "savewd_errno", scope: !833, file: !833, line: 131, type: !1919, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !1923)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!80, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!1923 = !{!1917}
!1924 = !DILocation(line: 0, scope: !1918, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 96, column: 56, scope: !1836)
!1926 = !DILocation(line: 133, column: 14, scope: !1918, inlinedAt: !1925)
!1927 = !{!1928, !1044, i64 0}
!1928 = !{!"savewd", !1044, i64 0, !977, i64 4}
!1929 = !DILocation(line: 133, column: 20, scope: !1918, inlinedAt: !1925)
!1930 = !DILocation(line: 133, column: 10, scope: !1918, inlinedAt: !1925)
!1931 = !DILocation(line: 133, column: 44, scope: !1918, inlinedAt: !1925)
!1932 = !DILocation(line: 133, column: 48, scope: !1918, inlinedAt: !1925)
!1933 = !DILocation(line: 98, column: 19, scope: !1855)
!1934 = !DILocation(line: 98, column: 7, scope: !1836)
!1935 = !DILocation(line: 0, scope: !1854)
!1936 = !DILocation(line: 103, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1854, file: !488, line: 103, column: 11)
!1938 = !DILocation(line: 103, column: 11, scope: !1854)
!1939 = !DILocation(line: 105, column: 24, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !488, line: 104, column: 9)
!1941 = !DILocation(line: 106, column: 26, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1940, file: !488, line: 106, column: 15)
!1943 = !DILocation(line: 106, column: 15, scope: !1940)
!1944 = !DILocation(line: 108, column: 30, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !488, line: 108, column: 19)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !488, line: 107, column: 13)
!1947 = !DILocation(line: 108, column: 19, scope: !1946)
!1948 = !DILocation(line: 110, column: 29, scope: !1946)
!1949 = !DILocation(line: 114, column: 11, scope: !1854)
!1950 = !DILocation(line: 121, column: 49, scope: !1858)
!1951 = !DILocation(line: 0, scope: !1858)
!1952 = !DILocation(line: 123, column: 25, scope: !1858)
!1953 = !DILocation(line: 123, column: 56, scope: !1858)
!1954 = !DILocation(line: 123, column: 48, scope: !1858)
!1955 = !DILocation(line: 125, column: 15, scope: !1858)
!1956 = !DILocation(line: 130, column: 26, scope: !1864)
!1957 = !DILocation(line: 130, column: 15, scope: !1864)
!1958 = !DILocation(line: 130, column: 52, scope: !1864)
!1959 = !DILocation(line: 130, column: 15, scope: !1858)
!1960 = !DILocation(line: 134, column: 45, scope: !1863)
!1961 = !DILocation(line: 134, column: 57, scope: !1863)
!1962 = !DILocation(line: 0, scope: !1863)
!1963 = !DILocation(line: 136, column: 15, scope: !1863)
!1964 = !DILocation(line: 138, column: 36, scope: !1863)
!1965 = !DILocation(line: 149, column: 20, scope: !1870)
!1966 = !DILocation(line: 143, column: 29, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1864, file: !488, line: 142, column: 13)
!1968 = !DILocation(line: 147, column: 37, scope: !1870)
!1969 = !DILocation(line: 151, column: 31, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1868, file: !488, line: 151, column: 19)
!1971 = !DILocation(line: 151, column: 19, scope: !1868)
!1972 = !DILocation(line: 153, column: 19, scope: !1868)
!1973 = !DILocation(line: 155, column: 19, scope: !1866)
!1974 = !DILocation(line: 156, column: 23, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1866, file: !488, line: 156, column: 23)
!1976 = !DILocation(line: 156, column: 52, scope: !1975)
!1977 = !DILocation(line: 156, column: 23, scope: !1866)
!1978 = !DILocation(line: 158, column: 27, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !488, line: 158, column: 27)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !488, line: 157, column: 21)
!1981 = !{!1982, !1044, i64 16}
!1982 = !{!"stat", !1563, i64 0, !1563, i64 8, !1044, i64 16, !1044, i64 20, !1044, i64 24, !1044, i64 28, !1563, i64 32, !1563, i64 40, !1563, i64 48, !1044, i64 56, !1044, i64 60, !1563, i64 64, !1983, i64 72, !1983, i64 88, !1983, i64 104, !977, i64 120}
!1983 = !{!"timespec", !1563, i64 0, !1563, i64 8}
!1984 = !DILocation(line: 158, column: 27, scope: !1980)
!1985 = !DILocation(line: 161, column: 40, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1975, file: !488, line: 161, column: 28)
!1987 = !DILocation(line: 162, column: 28, scope: !1986)
!1988 = !DILocation(line: 162, column: 31, scope: !1986)
!1989 = !DILocation(line: 162, column: 47, scope: !1986)
!1990 = !DILocation(line: 164, column: 23, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !488, line: 163, column: 21)
!1992 = !DILocation(line: 165, column: 23, scope: !1991)
!1993 = !DILocation(line: 167, column: 17, scope: !1867)
!1994 = !DILocation(line: 171, column: 15, scope: !1904)
!1995 = !DILocation(line: 173, column: 17, scope: !1904)
!1996 = !DILocation(line: 175, column: 32, scope: !1909)
!1997 = !DILocation(line: 175, column: 19, scope: !1904)
!1998 = !DILocation(line: 177, column: 37, scope: !1908)
!1999 = !DILocation(line: 177, column: 42, scope: !1908)
!2000 = !DILocation(line: 177, column: 45, scope: !1908)
!2001 = !DILocation(line: 177, column: 51, scope: !1908)
!2002 = !DILocation(line: 177, column: 24, scope: !1909)
!2003 = !DILocation(line: 180, column: 41, scope: !1907)
!2004 = !DILocation(line: 0, scope: !1907)
!2005 = !DILocation(line: 181, column: 36, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1907, file: !488, line: 181, column: 23)
!2007 = !DILocation(line: 181, column: 23, scope: !2006)
!2008 = !DILocation(line: 183, column: 23, scope: !2006)
!2009 = !DILocation(line: 181, column: 23, scope: !1907)
!2010 = !DILocation(line: 186, column: 35, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1907, file: !488, line: 186, column: 23)
!2012 = !DILocation(line: 187, column: 23, scope: !2011)
!2013 = !DILocation(line: 189, column: 23, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !488, line: 188, column: 21)
!2015 = !DILocation(line: 187, column: 41, scope: !2011)
!2016 = !DILocation(line: 187, column: 44, scope: !2011)
!2017 = !DILocation(line: 187, column: 60, scope: !2011)
!2018 = !DILocation(line: 194, column: 23, scope: !2014)
!2019 = !DILocation(line: 199, column: 35, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !488, line: 199, column: 23)
!2021 = distinct !DILexicalBlock(scope: !1908, file: !488, line: 198, column: 17)
!2022 = !DILocation(line: 199, column: 23, scope: !2021)
!2023 = !DILocation(line: 201, column: 28, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2021, file: !488, line: 201, column: 23)
!2025 = !DILocation(line: 201, column: 25, scope: !2024)
!2026 = !DILocation(line: 201, column: 23, scope: !2021)
!2027 = !DILocation(line: 202, column: 21, scope: !2024)
!2028 = !DILocation(line: 204, column: 13, scope: !1869)
!2029 = !DILocation(line: 0, scope: !1909)
!2030 = !DILocation(line: 96, column: 7, scope: !1836)
!2031 = !DILocation(line: 208, column: 3, scope: !1836)
!2032 = !DILocation(line: 209, column: 3, scope: !1836)
!2033 = !DILocation(line: 210, column: 1, scope: !1836)
!2034 = !DISubprogram(name: "stat", scope: !1406, file: !1406, line: 205, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!80, !1034, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2038)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!2039 = !DISubprogram(name: "close", scope: !1623, file: !1623, line: 358, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2040 = distinct !DISubprogram(name: "mode_compile", scope: !850, file: !850, line: 134, type: !2041, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2051)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!2043, !143}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !850, line: 98, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2050}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2044, file: !850, line: 100, baseType: !4, size: 8)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !2044, file: !850, line: 101, baseType: !4, size: 8, offset: 8)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !2044, file: !850, line: 102, baseType: !941, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2044, file: !850, line: 103, baseType: !941, size: 32, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !2044, file: !850, line: 104, baseType: !941, size: 32, offset: 96)
!2051 = !{!2052, !2053, !2056, !2057, !2058, !2059, !2060, !2062, !2064, !2065, !2066, !2070, !2071, !2073, !2074, !2075, !2076, !2079, !2080, !2081}
!2052 = !DILocalVariable(name: "mode_string", arg: 1, scope: !2040, file: !850, line: 134, type: !143)
!2053 = !DILocalVariable(name: "p", scope: !2054, file: !850, line: 138, type: !143)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !850, line: 137, column: 5)
!2055 = distinct !DILexicalBlock(scope: !2040, file: !850, line: 136, column: 7)
!2056 = !DILocalVariable(name: "octal_mode", scope: !2054, file: !850, line: 139, type: !99)
!2057 = !DILocalVariable(name: "mode", scope: !2054, file: !850, line: 140, type: !941)
!2058 = !DILocalVariable(name: "mentioned", scope: !2054, file: !850, line: 141, type: !941)
!2059 = !DILocalVariable(name: "mc", scope: !2040, file: !850, line: 163, type: !2043)
!2060 = !DILocalVariable(name: "needed", scope: !2061, file: !850, line: 167, type: !140)
!2061 = distinct !DILexicalBlock(scope: !2040, file: !850, line: 166, column: 3)
!2062 = !DILocalVariable(name: "p", scope: !2063, file: !850, line: 168, type: !143)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !850, line: 168, column: 5)
!2064 = !DILocalVariable(name: "used", scope: !2040, file: !850, line: 175, type: !140)
!2065 = !DILocalVariable(name: "p", scope: !2040, file: !850, line: 176, type: !143)
!2066 = !DILocalVariable(name: "affected", scope: !2067, file: !850, line: 180, type: !941)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !850, line: 178, column: 5)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !850, line: 177, column: 3)
!2069 = distinct !DILexicalBlock(scope: !2040, file: !850, line: 177, column: 3)
!2070 = !DILabel(scope: !2067, name: "no_more_affected", file: !850, line: 203)
!2071 = !DILocalVariable(name: "op", scope: !2072, file: !850, line: 207, type: !4)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !850, line: 206, column: 9)
!2073 = !DILocalVariable(name: "value", scope: !2072, file: !850, line: 208, type: !941)
!2074 = !DILocalVariable(name: "mentioned", scope: !2072, file: !850, line: 209, type: !941)
!2075 = !DILocalVariable(name: "flag", scope: !2072, file: !850, line: 210, type: !4)
!2076 = !DILocalVariable(name: "octal_mode", scope: !2077, file: !850, line: 217, type: !99)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !850, line: 216, column: 15)
!2078 = distinct !DILexicalBlock(scope: !2072, file: !850, line: 213, column: 13)
!2079 = !DILabel(scope: !2078, name: "no_more_values", file: !850, line: 284)
!2080 = !DILocalVariable(name: "change", scope: !2072, file: !850, line: 287, type: !2043)
!2081 = !DILabel(scope: !2040, name: "invalid", file: !850, line: 308)
!2082 = !DILocation(line: 0, scope: !2040)
!2083 = !DILocation(line: 136, column: 14, scope: !2055)
!2084 = !DILocation(line: 136, column: 27, scope: !2055)
!2085 = !DILocation(line: 168, column: 5, scope: !2063)
!2086 = !DILocation(line: 144, column: 7, scope: !2054)
!2087 = !DILocation(line: 146, column: 41, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2054, file: !850, line: 145, column: 9)
!2089 = !DILocation(line: 0, scope: !2054)
!2090 = !DILocation(line: 146, column: 26, scope: !2088)
!2091 = !DILocation(line: 146, column: 39, scope: !2088)
!2092 = !DILocation(line: 146, column: 46, scope: !2088)
!2093 = !DILocation(line: 147, column: 20, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2088, file: !850, line: 147, column: 15)
!2095 = !DILocation(line: 147, column: 15, scope: !2088)
!2096 = !DILocation(line: 146, column: 43, scope: !2088)
!2097 = !DILocation(line: 150, column: 21, scope: !2054)
!2098 = !DILocation(line: 150, column: 24, scope: !2054)
!2099 = distinct !{!2099, !2086, !2100, !1090}
!2100 = !DILocation(line: 150, column: 35, scope: !2054)
!2101 = !DILocation(line: 152, column: 11, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2054, file: !850, line: 152, column: 11)
!2103 = !DILocation(line: 152, column: 11, scope: !2054)
!2104 = !DILocation(line: 156, column: 22, scope: !2054)
!2105 = !DILocation(line: 156, column: 36, scope: !2054)
!2106 = !DILocation(line: 156, column: 20, scope: !2054)
!2107 = !DILocalVariable(name: "new_mode", arg: 1, scope: !2108, file: !850, line: 112, type: !941)
!2108 = distinct !DISubprogram(name: "make_node_op_equals", scope: !850, file: !850, line: 112, type: !2109, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2043, !941, !941}
!2111 = !{!2107, !2112, !2113}
!2112 = !DILocalVariable(name: "mentioned", arg: 2, scope: !2108, file: !850, line: 112, type: !941)
!2113 = !DILocalVariable(name: "p", scope: !2108, file: !850, line: 114, type: !2043)
!2114 = !DILocation(line: 0, scope: !2108, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 159, column: 14, scope: !2054)
!2116 = !DILocation(line: 114, column: 27, scope: !2108, inlinedAt: !2115)
!2117 = !DILocation(line: 115, column: 9, scope: !2108, inlinedAt: !2115)
!2118 = !{!2119, !977, i64 0}
!2119 = !{!"mode_change", !977, i64 0, !977, i64 1, !1044, i64 4, !1044, i64 8, !1044, i64 12}
!2120 = !DILocation(line: 116, column: 6, scope: !2108, inlinedAt: !2115)
!2121 = !DILocation(line: 116, column: 11, scope: !2108, inlinedAt: !2115)
!2122 = !{!2119, !977, i64 1}
!2123 = !DILocation(line: 117, column: 6, scope: !2108, inlinedAt: !2115)
!2124 = !DILocation(line: 117, column: 15, scope: !2108, inlinedAt: !2115)
!2125 = !{!2119, !1044, i64 4}
!2126 = !DILocation(line: 118, column: 6, scope: !2108, inlinedAt: !2115)
!2127 = !DILocation(line: 118, column: 12, scope: !2108, inlinedAt: !2115)
!2128 = !{!2119, !1044, i64 8}
!2129 = !DILocation(line: 119, column: 6, scope: !2108, inlinedAt: !2115)
!2130 = !DILocation(line: 119, column: 16, scope: !2108, inlinedAt: !2115)
!2131 = !{!2119, !1044, i64 12}
!2132 = !DILocation(line: 120, column: 8, scope: !2108, inlinedAt: !2115)
!2133 = !DILocation(line: 120, column: 13, scope: !2108, inlinedAt: !2115)
!2134 = !DILocation(line: 159, column: 7, scope: !2054)
!2135 = !DILocation(line: 168, column: 39, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2063, file: !850, line: 168, column: 5)
!2137 = !DILocation(line: 0, scope: !2061)
!2138 = !DILocation(line: 168, scope: !2063)
!2139 = !DILocation(line: 0, scope: !2063)
!2140 = !DILocation(line: 170, column: 10, scope: !2061)
!2141 = !DILocation(line: 177, column: 8, scope: !2069)
!2142 = !DILocation(line: 169, column: 41, scope: !2136)
!2143 = !DILocation(line: 169, column: 14, scope: !2136)
!2144 = !DILocation(line: 168, column: 44, scope: !2136)
!2145 = !DILocation(line: 168, column: 5, scope: !2136)
!2146 = distinct !{!2146, !2085, !2147, !1090}
!2147 = !DILocation(line: 169, column: 53, scope: !2063)
!2148 = !DILocation(line: 175, column: 10, scope: !2040)
!2149 = !DILocation(line: 177, scope: !2069)
!2150 = !DILocation(line: 0, scope: !2072)
!2151 = !DILocation(line: 0, scope: !2067)
!2152 = !DILocation(line: 183, column: 7, scope: !2067)
!2153 = !DILocation(line: 0, scope: !2069)
!2154 = !DILocation(line: 184, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !850, line: 183, column: 7)
!2156 = distinct !DILexicalBlock(scope: !2067, file: !850, line: 183, column: 7)
!2157 = !DILocation(line: 184, column: 9, scope: !2155)
!2158 = !DILocation(line: 212, column: 11, scope: !2072)
!2159 = !DILocation(line: 189, column: 22, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !850, line: 185, column: 11)
!2161 = !DILocation(line: 190, column: 13, scope: !2160)
!2162 = !DILocation(line: 192, column: 22, scope: !2160)
!2163 = !DILocation(line: 193, column: 13, scope: !2160)
!2164 = !DILocation(line: 195, column: 22, scope: !2160)
!2165 = !DILocation(line: 196, column: 13, scope: !2160)
!2166 = !DILocation(line: 0, scope: !2160)
!2167 = !DILocation(line: 183, column: 16, scope: !2155)
!2168 = !DILocation(line: 183, column: 7, scope: !2155)
!2169 = distinct !{!2169, !2170, !2171}
!2170 = !DILocation(line: 183, column: 7, scope: !2156)
!2171 = !DILocation(line: 202, column: 11, scope: !2156)
!2172 = !DILocation(line: 207, column: 21, scope: !2072)
!2173 = !DILocation(line: 180, column: 14, scope: !2067)
!2174 = !DILocation(line: 207, column: 23, scope: !2072)
!2175 = !DILocation(line: 212, column: 19, scope: !2072)
!2176 = !DILocation(line: 258, column: 15, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2078, file: !850, line: 258, column: 15)
!2178 = !DILocation(line: 219, column: 17, scope: !2077)
!2179 = !DILocation(line: 221, column: 51, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2077, file: !850, line: 220, column: 19)
!2181 = !DILocation(line: 0, scope: !2077)
!2182 = !DILocation(line: 221, column: 36, scope: !2180)
!2183 = !DILocation(line: 221, column: 49, scope: !2180)
!2184 = !DILocation(line: 221, column: 56, scope: !2180)
!2185 = !DILocation(line: 222, column: 30, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !850, line: 222, column: 25)
!2187 = !DILocation(line: 222, column: 25, scope: !2180)
!2188 = !DILocation(line: 221, column: 53, scope: !2180)
!2189 = !DILocation(line: 225, column: 31, scope: !2077)
!2190 = !DILocation(line: 225, column: 34, scope: !2077)
!2191 = distinct !{!2191, !2178, !2192, !1090}
!2192 = !DILocation(line: 225, column: 45, scope: !2077)
!2193 = !DILocation(line: 227, column: 21, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2077, file: !850, line: 227, column: 21)
!2195 = !DILocation(line: 227, column: 30, scope: !2194)
!2196 = !DILocation(line: 227, column: 37, scope: !2194)
!2197 = !DILocation(line: 239, column: 16, scope: !2078)
!2198 = !DILocation(line: 240, column: 15, scope: !2078)
!2199 = !DILocation(line: 245, column: 16, scope: !2078)
!2200 = !DILocation(line: 246, column: 15, scope: !2078)
!2201 = !DILocation(line: 251, column: 16, scope: !2078)
!2202 = !DILocation(line: 252, column: 15, scope: !2078)
!2203 = !DILocation(line: 259, column: 25, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2177, file: !850, line: 258, column: 15)
!2205 = !DILocation(line: 0, scope: !2078)
!2206 = !DILocation(line: 256, column: 20, scope: !2078)
!2207 = !DILocation(line: 259, column: 17, scope: !2204)
!2208 = !DILocation(line: 262, column: 27, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2204, file: !850, line: 260, column: 19)
!2210 = !DILocation(line: 263, column: 21, scope: !2209)
!2211 = !DILocation(line: 265, column: 27, scope: !2209)
!2212 = !DILocation(line: 266, column: 21, scope: !2209)
!2213 = !DILocation(line: 268, column: 27, scope: !2209)
!2214 = !DILocation(line: 269, column: 21, scope: !2209)
!2215 = !DILocation(line: 275, column: 27, scope: !2209)
!2216 = !DILocation(line: 276, column: 21, scope: !2209)
!2217 = !DILocation(line: 279, column: 27, scope: !2209)
!2218 = !DILocation(line: 280, column: 21, scope: !2209)
!2219 = !DILocation(line: 258, column: 24, scope: !2204)
!2220 = !DILocation(line: 258, column: 15, scope: !2204)
!2221 = distinct !{!2221, !2176, !2222}
!2222 = !DILocation(line: 283, column: 19, scope: !2177)
!2223 = !DILocation(line: 294, column: 14, scope: !2072)
!2224 = !DILocation(line: 209, column: 18, scope: !2072)
!2225 = !DILocation(line: 288, column: 28, scope: !2072)
!2226 = !DILocation(line: 288, column: 21, scope: !2072)
!2227 = !DILocation(line: 289, column: 22, scope: !2072)
!2228 = !DILocation(line: 290, column: 19, scope: !2072)
!2229 = !DILocation(line: 290, column: 24, scope: !2072)
!2230 = !DILocation(line: 291, column: 19, scope: !2072)
!2231 = !DILocation(line: 291, column: 28, scope: !2072)
!2232 = !DILocation(line: 292, column: 19, scope: !2072)
!2233 = !DILocation(line: 292, column: 25, scope: !2072)
!2234 = !DILocation(line: 293, column: 19, scope: !2072)
!2235 = !DILocation(line: 293, column: 29, scope: !2072)
!2236 = !DILocation(line: 296, column: 14, scope: !2067)
!2237 = !DILocation(line: 296, column: 24, scope: !2067)
!2238 = !DILocation(line: 177, column: 28, scope: !2068)
!2239 = !DILocation(line: 177, column: 3, scope: !2068)
!2240 = distinct !{!2240, !2241, !2242}
!2241 = !DILocation(line: 177, column: 3, scope: !2069)
!2242 = !DILocation(line: 300, column: 5, scope: !2069)
!2243 = !DILocation(line: 304, column: 16, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !850, line: 303, column: 5)
!2245 = distinct !DILexicalBlock(scope: !2040, file: !850, line: 302, column: 7)
!2246 = !DILocation(line: 304, column: 21, scope: !2244)
!2247 = !DILocation(line: 305, column: 7, scope: !2244)
!2248 = !DILocation(line: 309, column: 3, scope: !2040)
!2249 = !DILocation(line: 308, column: 1, scope: !2040)
!2250 = !DILocation(line: 310, column: 3, scope: !2040)
!2251 = !DILocation(line: 311, column: 1, scope: !2040)
!2252 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !850, file: !850, line: 317, type: !2041, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2253)
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "ref_file", arg: 1, scope: !2252, file: !850, line: 317, type: !143)
!2255 = !DILocalVariable(name: "ref_stats", scope: !2252, file: !850, line: 319, type: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1872, line: 44, size: 1024, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2275, !2276, !2277}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2256, file: !1872, line: 46, baseType: !1875, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2256, file: !1872, line: 47, baseType: !1877, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2256, file: !1872, line: 48, baseType: !942, size: 32, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2256, file: !1872, line: 49, baseType: !1880, size: 32, offset: 160)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2256, file: !1872, line: 50, baseType: !147, size: 32, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2256, file: !1872, line: 51, baseType: !149, size: 32, offset: 224)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2256, file: !1872, line: 52, baseType: !1875, size: 64, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2256, file: !1872, line: 53, baseType: !1875, size: 64, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2256, file: !1872, line: 54, baseType: !230, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2256, file: !1872, line: 55, baseType: !1887, size: 32, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2256, file: !1872, line: 56, baseType: !80, size: 32, offset: 480)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2256, file: !1872, line: 57, baseType: !1890, size: 64, offset: 512)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2256, file: !1872, line: 65, baseType: !2271, size: 128, offset: 576)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1893, line: 11, size: 128, elements: !2272)
!2272 = !{!2273, !2274}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2271, file: !1893, line: 16, baseType: !1896, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2271, file: !1893, line: 21, baseType: !1898, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2256, file: !1872, line: 66, baseType: !2271, size: 128, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2256, file: !1872, line: 67, baseType: !2271, size: 128, offset: 832)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2256, file: !1872, line: 79, baseType: !1902, size: 64, offset: 960)
!2278 = distinct !DIAssignID()
!2279 = !DILocation(line: 0, scope: !2252)
!2280 = !DILocation(line: 319, column: 3, scope: !2252)
!2281 = !DILocation(line: 321, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2252, file: !850, line: 321, column: 7)
!2283 = !DILocation(line: 321, column: 35, scope: !2282)
!2284 = !DILocation(line: 321, column: 7, scope: !2252)
!2285 = !DILocation(line: 323, column: 41, scope: !2252)
!2286 = !DILocation(line: 0, scope: !2108, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 323, column: 10, scope: !2252)
!2288 = !DILocation(line: 114, column: 27, scope: !2108, inlinedAt: !2287)
!2289 = !DILocation(line: 115, column: 9, scope: !2108, inlinedAt: !2287)
!2290 = !DILocation(line: 116, column: 6, scope: !2108, inlinedAt: !2287)
!2291 = !DILocation(line: 116, column: 11, scope: !2108, inlinedAt: !2287)
!2292 = !DILocation(line: 117, column: 6, scope: !2108, inlinedAt: !2287)
!2293 = !DILocation(line: 117, column: 15, scope: !2108, inlinedAt: !2287)
!2294 = !DILocation(line: 118, column: 6, scope: !2108, inlinedAt: !2287)
!2295 = !DILocation(line: 118, column: 12, scope: !2108, inlinedAt: !2287)
!2296 = !DILocation(line: 119, column: 6, scope: !2108, inlinedAt: !2287)
!2297 = !DILocation(line: 119, column: 16, scope: !2108, inlinedAt: !2287)
!2298 = !DILocation(line: 120, column: 8, scope: !2108, inlinedAt: !2287)
!2299 = !DILocation(line: 120, column: 13, scope: !2108, inlinedAt: !2287)
!2300 = !DILocation(line: 323, column: 3, scope: !2252)
!2301 = !DILocation(line: 324, column: 1, scope: !2252)
!2302 = distinct !DISubprogram(name: "mode_adjust", scope: !850, file: !850, line: 340, type: !2303, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !2308)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!941, !941, !191, !941, !2305, !2307}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2320, !2321, !2322}
!2309 = !DILocalVariable(name: "oldmode", arg: 1, scope: !2302, file: !850, line: 340, type: !941)
!2310 = !DILocalVariable(name: "dir", arg: 2, scope: !2302, file: !850, line: 340, type: !191)
!2311 = !DILocalVariable(name: "umask_value", arg: 3, scope: !2302, file: !850, line: 340, type: !941)
!2312 = !DILocalVariable(name: "changes", arg: 4, scope: !2302, file: !850, line: 341, type: !2305)
!2313 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !2302, file: !850, line: 341, type: !2307)
!2314 = !DILocalVariable(name: "newmode", scope: !2302, file: !850, line: 344, type: !941)
!2315 = !DILocalVariable(name: "mode_bits", scope: !2302, file: !850, line: 347, type: !941)
!2316 = !DILocalVariable(name: "affected", scope: !2317, file: !850, line: 351, type: !941)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !850, line: 350, column: 5)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !850, line: 349, column: 3)
!2319 = distinct !DILexicalBlock(scope: !2302, file: !850, line: 349, column: 3)
!2320 = !DILocalVariable(name: "omit_change", scope: !2317, file: !850, line: 352, type: !941)
!2321 = !DILocalVariable(name: "value", scope: !2317, file: !850, line: 354, type: !941)
!2322 = !DILocalVariable(name: "preserved", scope: !2323, file: !850, line: 394, type: !941)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !850, line: 393, column: 11)
!2324 = distinct !DILexicalBlock(scope: !2317, file: !850, line: 388, column: 9)
!2325 = !DILocation(line: 0, scope: !2302)
!2326 = !DILocation(line: 344, column: 28, scope: !2302)
!2327 = !DILocation(line: 349, column: 19, scope: !2318)
!2328 = !DILocation(line: 349, column: 24, scope: !2318)
!2329 = !DILocation(line: 349, column: 3, scope: !2319)
!2330 = !DILocation(line: 351, column: 34, scope: !2317)
!2331 = !DILocation(line: 0, scope: !2317)
!2332 = !DILocation(line: 353, column: 52, scope: !2317)
!2333 = !DILocation(line: 353, column: 41, scope: !2317)
!2334 = !DILocation(line: 353, column: 39, scope: !2317)
!2335 = !DILocation(line: 354, column: 31, scope: !2317)
!2336 = !DILocation(line: 356, column: 7, scope: !2317)
!2337 = !DILocation(line: 363, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2317, file: !850, line: 357, column: 9)
!2339 = !DILocation(line: 366, column: 28, scope: !2338)
!2340 = !DILocation(line: 366, column: 22, scope: !2338)
!2341 = !DILocation(line: 368, column: 30, scope: !2338)
!2342 = !DILocation(line: 368, column: 24, scope: !2338)
!2343 = !DILocation(line: 370, column: 30, scope: !2338)
!2344 = !DILocation(line: 370, column: 24, scope: !2338)
!2345 = !DILocation(line: 370, column: 21, scope: !2338)
!2346 = !DILocation(line: 366, column: 17, scope: !2338)
!2347 = !DILocation(line: 372, column: 11, scope: !2338)
!2348 = !DILocation(line: 377, column: 24, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2338, file: !850, line: 377, column: 15)
!2350 = !DILocation(line: 377, column: 57, scope: !2349)
!2351 = !DILocation(line: 377, column: 15, scope: !2338)
!2352 = !DILocation(line: 385, column: 17, scope: !2317)
!2353 = !DILocation(line: 385, column: 55, scope: !2317)
!2354 = !DILocation(line: 385, column: 53, scope: !2317)
!2355 = !DILocation(line: 385, column: 13, scope: !2317)
!2356 = !DILocation(line: 387, column: 24, scope: !2317)
!2357 = !DILocation(line: 387, column: 7, scope: !2317)
!2358 = !DILocation(line: 394, column: 33, scope: !2323)
!2359 = !DILocation(line: 394, column: 59, scope: !2323)
!2360 = !DILocation(line: 0, scope: !2323)
!2361 = !DILocation(line: 395, column: 42, scope: !2323)
!2362 = !DILocation(line: 395, column: 23, scope: !2323)
!2363 = !DILocation(line: 396, column: 32, scope: !2323)
!2364 = !DILocation(line: 396, column: 45, scope: !2323)
!2365 = !DILocation(line: 401, column: 21, scope: !2324)
!2366 = !DILocation(line: 402, column: 19, scope: !2324)
!2367 = !DILocation(line: 403, column: 11, scope: !2324)
!2368 = !DILocation(line: 406, column: 21, scope: !2324)
!2369 = !DILocation(line: 407, column: 22, scope: !2324)
!2370 = !DILocation(line: 407, column: 19, scope: !2324)
!2371 = !DILocation(line: 408, column: 11, scope: !2324)
!2372 = !DILocation(line: 349, column: 45, scope: !2318)
!2373 = distinct !{!2373, !2329, !2374, !1090}
!2374 = !DILocation(line: 410, column: 5, scope: !2319)
!2375 = !DILocation(line: 412, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2302, file: !850, line: 412, column: 7)
!2377 = !DILocation(line: 347, column: 10, scope: !2302)
!2378 = !DILocation(line: 344, column: 10, scope: !2302)
!2379 = !DILocation(line: 412, column: 7, scope: !2302)
!2380 = !DILocation(line: 413, column: 17, scope: !2376)
!2381 = !DILocation(line: 413, column: 5, scope: !2376)
!2382 = !DILocation(line: 414, column: 3, scope: !2302)
!2383 = distinct !DISubprogram(name: "set_program_name", scope: !508, file: !508, line: 37, type: !994, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "argv0", arg: 1, scope: !2383, file: !508, line: 37, type: !143)
!2386 = !DILocalVariable(name: "slash", scope: !2383, file: !508, line: 44, type: !143)
!2387 = !DILocalVariable(name: "base", scope: !2383, file: !508, line: 45, type: !143)
!2388 = !DILocation(line: 0, scope: !2383)
!2389 = !DILocation(line: 44, column: 23, scope: !2383)
!2390 = !DILocation(line: 45, column: 22, scope: !2383)
!2391 = !DILocation(line: 46, column: 17, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2383, file: !508, line: 46, column: 7)
!2393 = !DILocation(line: 46, column: 9, scope: !2392)
!2394 = !DILocation(line: 46, column: 25, scope: !2392)
!2395 = !DILocation(line: 46, column: 40, scope: !2392)
!2396 = !DILocalVariable(name: "__s1", arg: 1, scope: !2397, file: !1056, line: 974, type: !1188)
!2397 = distinct !DISubprogram(name: "memeq", scope: !1056, file: !1056, line: 974, type: !2398, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!191, !1188, !1188, !140}
!2400 = !{!2396, !2401, !2402}
!2401 = !DILocalVariable(name: "__s2", arg: 2, scope: !2397, file: !1056, line: 974, type: !1188)
!2402 = !DILocalVariable(name: "__n", arg: 3, scope: !2397, file: !1056, line: 974, type: !140)
!2403 = !DILocation(line: 0, scope: !2397, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 46, column: 28, scope: !2392)
!2405 = !DILocation(line: 976, column: 11, scope: !2397, inlinedAt: !2404)
!2406 = !DILocation(line: 976, column: 10, scope: !2397, inlinedAt: !2404)
!2407 = !DILocation(line: 46, column: 7, scope: !2383)
!2408 = !DILocation(line: 49, column: 11, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !508, line: 49, column: 11)
!2410 = distinct !DILexicalBlock(scope: !2392, file: !508, line: 47, column: 5)
!2411 = !DILocation(line: 49, column: 36, scope: !2409)
!2412 = !DILocation(line: 49, column: 11, scope: !2410)
!2413 = !DILocation(line: 65, column: 16, scope: !2383)
!2414 = !DILocation(line: 71, column: 27, scope: !2383)
!2415 = !DILocation(line: 74, column: 33, scope: !2383)
!2416 = !DILocation(line: 76, column: 1, scope: !2383)
!2417 = !DISubprogram(name: "strrchr", scope: !1160, file: !1160, line: 273, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = distinct !DIAssignID()
!2419 = !DILocation(line: 0, scope: !517)
!2420 = distinct !DIAssignID()
!2421 = !DILocation(line: 40, column: 29, scope: !517)
!2422 = !DILocation(line: 41, column: 19, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !517, file: !518, line: 41, column: 7)
!2424 = !DILocation(line: 41, column: 7, scope: !517)
!2425 = !DILocation(line: 47, column: 3, scope: !517)
!2426 = !DILocation(line: 48, column: 3, scope: !517)
!2427 = !DILocalVariable(name: "ps", arg: 1, scope: !2428, file: !2429, line: 1135, type: !2432)
!2428 = distinct !DISubprogram(name: "mbszero", scope: !2429, file: !2429, line: 1135, type: !2430, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2433)
!2429 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!2433 = !{!2427}
!2434 = !DILocation(line: 0, scope: !2428, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 48, column: 18, scope: !517)
!2436 = !DILocalVariable(name: "__dest", arg: 1, scope: !2437, file: !2438, line: 57, type: !138)
!2437 = distinct !DISubprogram(name: "memset", scope: !2438, file: !2438, line: 57, type: !2439, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2441)
!2438 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!138, !138, !80, !140}
!2441 = !{!2436, !2442, !2443}
!2442 = !DILocalVariable(name: "__ch", arg: 2, scope: !2437, file: !2438, line: 57, type: !80)
!2443 = !DILocalVariable(name: "__len", arg: 3, scope: !2437, file: !2438, line: 57, type: !140)
!2444 = !DILocation(line: 0, scope: !2437, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1137, column: 3, scope: !2428, inlinedAt: !2435)
!2446 = !DILocation(line: 59, column: 10, scope: !2437, inlinedAt: !2445)
!2447 = !DILocation(line: 49, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !517, file: !518, line: 49, column: 7)
!2449 = !DILocation(line: 49, column: 39, scope: !2448)
!2450 = !DILocation(line: 49, column: 44, scope: !2448)
!2451 = !DILocation(line: 54, column: 1, scope: !517)
!2452 = !DISubprogram(name: "mbrtoc32", scope: !529, file: !529, line: 57, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!140, !2455, !1034, !140, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2456)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2432)
!2458 = distinct !DISubprogram(name: "clone_quoting_options", scope: !548, file: !548, line: 113, type: !2459, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2462)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!2461, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2462 = !{!2463, !2464, !2465}
!2463 = !DILocalVariable(name: "o", arg: 1, scope: !2458, file: !548, line: 113, type: !2461)
!2464 = !DILocalVariable(name: "saved_errno", scope: !2458, file: !548, line: 115, type: !80)
!2465 = !DILocalVariable(name: "p", scope: !2458, file: !548, line: 116, type: !2461)
!2466 = !DILocation(line: 0, scope: !2458)
!2467 = !DILocation(line: 115, column: 21, scope: !2458)
!2468 = !DILocation(line: 116, column: 40, scope: !2458)
!2469 = !DILocation(line: 116, column: 31, scope: !2458)
!2470 = !DILocation(line: 118, column: 9, scope: !2458)
!2471 = !DILocation(line: 119, column: 3, scope: !2458)
!2472 = distinct !DISubprogram(name: "get_quoting_style", scope: !548, file: !548, line: 124, type: !2473, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2477)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!574, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!2477 = !{!2478}
!2478 = !DILocalVariable(name: "o", arg: 1, scope: !2472, file: !548, line: 124, type: !2475)
!2479 = !DILocation(line: 0, scope: !2472)
!2480 = !DILocation(line: 126, column: 11, scope: !2472)
!2481 = !DILocation(line: 126, column: 46, scope: !2472)
!2482 = !{!2483, !1044, i64 0}
!2483 = !{!"quoting_options", !1044, i64 0, !1044, i64 4, !977, i64 8, !976, i64 40, !976, i64 48}
!2484 = !DILocation(line: 126, column: 3, scope: !2472)
!2485 = distinct !DISubprogram(name: "set_quoting_style", scope: !548, file: !548, line: 132, type: !2486, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !2461, !574}
!2488 = !{!2489, !2490}
!2489 = !DILocalVariable(name: "o", arg: 1, scope: !2485, file: !548, line: 132, type: !2461)
!2490 = !DILocalVariable(name: "s", arg: 2, scope: !2485, file: !548, line: 132, type: !574)
!2491 = !DILocation(line: 0, scope: !2485)
!2492 = !DILocation(line: 134, column: 4, scope: !2485)
!2493 = !DILocation(line: 134, column: 45, scope: !2485)
!2494 = !DILocation(line: 135, column: 1, scope: !2485)
!2495 = distinct !DISubprogram(name: "set_char_quoting", scope: !548, file: !548, line: 143, type: !2496, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!80, !2461, !4, !80}
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2505, !2506}
!2499 = !DILocalVariable(name: "o", arg: 1, scope: !2495, file: !548, line: 143, type: !2461)
!2500 = !DILocalVariable(name: "c", arg: 2, scope: !2495, file: !548, line: 143, type: !4)
!2501 = !DILocalVariable(name: "i", arg: 3, scope: !2495, file: !548, line: 143, type: !80)
!2502 = !DILocalVariable(name: "uc", scope: !2495, file: !548, line: 145, type: !145)
!2503 = !DILocalVariable(name: "p", scope: !2495, file: !548, line: 146, type: !2504)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2505 = !DILocalVariable(name: "shift", scope: !2495, file: !548, line: 148, type: !80)
!2506 = !DILocalVariable(name: "r", scope: !2495, file: !548, line: 149, type: !99)
!2507 = !DILocation(line: 0, scope: !2495)
!2508 = !DILocation(line: 147, column: 6, scope: !2495)
!2509 = !DILocation(line: 147, column: 41, scope: !2495)
!2510 = !DILocation(line: 147, column: 62, scope: !2495)
!2511 = !DILocation(line: 147, column: 57, scope: !2495)
!2512 = !DILocation(line: 148, column: 15, scope: !2495)
!2513 = !DILocation(line: 149, column: 21, scope: !2495)
!2514 = !DILocation(line: 149, column: 24, scope: !2495)
!2515 = !DILocation(line: 149, column: 34, scope: !2495)
!2516 = !DILocation(line: 150, column: 19, scope: !2495)
!2517 = !DILocation(line: 150, column: 24, scope: !2495)
!2518 = !DILocation(line: 150, column: 6, scope: !2495)
!2519 = !DILocation(line: 151, column: 3, scope: !2495)
!2520 = distinct !DISubprogram(name: "set_quoting_flags", scope: !548, file: !548, line: 159, type: !2521, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!80, !2461, !80}
!2523 = !{!2524, !2525, !2526}
!2524 = !DILocalVariable(name: "o", arg: 1, scope: !2520, file: !548, line: 159, type: !2461)
!2525 = !DILocalVariable(name: "i", arg: 2, scope: !2520, file: !548, line: 159, type: !80)
!2526 = !DILocalVariable(name: "r", scope: !2520, file: !548, line: 163, type: !80)
!2527 = !DILocation(line: 0, scope: !2520)
!2528 = !DILocation(line: 161, column: 8, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2520, file: !548, line: 161, column: 7)
!2530 = !DILocation(line: 161, column: 7, scope: !2520)
!2531 = !DILocation(line: 163, column: 14, scope: !2520)
!2532 = !{!2483, !1044, i64 4}
!2533 = !DILocation(line: 164, column: 12, scope: !2520)
!2534 = !DILocation(line: 165, column: 3, scope: !2520)
!2535 = distinct !DISubprogram(name: "set_custom_quoting", scope: !548, file: !548, line: 169, type: !2536, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2461, !143, !143}
!2538 = !{!2539, !2540, !2541}
!2539 = !DILocalVariable(name: "o", arg: 1, scope: !2535, file: !548, line: 169, type: !2461)
!2540 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2535, file: !548, line: 170, type: !143)
!2541 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2535, file: !548, line: 170, type: !143)
!2542 = !DILocation(line: 0, scope: !2535)
!2543 = !DILocation(line: 172, column: 8, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2535, file: !548, line: 172, column: 7)
!2545 = !DILocation(line: 172, column: 7, scope: !2535)
!2546 = !DILocation(line: 174, column: 12, scope: !2535)
!2547 = !DILocation(line: 175, column: 8, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2535, file: !548, line: 175, column: 7)
!2549 = !DILocation(line: 175, column: 19, scope: !2548)
!2550 = !DILocation(line: 176, column: 5, scope: !2548)
!2551 = !DILocation(line: 177, column: 6, scope: !2535)
!2552 = !DILocation(line: 177, column: 17, scope: !2535)
!2553 = !{!2483, !976, i64 40}
!2554 = !DILocation(line: 178, column: 6, scope: !2535)
!2555 = !DILocation(line: 178, column: 18, scope: !2535)
!2556 = !{!2483, !976, i64 48}
!2557 = !DILocation(line: 179, column: 1, scope: !2535)
!2558 = !DISubprogram(name: "abort", scope: !1164, file: !1164, line: 598, type: !484, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2559 = distinct !DISubprogram(name: "quotearg_buffer", scope: !548, file: !548, line: 774, type: !2560, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!140, !137, !140, !143, !140, !2475}
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2563 = !DILocalVariable(name: "buffer", arg: 1, scope: !2559, file: !548, line: 774, type: !137)
!2564 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2559, file: !548, line: 774, type: !140)
!2565 = !DILocalVariable(name: "arg", arg: 3, scope: !2559, file: !548, line: 775, type: !143)
!2566 = !DILocalVariable(name: "argsize", arg: 4, scope: !2559, file: !548, line: 775, type: !140)
!2567 = !DILocalVariable(name: "o", arg: 5, scope: !2559, file: !548, line: 776, type: !2475)
!2568 = !DILocalVariable(name: "p", scope: !2559, file: !548, line: 778, type: !2475)
!2569 = !DILocalVariable(name: "saved_errno", scope: !2559, file: !548, line: 779, type: !80)
!2570 = !DILocalVariable(name: "r", scope: !2559, file: !548, line: 780, type: !140)
!2571 = !DILocation(line: 0, scope: !2559)
!2572 = !DILocation(line: 778, column: 37, scope: !2559)
!2573 = !DILocation(line: 779, column: 21, scope: !2559)
!2574 = !DILocation(line: 781, column: 43, scope: !2559)
!2575 = !DILocation(line: 781, column: 53, scope: !2559)
!2576 = !DILocation(line: 781, column: 63, scope: !2559)
!2577 = !DILocation(line: 782, column: 43, scope: !2559)
!2578 = !DILocation(line: 782, column: 58, scope: !2559)
!2579 = !DILocation(line: 780, column: 14, scope: !2559)
!2580 = !DILocation(line: 783, column: 9, scope: !2559)
!2581 = !DILocation(line: 784, column: 3, scope: !2559)
!2582 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !548, file: !548, line: 251, type: !2583, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2587)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!140, !137, !140, !143, !140, !574, !80, !2585, !143, !143}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2613, !2615, !2618, !2619, !2620, !2621, !2624, !2625, !2627, !2628, !2631, !2635, !2636, !2644, !2647, !2648, !2649}
!2588 = !DILocalVariable(name: "buffer", arg: 1, scope: !2582, file: !548, line: 251, type: !137)
!2589 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2582, file: !548, line: 251, type: !140)
!2590 = !DILocalVariable(name: "arg", arg: 3, scope: !2582, file: !548, line: 252, type: !143)
!2591 = !DILocalVariable(name: "argsize", arg: 4, scope: !2582, file: !548, line: 252, type: !140)
!2592 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2582, file: !548, line: 253, type: !574)
!2593 = !DILocalVariable(name: "flags", arg: 6, scope: !2582, file: !548, line: 253, type: !80)
!2594 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2582, file: !548, line: 254, type: !2585)
!2595 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2582, file: !548, line: 255, type: !143)
!2596 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2582, file: !548, line: 256, type: !143)
!2597 = !DILocalVariable(name: "unibyte_locale", scope: !2582, file: !548, line: 258, type: !191)
!2598 = !DILocalVariable(name: "len", scope: !2582, file: !548, line: 260, type: !140)
!2599 = !DILocalVariable(name: "orig_buffersize", scope: !2582, file: !548, line: 261, type: !140)
!2600 = !DILocalVariable(name: "quote_string", scope: !2582, file: !548, line: 262, type: !143)
!2601 = !DILocalVariable(name: "quote_string_len", scope: !2582, file: !548, line: 263, type: !140)
!2602 = !DILocalVariable(name: "backslash_escapes", scope: !2582, file: !548, line: 264, type: !191)
!2603 = !DILocalVariable(name: "elide_outer_quotes", scope: !2582, file: !548, line: 265, type: !191)
!2604 = !DILocalVariable(name: "encountered_single_quote", scope: !2582, file: !548, line: 266, type: !191)
!2605 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2582, file: !548, line: 267, type: !191)
!2606 = !DILabel(scope: !2582, name: "process_input", file: !548, line: 308)
!2607 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2582, file: !548, line: 309, type: !191)
!2608 = !DILocalVariable(name: "lq", scope: !2609, file: !548, line: 361, type: !143)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !548, line: 361, column: 11)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !548, line: 360, column: 13)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !548, line: 333, column: 7)
!2612 = distinct !DILexicalBlock(scope: !2582, file: !548, line: 312, column: 5)
!2613 = !DILocalVariable(name: "i", scope: !2614, file: !548, line: 395, type: !140)
!2614 = distinct !DILexicalBlock(scope: !2582, file: !548, line: 395, column: 3)
!2615 = !DILocalVariable(name: "is_right_quote", scope: !2616, file: !548, line: 397, type: !191)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !548, line: 396, column: 5)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !548, line: 395, column: 3)
!2618 = !DILocalVariable(name: "escaping", scope: !2616, file: !548, line: 398, type: !191)
!2619 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2616, file: !548, line: 399, type: !191)
!2620 = !DILocalVariable(name: "c", scope: !2616, file: !548, line: 417, type: !145)
!2621 = !DILabel(scope: !2622, name: "c_and_shell_escape", file: !548, line: 502)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 478, column: 9)
!2623 = distinct !DILexicalBlock(scope: !2616, file: !548, line: 419, column: 9)
!2624 = !DILabel(scope: !2622, name: "c_escape", file: !548, line: 507)
!2625 = !DILocalVariable(name: "m", scope: !2626, file: !548, line: 598, type: !140)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 596, column: 11)
!2627 = !DILocalVariable(name: "printable", scope: !2626, file: !548, line: 600, type: !191)
!2628 = !DILocalVariable(name: "mbs", scope: !2629, file: !548, line: 609, type: !623)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !548, line: 608, column: 15)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !548, line: 602, column: 17)
!2631 = !DILocalVariable(name: "w", scope: !2632, file: !548, line: 618, type: !528)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !548, line: 617, column: 19)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !548, line: 616, column: 17)
!2634 = distinct !DILexicalBlock(scope: !2629, file: !548, line: 616, column: 17)
!2635 = !DILocalVariable(name: "bytes", scope: !2632, file: !548, line: 619, type: !140)
!2636 = !DILocalVariable(name: "j", scope: !2637, file: !548, line: 648, type: !140)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !548, line: 648, column: 29)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !548, line: 647, column: 27)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !548, line: 645, column: 29)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !548, line: 636, column: 23)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !548, line: 628, column: 30)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !548, line: 623, column: 30)
!2643 = distinct !DILexicalBlock(scope: !2632, file: !548, line: 621, column: 25)
!2644 = !DILocalVariable(name: "ilim", scope: !2645, file: !548, line: 674, type: !140)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !548, line: 671, column: 15)
!2646 = distinct !DILexicalBlock(scope: !2626, file: !548, line: 670, column: 17)
!2647 = !DILabel(scope: !2616, name: "store_escape", file: !548, line: 709)
!2648 = !DILabel(scope: !2616, name: "store_c", file: !548, line: 712)
!2649 = !DILabel(scope: !2582, name: "force_outer_quoting_style", file: !548, line: 753)
!2650 = distinct !DIAssignID()
!2651 = distinct !DIAssignID()
!2652 = distinct !DIAssignID()
!2653 = distinct !DIAssignID()
!2654 = distinct !DIAssignID()
!2655 = !DILocation(line: 0, scope: !2629)
!2656 = distinct !DIAssignID()
!2657 = !DILocation(line: 0, scope: !2632)
!2658 = !DILocation(line: 0, scope: !2582)
!2659 = !DILocation(line: 258, column: 25, scope: !2582)
!2660 = !DILocation(line: 258, column: 36, scope: !2582)
!2661 = !DILocation(line: 267, column: 3, scope: !2582)
!2662 = !DILocation(line: 261, column: 10, scope: !2582)
!2663 = !DILocation(line: 262, column: 15, scope: !2582)
!2664 = !DILocation(line: 263, column: 10, scope: !2582)
!2665 = !DILocation(line: 308, column: 2, scope: !2582)
!2666 = !DILocation(line: 311, column: 3, scope: !2582)
!2667 = !DILocation(line: 318, column: 11, scope: !2612)
!2668 = !DILocation(line: 319, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !548, line: 319, column: 9)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !548, line: 319, column: 9)
!2671 = distinct !DILexicalBlock(scope: !2612, file: !548, line: 318, column: 11)
!2672 = !DILocation(line: 319, column: 9, scope: !2670)
!2673 = !DILocation(line: 0, scope: !614, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 357, column: 26, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !548, line: 335, column: 11)
!2676 = distinct !DILexicalBlock(scope: !2611, file: !548, line: 334, column: 13)
!2677 = !DILocation(line: 199, column: 29, scope: !614, inlinedAt: !2674)
!2678 = !DILocation(line: 201, column: 19, scope: !2679, inlinedAt: !2674)
!2679 = distinct !DILexicalBlock(scope: !614, file: !548, line: 201, column: 7)
!2680 = !DILocation(line: 201, column: 7, scope: !614, inlinedAt: !2674)
!2681 = !DILocation(line: 229, column: 3, scope: !614, inlinedAt: !2674)
!2682 = !DILocation(line: 230, column: 3, scope: !614, inlinedAt: !2674)
!2683 = !DILocalVariable(name: "ps", arg: 1, scope: !2684, file: !2429, line: 1135, type: !2687)
!2684 = distinct !DISubprogram(name: "mbszero", scope: !2429, file: !2429, line: 1135, type: !2685, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2688)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{null, !2687}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!2688 = !{!2683}
!2689 = !DILocation(line: 0, scope: !2684, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 230, column: 18, scope: !614, inlinedAt: !2674)
!2691 = !DILocalVariable(name: "__dest", arg: 1, scope: !2692, file: !2438, line: 57, type: !138)
!2692 = distinct !DISubprogram(name: "memset", scope: !2438, file: !2438, line: 57, type: !2439, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2693)
!2693 = !{!2691, !2694, !2695}
!2694 = !DILocalVariable(name: "__ch", arg: 2, scope: !2692, file: !2438, line: 57, type: !80)
!2695 = !DILocalVariable(name: "__len", arg: 3, scope: !2692, file: !2438, line: 57, type: !140)
!2696 = !DILocation(line: 0, scope: !2692, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1137, column: 3, scope: !2684, inlinedAt: !2690)
!2698 = !DILocation(line: 59, column: 10, scope: !2692, inlinedAt: !2697)
!2699 = !DILocation(line: 231, column: 7, scope: !2700, inlinedAt: !2674)
!2700 = distinct !DILexicalBlock(scope: !614, file: !548, line: 231, column: 7)
!2701 = !DILocation(line: 231, column: 40, scope: !2700, inlinedAt: !2674)
!2702 = !DILocation(line: 231, column: 45, scope: !2700, inlinedAt: !2674)
!2703 = !DILocation(line: 235, column: 1, scope: !614, inlinedAt: !2674)
!2704 = !DILocation(line: 0, scope: !614, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 358, column: 27, scope: !2675)
!2706 = !DILocation(line: 199, column: 29, scope: !614, inlinedAt: !2705)
!2707 = !DILocation(line: 201, column: 19, scope: !2679, inlinedAt: !2705)
!2708 = !DILocation(line: 201, column: 7, scope: !614, inlinedAt: !2705)
!2709 = !DILocation(line: 229, column: 3, scope: !614, inlinedAt: !2705)
!2710 = !DILocation(line: 230, column: 3, scope: !614, inlinedAt: !2705)
!2711 = !DILocation(line: 0, scope: !2684, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 230, column: 18, scope: !614, inlinedAt: !2705)
!2713 = !DILocation(line: 0, scope: !2692, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1137, column: 3, scope: !2684, inlinedAt: !2712)
!2715 = !DILocation(line: 59, column: 10, scope: !2692, inlinedAt: !2714)
!2716 = !DILocation(line: 231, column: 7, scope: !2700, inlinedAt: !2705)
!2717 = !DILocation(line: 231, column: 40, scope: !2700, inlinedAt: !2705)
!2718 = !DILocation(line: 231, column: 45, scope: !2700, inlinedAt: !2705)
!2719 = !DILocation(line: 235, column: 1, scope: !614, inlinedAt: !2705)
!2720 = !DILocation(line: 360, column: 13, scope: !2611)
!2721 = !DILocation(line: 0, scope: !2609)
!2722 = !DILocation(line: 361, column: 45, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2609, file: !548, line: 361, column: 11)
!2724 = !DILocation(line: 361, column: 11, scope: !2609)
!2725 = !DILocation(line: 362, column: 13, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !548, line: 362, column: 13)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !548, line: 362, column: 13)
!2728 = !DILocation(line: 362, column: 13, scope: !2727)
!2729 = !DILocation(line: 361, column: 52, scope: !2723)
!2730 = distinct !{!2730, !2724, !2731, !1090}
!2731 = !DILocation(line: 362, column: 13, scope: !2609)
!2732 = !DILocation(line: 365, column: 28, scope: !2611)
!2733 = !DILocation(line: 260, column: 10, scope: !2582)
!2734 = !DILocation(line: 367, column: 7, scope: !2612)
!2735 = !DILocation(line: 373, column: 7, scope: !2612)
!2736 = !DILocation(line: 381, column: 11, scope: !2612)
!2737 = !DILocation(line: 376, column: 11, scope: !2612)
!2738 = !DILocation(line: 382, column: 9, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !548, line: 382, column: 9)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !548, line: 382, column: 9)
!2741 = distinct !DILexicalBlock(scope: !2612, file: !548, line: 381, column: 11)
!2742 = !DILocation(line: 382, column: 9, scope: !2740)
!2743 = !DILocation(line: 389, column: 7, scope: !2612)
!2744 = !DILocation(line: 392, column: 7, scope: !2612)
!2745 = !DILocation(line: 0, scope: !2614)
!2746 = !DILocation(line: 395, column: 8, scope: !2614)
!2747 = !DILocation(line: 395, scope: !2614)
!2748 = !DILocation(line: 395, column: 34, scope: !2617)
!2749 = !DILocation(line: 395, column: 26, scope: !2617)
!2750 = !DILocation(line: 395, column: 48, scope: !2617)
!2751 = !DILocation(line: 395, column: 55, scope: !2617)
!2752 = !DILocation(line: 395, column: 3, scope: !2614)
!2753 = !DILocation(line: 395, column: 67, scope: !2617)
!2754 = !DILocation(line: 0, scope: !2616)
!2755 = !DILocation(line: 402, column: 11, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2616, file: !548, line: 401, column: 11)
!2757 = !DILocation(line: 404, column: 17, scope: !2756)
!2758 = !DILocation(line: 405, column: 39, scope: !2756)
!2759 = !DILocation(line: 409, column: 32, scope: !2756)
!2760 = !DILocation(line: 405, column: 19, scope: !2756)
!2761 = !DILocation(line: 405, column: 15, scope: !2756)
!2762 = !DILocation(line: 410, column: 11, scope: !2756)
!2763 = !DILocation(line: 410, column: 25, scope: !2756)
!2764 = !DILocalVariable(name: "__s1", arg: 1, scope: !2765, file: !1056, line: 974, type: !1188)
!2765 = distinct !DISubprogram(name: "memeq", scope: !1056, file: !1056, line: 974, type: !2398, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2766)
!2766 = !{!2764, !2767, !2768}
!2767 = !DILocalVariable(name: "__s2", arg: 2, scope: !2765, file: !1056, line: 974, type: !1188)
!2768 = !DILocalVariable(name: "__n", arg: 3, scope: !2765, file: !1056, line: 974, type: !140)
!2769 = !DILocation(line: 0, scope: !2765, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 410, column: 14, scope: !2756)
!2771 = !DILocation(line: 976, column: 11, scope: !2765, inlinedAt: !2770)
!2772 = !DILocation(line: 976, column: 10, scope: !2765, inlinedAt: !2770)
!2773 = !DILocation(line: 401, column: 11, scope: !2616)
!2774 = !DILocation(line: 417, column: 25, scope: !2616)
!2775 = !DILocation(line: 418, column: 7, scope: !2616)
!2776 = !DILocation(line: 421, column: 15, scope: !2623)
!2777 = !DILocation(line: 423, column: 15, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !548, line: 423, column: 15)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !548, line: 422, column: 13)
!2780 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 421, column: 15)
!2781 = !DILocation(line: 423, column: 15, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !548, line: 423, column: 15)
!2783 = !DILocation(line: 423, column: 15, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !548, line: 423, column: 15)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !548, line: 423, column: 15)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !548, line: 423, column: 15)
!2787 = !DILocation(line: 423, column: 15, scope: !2785)
!2788 = !DILocation(line: 423, column: 15, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !548, line: 423, column: 15)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !548, line: 423, column: 15)
!2791 = !DILocation(line: 423, column: 15, scope: !2790)
!2792 = !DILocation(line: 423, column: 15, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !548, line: 423, column: 15)
!2794 = distinct !DILexicalBlock(scope: !2786, file: !548, line: 423, column: 15)
!2795 = !DILocation(line: 423, column: 15, scope: !2794)
!2796 = !DILocation(line: 423, column: 15, scope: !2786)
!2797 = !DILocation(line: 423, column: 15, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !548, line: 423, column: 15)
!2799 = distinct !DILexicalBlock(scope: !2778, file: !548, line: 423, column: 15)
!2800 = !DILocation(line: 423, column: 15, scope: !2799)
!2801 = !DILocation(line: 431, column: 19, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2779, file: !548, line: 430, column: 19)
!2803 = !DILocation(line: 431, column: 24, scope: !2802)
!2804 = !DILocation(line: 431, column: 28, scope: !2802)
!2805 = !DILocation(line: 431, column: 38, scope: !2802)
!2806 = !DILocation(line: 431, column: 48, scope: !2802)
!2807 = !DILocation(line: 431, column: 59, scope: !2802)
!2808 = !DILocation(line: 433, column: 19, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !548, line: 433, column: 19)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !548, line: 433, column: 19)
!2811 = distinct !DILexicalBlock(scope: !2802, file: !548, line: 432, column: 17)
!2812 = !DILocation(line: 433, column: 19, scope: !2810)
!2813 = !DILocation(line: 434, column: 19, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !548, line: 434, column: 19)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !548, line: 434, column: 19)
!2816 = !DILocation(line: 434, column: 19, scope: !2815)
!2817 = !DILocation(line: 435, column: 17, scope: !2811)
!2818 = !DILocation(line: 442, column: 20, scope: !2780)
!2819 = !DILocation(line: 447, column: 11, scope: !2623)
!2820 = !DILocation(line: 450, column: 19, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 448, column: 13)
!2822 = !DILocation(line: 456, column: 19, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2821, file: !548, line: 455, column: 19)
!2824 = !DILocation(line: 456, column: 24, scope: !2823)
!2825 = !DILocation(line: 456, column: 28, scope: !2823)
!2826 = !DILocation(line: 456, column: 38, scope: !2823)
!2827 = !DILocation(line: 456, column: 41, scope: !2823)
!2828 = !DILocation(line: 456, column: 52, scope: !2823)
!2829 = !DILocation(line: 455, column: 19, scope: !2821)
!2830 = !DILocation(line: 457, column: 25, scope: !2823)
!2831 = !DILocation(line: 457, column: 17, scope: !2823)
!2832 = !DILocation(line: 464, column: 25, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2823, file: !548, line: 458, column: 19)
!2834 = !DILocation(line: 468, column: 21, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !548, line: 468, column: 21)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !548, line: 468, column: 21)
!2837 = !DILocation(line: 468, column: 21, scope: !2836)
!2838 = !DILocation(line: 469, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !548, line: 469, column: 21)
!2840 = distinct !DILexicalBlock(scope: !2833, file: !548, line: 469, column: 21)
!2841 = !DILocation(line: 469, column: 21, scope: !2840)
!2842 = !DILocation(line: 470, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !548, line: 470, column: 21)
!2844 = distinct !DILexicalBlock(scope: !2833, file: !548, line: 470, column: 21)
!2845 = !DILocation(line: 470, column: 21, scope: !2844)
!2846 = !DILocation(line: 471, column: 21, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !548, line: 471, column: 21)
!2848 = distinct !DILexicalBlock(scope: !2833, file: !548, line: 471, column: 21)
!2849 = !DILocation(line: 471, column: 21, scope: !2848)
!2850 = !DILocation(line: 472, column: 21, scope: !2833)
!2851 = !DILocation(line: 482, column: 33, scope: !2622)
!2852 = !DILocation(line: 483, column: 33, scope: !2622)
!2853 = !DILocation(line: 485, column: 33, scope: !2622)
!2854 = !DILocation(line: 486, column: 33, scope: !2622)
!2855 = !DILocation(line: 487, column: 33, scope: !2622)
!2856 = !DILocation(line: 490, column: 17, scope: !2622)
!2857 = !DILocation(line: 492, column: 21, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !548, line: 491, column: 15)
!2859 = distinct !DILexicalBlock(scope: !2622, file: !548, line: 490, column: 17)
!2860 = !DILocation(line: 499, column: 35, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2622, file: !548, line: 499, column: 17)
!2862 = !DILocation(line: 0, scope: !2622)
!2863 = !DILocation(line: 502, column: 11, scope: !2622)
!2864 = !DILocation(line: 504, column: 17, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2622, file: !548, line: 503, column: 17)
!2866 = !DILocation(line: 507, column: 11, scope: !2622)
!2867 = !DILocation(line: 508, column: 17, scope: !2622)
!2868 = !DILocation(line: 517, column: 15, scope: !2623)
!2869 = !DILocation(line: 517, column: 40, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 517, column: 15)
!2871 = !DILocation(line: 517, column: 47, scope: !2870)
!2872 = !DILocation(line: 517, column: 18, scope: !2870)
!2873 = !DILocation(line: 521, column: 17, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 521, column: 15)
!2875 = !DILocation(line: 521, column: 15, scope: !2623)
!2876 = !DILocation(line: 525, column: 11, scope: !2623)
!2877 = !DILocation(line: 537, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 536, column: 15)
!2879 = !DILocation(line: 536, column: 15, scope: !2623)
!2880 = !DILocation(line: 544, column: 15, scope: !2623)
!2881 = !DILocation(line: 546, column: 19, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !548, line: 545, column: 13)
!2883 = distinct !DILexicalBlock(scope: !2623, file: !548, line: 544, column: 15)
!2884 = !DILocation(line: 549, column: 19, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !548, line: 549, column: 19)
!2886 = !DILocation(line: 549, column: 30, scope: !2885)
!2887 = !DILocation(line: 558, column: 15, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !548, line: 558, column: 15)
!2889 = distinct !DILexicalBlock(scope: !2882, file: !548, line: 558, column: 15)
!2890 = !DILocation(line: 558, column: 15, scope: !2889)
!2891 = !DILocation(line: 559, column: 15, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !548, line: 559, column: 15)
!2893 = distinct !DILexicalBlock(scope: !2882, file: !548, line: 559, column: 15)
!2894 = !DILocation(line: 559, column: 15, scope: !2893)
!2895 = !DILocation(line: 560, column: 15, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !548, line: 560, column: 15)
!2897 = distinct !DILexicalBlock(scope: !2882, file: !548, line: 560, column: 15)
!2898 = !DILocation(line: 560, column: 15, scope: !2897)
!2899 = !DILocation(line: 562, column: 13, scope: !2882)
!2900 = !DILocation(line: 602, column: 17, scope: !2626)
!2901 = !DILocation(line: 0, scope: !2626)
!2902 = !DILocation(line: 605, column: 29, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2630, file: !548, line: 603, column: 15)
!2904 = !DILocation(line: 605, column: 41, scope: !2903)
!2905 = !DILocation(line: 606, column: 15, scope: !2903)
!2906 = !DILocation(line: 609, column: 17, scope: !2629)
!2907 = !DILocation(line: 0, scope: !2684, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 609, column: 32, scope: !2629)
!2909 = !DILocation(line: 0, scope: !2692, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 1137, column: 3, scope: !2684, inlinedAt: !2908)
!2911 = !DILocation(line: 59, column: 10, scope: !2692, inlinedAt: !2910)
!2912 = !DILocation(line: 613, column: 29, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2629, file: !548, line: 613, column: 21)
!2914 = !DILocation(line: 613, column: 21, scope: !2629)
!2915 = !DILocation(line: 614, column: 29, scope: !2913)
!2916 = !DILocation(line: 614, column: 19, scope: !2913)
!2917 = !DILocation(line: 618, column: 21, scope: !2632)
!2918 = !DILocation(line: 620, column: 54, scope: !2632)
!2919 = !DILocation(line: 619, column: 36, scope: !2632)
!2920 = !DILocation(line: 621, column: 25, scope: !2632)
!2921 = !DILocation(line: 631, column: 38, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2641, file: !548, line: 629, column: 23)
!2923 = !DILocation(line: 631, column: 48, scope: !2922)
!2924 = !DILocation(line: 631, column: 25, scope: !2922)
!2925 = !DILocation(line: 626, column: 25, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2642, file: !548, line: 624, column: 23)
!2927 = !DILocation(line: 631, column: 51, scope: !2922)
!2928 = !DILocation(line: 632, column: 28, scope: !2922)
!2929 = !DILocation(line: 631, column: 34, scope: !2922)
!2930 = distinct !{!2930, !2924, !2928, !1090}
!2931 = !DILocation(line: 0, scope: !2637)
!2932 = !DILocation(line: 646, column: 29, scope: !2639)
!2933 = !DILocation(line: 648, column: 29, scope: !2637)
!2934 = !DILocation(line: 649, column: 39, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2637, file: !548, line: 648, column: 29)
!2936 = !DILocation(line: 649, column: 31, scope: !2935)
!2937 = !DILocation(line: 648, column: 60, scope: !2935)
!2938 = !DILocation(line: 648, column: 50, scope: !2935)
!2939 = distinct !{!2939, !2933, !2940, !1090}
!2940 = !DILocation(line: 654, column: 33, scope: !2637)
!2941 = !DILocation(line: 657, column: 43, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2640, file: !548, line: 657, column: 29)
!2943 = !DILocalVariable(name: "wc", arg: 1, scope: !2944, file: !2945, line: 865, type: !2948)
!2944 = distinct !DISubprogram(name: "c32isprint", scope: !2945, file: !2945, line: 865, type: !2946, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !2950)
!2945 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!80, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2949, line: 20, baseType: !99)
!2949 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2950 = !{!2943}
!2951 = !DILocation(line: 0, scope: !2944, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 657, column: 31, scope: !2942)
!2953 = !DILocation(line: 871, column: 10, scope: !2944, inlinedAt: !2952)
!2954 = !DILocation(line: 657, column: 31, scope: !2942)
!2955 = !DILocation(line: 664, column: 23, scope: !2632)
!2956 = !DILocation(line: 665, column: 19, scope: !2633)
!2957 = !DILocation(line: 666, column: 15, scope: !2630)
!2958 = !DILocation(line: 753, column: 2, scope: !2582)
!2959 = !DILocation(line: 756, column: 51, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2582, file: !548, line: 756, column: 7)
!2961 = !DILocation(line: 0, scope: !2630)
!2962 = !DILocation(line: 670, column: 19, scope: !2646)
!2963 = !DILocation(line: 670, column: 23, scope: !2646)
!2964 = !DILocation(line: 674, column: 33, scope: !2645)
!2965 = !DILocation(line: 0, scope: !2645)
!2966 = !DILocation(line: 676, column: 17, scope: !2645)
!2967 = !DILocation(line: 678, column: 43, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !548, line: 678, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !548, line: 677, column: 19)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !548, line: 676, column: 17)
!2971 = distinct !DILexicalBlock(scope: !2645, file: !548, line: 676, column: 17)
!2972 = !DILocation(line: 680, column: 25, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !548, line: 680, column: 25)
!2974 = distinct !DILexicalBlock(scope: !2968, file: !548, line: 679, column: 23)
!2975 = !DILocation(line: 680, column: 25, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2973, file: !548, line: 680, column: 25)
!2977 = !DILocation(line: 680, column: 25, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !548, line: 680, column: 25)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !548, line: 680, column: 25)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !548, line: 680, column: 25)
!2981 = !DILocation(line: 680, column: 25, scope: !2979)
!2982 = !DILocation(line: 680, column: 25, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !548, line: 680, column: 25)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !548, line: 680, column: 25)
!2985 = !DILocation(line: 680, column: 25, scope: !2984)
!2986 = !DILocation(line: 680, column: 25, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !548, line: 680, column: 25)
!2988 = distinct !DILexicalBlock(scope: !2980, file: !548, line: 680, column: 25)
!2989 = !DILocation(line: 680, column: 25, scope: !2988)
!2990 = !DILocation(line: 680, column: 25, scope: !2980)
!2991 = !DILocation(line: 680, column: 25, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !548, line: 680, column: 25)
!2993 = distinct !DILexicalBlock(scope: !2973, file: !548, line: 680, column: 25)
!2994 = !DILocation(line: 680, column: 25, scope: !2993)
!2995 = !DILocation(line: 681, column: 25, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !548, line: 681, column: 25)
!2997 = distinct !DILexicalBlock(scope: !2974, file: !548, line: 681, column: 25)
!2998 = !DILocation(line: 681, column: 25, scope: !2997)
!2999 = !DILocation(line: 682, column: 25, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !548, line: 682, column: 25)
!3001 = distinct !DILexicalBlock(scope: !2974, file: !548, line: 682, column: 25)
!3002 = !DILocation(line: 682, column: 25, scope: !3001)
!3003 = !DILocation(line: 683, column: 38, scope: !2974)
!3004 = !DILocation(line: 683, column: 33, scope: !2974)
!3005 = !DILocation(line: 684, column: 23, scope: !2974)
!3006 = !DILocation(line: 685, column: 30, scope: !2968)
!3007 = !DILocation(line: 687, column: 25, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !548, line: 687, column: 25)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !548, line: 687, column: 25)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !548, line: 686, column: 23)
!3011 = distinct !DILexicalBlock(scope: !2968, file: !548, line: 685, column: 30)
!3012 = !DILocation(line: 687, column: 25, scope: !3009)
!3013 = !DILocation(line: 689, column: 23, scope: !3010)
!3014 = !DILocation(line: 690, column: 35, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2969, file: !548, line: 690, column: 25)
!3016 = !DILocation(line: 690, column: 30, scope: !3015)
!3017 = !DILocation(line: 690, column: 25, scope: !2969)
!3018 = !DILocation(line: 692, column: 21, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !548, line: 692, column: 21)
!3020 = distinct !DILexicalBlock(scope: !2969, file: !548, line: 692, column: 21)
!3021 = !DILocation(line: 692, column: 21, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !548, line: 692, column: 21)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !548, line: 692, column: 21)
!3024 = distinct !DILexicalBlock(scope: !3019, file: !548, line: 692, column: 21)
!3025 = !DILocation(line: 692, column: 21, scope: !3023)
!3026 = !DILocation(line: 692, column: 21, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !548, line: 692, column: 21)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !548, line: 692, column: 21)
!3029 = !DILocation(line: 692, column: 21, scope: !3028)
!3030 = !DILocation(line: 692, column: 21, scope: !3024)
!3031 = !DILocation(line: 0, scope: !2969)
!3032 = !DILocation(line: 693, column: 21, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !548, line: 693, column: 21)
!3034 = distinct !DILexicalBlock(scope: !2969, file: !548, line: 693, column: 21)
!3035 = !DILocation(line: 693, column: 21, scope: !3034)
!3036 = !DILocation(line: 694, column: 25, scope: !2969)
!3037 = !DILocation(line: 676, column: 17, scope: !2970)
!3038 = distinct !{!3038, !3039, !3040}
!3039 = !DILocation(line: 676, column: 17, scope: !2971)
!3040 = !DILocation(line: 695, column: 19, scope: !2971)
!3041 = !DILocation(line: 409, column: 30, scope: !2756)
!3042 = !DILocation(line: 702, column: 34, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2616, file: !548, line: 702, column: 11)
!3044 = !DILocation(line: 704, column: 14, scope: !3043)
!3045 = !DILocation(line: 705, column: 14, scope: !3043)
!3046 = !DILocation(line: 705, column: 35, scope: !3043)
!3047 = !DILocation(line: 705, column: 17, scope: !3043)
!3048 = !DILocation(line: 705, column: 47, scope: !3043)
!3049 = !DILocation(line: 705, column: 65, scope: !3043)
!3050 = !DILocation(line: 706, column: 11, scope: !3043)
!3051 = !DILocation(line: 702, column: 11, scope: !2616)
!3052 = !DILocation(line: 395, column: 15, scope: !2614)
!3053 = !DILocation(line: 709, column: 5, scope: !2616)
!3054 = !DILocation(line: 710, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2616, file: !548, line: 710, column: 7)
!3056 = !DILocation(line: 710, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3055, file: !548, line: 710, column: 7)
!3058 = !DILocation(line: 710, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !548, line: 710, column: 7)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !548, line: 710, column: 7)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !548, line: 710, column: 7)
!3062 = !DILocation(line: 710, column: 7, scope: !3060)
!3063 = !DILocation(line: 710, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !548, line: 710, column: 7)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !548, line: 710, column: 7)
!3066 = !DILocation(line: 710, column: 7, scope: !3065)
!3067 = !DILocation(line: 710, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !548, line: 710, column: 7)
!3069 = distinct !DILexicalBlock(scope: !3061, file: !548, line: 710, column: 7)
!3070 = !DILocation(line: 710, column: 7, scope: !3069)
!3071 = !DILocation(line: 710, column: 7, scope: !3061)
!3072 = !DILocation(line: 710, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !548, line: 710, column: 7)
!3074 = distinct !DILexicalBlock(scope: !3055, file: !548, line: 710, column: 7)
!3075 = !DILocation(line: 710, column: 7, scope: !3074)
!3076 = !DILocation(line: 712, column: 5, scope: !2616)
!3077 = !DILocation(line: 713, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !548, line: 713, column: 7)
!3079 = distinct !DILexicalBlock(scope: !2616, file: !548, line: 713, column: 7)
!3080 = !DILocation(line: 417, column: 21, scope: !2616)
!3081 = !DILocation(line: 713, column: 7, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !548, line: 713, column: 7)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !548, line: 713, column: 7)
!3084 = distinct !DILexicalBlock(scope: !3078, file: !548, line: 713, column: 7)
!3085 = !DILocation(line: 713, column: 7, scope: !3083)
!3086 = !DILocation(line: 713, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !548, line: 713, column: 7)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !548, line: 713, column: 7)
!3089 = !DILocation(line: 713, column: 7, scope: !3088)
!3090 = !DILocation(line: 713, column: 7, scope: !3084)
!3091 = !DILocation(line: 714, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !548, line: 714, column: 7)
!3093 = distinct !DILexicalBlock(scope: !2616, file: !548, line: 714, column: 7)
!3094 = !DILocation(line: 714, column: 7, scope: !3093)
!3095 = !DILocation(line: 716, column: 11, scope: !2616)
!3096 = !DILocation(line: 718, column: 5, scope: !2617)
!3097 = !DILocation(line: 395, column: 82, scope: !2617)
!3098 = !DILocation(line: 395, column: 3, scope: !2617)
!3099 = distinct !{!3099, !2752, !3100, !1090}
!3100 = !DILocation(line: 718, column: 5, scope: !2614)
!3101 = !DILocation(line: 720, column: 11, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !2582, file: !548, line: 720, column: 7)
!3103 = !DILocation(line: 720, column: 16, scope: !3102)
!3104 = !DILocation(line: 728, column: 51, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2582, file: !548, line: 728, column: 7)
!3106 = !DILocation(line: 731, column: 11, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3105, file: !548, line: 730, column: 5)
!3108 = !DILocation(line: 732, column: 16, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3107, file: !548, line: 731, column: 11)
!3110 = !DILocation(line: 732, column: 9, scope: !3109)
!3111 = !DILocation(line: 736, column: 18, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !548, line: 736, column: 16)
!3113 = !DILocation(line: 736, column: 29, scope: !3112)
!3114 = !DILocation(line: 745, column: 7, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2582, file: !548, line: 745, column: 7)
!3116 = !DILocation(line: 745, column: 20, scope: !3115)
!3117 = !DILocation(line: 746, column: 12, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !548, line: 746, column: 5)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !548, line: 746, column: 5)
!3120 = !DILocation(line: 746, column: 5, scope: !3119)
!3121 = !DILocation(line: 747, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !548, line: 747, column: 7)
!3123 = distinct !DILexicalBlock(scope: !3118, file: !548, line: 747, column: 7)
!3124 = !DILocation(line: 747, column: 7, scope: !3123)
!3125 = !DILocation(line: 746, column: 39, scope: !3118)
!3126 = distinct !{!3126, !3120, !3127, !1090}
!3127 = !DILocation(line: 747, column: 7, scope: !3119)
!3128 = !DILocation(line: 749, column: 11, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !2582, file: !548, line: 749, column: 7)
!3130 = !DILocation(line: 749, column: 7, scope: !2582)
!3131 = !DILocation(line: 750, column: 5, scope: !3129)
!3132 = !DILocation(line: 750, column: 17, scope: !3129)
!3133 = !DILocation(line: 756, column: 21, scope: !2960)
!3134 = !DILocation(line: 760, column: 42, scope: !2582)
!3135 = !DILocation(line: 758, column: 10, scope: !2582)
!3136 = !DILocation(line: 758, column: 3, scope: !2582)
!3137 = !DILocation(line: 762, column: 1, scope: !2582)
!3138 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1164, file: !1164, line: 98, type: !3139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!140}
!3141 = !DISubprogram(name: "strlen", scope: !1160, file: !1160, line: 407, type: !3142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!142, !143}
!3144 = !DISubprogram(name: "iswprint", scope: !3145, file: !3145, line: 120, type: !2946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3145 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3146 = distinct !DISubprogram(name: "quotearg_alloc", scope: !548, file: !548, line: 788, type: !3147, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!137, !143, !140, !2475}
!3149 = !{!3150, !3151, !3152}
!3150 = !DILocalVariable(name: "arg", arg: 1, scope: !3146, file: !548, line: 788, type: !143)
!3151 = !DILocalVariable(name: "argsize", arg: 2, scope: !3146, file: !548, line: 788, type: !140)
!3152 = !DILocalVariable(name: "o", arg: 3, scope: !3146, file: !548, line: 789, type: !2475)
!3153 = !DILocation(line: 0, scope: !3146)
!3154 = !DILocalVariable(name: "arg", arg: 1, scope: !3155, file: !548, line: 801, type: !143)
!3155 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !548, file: !548, line: 801, type: !3156, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!137, !143, !140, !885, !2475}
!3158 = !{!3154, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3159 = !DILocalVariable(name: "argsize", arg: 2, scope: !3155, file: !548, line: 801, type: !140)
!3160 = !DILocalVariable(name: "size", arg: 3, scope: !3155, file: !548, line: 801, type: !885)
!3161 = !DILocalVariable(name: "o", arg: 4, scope: !3155, file: !548, line: 802, type: !2475)
!3162 = !DILocalVariable(name: "p", scope: !3155, file: !548, line: 804, type: !2475)
!3163 = !DILocalVariable(name: "saved_errno", scope: !3155, file: !548, line: 805, type: !80)
!3164 = !DILocalVariable(name: "flags", scope: !3155, file: !548, line: 807, type: !80)
!3165 = !DILocalVariable(name: "bufsize", scope: !3155, file: !548, line: 808, type: !140)
!3166 = !DILocalVariable(name: "buf", scope: !3155, file: !548, line: 812, type: !137)
!3167 = !DILocation(line: 0, scope: !3155, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 791, column: 10, scope: !3146)
!3169 = !DILocation(line: 804, column: 37, scope: !3155, inlinedAt: !3168)
!3170 = !DILocation(line: 805, column: 21, scope: !3155, inlinedAt: !3168)
!3171 = !DILocation(line: 807, column: 18, scope: !3155, inlinedAt: !3168)
!3172 = !DILocation(line: 807, column: 24, scope: !3155, inlinedAt: !3168)
!3173 = !DILocation(line: 808, column: 72, scope: !3155, inlinedAt: !3168)
!3174 = !DILocation(line: 809, column: 56, scope: !3155, inlinedAt: !3168)
!3175 = !DILocation(line: 810, column: 49, scope: !3155, inlinedAt: !3168)
!3176 = !DILocation(line: 811, column: 49, scope: !3155, inlinedAt: !3168)
!3177 = !DILocation(line: 808, column: 20, scope: !3155, inlinedAt: !3168)
!3178 = !DILocation(line: 811, column: 62, scope: !3155, inlinedAt: !3168)
!3179 = !DILocation(line: 812, column: 15, scope: !3155, inlinedAt: !3168)
!3180 = !DILocation(line: 813, column: 60, scope: !3155, inlinedAt: !3168)
!3181 = !DILocation(line: 815, column: 32, scope: !3155, inlinedAt: !3168)
!3182 = !DILocation(line: 815, column: 47, scope: !3155, inlinedAt: !3168)
!3183 = !DILocation(line: 813, column: 3, scope: !3155, inlinedAt: !3168)
!3184 = !DILocation(line: 816, column: 9, scope: !3155, inlinedAt: !3168)
!3185 = !DILocation(line: 791, column: 3, scope: !3146)
!3186 = !DILocation(line: 0, scope: !3155)
!3187 = !DILocation(line: 804, column: 37, scope: !3155)
!3188 = !DILocation(line: 805, column: 21, scope: !3155)
!3189 = !DILocation(line: 807, column: 18, scope: !3155)
!3190 = !DILocation(line: 807, column: 27, scope: !3155)
!3191 = !DILocation(line: 807, column: 24, scope: !3155)
!3192 = !DILocation(line: 808, column: 72, scope: !3155)
!3193 = !DILocation(line: 809, column: 56, scope: !3155)
!3194 = !DILocation(line: 810, column: 49, scope: !3155)
!3195 = !DILocation(line: 811, column: 49, scope: !3155)
!3196 = !DILocation(line: 808, column: 20, scope: !3155)
!3197 = !DILocation(line: 811, column: 62, scope: !3155)
!3198 = !DILocation(line: 812, column: 15, scope: !3155)
!3199 = !DILocation(line: 813, column: 60, scope: !3155)
!3200 = !DILocation(line: 815, column: 32, scope: !3155)
!3201 = !DILocation(line: 815, column: 47, scope: !3155)
!3202 = !DILocation(line: 813, column: 3, scope: !3155)
!3203 = !DILocation(line: 816, column: 9, scope: !3155)
!3204 = !DILocation(line: 817, column: 7, scope: !3155)
!3205 = !DILocation(line: 818, column: 11, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3155, file: !548, line: 817, column: 7)
!3207 = !{!1563, !1563, i64 0}
!3208 = !DILocation(line: 818, column: 5, scope: !3206)
!3209 = !DILocation(line: 819, column: 3, scope: !3155)
!3210 = distinct !DISubprogram(name: "quotearg_free", scope: !548, file: !548, line: 837, type: !484, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3211)
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "sv", scope: !3210, file: !548, line: 839, type: !637)
!3213 = !DILocalVariable(name: "i", scope: !3214, file: !548, line: 840, type: !80)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !548, line: 840, column: 3)
!3215 = !DILocation(line: 839, column: 24, scope: !3210)
!3216 = !DILocation(line: 0, scope: !3210)
!3217 = !DILocation(line: 0, scope: !3214)
!3218 = !DILocation(line: 840, column: 21, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !548, line: 840, column: 3)
!3220 = !DILocation(line: 840, column: 3, scope: !3214)
!3221 = !DILocation(line: 842, column: 13, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3210, file: !548, line: 842, column: 7)
!3223 = !{!3224, !976, i64 8}
!3224 = !{!"slotvec", !1563, i64 0, !976, i64 8}
!3225 = !DILocation(line: 842, column: 17, scope: !3222)
!3226 = !DILocation(line: 842, column: 7, scope: !3210)
!3227 = !DILocation(line: 841, column: 17, scope: !3219)
!3228 = !DILocation(line: 841, column: 5, scope: !3219)
!3229 = !DILocation(line: 840, column: 32, scope: !3219)
!3230 = distinct !{!3230, !3220, !3231, !1090}
!3231 = !DILocation(line: 841, column: 20, scope: !3214)
!3232 = !DILocation(line: 844, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3222, file: !548, line: 843, column: 5)
!3234 = !DILocation(line: 845, column: 21, scope: !3233)
!3235 = !{!3224, !1563, i64 0}
!3236 = !DILocation(line: 846, column: 20, scope: !3233)
!3237 = !DILocation(line: 847, column: 5, scope: !3233)
!3238 = !DILocation(line: 848, column: 10, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3210, file: !548, line: 848, column: 7)
!3240 = !DILocation(line: 848, column: 7, scope: !3210)
!3241 = !DILocation(line: 850, column: 7, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3239, file: !548, line: 849, column: 5)
!3243 = !DILocation(line: 851, column: 15, scope: !3242)
!3244 = !DILocation(line: 852, column: 5, scope: !3242)
!3245 = !DILocation(line: 853, column: 10, scope: !3210)
!3246 = !DILocation(line: 854, column: 1, scope: !3210)
!3247 = distinct !DISubprogram(name: "quotearg_n", scope: !548, file: !548, line: 919, type: !1157, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3248)
!3248 = !{!3249, !3250}
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3247, file: !548, line: 919, type: !80)
!3250 = !DILocalVariable(name: "arg", arg: 2, scope: !3247, file: !548, line: 919, type: !143)
!3251 = !DILocation(line: 0, scope: !3247)
!3252 = !DILocation(line: 921, column: 10, scope: !3247)
!3253 = !DILocation(line: 921, column: 3, scope: !3247)
!3254 = distinct !DISubprogram(name: "quotearg_n_options", scope: !548, file: !548, line: 866, type: !3255, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!137, !80, !143, !140, !2475}
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3268, !3269, !3271, !3272, !3273}
!3258 = !DILocalVariable(name: "n", arg: 1, scope: !3254, file: !548, line: 866, type: !80)
!3259 = !DILocalVariable(name: "arg", arg: 2, scope: !3254, file: !548, line: 866, type: !143)
!3260 = !DILocalVariable(name: "argsize", arg: 3, scope: !3254, file: !548, line: 866, type: !140)
!3261 = !DILocalVariable(name: "options", arg: 4, scope: !3254, file: !548, line: 867, type: !2475)
!3262 = !DILocalVariable(name: "saved_errno", scope: !3254, file: !548, line: 869, type: !80)
!3263 = !DILocalVariable(name: "sv", scope: !3254, file: !548, line: 871, type: !637)
!3264 = !DILocalVariable(name: "nslots_max", scope: !3254, file: !548, line: 873, type: !80)
!3265 = !DILocalVariable(name: "preallocated", scope: !3266, file: !548, line: 879, type: !191)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !548, line: 878, column: 5)
!3267 = distinct !DILexicalBlock(scope: !3254, file: !548, line: 877, column: 7)
!3268 = !DILocalVariable(name: "new_nslots", scope: !3266, file: !548, line: 880, type: !898)
!3269 = !DILocalVariable(name: "size", scope: !3270, file: !548, line: 891, type: !140)
!3270 = distinct !DILexicalBlock(scope: !3254, file: !548, line: 890, column: 3)
!3271 = !DILocalVariable(name: "val", scope: !3270, file: !548, line: 892, type: !137)
!3272 = !DILocalVariable(name: "flags", scope: !3270, file: !548, line: 894, type: !80)
!3273 = !DILocalVariable(name: "qsize", scope: !3270, file: !548, line: 895, type: !140)
!3274 = distinct !DIAssignID()
!3275 = !DILocation(line: 0, scope: !3266)
!3276 = !DILocation(line: 0, scope: !3254)
!3277 = !DILocation(line: 869, column: 21, scope: !3254)
!3278 = !DILocation(line: 871, column: 24, scope: !3254)
!3279 = !DILocation(line: 874, column: 17, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3254, file: !548, line: 874, column: 7)
!3281 = !DILocation(line: 875, column: 5, scope: !3280)
!3282 = !DILocation(line: 877, column: 7, scope: !3267)
!3283 = !DILocation(line: 877, column: 14, scope: !3267)
!3284 = !DILocation(line: 877, column: 7, scope: !3254)
!3285 = !DILocation(line: 879, column: 31, scope: !3266)
!3286 = !DILocation(line: 880, column: 7, scope: !3266)
!3287 = !DILocation(line: 880, column: 26, scope: !3266)
!3288 = !DILocation(line: 880, column: 13, scope: !3266)
!3289 = distinct !DIAssignID()
!3290 = !DILocation(line: 882, column: 31, scope: !3266)
!3291 = !DILocation(line: 883, column: 33, scope: !3266)
!3292 = !DILocation(line: 883, column: 42, scope: !3266)
!3293 = !DILocation(line: 883, column: 31, scope: !3266)
!3294 = !DILocation(line: 882, column: 22, scope: !3266)
!3295 = !DILocation(line: 882, column: 15, scope: !3266)
!3296 = !DILocation(line: 884, column: 11, scope: !3266)
!3297 = !DILocation(line: 885, column: 15, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3266, file: !548, line: 884, column: 11)
!3299 = !{i64 0, i64 8, !3207, i64 8, i64 8, !975}
!3300 = !DILocation(line: 885, column: 9, scope: !3298)
!3301 = !DILocation(line: 886, column: 20, scope: !3266)
!3302 = !DILocation(line: 886, column: 18, scope: !3266)
!3303 = !DILocation(line: 886, column: 32, scope: !3266)
!3304 = !DILocation(line: 886, column: 43, scope: !3266)
!3305 = !DILocation(line: 886, column: 53, scope: !3266)
!3306 = !DILocation(line: 0, scope: !2692, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 886, column: 7, scope: !3266)
!3308 = !DILocation(line: 59, column: 10, scope: !2692, inlinedAt: !3307)
!3309 = !DILocation(line: 887, column: 16, scope: !3266)
!3310 = !DILocation(line: 887, column: 14, scope: !3266)
!3311 = !DILocation(line: 888, column: 5, scope: !3267)
!3312 = !DILocation(line: 888, column: 5, scope: !3266)
!3313 = !DILocation(line: 891, column: 19, scope: !3270)
!3314 = !DILocation(line: 891, column: 25, scope: !3270)
!3315 = !DILocation(line: 0, scope: !3270)
!3316 = !DILocation(line: 892, column: 23, scope: !3270)
!3317 = !DILocation(line: 894, column: 26, scope: !3270)
!3318 = !DILocation(line: 894, column: 32, scope: !3270)
!3319 = !DILocation(line: 896, column: 55, scope: !3270)
!3320 = !DILocation(line: 897, column: 55, scope: !3270)
!3321 = !DILocation(line: 898, column: 55, scope: !3270)
!3322 = !DILocation(line: 899, column: 55, scope: !3270)
!3323 = !DILocation(line: 895, column: 20, scope: !3270)
!3324 = !DILocation(line: 901, column: 14, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3270, file: !548, line: 901, column: 9)
!3326 = !DILocation(line: 901, column: 9, scope: !3270)
!3327 = !DILocation(line: 903, column: 35, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3325, file: !548, line: 902, column: 7)
!3329 = !DILocation(line: 903, column: 20, scope: !3328)
!3330 = !DILocation(line: 904, column: 17, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3328, file: !548, line: 904, column: 13)
!3332 = !DILocation(line: 904, column: 13, scope: !3328)
!3333 = !DILocation(line: 905, column: 11, scope: !3331)
!3334 = !DILocation(line: 906, column: 27, scope: !3328)
!3335 = !DILocation(line: 906, column: 19, scope: !3328)
!3336 = !DILocation(line: 907, column: 69, scope: !3328)
!3337 = !DILocation(line: 909, column: 44, scope: !3328)
!3338 = !DILocation(line: 910, column: 44, scope: !3328)
!3339 = !DILocation(line: 907, column: 9, scope: !3328)
!3340 = !DILocation(line: 911, column: 7, scope: !3328)
!3341 = !DILocation(line: 913, column: 11, scope: !3270)
!3342 = !DILocation(line: 914, column: 5, scope: !3270)
!3343 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !548, file: !548, line: 925, type: !3344, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!137, !80, !143, !140}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !548, line: 925, type: !80)
!3348 = !DILocalVariable(name: "arg", arg: 2, scope: !3343, file: !548, line: 925, type: !143)
!3349 = !DILocalVariable(name: "argsize", arg: 3, scope: !3343, file: !548, line: 925, type: !140)
!3350 = !DILocation(line: 0, scope: !3343)
!3351 = !DILocation(line: 927, column: 10, scope: !3343)
!3352 = !DILocation(line: 927, column: 3, scope: !3343)
!3353 = distinct !DISubprogram(name: "quotearg", scope: !548, file: !548, line: 931, type: !1166, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3354)
!3354 = !{!3355}
!3355 = !DILocalVariable(name: "arg", arg: 1, scope: !3353, file: !548, line: 931, type: !143)
!3356 = !DILocation(line: 0, scope: !3353)
!3357 = !DILocation(line: 0, scope: !3247, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 933, column: 10, scope: !3353)
!3359 = !DILocation(line: 921, column: 10, scope: !3247, inlinedAt: !3358)
!3360 = !DILocation(line: 933, column: 3, scope: !3353)
!3361 = distinct !DISubprogram(name: "quotearg_mem", scope: !548, file: !548, line: 937, type: !3362, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!137, !143, !140}
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "arg", arg: 1, scope: !3361, file: !548, line: 937, type: !143)
!3366 = !DILocalVariable(name: "argsize", arg: 2, scope: !3361, file: !548, line: 937, type: !140)
!3367 = !DILocation(line: 0, scope: !3361)
!3368 = !DILocation(line: 0, scope: !3343, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 939, column: 10, scope: !3361)
!3370 = !DILocation(line: 927, column: 10, scope: !3343, inlinedAt: !3369)
!3371 = !DILocation(line: 939, column: 3, scope: !3361)
!3372 = distinct !DISubprogram(name: "quotearg_n_style", scope: !548, file: !548, line: 943, type: !3373, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!137, !80, !574, !143}
!3375 = !{!3376, !3377, !3378, !3379}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !548, line: 943, type: !80)
!3377 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !548, line: 943, type: !574)
!3378 = !DILocalVariable(name: "arg", arg: 3, scope: !3372, file: !548, line: 943, type: !143)
!3379 = !DILocalVariable(name: "o", scope: !3372, file: !548, line: 945, type: !2476)
!3380 = distinct !DIAssignID()
!3381 = !DILocation(line: 0, scope: !3372)
!3382 = !DILocation(line: 945, column: 3, scope: !3372)
!3383 = !{!3384}
!3384 = distinct !{!3384, !3385, !"quoting_options_from_style: argument 0"}
!3385 = distinct !{!3385, !"quoting_options_from_style"}
!3386 = !DILocation(line: 945, column: 36, scope: !3372)
!3387 = !DILocalVariable(name: "style", arg: 1, scope: !3388, file: !548, line: 183, type: !574)
!3388 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !548, file: !548, line: 183, type: !3389, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!589, !574}
!3391 = !{!3387, !3392}
!3392 = !DILocalVariable(name: "o", scope: !3388, file: !548, line: 185, type: !589)
!3393 = !DILocation(line: 0, scope: !3388, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 945, column: 36, scope: !3372)
!3395 = !DILocation(line: 185, column: 26, scope: !3388, inlinedAt: !3394)
!3396 = distinct !DIAssignID()
!3397 = !DILocation(line: 186, column: 13, scope: !3398, inlinedAt: !3394)
!3398 = distinct !DILexicalBlock(scope: !3388, file: !548, line: 186, column: 7)
!3399 = !DILocation(line: 186, column: 7, scope: !3388, inlinedAt: !3394)
!3400 = !DILocation(line: 187, column: 5, scope: !3398, inlinedAt: !3394)
!3401 = !DILocation(line: 188, column: 11, scope: !3388, inlinedAt: !3394)
!3402 = distinct !DIAssignID()
!3403 = !DILocation(line: 946, column: 10, scope: !3372)
!3404 = !DILocation(line: 947, column: 1, scope: !3372)
!3405 = !DILocation(line: 946, column: 3, scope: !3372)
!3406 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !548, file: !548, line: 950, type: !3407, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!137, !80, !574, !143, !140}
!3409 = !{!3410, !3411, !3412, !3413, !3414}
!3410 = !DILocalVariable(name: "n", arg: 1, scope: !3406, file: !548, line: 950, type: !80)
!3411 = !DILocalVariable(name: "s", arg: 2, scope: !3406, file: !548, line: 950, type: !574)
!3412 = !DILocalVariable(name: "arg", arg: 3, scope: !3406, file: !548, line: 951, type: !143)
!3413 = !DILocalVariable(name: "argsize", arg: 4, scope: !3406, file: !548, line: 951, type: !140)
!3414 = !DILocalVariable(name: "o", scope: !3406, file: !548, line: 953, type: !2476)
!3415 = distinct !DIAssignID()
!3416 = !DILocation(line: 0, scope: !3406)
!3417 = !DILocation(line: 953, column: 3, scope: !3406)
!3418 = !{!3419}
!3419 = distinct !{!3419, !3420, !"quoting_options_from_style: argument 0"}
!3420 = distinct !{!3420, !"quoting_options_from_style"}
!3421 = !DILocation(line: 953, column: 36, scope: !3406)
!3422 = !DILocation(line: 0, scope: !3388, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 953, column: 36, scope: !3406)
!3424 = !DILocation(line: 185, column: 26, scope: !3388, inlinedAt: !3423)
!3425 = distinct !DIAssignID()
!3426 = !DILocation(line: 186, column: 13, scope: !3398, inlinedAt: !3423)
!3427 = !DILocation(line: 186, column: 7, scope: !3388, inlinedAt: !3423)
!3428 = !DILocation(line: 187, column: 5, scope: !3398, inlinedAt: !3423)
!3429 = !DILocation(line: 188, column: 11, scope: !3388, inlinedAt: !3423)
!3430 = distinct !DIAssignID()
!3431 = !DILocation(line: 954, column: 10, scope: !3406)
!3432 = !DILocation(line: 955, column: 1, scope: !3406)
!3433 = !DILocation(line: 954, column: 3, scope: !3406)
!3434 = distinct !DISubprogram(name: "quotearg_style", scope: !548, file: !548, line: 958, type: !3435, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!137, !574, !143}
!3437 = !{!3438, !3439}
!3438 = !DILocalVariable(name: "s", arg: 1, scope: !3434, file: !548, line: 958, type: !574)
!3439 = !DILocalVariable(name: "arg", arg: 2, scope: !3434, file: !548, line: 958, type: !143)
!3440 = distinct !DIAssignID()
!3441 = !DILocation(line: 0, scope: !3434)
!3442 = !DILocation(line: 0, scope: !3372, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 960, column: 10, scope: !3434)
!3444 = !DILocation(line: 945, column: 3, scope: !3372, inlinedAt: !3443)
!3445 = !{!3446}
!3446 = distinct !{!3446, !3447, !"quoting_options_from_style: argument 0"}
!3447 = distinct !{!3447, !"quoting_options_from_style"}
!3448 = !DILocation(line: 945, column: 36, scope: !3372, inlinedAt: !3443)
!3449 = !DILocation(line: 0, scope: !3388, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 945, column: 36, scope: !3372, inlinedAt: !3443)
!3451 = !DILocation(line: 185, column: 26, scope: !3388, inlinedAt: !3450)
!3452 = distinct !DIAssignID()
!3453 = !DILocation(line: 186, column: 13, scope: !3398, inlinedAt: !3450)
!3454 = !DILocation(line: 186, column: 7, scope: !3388, inlinedAt: !3450)
!3455 = !DILocation(line: 187, column: 5, scope: !3398, inlinedAt: !3450)
!3456 = !DILocation(line: 188, column: 11, scope: !3388, inlinedAt: !3450)
!3457 = distinct !DIAssignID()
!3458 = !DILocation(line: 946, column: 10, scope: !3372, inlinedAt: !3443)
!3459 = !DILocation(line: 947, column: 1, scope: !3372, inlinedAt: !3443)
!3460 = !DILocation(line: 960, column: 3, scope: !3434)
!3461 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !548, file: !548, line: 964, type: !3462, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!137, !574, !143, !140}
!3464 = !{!3465, !3466, !3467}
!3465 = !DILocalVariable(name: "s", arg: 1, scope: !3461, file: !548, line: 964, type: !574)
!3466 = !DILocalVariable(name: "arg", arg: 2, scope: !3461, file: !548, line: 964, type: !143)
!3467 = !DILocalVariable(name: "argsize", arg: 3, scope: !3461, file: !548, line: 964, type: !140)
!3468 = distinct !DIAssignID()
!3469 = !DILocation(line: 0, scope: !3461)
!3470 = !DILocation(line: 0, scope: !3406, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 966, column: 10, scope: !3461)
!3472 = !DILocation(line: 953, column: 3, scope: !3406, inlinedAt: !3471)
!3473 = !{!3474}
!3474 = distinct !{!3474, !3475, !"quoting_options_from_style: argument 0"}
!3475 = distinct !{!3475, !"quoting_options_from_style"}
!3476 = !DILocation(line: 953, column: 36, scope: !3406, inlinedAt: !3471)
!3477 = !DILocation(line: 0, scope: !3388, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 953, column: 36, scope: !3406, inlinedAt: !3471)
!3479 = !DILocation(line: 185, column: 26, scope: !3388, inlinedAt: !3478)
!3480 = distinct !DIAssignID()
!3481 = !DILocation(line: 186, column: 13, scope: !3398, inlinedAt: !3478)
!3482 = !DILocation(line: 186, column: 7, scope: !3388, inlinedAt: !3478)
!3483 = !DILocation(line: 187, column: 5, scope: !3398, inlinedAt: !3478)
!3484 = !DILocation(line: 188, column: 11, scope: !3388, inlinedAt: !3478)
!3485 = distinct !DIAssignID()
!3486 = !DILocation(line: 954, column: 10, scope: !3406, inlinedAt: !3471)
!3487 = !DILocation(line: 955, column: 1, scope: !3406, inlinedAt: !3471)
!3488 = !DILocation(line: 966, column: 3, scope: !3461)
!3489 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !548, file: !548, line: 970, type: !3490, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!137, !143, !140, !4}
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DILocalVariable(name: "arg", arg: 1, scope: !3489, file: !548, line: 970, type: !143)
!3494 = !DILocalVariable(name: "argsize", arg: 2, scope: !3489, file: !548, line: 970, type: !140)
!3495 = !DILocalVariable(name: "ch", arg: 3, scope: !3489, file: !548, line: 970, type: !4)
!3496 = !DILocalVariable(name: "options", scope: !3489, file: !548, line: 972, type: !589)
!3497 = distinct !DIAssignID()
!3498 = !DILocation(line: 0, scope: !3489)
!3499 = !DILocation(line: 972, column: 3, scope: !3489)
!3500 = !DILocation(line: 973, column: 13, scope: !3489)
!3501 = !{i64 0, i64 4, !1043, i64 4, i64 4, !1043, i64 8, i64 32, !1052, i64 40, i64 8, !975, i64 48, i64 8, !975}
!3502 = distinct !DIAssignID()
!3503 = !DILocation(line: 0, scope: !2495, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 974, column: 3, scope: !3489)
!3505 = !DILocation(line: 147, column: 41, scope: !2495, inlinedAt: !3504)
!3506 = !DILocation(line: 147, column: 62, scope: !2495, inlinedAt: !3504)
!3507 = !DILocation(line: 147, column: 57, scope: !2495, inlinedAt: !3504)
!3508 = !DILocation(line: 148, column: 15, scope: !2495, inlinedAt: !3504)
!3509 = !DILocation(line: 149, column: 21, scope: !2495, inlinedAt: !3504)
!3510 = !DILocation(line: 149, column: 24, scope: !2495, inlinedAt: !3504)
!3511 = !DILocation(line: 150, column: 19, scope: !2495, inlinedAt: !3504)
!3512 = !DILocation(line: 150, column: 24, scope: !2495, inlinedAt: !3504)
!3513 = !DILocation(line: 150, column: 6, scope: !2495, inlinedAt: !3504)
!3514 = !DILocation(line: 975, column: 10, scope: !3489)
!3515 = !DILocation(line: 976, column: 1, scope: !3489)
!3516 = !DILocation(line: 975, column: 3, scope: !3489)
!3517 = distinct !DISubprogram(name: "quotearg_char", scope: !548, file: !548, line: 979, type: !3518, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!137, !143, !4}
!3520 = !{!3521, !3522}
!3521 = !DILocalVariable(name: "arg", arg: 1, scope: !3517, file: !548, line: 979, type: !143)
!3522 = !DILocalVariable(name: "ch", arg: 2, scope: !3517, file: !548, line: 979, type: !4)
!3523 = distinct !DIAssignID()
!3524 = !DILocation(line: 0, scope: !3517)
!3525 = !DILocation(line: 0, scope: !3489, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 981, column: 10, scope: !3517)
!3527 = !DILocation(line: 972, column: 3, scope: !3489, inlinedAt: !3526)
!3528 = !DILocation(line: 973, column: 13, scope: !3489, inlinedAt: !3526)
!3529 = distinct !DIAssignID()
!3530 = !DILocation(line: 0, scope: !2495, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 974, column: 3, scope: !3489, inlinedAt: !3526)
!3532 = !DILocation(line: 147, column: 41, scope: !2495, inlinedAt: !3531)
!3533 = !DILocation(line: 147, column: 62, scope: !2495, inlinedAt: !3531)
!3534 = !DILocation(line: 147, column: 57, scope: !2495, inlinedAt: !3531)
!3535 = !DILocation(line: 148, column: 15, scope: !2495, inlinedAt: !3531)
!3536 = !DILocation(line: 149, column: 21, scope: !2495, inlinedAt: !3531)
!3537 = !DILocation(line: 149, column: 24, scope: !2495, inlinedAt: !3531)
!3538 = !DILocation(line: 150, column: 19, scope: !2495, inlinedAt: !3531)
!3539 = !DILocation(line: 150, column: 24, scope: !2495, inlinedAt: !3531)
!3540 = !DILocation(line: 150, column: 6, scope: !2495, inlinedAt: !3531)
!3541 = !DILocation(line: 975, column: 10, scope: !3489, inlinedAt: !3526)
!3542 = !DILocation(line: 976, column: 1, scope: !3489, inlinedAt: !3526)
!3543 = !DILocation(line: 981, column: 3, scope: !3517)
!3544 = distinct !DISubprogram(name: "quotearg_colon", scope: !548, file: !548, line: 985, type: !1166, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3545)
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "arg", arg: 1, scope: !3544, file: !548, line: 985, type: !143)
!3547 = distinct !DIAssignID()
!3548 = !DILocation(line: 0, scope: !3544)
!3549 = !DILocation(line: 0, scope: !3517, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 987, column: 10, scope: !3544)
!3551 = !DILocation(line: 0, scope: !3489, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 981, column: 10, scope: !3517, inlinedAt: !3550)
!3553 = !DILocation(line: 972, column: 3, scope: !3489, inlinedAt: !3552)
!3554 = !DILocation(line: 973, column: 13, scope: !3489, inlinedAt: !3552)
!3555 = distinct !DIAssignID()
!3556 = !DILocation(line: 0, scope: !2495, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 974, column: 3, scope: !3489, inlinedAt: !3552)
!3558 = !DILocation(line: 147, column: 57, scope: !2495, inlinedAt: !3557)
!3559 = !DILocation(line: 149, column: 21, scope: !2495, inlinedAt: !3557)
!3560 = !DILocation(line: 150, column: 6, scope: !2495, inlinedAt: !3557)
!3561 = !DILocation(line: 975, column: 10, scope: !3489, inlinedAt: !3552)
!3562 = !DILocation(line: 976, column: 1, scope: !3489, inlinedAt: !3552)
!3563 = !DILocation(line: 987, column: 3, scope: !3544)
!3564 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !548, file: !548, line: 991, type: !3362, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3565)
!3565 = !{!3566, !3567}
!3566 = !DILocalVariable(name: "arg", arg: 1, scope: !3564, file: !548, line: 991, type: !143)
!3567 = !DILocalVariable(name: "argsize", arg: 2, scope: !3564, file: !548, line: 991, type: !140)
!3568 = distinct !DIAssignID()
!3569 = !DILocation(line: 0, scope: !3564)
!3570 = !DILocation(line: 0, scope: !3489, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 993, column: 10, scope: !3564)
!3572 = !DILocation(line: 972, column: 3, scope: !3489, inlinedAt: !3571)
!3573 = !DILocation(line: 973, column: 13, scope: !3489, inlinedAt: !3571)
!3574 = distinct !DIAssignID()
!3575 = !DILocation(line: 0, scope: !2495, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 974, column: 3, scope: !3489, inlinedAt: !3571)
!3577 = !DILocation(line: 147, column: 57, scope: !2495, inlinedAt: !3576)
!3578 = !DILocation(line: 149, column: 21, scope: !2495, inlinedAt: !3576)
!3579 = !DILocation(line: 150, column: 6, scope: !2495, inlinedAt: !3576)
!3580 = !DILocation(line: 975, column: 10, scope: !3489, inlinedAt: !3571)
!3581 = !DILocation(line: 976, column: 1, scope: !3489, inlinedAt: !3571)
!3582 = !DILocation(line: 993, column: 3, scope: !3564)
!3583 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !548, file: !548, line: 997, type: !3373, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3584)
!3584 = !{!3585, !3586, !3587, !3588}
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3583, file: !548, line: 997, type: !80)
!3586 = !DILocalVariable(name: "s", arg: 2, scope: !3583, file: !548, line: 997, type: !574)
!3587 = !DILocalVariable(name: "arg", arg: 3, scope: !3583, file: !548, line: 997, type: !143)
!3588 = !DILocalVariable(name: "options", scope: !3583, file: !548, line: 999, type: !589)
!3589 = distinct !DIAssignID()
!3590 = !DILocation(line: 0, scope: !3583)
!3591 = !DILocation(line: 185, column: 26, scope: !3388, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1000, column: 13, scope: !3583)
!3593 = !DILocation(line: 999, column: 3, scope: !3583)
!3594 = !DILocation(line: 0, scope: !3388, inlinedAt: !3592)
!3595 = !DILocation(line: 186, column: 13, scope: !3398, inlinedAt: !3592)
!3596 = !DILocation(line: 186, column: 7, scope: !3388, inlinedAt: !3592)
!3597 = !DILocation(line: 187, column: 5, scope: !3398, inlinedAt: !3592)
!3598 = !{!3599}
!3599 = distinct !{!3599, !3600, !"quoting_options_from_style: argument 0"}
!3600 = distinct !{!3600, !"quoting_options_from_style"}
!3601 = !DILocation(line: 1000, column: 13, scope: !3583)
!3602 = distinct !DIAssignID()
!3603 = distinct !DIAssignID()
!3604 = !DILocation(line: 0, scope: !2495, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1001, column: 3, scope: !3583)
!3606 = !DILocation(line: 147, column: 57, scope: !2495, inlinedAt: !3605)
!3607 = !DILocation(line: 149, column: 21, scope: !2495, inlinedAt: !3605)
!3608 = !DILocation(line: 150, column: 6, scope: !2495, inlinedAt: !3605)
!3609 = distinct !DIAssignID()
!3610 = !DILocation(line: 1002, column: 10, scope: !3583)
!3611 = !DILocation(line: 1003, column: 1, scope: !3583)
!3612 = !DILocation(line: 1002, column: 3, scope: !3583)
!3613 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !548, file: !548, line: 1006, type: !3614, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!137, !80, !143, !143, !143}
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3613, file: !548, line: 1006, type: !80)
!3618 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3613, file: !548, line: 1006, type: !143)
!3619 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3613, file: !548, line: 1007, type: !143)
!3620 = !DILocalVariable(name: "arg", arg: 4, scope: !3613, file: !548, line: 1007, type: !143)
!3621 = distinct !DIAssignID()
!3622 = !DILocation(line: 0, scope: !3613)
!3623 = !DILocalVariable(name: "o", scope: !3624, file: !548, line: 1018, type: !589)
!3624 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !548, file: !548, line: 1014, type: !3625, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!137, !80, !143, !143, !143, !140}
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3623}
!3628 = !DILocalVariable(name: "n", arg: 1, scope: !3624, file: !548, line: 1014, type: !80)
!3629 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3624, file: !548, line: 1014, type: !143)
!3630 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3624, file: !548, line: 1015, type: !143)
!3631 = !DILocalVariable(name: "arg", arg: 4, scope: !3624, file: !548, line: 1016, type: !143)
!3632 = !DILocalVariable(name: "argsize", arg: 5, scope: !3624, file: !548, line: 1016, type: !140)
!3633 = !DILocation(line: 0, scope: !3624, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 1009, column: 10, scope: !3613)
!3635 = !DILocation(line: 1018, column: 3, scope: !3624, inlinedAt: !3634)
!3636 = !DILocation(line: 1018, column: 30, scope: !3624, inlinedAt: !3634)
!3637 = distinct !DIAssignID()
!3638 = distinct !DIAssignID()
!3639 = !DILocation(line: 0, scope: !2535, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 1019, column: 3, scope: !3624, inlinedAt: !3634)
!3641 = !DILocation(line: 174, column: 12, scope: !2535, inlinedAt: !3640)
!3642 = distinct !DIAssignID()
!3643 = !DILocation(line: 175, column: 8, scope: !2548, inlinedAt: !3640)
!3644 = !DILocation(line: 175, column: 19, scope: !2548, inlinedAt: !3640)
!3645 = !DILocation(line: 176, column: 5, scope: !2548, inlinedAt: !3640)
!3646 = !DILocation(line: 177, column: 6, scope: !2535, inlinedAt: !3640)
!3647 = !DILocation(line: 177, column: 17, scope: !2535, inlinedAt: !3640)
!3648 = distinct !DIAssignID()
!3649 = !DILocation(line: 178, column: 6, scope: !2535, inlinedAt: !3640)
!3650 = !DILocation(line: 178, column: 18, scope: !2535, inlinedAt: !3640)
!3651 = distinct !DIAssignID()
!3652 = !DILocation(line: 1020, column: 10, scope: !3624, inlinedAt: !3634)
!3653 = !DILocation(line: 1021, column: 1, scope: !3624, inlinedAt: !3634)
!3654 = !DILocation(line: 1009, column: 3, scope: !3613)
!3655 = distinct !DIAssignID()
!3656 = !DILocation(line: 0, scope: !3624)
!3657 = !DILocation(line: 1018, column: 3, scope: !3624)
!3658 = !DILocation(line: 1018, column: 30, scope: !3624)
!3659 = distinct !DIAssignID()
!3660 = distinct !DIAssignID()
!3661 = !DILocation(line: 0, scope: !2535, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 1019, column: 3, scope: !3624)
!3663 = !DILocation(line: 174, column: 12, scope: !2535, inlinedAt: !3662)
!3664 = distinct !DIAssignID()
!3665 = !DILocation(line: 175, column: 8, scope: !2548, inlinedAt: !3662)
!3666 = !DILocation(line: 175, column: 19, scope: !2548, inlinedAt: !3662)
!3667 = !DILocation(line: 176, column: 5, scope: !2548, inlinedAt: !3662)
!3668 = !DILocation(line: 177, column: 6, scope: !2535, inlinedAt: !3662)
!3669 = !DILocation(line: 177, column: 17, scope: !2535, inlinedAt: !3662)
!3670 = distinct !DIAssignID()
!3671 = !DILocation(line: 178, column: 6, scope: !2535, inlinedAt: !3662)
!3672 = !DILocation(line: 178, column: 18, scope: !2535, inlinedAt: !3662)
!3673 = distinct !DIAssignID()
!3674 = !DILocation(line: 1020, column: 10, scope: !3624)
!3675 = !DILocation(line: 1021, column: 1, scope: !3624)
!3676 = !DILocation(line: 1020, column: 3, scope: !3624)
!3677 = distinct !DISubprogram(name: "quotearg_custom", scope: !548, file: !548, line: 1024, type: !3678, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!137, !143, !143, !143}
!3680 = !{!3681, !3682, !3683}
!3681 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3677, file: !548, line: 1024, type: !143)
!3682 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3677, file: !548, line: 1024, type: !143)
!3683 = !DILocalVariable(name: "arg", arg: 3, scope: !3677, file: !548, line: 1025, type: !143)
!3684 = distinct !DIAssignID()
!3685 = !DILocation(line: 0, scope: !3677)
!3686 = !DILocation(line: 0, scope: !3613, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 1027, column: 10, scope: !3677)
!3688 = !DILocation(line: 0, scope: !3624, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 1009, column: 10, scope: !3613, inlinedAt: !3687)
!3690 = !DILocation(line: 1018, column: 3, scope: !3624, inlinedAt: !3689)
!3691 = !DILocation(line: 1018, column: 30, scope: !3624, inlinedAt: !3689)
!3692 = distinct !DIAssignID()
!3693 = distinct !DIAssignID()
!3694 = !DILocation(line: 0, scope: !2535, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1019, column: 3, scope: !3624, inlinedAt: !3689)
!3696 = !DILocation(line: 174, column: 12, scope: !2535, inlinedAt: !3695)
!3697 = distinct !DIAssignID()
!3698 = !DILocation(line: 175, column: 8, scope: !2548, inlinedAt: !3695)
!3699 = !DILocation(line: 175, column: 19, scope: !2548, inlinedAt: !3695)
!3700 = !DILocation(line: 176, column: 5, scope: !2548, inlinedAt: !3695)
!3701 = !DILocation(line: 177, column: 6, scope: !2535, inlinedAt: !3695)
!3702 = !DILocation(line: 177, column: 17, scope: !2535, inlinedAt: !3695)
!3703 = distinct !DIAssignID()
!3704 = !DILocation(line: 178, column: 6, scope: !2535, inlinedAt: !3695)
!3705 = !DILocation(line: 178, column: 18, scope: !2535, inlinedAt: !3695)
!3706 = distinct !DIAssignID()
!3707 = !DILocation(line: 1020, column: 10, scope: !3624, inlinedAt: !3689)
!3708 = !DILocation(line: 1021, column: 1, scope: !3624, inlinedAt: !3689)
!3709 = !DILocation(line: 1027, column: 3, scope: !3677)
!3710 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !548, file: !548, line: 1031, type: !3711, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!137, !143, !143, !143, !140}
!3713 = !{!3714, !3715, !3716, !3717}
!3714 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3710, file: !548, line: 1031, type: !143)
!3715 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3710, file: !548, line: 1031, type: !143)
!3716 = !DILocalVariable(name: "arg", arg: 3, scope: !3710, file: !548, line: 1032, type: !143)
!3717 = !DILocalVariable(name: "argsize", arg: 4, scope: !3710, file: !548, line: 1032, type: !140)
!3718 = distinct !DIAssignID()
!3719 = !DILocation(line: 0, scope: !3710)
!3720 = !DILocation(line: 0, scope: !3624, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 1034, column: 10, scope: !3710)
!3722 = !DILocation(line: 1018, column: 3, scope: !3624, inlinedAt: !3721)
!3723 = !DILocation(line: 1018, column: 30, scope: !3624, inlinedAt: !3721)
!3724 = distinct !DIAssignID()
!3725 = distinct !DIAssignID()
!3726 = !DILocation(line: 0, scope: !2535, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 1019, column: 3, scope: !3624, inlinedAt: !3721)
!3728 = !DILocation(line: 174, column: 12, scope: !2535, inlinedAt: !3727)
!3729 = distinct !DIAssignID()
!3730 = !DILocation(line: 175, column: 8, scope: !2548, inlinedAt: !3727)
!3731 = !DILocation(line: 175, column: 19, scope: !2548, inlinedAt: !3727)
!3732 = !DILocation(line: 176, column: 5, scope: !2548, inlinedAt: !3727)
!3733 = !DILocation(line: 177, column: 6, scope: !2535, inlinedAt: !3727)
!3734 = !DILocation(line: 177, column: 17, scope: !2535, inlinedAt: !3727)
!3735 = distinct !DIAssignID()
!3736 = !DILocation(line: 178, column: 6, scope: !2535, inlinedAt: !3727)
!3737 = !DILocation(line: 178, column: 18, scope: !2535, inlinedAt: !3727)
!3738 = distinct !DIAssignID()
!3739 = !DILocation(line: 1020, column: 10, scope: !3624, inlinedAt: !3721)
!3740 = !DILocation(line: 1021, column: 1, scope: !3624, inlinedAt: !3721)
!3741 = !DILocation(line: 1034, column: 3, scope: !3710)
!3742 = distinct !DISubprogram(name: "quote_n_mem", scope: !548, file: !548, line: 1049, type: !3743, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!143, !80, !143, !140}
!3745 = !{!3746, !3747, !3748}
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3742, file: !548, line: 1049, type: !80)
!3747 = !DILocalVariable(name: "arg", arg: 2, scope: !3742, file: !548, line: 1049, type: !143)
!3748 = !DILocalVariable(name: "argsize", arg: 3, scope: !3742, file: !548, line: 1049, type: !140)
!3749 = !DILocation(line: 0, scope: !3742)
!3750 = !DILocation(line: 1051, column: 10, scope: !3742)
!3751 = !DILocation(line: 1051, column: 3, scope: !3742)
!3752 = distinct !DISubprogram(name: "quote_mem", scope: !548, file: !548, line: 1055, type: !3753, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!143, !143, !140}
!3755 = !{!3756, !3757}
!3756 = !DILocalVariable(name: "arg", arg: 1, scope: !3752, file: !548, line: 1055, type: !143)
!3757 = !DILocalVariable(name: "argsize", arg: 2, scope: !3752, file: !548, line: 1055, type: !140)
!3758 = !DILocation(line: 0, scope: !3752)
!3759 = !DILocation(line: 0, scope: !3742, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 1057, column: 10, scope: !3752)
!3761 = !DILocation(line: 1051, column: 10, scope: !3742, inlinedAt: !3760)
!3762 = !DILocation(line: 1057, column: 3, scope: !3752)
!3763 = distinct !DISubprogram(name: "quote_n", scope: !548, file: !548, line: 1061, type: !3764, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!143, !80, !143}
!3766 = !{!3767, !3768}
!3767 = !DILocalVariable(name: "n", arg: 1, scope: !3763, file: !548, line: 1061, type: !80)
!3768 = !DILocalVariable(name: "arg", arg: 2, scope: !3763, file: !548, line: 1061, type: !143)
!3769 = !DILocation(line: 0, scope: !3763)
!3770 = !DILocation(line: 0, scope: !3742, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 1063, column: 10, scope: !3763)
!3772 = !DILocation(line: 1051, column: 10, scope: !3742, inlinedAt: !3771)
!3773 = !DILocation(line: 1063, column: 3, scope: !3763)
!3774 = distinct !DISubprogram(name: "quote", scope: !548, file: !548, line: 1067, type: !3775, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!143, !143}
!3777 = !{!3778}
!3778 = !DILocalVariable(name: "arg", arg: 1, scope: !3774, file: !548, line: 1067, type: !143)
!3779 = !DILocation(line: 0, scope: !3774)
!3780 = !DILocation(line: 0, scope: !3763, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1069, column: 10, scope: !3774)
!3782 = !DILocation(line: 0, scope: !3742, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 1063, column: 10, scope: !3763, inlinedAt: !3781)
!3784 = !DILocation(line: 1051, column: 10, scope: !3742, inlinedAt: !3783)
!3785 = !DILocation(line: 1069, column: 3, scope: !3774)
!3786 = distinct !DISubprogram(name: "savewd_init", scope: !833, file: !833, line: 86, type: !3787, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !3790)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!3790 = !{!3791}
!3791 = !DILocalVariable(name: "wd", arg: 1, scope: !3786, file: !833, line: 86, type: !3789)
!3792 = !DILocation(line: 0, scope: !3786)
!3793 = !DILocation(line: 88, column: 13, scope: !3786)
!3794 = !DILocation(line: 89, column: 1, scope: !3786)
!3795 = distinct !DISubprogram(name: "savewd_errno", scope: !833, file: !833, line: 131, type: !3796, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !3800)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!80, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!3800 = !{!3801}
!3801 = !DILocalVariable(name: "wd", arg: 1, scope: !3795, file: !833, line: 131, type: !3798)
!3802 = !DILocation(line: 0, scope: !3795)
!3803 = !DILocation(line: 133, column: 14, scope: !3795)
!3804 = !DILocation(line: 133, column: 20, scope: !3795)
!3805 = !DILocation(line: 133, column: 10, scope: !3795)
!3806 = !DILocation(line: 133, column: 44, scope: !3795)
!3807 = !DILocation(line: 133, column: 48, scope: !3795)
!3808 = !DILocation(line: 133, column: 3, scope: !3795)
!3809 = distinct !DISubprogram(name: "savewd_chdir", scope: !652, file: !652, line: 113, type: !3810, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!80, !3789, !143, !80, !406}
!3812 = !{!3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3813 = !DILocalVariable(name: "wd", arg: 1, scope: !3809, file: !652, line: 113, type: !3789)
!3814 = !DILocalVariable(name: "dir", arg: 2, scope: !3809, file: !652, line: 113, type: !143)
!3815 = !DILocalVariable(name: "options", arg: 3, scope: !3809, file: !652, line: 113, type: !80)
!3816 = !DILocalVariable(name: "open_result", arg: 4, scope: !3809, file: !652, line: 114, type: !406)
!3817 = !DILocalVariable(name: "fd", scope: !3809, file: !652, line: 116, type: !80)
!3818 = !DILocalVariable(name: "result", scope: !3809, file: !652, line: 117, type: !80)
!3819 = !DILocalVariable(name: "saved_errno", scope: !3820, file: !652, line: 173, type: !80)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !652, line: 172, column: 5)
!3821 = distinct !DILexicalBlock(scope: !3809, file: !652, line: 171, column: 7)
!3822 = !DILocation(line: 0, scope: !3809)
!3823 = !DILocation(line: 121, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3809, file: !652, line: 121, column: 7)
!3825 = !DILocation(line: 122, column: 7, scope: !3824)
!3826 = !DILocation(line: 126, column: 22, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !652, line: 123, column: 5)
!3828 = !DILocation(line: 126, column: 19, scope: !3827)
!3829 = !DILocation(line: 124, column: 12, scope: !3827)
!3830 = !DILocation(line: 128, column: 11, scope: !3827)
!3831 = !DILocation(line: 130, column: 26, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !652, line: 129, column: 9)
!3833 = distinct !DILexicalBlock(scope: !3827, file: !652, line: 128, column: 11)
!3834 = !DILocation(line: 131, column: 28, scope: !3832)
!3835 = !DILocation(line: 131, column: 11, scope: !3832)
!3836 = !DILocation(line: 131, column: 26, scope: !3832)
!3837 = !DILocation(line: 132, column: 9, scope: !3832)
!3838 = !DILocation(line: 134, column: 14, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3827, file: !652, line: 134, column: 11)
!3840 = !DILocation(line: 134, column: 18, scope: !3839)
!3841 = !DILocation(line: 134, column: 21, scope: !3839)
!3842 = !DILocation(line: 134, column: 27, scope: !3839)
!3843 = !DILocation(line: 138, column: 19, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3809, file: !652, line: 138, column: 7)
!3845 = !DILocation(line: 138, column: 33, scope: !3844)
!3846 = !DILocalVariable(name: "wd", arg: 1, scope: !3847, file: !652, line: 48, type: !3789)
!3847 = distinct !DISubprogram(name: "savewd_save", scope: !652, file: !652, line: 48, type: !3848, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!191, !3789}
!3850 = !{!3846, !3851, !3854}
!3851 = !DILocalVariable(name: "fd", scope: !3852, file: !652, line: 55, type: !80)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !652, line: 54, column: 7)
!3853 = distinct !DILexicalBlock(scope: !3847, file: !652, line: 51, column: 5)
!3854 = !DILocalVariable(name: "try_fork", scope: !3852, file: !652, line: 70, type: !191)
!3855 = !DILocation(line: 0, scope: !3847, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 140, column: 11, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !652, line: 140, column: 11)
!3858 = distinct !DILexicalBlock(scope: !3844, file: !652, line: 139, column: 5)
!3859 = !DILocation(line: 50, column: 15, scope: !3847, inlinedAt: !3856)
!3860 = !DILocation(line: 50, column: 3, scope: !3847, inlinedAt: !3856)
!3861 = !DILocation(line: 55, column: 18, scope: !3852, inlinedAt: !3856)
!3862 = !DILocation(line: 0, scope: !3852, inlinedAt: !3856)
!3863 = !DILocation(line: 56, column: 15, scope: !3864, inlinedAt: !3856)
!3864 = distinct !DILexicalBlock(scope: !3852, file: !652, line: 56, column: 13)
!3865 = !DILocation(line: 56, column: 13, scope: !3852, inlinedAt: !3856)
!3866 = !DILocation(line: 58, column: 23, scope: !3867, inlinedAt: !3856)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !652, line: 57, column: 11)
!3868 = !DILocation(line: 59, column: 17, scope: !3867, inlinedAt: !3856)
!3869 = !DILocation(line: 59, column: 24, scope: !3867, inlinedAt: !3856)
!3870 = !DILocation(line: 60, column: 13, scope: !3867, inlinedAt: !3856)
!3871 = !DILocation(line: 70, column: 25, scope: !3852, inlinedAt: !3856)
!3872 = !DILocation(line: 72, column: 13, scope: !3852, inlinedAt: !3856)
!3873 = !DILocation(line: 74, column: 23, scope: !3874, inlinedAt: !3856)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !652, line: 73, column: 11)
!3875 = distinct !DILexicalBlock(scope: !3852, file: !652, line: 72, column: 13)
!3876 = !DILocation(line: 75, column: 30, scope: !3874, inlinedAt: !3856)
!3877 = !DILocation(line: 75, column: 17, scope: !3874, inlinedAt: !3856)
!3878 = !DILocation(line: 75, column: 28, scope: !3874, inlinedAt: !3856)
!3879 = !DILocation(line: 76, column: 13, scope: !3874, inlinedAt: !3856)
!3880 = !DILocation(line: 79, column: 17, scope: !3853, inlinedAt: !3856)
!3881 = !DILocation(line: 83, column: 11, scope: !3853, inlinedAt: !3856)
!3882 = !DILocation(line: 83, column: 19, scope: !3883, inlinedAt: !3856)
!3883 = distinct !DILexicalBlock(scope: !3853, file: !652, line: 83, column: 11)
!3884 = !DILocation(line: 83, column: 25, scope: !3883, inlinedAt: !3856)
!3885 = !DILocation(line: 83, column: 15, scope: !3883, inlinedAt: !3856)
!3886 = !DILocation(line: 88, column: 27, scope: !3887, inlinedAt: !3856)
!3887 = distinct !DILexicalBlock(scope: !3883, file: !652, line: 84, column: 9)
!3888 = !DILocation(line: 88, column: 25, scope: !3887, inlinedAt: !3856)
!3889 = !DILocation(line: 89, column: 29, scope: !3890, inlinedAt: !3856)
!3890 = distinct !DILexicalBlock(scope: !3887, file: !652, line: 89, column: 15)
!3891 = !DILocation(line: 89, column: 15, scope: !3887, inlinedAt: !3856)
!3892 = !DILocation(line: 91, column: 21, scope: !3893, inlinedAt: !3856)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !652, line: 91, column: 19)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !652, line: 90, column: 13)
!3895 = !DILocation(line: 91, column: 19, scope: !3894, inlinedAt: !3856)
!3896 = !DILocation(line: 93, column: 25, scope: !3894, inlinedAt: !3856)
!3897 = !DILocation(line: 94, column: 32, scope: !3894, inlinedAt: !3856)
!3898 = !DILocation(line: 94, column: 30, scope: !3894, inlinedAt: !3856)
!3899 = !DILocation(line: 95, column: 13, scope: !3894, inlinedAt: !3856)
!3900 = !DILocation(line: 106, column: 7, scope: !3901, inlinedAt: !3856)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !652, line: 106, column: 7)
!3902 = distinct !DILexicalBlock(scope: !3853, file: !652, line: 106, column: 7)
!3903 = !DILocation(line: 147, column: 24, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3857, file: !652, line: 146, column: 9)
!3905 = !DILocation(line: 147, column: 21, scope: !3904)
!3906 = !DILocation(line: 147, column: 30, scope: !3904)
!3907 = !DILocation(line: 147, column: 44, scope: !3904)
!3908 = !DILocation(line: 149, column: 22, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3904, file: !652, line: 149, column: 15)
!3910 = !DILocation(line: 149, column: 15, scope: !3904)
!3911 = !DILocation(line: 150, column: 25, scope: !3909)
!3912 = !DILocation(line: 150, column: 13, scope: !3909)
!3913 = !DILocation(line: 153, column: 27, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3909, file: !652, line: 151, column: 15)
!3915 = !DILocation(line: 154, column: 17, scope: !3914)
!3916 = !DILocation(line: 162, column: 17, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !652, line: 162, column: 17)
!3918 = distinct !DILexicalBlock(scope: !3914, file: !652, line: 162, column: 17)
!3919 = !DILocation(line: 162, column: 17, scope: !3918)
!3920 = !DILocation(line: 166, column: 17, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !652, line: 166, column: 17)
!3922 = distinct !DILexicalBlock(scope: !3914, file: !652, line: 166, column: 17)
!3923 = !DILocation(line: 171, column: 9, scope: !3821)
!3924 = !DILocation(line: 171, column: 15, scope: !3821)
!3925 = !DILocation(line: 173, column: 25, scope: !3820)
!3926 = !DILocation(line: 0, scope: !3820)
!3927 = !DILocation(line: 174, column: 7, scope: !3820)
!3928 = !DILocation(line: 175, column: 13, scope: !3820)
!3929 = !DILocation(line: 176, column: 5, scope: !3820)
!3930 = !DILocation(line: 178, column: 3, scope: !3809)
!3931 = !DISubprogram(name: "fork", scope: !1623, file: !1623, line: 778, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!97}
!3934 = !DISubprogram(name: "__assert_fail", scope: !3935, file: !3935, line: 69, type: !3936, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3935 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !143, !143, !99, !143}
!3938 = !DISubprogram(name: "chdir", scope: !1623, file: !1623, line: 517, type: !3939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!80, !143}
!3941 = !DISubprogram(name: "fchdir", scope: !1623, file: !1623, line: 521, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3942 = distinct !DISubprogram(name: "savewd_restore", scope: !652, file: !652, line: 182, type: !3943, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!80, !3789, !80}
!3945 = !{!3946, !3947, !3948, !3952, !3954}
!3946 = !DILocalVariable(name: "wd", arg: 1, scope: !3942, file: !652, line: 182, type: !3789)
!3947 = !DILocalVariable(name: "status", arg: 2, scope: !3942, file: !652, line: 182, type: !80)
!3948 = !DILocalVariable(name: "chdir_errno", scope: !3949, file: !652, line: 201, type: !80)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !652, line: 200, column: 9)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !652, line: 194, column: 11)
!3951 = distinct !DILexicalBlock(scope: !3942, file: !652, line: 185, column: 5)
!3952 = !DILocalVariable(name: "child", scope: !3953, file: !652, line: 216, type: !95)
!3953 = distinct !DILexicalBlock(scope: !3951, file: !652, line: 215, column: 7)
!3954 = !DILocalVariable(name: "child_status", scope: !3955, file: !652, line: 221, type: !80)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !652, line: 220, column: 11)
!3956 = distinct !DILexicalBlock(scope: !3953, file: !652, line: 219, column: 13)
!3957 = distinct !DIAssignID()
!3958 = !DILocation(line: 0, scope: !3955)
!3959 = !DILocation(line: 0, scope: !3942)
!3960 = !DILocation(line: 184, column: 15, scope: !3942)
!3961 = !DILocation(line: 184, column: 3, scope: !3942)
!3962 = !DILocation(line: 209, column: 23, scope: !3951)
!3963 = !DILocation(line: 209, column: 7, scope: !3951)
!3964 = !DILocation(line: 194, column: 23, scope: !3950)
!3965 = !DILocation(line: 194, column: 27, scope: !3950)
!3966 = !DILocation(line: 194, column: 11, scope: !3950)
!3967 = !DILocation(line: 194, column: 31, scope: !3950)
!3968 = !DILocation(line: 194, column: 11, scope: !3951)
!3969 = !DILocation(line: 196, column: 21, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3950, file: !652, line: 195, column: 9)
!3971 = !DILocation(line: 197, column: 11, scope: !3970)
!3972 = !DILocation(line: 201, column: 29, scope: !3949)
!3973 = !DILocation(line: 0, scope: !3949)
!3974 = !DILocation(line: 202, column: 26, scope: !3949)
!3975 = !DILocation(line: 202, column: 11, scope: !3949)
!3976 = !DILocation(line: 203, column: 21, scope: !3949)
!3977 = !DILocation(line: 204, column: 26, scope: !3949)
!3978 = !DILocation(line: 194, column: 34, scope: !3950)
!3979 = !DILocation(line: 209, column: 13, scope: !3951)
!3980 = !DILocation(line: 210, column: 7, scope: !3951)
!3981 = !DILocation(line: 216, column: 27, scope: !3953)
!3982 = !DILocation(line: 216, column: 31, scope: !3953)
!3983 = !DILocation(line: 0, scope: !3953)
!3984 = !DILocation(line: 217, column: 19, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3953, file: !652, line: 217, column: 13)
!3986 = !DILocation(line: 217, column: 13, scope: !3953)
!3987 = !DILocation(line: 218, column: 11, scope: !3985)
!3988 = !DILocation(line: 219, column: 15, scope: !3956)
!3989 = !DILocation(line: 219, column: 13, scope: !3953)
!3990 = !DILocation(line: 221, column: 13, scope: !3955)
!3991 = !DILocation(line: 222, column: 13, scope: !3955)
!3992 = !DILocation(line: 222, column: 20, scope: !3955)
!3993 = !DILocation(line: 222, column: 54, scope: !3955)
!3994 = !DILocation(line: 223, column: 15, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !652, line: 223, column: 15)
!3996 = distinct !DILexicalBlock(scope: !3955, file: !652, line: 223, column: 15)
!3997 = !DILocation(line: 223, column: 15, scope: !3996)
!3998 = distinct !{!3998, !3991, !3999, !1090}
!3999 = !DILocation(line: 223, column: 15, scope: !3955)
!4000 = !DILocation(line: 224, column: 27, scope: !3955)
!4001 = !DILocation(line: 225, column: 19, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3955, file: !652, line: 225, column: 17)
!4003 = !DILocation(line: 225, column: 17, scope: !3955)
!4004 = !DILocation(line: 226, column: 15, scope: !4002)
!4005 = !DILocation(line: 227, column: 20, scope: !3955)
!4006 = !DILocation(line: 228, column: 11, scope: !3956)
!4007 = !DILocation(line: 233, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !652, line: 233, column: 7)
!4009 = distinct !DILexicalBlock(scope: !3951, file: !652, line: 233, column: 7)
!4010 = !DILocation(line: 237, column: 1, scope: !3942)
!4011 = !DISubprogram(name: "waitpid", scope: !4012, file: !4012, line: 111, type: !4013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4012 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!97, !97, !406, !80}
!4015 = !DISubprogram(name: "raise", scope: !4016, file: !4016, line: 123, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4016 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!4017 = distinct !DISubprogram(name: "savewd_finish", scope: !652, file: !652, line: 240, type: !3787, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4018)
!4018 = !{!4019}
!4019 = !DILocalVariable(name: "wd", arg: 1, scope: !4017, file: !652, line: 240, type: !3789)
!4020 = !DILocation(line: 0, scope: !4017)
!4021 = !DILocation(line: 242, column: 15, scope: !4017)
!4022 = !DILocation(line: 242, column: 3, scope: !4017)
!4023 = !DILocation(line: 249, column: 18, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4017, file: !652, line: 243, column: 5)
!4025 = !DILocation(line: 249, column: 22, scope: !4024)
!4026 = !DILocation(line: 249, column: 7, scope: !4024)
!4027 = !DILocation(line: 252, column: 11, scope: !4024)
!4028 = !DILocation(line: 253, column: 7, scope: !4024)
!4029 = !DILocation(line: 256, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !652, line: 256, column: 7)
!4031 = distinct !DILexicalBlock(scope: !4024, file: !652, line: 256, column: 7)
!4032 = !DILocation(line: 256, column: 7, scope: !4031)
!4033 = !DILocation(line: 261, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !652, line: 261, column: 7)
!4035 = distinct !DILexicalBlock(scope: !4024, file: !652, line: 261, column: 7)
!4036 = !DILocation(line: 0, scope: !4024)
!4037 = !DILocation(line: 264, column: 13, scope: !4017)
!4038 = !DILocation(line: 265, column: 1, scope: !4017)
!4039 = distinct !DISubprogram(name: "savewd_process_files", scope: !652, file: !652, line: 284, type: !4040, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4045)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!80, !80, !1193, !4042, !138}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!80, !137, !3789, !138}
!4045 = !{!4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4060, !4063}
!4046 = !DILocalVariable(name: "n_files", arg: 1, scope: !4039, file: !652, line: 284, type: !80)
!4047 = !DILocalVariable(name: "file", arg: 2, scope: !4039, file: !652, line: 284, type: !1193)
!4048 = !DILocalVariable(name: "act", arg: 3, scope: !4039, file: !652, line: 285, type: !4042)
!4049 = !DILocalVariable(name: "options", arg: 4, scope: !4039, file: !652, line: 286, type: !138)
!4050 = !DILocalVariable(name: "i", scope: !4039, file: !652, line: 288, type: !80)
!4051 = !DILocalVariable(name: "last_relative", scope: !4039, file: !652, line: 289, type: !80)
!4052 = !DILocalVariable(name: "exit_status", scope: !4039, file: !652, line: 290, type: !80)
!4053 = !DILocalVariable(name: "wd", scope: !4039, file: !652, line: 291, type: !861)
!4054 = !DILocalVariable(name: "s", scope: !4055, file: !652, line: 302, type: !80)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !652, line: 301, column: 9)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !652, line: 300, column: 11)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !652, line: 299, column: 5)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !652, line: 298, column: 3)
!4059 = distinct !DILexicalBlock(scope: !4039, file: !652, line: 298, column: 3)
!4060 = !DILocalVariable(name: "r", scope: !4061, file: !652, line: 309, type: !80)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !652, line: 308, column: 9)
!4062 = distinct !DILexicalBlock(scope: !4057, file: !652, line: 307, column: 11)
!4063 = !DILocalVariable(name: "s", scope: !4064, file: !652, line: 319, type: !80)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !652, line: 318, column: 5)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !652, line: 317, column: 3)
!4066 = distinct !DILexicalBlock(scope: !4039, file: !652, line: 317, column: 3)
!4067 = distinct !DIAssignID()
!4068 = !DILocation(line: 0, scope: !4039)
!4069 = !DILocation(line: 291, column: 3, scope: !4039)
!4070 = !DILocation(line: 0, scope: !3786, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 292, column: 3, scope: !4039)
!4072 = !DILocation(line: 88, column: 13, scope: !3786, inlinedAt: !4071)
!4073 = distinct !DIAssignID()
!4074 = !DILocation(line: 294, column: 8, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4039, file: !652, line: 294, column: 3)
!4076 = !DILocation(line: 294, column: 39, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4075, file: !652, line: 294, column: 3)
!4078 = !DILocation(line: 294, column: 3, scope: !4075)
!4079 = !DILocation(line: 294, scope: !4075)
!4080 = !DILocation(line: 295, column: 11, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4077, file: !652, line: 295, column: 9)
!4082 = !DILocation(line: 295, column: 9, scope: !4077)
!4083 = distinct !{!4083, !4078, !4084, !1090}
!4084 = !DILocation(line: 296, column: 7, scope: !4075)
!4085 = !DILocation(line: 298, column: 12, scope: !4058)
!4086 = !DILocation(line: 298, column: 3, scope: !4059)
!4087 = !DILocalVariable(name: "wd", arg: 1, scope: !4088, file: !652, line: 278, type: !3798)
!4088 = distinct !DISubprogram(name: "savewd_delegating", scope: !652, file: !652, line: 278, type: !4089, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!191, !3798}
!4091 = !{!4087}
!4092 = !DILocation(line: 0, scope: !4088, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 300, column: 13, scope: !4056)
!4094 = !DILocation(line: 280, column: 14, scope: !4088, inlinedAt: !4093)
!4095 = !DILocation(line: 280, column: 20, scope: !4088, inlinedAt: !4093)
!4096 = !DILocation(line: 280, column: 37, scope: !4088, inlinedAt: !4093)
!4097 = !DILocation(line: 302, column: 24, scope: !4055)
!4098 = !DILocation(line: 302, column: 19, scope: !4055)
!4099 = !DILocation(line: 0, scope: !4055)
!4100 = !DILocation(line: 303, column: 15, scope: !4055)
!4101 = !DILocation(line: 305, column: 9, scope: !4055)
!4102 = !DILocation(line: 307, column: 13, scope: !4062)
!4103 = !DILocation(line: 307, column: 11, scope: !4057)
!4104 = !DILocation(line: 309, column: 19, scope: !4061)
!4105 = !DILocation(line: 0, scope: !4061)
!4106 = !DILocation(line: 310, column: 15, scope: !4061)
!4107 = !DILocation(line: 312, column: 9, scope: !4061)
!4108 = distinct !{!4108, !4086, !4109, !1090}
!4109 = !DILocation(line: 313, column: 5, scope: !4059)
!4110 = !DILocation(line: 242, column: 15, scope: !4017, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 315, column: 3, scope: !4039)
!4112 = !DILocation(line: 0, scope: !4017, inlinedAt: !4111)
!4113 = !DILocation(line: 242, column: 3, scope: !4017, inlinedAt: !4111)
!4114 = !DILocation(line: 249, column: 18, scope: !4024, inlinedAt: !4111)
!4115 = !DILocation(line: 249, column: 22, scope: !4024, inlinedAt: !4111)
!4116 = !DILocation(line: 249, column: 7, scope: !4024, inlinedAt: !4111)
!4117 = !DILocation(line: 252, column: 11, scope: !4024, inlinedAt: !4111)
!4118 = !DILocation(line: 253, column: 7, scope: !4024, inlinedAt: !4111)
!4119 = !DILocation(line: 256, column: 7, scope: !4030, inlinedAt: !4111)
!4120 = !DILocation(line: 256, column: 7, scope: !4031, inlinedAt: !4111)
!4121 = !DILocation(line: 261, column: 7, scope: !4034, inlinedAt: !4111)
!4122 = !DILocation(line: 0, scope: !4024, inlinedAt: !4111)
!4123 = !DILocation(line: 264, column: 13, scope: !4017, inlinedAt: !4111)
!4124 = distinct !DIAssignID()
!4125 = !DILocation(line: 317, column: 12, scope: !4065)
!4126 = !DILocation(line: 317, column: 3, scope: !4066)
!4127 = !DILocation(line: 319, column: 20, scope: !4064)
!4128 = !DILocation(line: 319, column: 15, scope: !4064)
!4129 = !DILocation(line: 0, scope: !4064)
!4130 = !DILocation(line: 320, column: 11, scope: !4064)
!4131 = !DILocation(line: 317, column: 24, scope: !4065)
!4132 = distinct !{!4132, !4126, !4133, !1090}
!4133 = !DILocation(line: 322, column: 5, scope: !4066)
!4134 = !DILocation(line: 325, column: 1, scope: !4039)
!4135 = !DILocation(line: 324, column: 3, scope: !4039)
!4136 = distinct !DISubprogram(name: "version_etc_arn", scope: !692, file: !692, line: 61, type: !4137, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4174)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !4139, !143, !143, !143, !4173, !140}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4142)
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4141, file: !208, line: 51, baseType: !80, size: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4141, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4141, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4141, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4141, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4141, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4141, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4141, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4141, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4141, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4141, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4141, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4141, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4141, file: !208, line: 70, baseType: !4157, size: 64, offset: 832)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4141, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4141, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4141, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4141, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4141, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4141, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4141, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4141, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4141, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4141, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4141, file: !208, line: 93, baseType: !4157, size: 64, offset: 1344)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4141, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4141, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4141, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4141, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180}
!4175 = !DILocalVariable(name: "stream", arg: 1, scope: !4136, file: !692, line: 61, type: !4139)
!4176 = !DILocalVariable(name: "command_name", arg: 2, scope: !4136, file: !692, line: 62, type: !143)
!4177 = !DILocalVariable(name: "package", arg: 3, scope: !4136, file: !692, line: 62, type: !143)
!4178 = !DILocalVariable(name: "version", arg: 4, scope: !4136, file: !692, line: 63, type: !143)
!4179 = !DILocalVariable(name: "authors", arg: 5, scope: !4136, file: !692, line: 64, type: !4173)
!4180 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4136, file: !692, line: 64, type: !140)
!4181 = !DILocation(line: 0, scope: !4136)
!4182 = !DILocation(line: 66, column: 7, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4136, file: !692, line: 66, column: 7)
!4184 = !DILocation(line: 66, column: 7, scope: !4136)
!4185 = !DILocation(line: 67, column: 5, scope: !4183)
!4186 = !DILocation(line: 69, column: 5, scope: !4183)
!4187 = !DILocation(line: 83, column: 3, scope: !4136)
!4188 = !DILocation(line: 85, column: 3, scope: !4136)
!4189 = !DILocation(line: 88, column: 3, scope: !4136)
!4190 = !DILocation(line: 95, column: 3, scope: !4136)
!4191 = !DILocation(line: 97, column: 3, scope: !4136)
!4192 = !DILocation(line: 105, column: 7, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4136, file: !692, line: 98, column: 5)
!4194 = !DILocation(line: 106, column: 7, scope: !4193)
!4195 = !DILocation(line: 109, column: 7, scope: !4193)
!4196 = !DILocation(line: 110, column: 7, scope: !4193)
!4197 = !DILocation(line: 113, column: 7, scope: !4193)
!4198 = !DILocation(line: 115, column: 7, scope: !4193)
!4199 = !DILocation(line: 120, column: 7, scope: !4193)
!4200 = !DILocation(line: 122, column: 7, scope: !4193)
!4201 = !DILocation(line: 127, column: 7, scope: !4193)
!4202 = !DILocation(line: 129, column: 7, scope: !4193)
!4203 = !DILocation(line: 134, column: 7, scope: !4193)
!4204 = !DILocation(line: 137, column: 7, scope: !4193)
!4205 = !DILocation(line: 142, column: 7, scope: !4193)
!4206 = !DILocation(line: 145, column: 7, scope: !4193)
!4207 = !DILocation(line: 150, column: 7, scope: !4193)
!4208 = !DILocation(line: 154, column: 7, scope: !4193)
!4209 = !DILocation(line: 159, column: 7, scope: !4193)
!4210 = !DILocation(line: 163, column: 7, scope: !4193)
!4211 = !DILocation(line: 170, column: 7, scope: !4193)
!4212 = !DILocation(line: 174, column: 7, scope: !4193)
!4213 = !DILocation(line: 176, column: 1, scope: !4136)
!4214 = distinct !DISubprogram(name: "version_etc_ar", scope: !692, file: !692, line: 183, type: !4215, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4139, !143, !143, !143, !4173}
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4223}
!4218 = !DILocalVariable(name: "stream", arg: 1, scope: !4214, file: !692, line: 183, type: !4139)
!4219 = !DILocalVariable(name: "command_name", arg: 2, scope: !4214, file: !692, line: 184, type: !143)
!4220 = !DILocalVariable(name: "package", arg: 3, scope: !4214, file: !692, line: 184, type: !143)
!4221 = !DILocalVariable(name: "version", arg: 4, scope: !4214, file: !692, line: 185, type: !143)
!4222 = !DILocalVariable(name: "authors", arg: 5, scope: !4214, file: !692, line: 185, type: !4173)
!4223 = !DILocalVariable(name: "n_authors", scope: !4214, file: !692, line: 187, type: !140)
!4224 = !DILocation(line: 0, scope: !4214)
!4225 = !DILocation(line: 189, column: 8, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4214, file: !692, line: 189, column: 3)
!4227 = !DILocation(line: 189, scope: !4226)
!4228 = !DILocation(line: 189, column: 23, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4226, file: !692, line: 189, column: 3)
!4230 = !DILocation(line: 189, column: 3, scope: !4226)
!4231 = !DILocation(line: 189, column: 52, scope: !4229)
!4232 = distinct !{!4232, !4230, !4233, !1090}
!4233 = !DILocation(line: 190, column: 5, scope: !4226)
!4234 = !DILocation(line: 191, column: 3, scope: !4214)
!4235 = !DILocation(line: 192, column: 1, scope: !4214)
!4236 = distinct !DISubprogram(name: "version_etc_va", scope: !692, file: !692, line: 199, type: !4237, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4249)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !4139, !143, !143, !143, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !447, line: 52, baseType: !4240)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !449, line: 12, baseType: !4241)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !692, baseType: !4242)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4247, !4248}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4242, file: !692, line: 192, baseType: !138, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4242, file: !692, line: 192, baseType: !138, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4242, file: !692, line: 192, baseType: !138, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4242, file: !692, line: 192, baseType: !80, size: 32, offset: 192)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4242, file: !692, line: 192, baseType: !80, size: 32, offset: 224)
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4256}
!4250 = !DILocalVariable(name: "stream", arg: 1, scope: !4236, file: !692, line: 199, type: !4139)
!4251 = !DILocalVariable(name: "command_name", arg: 2, scope: !4236, file: !692, line: 200, type: !143)
!4252 = !DILocalVariable(name: "package", arg: 3, scope: !4236, file: !692, line: 200, type: !143)
!4253 = !DILocalVariable(name: "version", arg: 4, scope: !4236, file: !692, line: 201, type: !143)
!4254 = !DILocalVariable(name: "authors", arg: 5, scope: !4236, file: !692, line: 201, type: !4239)
!4255 = !DILocalVariable(name: "n_authors", scope: !4236, file: !692, line: 203, type: !140)
!4256 = !DILocalVariable(name: "authtab", scope: !4236, file: !692, line: 204, type: !4257)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !65)
!4258 = distinct !DIAssignID()
!4259 = !DILocation(line: 0, scope: !4236)
!4260 = !DILocation(line: 204, column: 3, scope: !4236)
!4261 = !DILocation(line: 208, column: 35, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !692, line: 206, column: 3)
!4263 = distinct !DILexicalBlock(scope: !4236, file: !692, line: 206, column: 3)
!4264 = !DILocation(line: 208, column: 33, scope: !4262)
!4265 = !DILocation(line: 208, column: 67, scope: !4262)
!4266 = !DILocation(line: 206, column: 3, scope: !4263)
!4267 = !DILocation(line: 208, column: 14, scope: !4262)
!4268 = !DILocation(line: 0, scope: !4263)
!4269 = !DILocation(line: 211, column: 3, scope: !4236)
!4270 = !DILocation(line: 213, column: 1, scope: !4236)
!4271 = distinct !DISubprogram(name: "version_etc", scope: !692, file: !692, line: 230, type: !4272, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !4139, !143, !143, !143, null}
!4274 = !{!4275, !4276, !4277, !4278, !4279}
!4275 = !DILocalVariable(name: "stream", arg: 1, scope: !4271, file: !692, line: 230, type: !4139)
!4276 = !DILocalVariable(name: "command_name", arg: 2, scope: !4271, file: !692, line: 231, type: !143)
!4277 = !DILocalVariable(name: "package", arg: 3, scope: !4271, file: !692, line: 231, type: !143)
!4278 = !DILocalVariable(name: "version", arg: 4, scope: !4271, file: !692, line: 232, type: !143)
!4279 = !DILocalVariable(name: "authors", scope: !4271, file: !692, line: 234, type: !4239)
!4280 = distinct !DIAssignID()
!4281 = !DILocation(line: 0, scope: !4271)
!4282 = !DILocation(line: 234, column: 3, scope: !4271)
!4283 = !DILocation(line: 235, column: 3, scope: !4271)
!4284 = !DILocation(line: 236, column: 3, scope: !4271)
!4285 = !DILocation(line: 237, column: 3, scope: !4271)
!4286 = !DILocation(line: 238, column: 1, scope: !4271)
!4287 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !692, file: !692, line: 241, type: !484, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871)
!4288 = !DILocation(line: 243, column: 3, scope: !4287)
!4289 = !DILocation(line: 248, column: 3, scope: !4287)
!4290 = !DILocation(line: 254, column: 3, scope: !4287)
!4291 = !DILocation(line: 259, column: 3, scope: !4287)
!4292 = !DILocation(line: 261, column: 1, scope: !4287)
!4293 = distinct !DISubprogram(name: "xnrealloc", scope: !4294, file: !4294, line: 147, type: !4295, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4297)
!4294 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!138, !138, !140, !140}
!4297 = !{!4298, !4299, !4300}
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4293, file: !4294, line: 147, type: !138)
!4299 = !DILocalVariable(name: "n", arg: 2, scope: !4293, file: !4294, line: 147, type: !140)
!4300 = !DILocalVariable(name: "s", arg: 3, scope: !4293, file: !4294, line: 147, type: !140)
!4301 = !DILocation(line: 0, scope: !4293)
!4302 = !DILocalVariable(name: "p", arg: 1, scope: !4303, file: !879, line: 83, type: !138)
!4303 = distinct !DISubprogram(name: "xreallocarray", scope: !879, file: !879, line: 83, type: !4295, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4304)
!4304 = !{!4302, !4305, !4306}
!4305 = !DILocalVariable(name: "n", arg: 2, scope: !4303, file: !879, line: 83, type: !140)
!4306 = !DILocalVariable(name: "s", arg: 3, scope: !4303, file: !879, line: 83, type: !140)
!4307 = !DILocation(line: 0, scope: !4303, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 149, column: 10, scope: !4293)
!4309 = !DILocation(line: 85, column: 25, scope: !4303, inlinedAt: !4308)
!4310 = !DILocalVariable(name: "p", arg: 1, scope: !4311, file: !879, line: 37, type: !138)
!4311 = distinct !DISubprogram(name: "check_nonnull", scope: !879, file: !879, line: 37, type: !4312, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!138, !138}
!4314 = !{!4310}
!4315 = !DILocation(line: 0, scope: !4311, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 85, column: 10, scope: !4303, inlinedAt: !4308)
!4317 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4316)
!4318 = distinct !DILexicalBlock(scope: !4311, file: !879, line: 39, column: 7)
!4319 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4316)
!4320 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4316)
!4321 = !DILocation(line: 149, column: 3, scope: !4293)
!4322 = !DILocation(line: 0, scope: !4303)
!4323 = !DILocation(line: 85, column: 25, scope: !4303)
!4324 = !DILocation(line: 0, scope: !4311, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 85, column: 10, scope: !4303)
!4326 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4325)
!4327 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4325)
!4328 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4325)
!4329 = !DILocation(line: 85, column: 3, scope: !4303)
!4330 = distinct !DISubprogram(name: "xmalloc", scope: !879, file: !879, line: 47, type: !4331, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!138, !140}
!4333 = !{!4334}
!4334 = !DILocalVariable(name: "s", arg: 1, scope: !4330, file: !879, line: 47, type: !140)
!4335 = !DILocation(line: 0, scope: !4330)
!4336 = !DILocation(line: 49, column: 25, scope: !4330)
!4337 = !DILocation(line: 0, scope: !4311, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 49, column: 10, scope: !4330)
!4339 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4338)
!4340 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4338)
!4341 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4338)
!4342 = !DILocation(line: 49, column: 3, scope: !4330)
!4343 = !DISubprogram(name: "malloc", scope: !1164, file: !1164, line: 540, type: !4331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4344 = distinct !DISubprogram(name: "ximalloc", scope: !879, file: !879, line: 53, type: !4345, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!138, !898}
!4347 = !{!4348}
!4348 = !DILocalVariable(name: "s", arg: 1, scope: !4344, file: !879, line: 53, type: !898)
!4349 = !DILocation(line: 0, scope: !4344)
!4350 = !DILocalVariable(name: "s", arg: 1, scope: !4351, file: !4352, line: 55, type: !898)
!4351 = distinct !DISubprogram(name: "imalloc", scope: !4352, file: !4352, line: 55, type: !4345, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4353)
!4352 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4353 = !{!4350}
!4354 = !DILocation(line: 0, scope: !4351, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 55, column: 25, scope: !4344)
!4356 = !DILocation(line: 57, column: 26, scope: !4351, inlinedAt: !4355)
!4357 = !DILocation(line: 0, scope: !4311, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 55, column: 10, scope: !4344)
!4359 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4358)
!4360 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4358)
!4361 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4358)
!4362 = !DILocation(line: 55, column: 3, scope: !4344)
!4363 = distinct !DISubprogram(name: "xcharalloc", scope: !879, file: !879, line: 59, type: !4364, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!137, !140}
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "n", arg: 1, scope: !4363, file: !879, line: 59, type: !140)
!4368 = !DILocation(line: 0, scope: !4363)
!4369 = !DILocation(line: 0, scope: !4330, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 61, column: 10, scope: !4363)
!4371 = !DILocation(line: 49, column: 25, scope: !4330, inlinedAt: !4370)
!4372 = !DILocation(line: 0, scope: !4311, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 49, column: 10, scope: !4330, inlinedAt: !4370)
!4374 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4373)
!4375 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4373)
!4376 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4373)
!4377 = !DILocation(line: 61, column: 3, scope: !4363)
!4378 = distinct !DISubprogram(name: "xrealloc", scope: !879, file: !879, line: 68, type: !4379, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4381)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!138, !138, !140}
!4381 = !{!4382, !4383}
!4382 = !DILocalVariable(name: "p", arg: 1, scope: !4378, file: !879, line: 68, type: !138)
!4383 = !DILocalVariable(name: "s", arg: 2, scope: !4378, file: !879, line: 68, type: !140)
!4384 = !DILocation(line: 0, scope: !4378)
!4385 = !DILocalVariable(name: "ptr", arg: 1, scope: !4386, file: !4387, line: 2057, type: !138)
!4386 = distinct !DISubprogram(name: "rpl_realloc", scope: !4387, file: !4387, line: 2057, type: !4379, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4388)
!4387 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4388 = !{!4385, !4389}
!4389 = !DILocalVariable(name: "size", arg: 2, scope: !4386, file: !4387, line: 2057, type: !140)
!4390 = !DILocation(line: 0, scope: !4386, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 70, column: 25, scope: !4378)
!4392 = !DILocation(line: 2059, column: 24, scope: !4386, inlinedAt: !4391)
!4393 = !DILocation(line: 2059, column: 10, scope: !4386, inlinedAt: !4391)
!4394 = !DILocation(line: 0, scope: !4311, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 70, column: 10, scope: !4378)
!4396 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4395)
!4397 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4395)
!4398 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4395)
!4399 = !DILocation(line: 70, column: 3, scope: !4378)
!4400 = !DISubprogram(name: "realloc", scope: !1164, file: !1164, line: 551, type: !4379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4401 = distinct !DISubprogram(name: "xirealloc", scope: !879, file: !879, line: 74, type: !4402, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4404)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!138, !138, !898}
!4404 = !{!4405, !4406}
!4405 = !DILocalVariable(name: "p", arg: 1, scope: !4401, file: !879, line: 74, type: !138)
!4406 = !DILocalVariable(name: "s", arg: 2, scope: !4401, file: !879, line: 74, type: !898)
!4407 = !DILocation(line: 0, scope: !4401)
!4408 = !DILocalVariable(name: "p", arg: 1, scope: !4409, file: !4352, line: 66, type: !138)
!4409 = distinct !DISubprogram(name: "irealloc", scope: !4352, file: !4352, line: 66, type: !4402, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4410)
!4410 = !{!4408, !4411}
!4411 = !DILocalVariable(name: "s", arg: 2, scope: !4409, file: !4352, line: 66, type: !898)
!4412 = !DILocation(line: 0, scope: !4409, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 76, column: 25, scope: !4401)
!4414 = !DILocation(line: 0, scope: !4386, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 68, column: 26, scope: !4409, inlinedAt: !4413)
!4416 = !DILocation(line: 2059, column: 24, scope: !4386, inlinedAt: !4415)
!4417 = !DILocation(line: 2059, column: 10, scope: !4386, inlinedAt: !4415)
!4418 = !DILocation(line: 0, scope: !4311, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 76, column: 10, scope: !4401)
!4420 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4419)
!4421 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4419)
!4422 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4419)
!4423 = !DILocation(line: 76, column: 3, scope: !4401)
!4424 = distinct !DISubprogram(name: "xireallocarray", scope: !879, file: !879, line: 89, type: !4425, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!138, !138, !898, !898}
!4427 = !{!4428, !4429, !4430}
!4428 = !DILocalVariable(name: "p", arg: 1, scope: !4424, file: !879, line: 89, type: !138)
!4429 = !DILocalVariable(name: "n", arg: 2, scope: !4424, file: !879, line: 89, type: !898)
!4430 = !DILocalVariable(name: "s", arg: 3, scope: !4424, file: !879, line: 89, type: !898)
!4431 = !DILocation(line: 0, scope: !4424)
!4432 = !DILocalVariable(name: "p", arg: 1, scope: !4433, file: !4352, line: 98, type: !138)
!4433 = distinct !DISubprogram(name: "ireallocarray", scope: !4352, file: !4352, line: 98, type: !4425, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4434)
!4434 = !{!4432, !4435, !4436}
!4435 = !DILocalVariable(name: "n", arg: 2, scope: !4433, file: !4352, line: 98, type: !898)
!4436 = !DILocalVariable(name: "s", arg: 3, scope: !4433, file: !4352, line: 98, type: !898)
!4437 = !DILocation(line: 0, scope: !4433, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 91, column: 25, scope: !4424)
!4439 = !DILocation(line: 101, column: 13, scope: !4433, inlinedAt: !4438)
!4440 = !DILocation(line: 0, scope: !4311, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 91, column: 10, scope: !4424)
!4442 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4441)
!4443 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4441)
!4444 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4441)
!4445 = !DILocation(line: 91, column: 3, scope: !4424)
!4446 = distinct !DISubprogram(name: "xnmalloc", scope: !879, file: !879, line: 98, type: !4447, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!138, !140, !140}
!4449 = !{!4450, !4451}
!4450 = !DILocalVariable(name: "n", arg: 1, scope: !4446, file: !879, line: 98, type: !140)
!4451 = !DILocalVariable(name: "s", arg: 2, scope: !4446, file: !879, line: 98, type: !140)
!4452 = !DILocation(line: 0, scope: !4446)
!4453 = !DILocation(line: 0, scope: !4303, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 100, column: 10, scope: !4446)
!4455 = !DILocation(line: 85, column: 25, scope: !4303, inlinedAt: !4454)
!4456 = !DILocation(line: 0, scope: !4311, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 85, column: 10, scope: !4303, inlinedAt: !4454)
!4458 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4457)
!4459 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4457)
!4460 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4457)
!4461 = !DILocation(line: 100, column: 3, scope: !4446)
!4462 = distinct !DISubprogram(name: "xinmalloc", scope: !879, file: !879, line: 104, type: !4463, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4465)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!138, !898, !898}
!4465 = !{!4466, !4467}
!4466 = !DILocalVariable(name: "n", arg: 1, scope: !4462, file: !879, line: 104, type: !898)
!4467 = !DILocalVariable(name: "s", arg: 2, scope: !4462, file: !879, line: 104, type: !898)
!4468 = !DILocation(line: 0, scope: !4462)
!4469 = !DILocation(line: 0, scope: !4424, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 106, column: 10, scope: !4462)
!4471 = !DILocation(line: 0, scope: !4433, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 91, column: 25, scope: !4424, inlinedAt: !4470)
!4473 = !DILocation(line: 101, column: 13, scope: !4433, inlinedAt: !4472)
!4474 = !DILocation(line: 0, scope: !4311, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 91, column: 10, scope: !4424, inlinedAt: !4470)
!4476 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4475)
!4477 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4475)
!4478 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4475)
!4479 = !DILocation(line: 106, column: 3, scope: !4462)
!4480 = distinct !DISubprogram(name: "x2realloc", scope: !879, file: !879, line: 116, type: !4481, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4483)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!138, !138, !885}
!4483 = !{!4484, !4485}
!4484 = !DILocalVariable(name: "p", arg: 1, scope: !4480, file: !879, line: 116, type: !138)
!4485 = !DILocalVariable(name: "ps", arg: 2, scope: !4480, file: !879, line: 116, type: !885)
!4486 = !DILocation(line: 0, scope: !4480)
!4487 = !DILocation(line: 0, scope: !882, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 118, column: 10, scope: !4480)
!4489 = !DILocation(line: 178, column: 14, scope: !882, inlinedAt: !4488)
!4490 = !DILocation(line: 180, column: 9, scope: !4491, inlinedAt: !4488)
!4491 = distinct !DILexicalBlock(scope: !882, file: !879, line: 180, column: 7)
!4492 = !DILocation(line: 180, column: 7, scope: !882, inlinedAt: !4488)
!4493 = !DILocation(line: 182, column: 13, scope: !4494, inlinedAt: !4488)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !879, line: 182, column: 11)
!4495 = distinct !DILexicalBlock(scope: !4491, file: !879, line: 181, column: 5)
!4496 = !DILocation(line: 182, column: 11, scope: !4495, inlinedAt: !4488)
!4497 = !DILocation(line: 197, column: 11, scope: !4498, inlinedAt: !4488)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !879, line: 197, column: 11)
!4499 = distinct !DILexicalBlock(scope: !4491, file: !879, line: 195, column: 5)
!4500 = !DILocation(line: 197, column: 11, scope: !4499, inlinedAt: !4488)
!4501 = !DILocation(line: 198, column: 9, scope: !4498, inlinedAt: !4488)
!4502 = !DILocation(line: 0, scope: !4303, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 201, column: 7, scope: !882, inlinedAt: !4488)
!4504 = !DILocation(line: 85, column: 25, scope: !4303, inlinedAt: !4503)
!4505 = !DILocation(line: 0, scope: !4311, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 85, column: 10, scope: !4303, inlinedAt: !4503)
!4507 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4506)
!4508 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4506)
!4509 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4506)
!4510 = !DILocation(line: 202, column: 7, scope: !882, inlinedAt: !4488)
!4511 = !DILocation(line: 118, column: 3, scope: !4480)
!4512 = !DILocation(line: 0, scope: !882)
!4513 = !DILocation(line: 178, column: 14, scope: !882)
!4514 = !DILocation(line: 180, column: 9, scope: !4491)
!4515 = !DILocation(line: 180, column: 7, scope: !882)
!4516 = !DILocation(line: 182, column: 13, scope: !4494)
!4517 = !DILocation(line: 182, column: 11, scope: !4495)
!4518 = !DILocation(line: 190, column: 30, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4494, file: !879, line: 183, column: 9)
!4520 = !DILocation(line: 191, column: 16, scope: !4519)
!4521 = !DILocation(line: 191, column: 13, scope: !4519)
!4522 = !DILocation(line: 192, column: 9, scope: !4519)
!4523 = !DILocation(line: 197, column: 11, scope: !4498)
!4524 = !DILocation(line: 197, column: 11, scope: !4499)
!4525 = !DILocation(line: 198, column: 9, scope: !4498)
!4526 = !DILocation(line: 0, scope: !4303, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 201, column: 7, scope: !882)
!4528 = !DILocation(line: 85, column: 25, scope: !4303, inlinedAt: !4527)
!4529 = !DILocation(line: 0, scope: !4311, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 85, column: 10, scope: !4303, inlinedAt: !4527)
!4531 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4530)
!4532 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4530)
!4533 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4530)
!4534 = !DILocation(line: 202, column: 7, scope: !882)
!4535 = !DILocation(line: 203, column: 3, scope: !882)
!4536 = !DILocation(line: 0, scope: !894)
!4537 = !DILocation(line: 230, column: 14, scope: !894)
!4538 = !DILocation(line: 238, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !894, file: !879, line: 238, column: 7)
!4540 = !DILocation(line: 238, column: 7, scope: !894)
!4541 = !DILocation(line: 240, column: 9, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !894, file: !879, line: 240, column: 7)
!4543 = !DILocation(line: 240, column: 18, scope: !4542)
!4544 = !DILocation(line: 253, column: 8, scope: !894)
!4545 = !DILocation(line: 256, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !894, file: !879, line: 256, column: 7)
!4547 = !DILocation(line: 256, column: 7, scope: !894)
!4548 = !DILocation(line: 258, column: 27, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4546, file: !879, line: 257, column: 5)
!4550 = !DILocation(line: 259, column: 32, scope: !4549)
!4551 = !DILocation(line: 260, column: 5, scope: !4549)
!4552 = !DILocation(line: 262, column: 9, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !894, file: !879, line: 262, column: 7)
!4554 = !DILocation(line: 262, column: 7, scope: !894)
!4555 = !DILocation(line: 263, column: 9, scope: !4553)
!4556 = !DILocation(line: 263, column: 5, scope: !4553)
!4557 = !DILocation(line: 264, column: 9, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !894, file: !879, line: 264, column: 7)
!4559 = !DILocation(line: 264, column: 14, scope: !4558)
!4560 = !DILocation(line: 265, column: 7, scope: !4558)
!4561 = !DILocation(line: 265, column: 11, scope: !4558)
!4562 = !DILocation(line: 266, column: 11, scope: !4558)
!4563 = !DILocation(line: 267, column: 14, scope: !4558)
!4564 = !DILocation(line: 264, column: 7, scope: !894)
!4565 = !DILocation(line: 268, column: 5, scope: !4558)
!4566 = !DILocation(line: 0, scope: !4378, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 269, column: 8, scope: !894)
!4568 = !DILocation(line: 0, scope: !4386, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 70, column: 25, scope: !4378, inlinedAt: !4567)
!4570 = !DILocation(line: 2059, column: 24, scope: !4386, inlinedAt: !4569)
!4571 = !DILocation(line: 2059, column: 10, scope: !4386, inlinedAt: !4569)
!4572 = !DILocation(line: 0, scope: !4311, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 70, column: 10, scope: !4378, inlinedAt: !4567)
!4574 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4573)
!4575 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4573)
!4576 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4573)
!4577 = !DILocation(line: 270, column: 7, scope: !894)
!4578 = !DILocation(line: 271, column: 3, scope: !894)
!4579 = distinct !DISubprogram(name: "xzalloc", scope: !879, file: !879, line: 279, type: !4331, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4580)
!4580 = !{!4581}
!4581 = !DILocalVariable(name: "s", arg: 1, scope: !4579, file: !879, line: 279, type: !140)
!4582 = !DILocation(line: 0, scope: !4579)
!4583 = !DILocalVariable(name: "n", arg: 1, scope: !4584, file: !879, line: 294, type: !140)
!4584 = distinct !DISubprogram(name: "xcalloc", scope: !879, file: !879, line: 294, type: !4447, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4585)
!4585 = !{!4583, !4586}
!4586 = !DILocalVariable(name: "s", arg: 2, scope: !4584, file: !879, line: 294, type: !140)
!4587 = !DILocation(line: 0, scope: !4584, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 281, column: 10, scope: !4579)
!4589 = !DILocation(line: 296, column: 25, scope: !4584, inlinedAt: !4588)
!4590 = !DILocation(line: 0, scope: !4311, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 296, column: 10, scope: !4584, inlinedAt: !4588)
!4592 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4591)
!4593 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4591)
!4594 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4591)
!4595 = !DILocation(line: 281, column: 3, scope: !4579)
!4596 = !DISubprogram(name: "calloc", scope: !1164, file: !1164, line: 543, type: !4447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4597 = !DILocation(line: 0, scope: !4584)
!4598 = !DILocation(line: 296, column: 25, scope: !4584)
!4599 = !DILocation(line: 0, scope: !4311, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 296, column: 10, scope: !4584)
!4601 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4600)
!4602 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4600)
!4603 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4600)
!4604 = !DILocation(line: 296, column: 3, scope: !4584)
!4605 = distinct !DISubprogram(name: "xizalloc", scope: !879, file: !879, line: 285, type: !4345, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4606)
!4606 = !{!4607}
!4607 = !DILocalVariable(name: "s", arg: 1, scope: !4605, file: !879, line: 285, type: !898)
!4608 = !DILocation(line: 0, scope: !4605)
!4609 = !DILocalVariable(name: "n", arg: 1, scope: !4610, file: !879, line: 300, type: !898)
!4610 = distinct !DISubprogram(name: "xicalloc", scope: !879, file: !879, line: 300, type: !4463, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4611)
!4611 = !{!4609, !4612}
!4612 = !DILocalVariable(name: "s", arg: 2, scope: !4610, file: !879, line: 300, type: !898)
!4613 = !DILocation(line: 0, scope: !4610, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 287, column: 10, scope: !4605)
!4615 = !DILocalVariable(name: "n", arg: 1, scope: !4616, file: !4352, line: 77, type: !898)
!4616 = distinct !DISubprogram(name: "icalloc", scope: !4352, file: !4352, line: 77, type: !4463, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4617)
!4617 = !{!4615, !4618}
!4618 = !DILocalVariable(name: "s", arg: 2, scope: !4616, file: !4352, line: 77, type: !898)
!4619 = !DILocation(line: 0, scope: !4616, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 302, column: 25, scope: !4610, inlinedAt: !4614)
!4621 = !DILocation(line: 91, column: 10, scope: !4616, inlinedAt: !4620)
!4622 = !DILocation(line: 0, scope: !4311, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 302, column: 10, scope: !4610, inlinedAt: !4614)
!4624 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4623)
!4625 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4623)
!4626 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4623)
!4627 = !DILocation(line: 287, column: 3, scope: !4605)
!4628 = !DILocation(line: 0, scope: !4610)
!4629 = !DILocation(line: 0, scope: !4616, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 302, column: 25, scope: !4610)
!4631 = !DILocation(line: 91, column: 10, scope: !4616, inlinedAt: !4630)
!4632 = !DILocation(line: 0, scope: !4311, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 302, column: 10, scope: !4610)
!4634 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4633)
!4635 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4633)
!4636 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4633)
!4637 = !DILocation(line: 302, column: 3, scope: !4610)
!4638 = distinct !DISubprogram(name: "xmemdup", scope: !879, file: !879, line: 310, type: !4639, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!138, !1188, !140}
!4641 = !{!4642, !4643}
!4642 = !DILocalVariable(name: "p", arg: 1, scope: !4638, file: !879, line: 310, type: !1188)
!4643 = !DILocalVariable(name: "s", arg: 2, scope: !4638, file: !879, line: 310, type: !140)
!4644 = !DILocation(line: 0, scope: !4638)
!4645 = !DILocation(line: 0, scope: !4330, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 312, column: 18, scope: !4638)
!4647 = !DILocation(line: 49, column: 25, scope: !4330, inlinedAt: !4646)
!4648 = !DILocation(line: 0, scope: !4311, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 49, column: 10, scope: !4330, inlinedAt: !4646)
!4650 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4649)
!4651 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4649)
!4652 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4649)
!4653 = !DILocalVariable(name: "__dest", arg: 1, scope: !4654, file: !2438, line: 26, type: !4657)
!4654 = distinct !DISubprogram(name: "memcpy", scope: !2438, file: !2438, line: 26, type: !4655, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4658)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!138, !4657, !1187, !140}
!4657 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!4658 = !{!4653, !4659, !4660}
!4659 = !DILocalVariable(name: "__src", arg: 2, scope: !4654, file: !2438, line: 26, type: !1187)
!4660 = !DILocalVariable(name: "__len", arg: 3, scope: !4654, file: !2438, line: 26, type: !140)
!4661 = !DILocation(line: 0, scope: !4654, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 312, column: 10, scope: !4638)
!4663 = !DILocation(line: 29, column: 10, scope: !4654, inlinedAt: !4662)
!4664 = !DILocation(line: 312, column: 3, scope: !4638)
!4665 = distinct !DISubprogram(name: "ximemdup", scope: !879, file: !879, line: 316, type: !4666, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!138, !1188, !898}
!4668 = !{!4669, !4670}
!4669 = !DILocalVariable(name: "p", arg: 1, scope: !4665, file: !879, line: 316, type: !1188)
!4670 = !DILocalVariable(name: "s", arg: 2, scope: !4665, file: !879, line: 316, type: !898)
!4671 = !DILocation(line: 0, scope: !4665)
!4672 = !DILocation(line: 0, scope: !4344, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 318, column: 18, scope: !4665)
!4674 = !DILocation(line: 0, scope: !4351, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 55, column: 25, scope: !4344, inlinedAt: !4673)
!4676 = !DILocation(line: 57, column: 26, scope: !4351, inlinedAt: !4675)
!4677 = !DILocation(line: 0, scope: !4311, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 55, column: 10, scope: !4344, inlinedAt: !4673)
!4679 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4678)
!4680 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4678)
!4681 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4678)
!4682 = !DILocation(line: 0, scope: !4654, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 318, column: 10, scope: !4665)
!4684 = !DILocation(line: 29, column: 10, scope: !4654, inlinedAt: !4683)
!4685 = !DILocation(line: 318, column: 3, scope: !4665)
!4686 = distinct !DISubprogram(name: "ximemdup0", scope: !879, file: !879, line: 325, type: !4687, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4689)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!137, !1188, !898}
!4689 = !{!4690, !4691, !4692}
!4690 = !DILocalVariable(name: "p", arg: 1, scope: !4686, file: !879, line: 325, type: !1188)
!4691 = !DILocalVariable(name: "s", arg: 2, scope: !4686, file: !879, line: 325, type: !898)
!4692 = !DILocalVariable(name: "result", scope: !4686, file: !879, line: 327, type: !137)
!4693 = !DILocation(line: 0, scope: !4686)
!4694 = !DILocation(line: 327, column: 30, scope: !4686)
!4695 = !DILocation(line: 0, scope: !4344, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 327, column: 18, scope: !4686)
!4697 = !DILocation(line: 0, scope: !4351, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 55, column: 25, scope: !4344, inlinedAt: !4696)
!4699 = !DILocation(line: 57, column: 26, scope: !4351, inlinedAt: !4698)
!4700 = !DILocation(line: 0, scope: !4311, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 55, column: 10, scope: !4344, inlinedAt: !4696)
!4702 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4701)
!4703 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4701)
!4704 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4701)
!4705 = !DILocation(line: 328, column: 3, scope: !4686)
!4706 = !DILocation(line: 328, column: 13, scope: !4686)
!4707 = !DILocation(line: 0, scope: !4654, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 329, column: 10, scope: !4686)
!4709 = !DILocation(line: 29, column: 10, scope: !4654, inlinedAt: !4708)
!4710 = !DILocation(line: 329, column: 3, scope: !4686)
!4711 = distinct !DISubprogram(name: "xstrdup", scope: !879, file: !879, line: 335, type: !1166, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4712)
!4712 = !{!4713}
!4713 = !DILocalVariable(name: "string", arg: 1, scope: !4711, file: !879, line: 335, type: !143)
!4714 = !DILocation(line: 0, scope: !4711)
!4715 = !DILocation(line: 337, column: 27, scope: !4711)
!4716 = !DILocation(line: 337, column: 43, scope: !4711)
!4717 = !DILocation(line: 0, scope: !4638, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 337, column: 10, scope: !4711)
!4719 = !DILocation(line: 0, scope: !4330, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 312, column: 18, scope: !4638, inlinedAt: !4718)
!4721 = !DILocation(line: 49, column: 25, scope: !4330, inlinedAt: !4720)
!4722 = !DILocation(line: 0, scope: !4311, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 49, column: 10, scope: !4330, inlinedAt: !4720)
!4724 = !DILocation(line: 39, column: 8, scope: !4318, inlinedAt: !4723)
!4725 = !DILocation(line: 39, column: 7, scope: !4311, inlinedAt: !4723)
!4726 = !DILocation(line: 40, column: 5, scope: !4318, inlinedAt: !4723)
!4727 = !DILocation(line: 0, scope: !4654, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 312, column: 10, scope: !4638, inlinedAt: !4718)
!4729 = !DILocation(line: 29, column: 10, scope: !4654, inlinedAt: !4728)
!4730 = !DILocation(line: 337, column: 3, scope: !4711)
!4731 = distinct !DISubprogram(name: "xalloc_die", scope: !777, file: !777, line: 32, type: !484, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4732)
!4732 = !{!4733}
!4733 = !DILocalVariable(name: "__errstatus", scope: !4734, file: !777, line: 34, type: !4735)
!4734 = distinct !DILexicalBlock(scope: !4731, file: !777, line: 34, column: 3)
!4735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4736 = !DILocation(line: 34, column: 3, scope: !4734)
!4737 = !DILocation(line: 0, scope: !4734)
!4738 = !DILocation(line: 40, column: 3, scope: !4731)
!4739 = distinct !DISubprogram(name: "close_stream", scope: !916, file: !916, line: 55, type: !4740, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4776)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!80, !4742}
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4744)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4744, file: !208, line: 51, baseType: !80, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4744, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4744, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4744, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4744, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4744, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4744, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4744, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4744, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4744, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4744, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4744, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4744, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4744, file: !208, line: 70, baseType: !4760, size: 64, offset: 832)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4744, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4744, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4744, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4744, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4744, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4744, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4744, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4744, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4744, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4744, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4744, file: !208, line: 93, baseType: !4760, size: 64, offset: 1344)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4744, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4744, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4744, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4744, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4776 = !{!4777, !4778, !4780, !4781}
!4777 = !DILocalVariable(name: "stream", arg: 1, scope: !4739, file: !916, line: 55, type: !4742)
!4778 = !DILocalVariable(name: "some_pending", scope: !4739, file: !916, line: 57, type: !4779)
!4779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4780 = !DILocalVariable(name: "prev_fail", scope: !4739, file: !916, line: 58, type: !4779)
!4781 = !DILocalVariable(name: "fclose_fail", scope: !4739, file: !916, line: 59, type: !4779)
!4782 = !DILocation(line: 0, scope: !4739)
!4783 = !DILocation(line: 57, column: 30, scope: !4739)
!4784 = !DILocalVariable(name: "__stream", arg: 1, scope: !4785, file: !1553, line: 135, type: !4742)
!4785 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1553, file: !1553, line: 135, type: !4740, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !4786)
!4786 = !{!4784}
!4787 = !DILocation(line: 0, scope: !4785, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 58, column: 27, scope: !4739)
!4789 = !DILocation(line: 137, column: 10, scope: !4785, inlinedAt: !4788)
!4790 = !{!1562, !1044, i64 0}
!4791 = !DILocation(line: 58, column: 43, scope: !4739)
!4792 = !DILocation(line: 59, column: 29, scope: !4739)
!4793 = !DILocation(line: 59, column: 45, scope: !4739)
!4794 = !DILocation(line: 69, column: 17, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4739, file: !916, line: 69, column: 7)
!4796 = !DILocation(line: 57, column: 50, scope: !4739)
!4797 = !DILocation(line: 69, column: 33, scope: !4795)
!4798 = !DILocation(line: 69, column: 53, scope: !4795)
!4799 = !DILocation(line: 69, column: 59, scope: !4795)
!4800 = !DILocation(line: 69, column: 7, scope: !4739)
!4801 = !DILocation(line: 71, column: 11, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4795, file: !916, line: 70, column: 5)
!4803 = !DILocation(line: 72, column: 9, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4802, file: !916, line: 71, column: 11)
!4805 = !DILocation(line: 72, column: 15, scope: !4804)
!4806 = !DILocation(line: 77, column: 1, scope: !4739)
!4807 = !DISubprogram(name: "__fpending", scope: !4808, file: !4808, line: 75, type: !4809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4808 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!140, !4742}
!4811 = distinct !DISubprogram(name: "rpl_fclose", scope: !918, file: !918, line: 58, type: !4812, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !4848)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!80, !4814}
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4816)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4816, file: !208, line: 51, baseType: !80, size: 32)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4816, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4816, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4816, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4816, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4816, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4816, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4816, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4816, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4816, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4816, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4816, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4816, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4816, file: !208, line: 70, baseType: !4832, size: 64, offset: 832)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4816, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4816, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4816, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4816, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4816, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4816, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4816, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4816, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4816, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4816, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4816, file: !208, line: 93, baseType: !4832, size: 64, offset: 1344)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4816, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4816, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4816, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4816, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4848 = !{!4849, !4850, !4851, !4852}
!4849 = !DILocalVariable(name: "fp", arg: 1, scope: !4811, file: !918, line: 58, type: !4814)
!4850 = !DILocalVariable(name: "saved_errno", scope: !4811, file: !918, line: 60, type: !80)
!4851 = !DILocalVariable(name: "fd", scope: !4811, file: !918, line: 63, type: !80)
!4852 = !DILocalVariable(name: "result", scope: !4811, file: !918, line: 74, type: !80)
!4853 = !DILocation(line: 0, scope: !4811)
!4854 = !DILocation(line: 63, column: 12, scope: !4811)
!4855 = !DILocation(line: 64, column: 10, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4811, file: !918, line: 64, column: 7)
!4857 = !DILocation(line: 64, column: 7, scope: !4811)
!4858 = !DILocation(line: 65, column: 12, scope: !4856)
!4859 = !DILocation(line: 65, column: 5, scope: !4856)
!4860 = !DILocation(line: 70, column: 9, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4811, file: !918, line: 70, column: 7)
!4862 = !DILocation(line: 70, column: 23, scope: !4861)
!4863 = !DILocation(line: 70, column: 33, scope: !4861)
!4864 = !DILocation(line: 70, column: 26, scope: !4861)
!4865 = !DILocation(line: 70, column: 59, scope: !4861)
!4866 = !DILocation(line: 71, column: 7, scope: !4861)
!4867 = !DILocation(line: 71, column: 10, scope: !4861)
!4868 = !DILocation(line: 70, column: 7, scope: !4811)
!4869 = !DILocation(line: 100, column: 12, scope: !4811)
!4870 = !DILocation(line: 105, column: 7, scope: !4811)
!4871 = !DILocation(line: 72, column: 19, scope: !4861)
!4872 = !DILocation(line: 105, column: 19, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4811, file: !918, line: 105, column: 7)
!4874 = !DILocation(line: 107, column: 13, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4873, file: !918, line: 106, column: 5)
!4876 = !DILocation(line: 109, column: 5, scope: !4875)
!4877 = !DILocation(line: 112, column: 1, scope: !4811)
!4878 = !DISubprogram(name: "fileno", scope: !447, file: !447, line: 809, type: !4812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4879 = !DISubprogram(name: "fclose", scope: !447, file: !447, line: 178, type: !4812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4880 = !DISubprogram(name: "__freading", scope: !4808, file: !4808, line: 51, type: !4812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4881 = !DISubprogram(name: "lseek", scope: !1623, file: !1623, line: 339, type: !4882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!230, !80, !230, !80}
!4884 = distinct !DISubprogram(name: "open_safer", scope: !920, file: !920, line: 29, type: !4885, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4887)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!80, !143, !80, null}
!4887 = !{!4888, !4889, !4890, !4891}
!4888 = !DILocalVariable(name: "file", arg: 1, scope: !4884, file: !920, line: 29, type: !143)
!4889 = !DILocalVariable(name: "flags", arg: 2, scope: !4884, file: !920, line: 29, type: !80)
!4890 = !DILocalVariable(name: "mode", scope: !4884, file: !920, line: 31, type: !941)
!4891 = !DILocalVariable(name: "ap", scope: !4892, file: !920, line: 35, type: !4894)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !920, line: 34, column: 5)
!4893 = distinct !DILexicalBlock(scope: !4884, file: !920, line: 33, column: 7)
!4894 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4895, line: 12, baseType: !4896)
!4895 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !920, baseType: !4897)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4898)
!4898 = !{!4899, !4900, !4901, !4902, !4903}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4897, file: !920, line: 35, baseType: !138, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4897, file: !920, line: 35, baseType: !138, size: 64, offset: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4897, file: !920, line: 35, baseType: !138, size: 64, offset: 128)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4897, file: !920, line: 35, baseType: !80, size: 32, offset: 192)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4897, file: !920, line: 35, baseType: !80, size: 32, offset: 224)
!4904 = distinct !DIAssignID()
!4905 = !DILocation(line: 0, scope: !4892)
!4906 = !DILocation(line: 0, scope: !4884)
!4907 = !DILocation(line: 33, column: 13, scope: !4893)
!4908 = !DILocation(line: 33, column: 7, scope: !4884)
!4909 = !DILocation(line: 35, column: 7, scope: !4892)
!4910 = !DILocation(line: 36, column: 7, scope: !4892)
!4911 = !DILocation(line: 40, column: 14, scope: !4892)
!4912 = distinct !DIAssignID()
!4913 = distinct !DIAssignID()
!4914 = !DILocation(line: 42, column: 7, scope: !4892)
!4915 = !DILocation(line: 43, column: 5, scope: !4893)
!4916 = !DILocation(line: 43, column: 5, scope: !4892)
!4917 = !DILocation(line: 45, column: 20, scope: !4884)
!4918 = !DILocation(line: 45, column: 10, scope: !4884)
!4919 = !DILocation(line: 45, column: 3, scope: !4884)
!4920 = !DISubprogram(name: "open", scope: !1766, file: !1766, line: 181, type: !4885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4921 = distinct !DISubprogram(name: "rpl_fflush", scope: !922, file: !922, line: 130, type: !4922, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4958)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!80, !4924}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4926)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4927)
!4927 = !{!4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4926, file: !208, line: 51, baseType: !80, size: 32)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4926, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4926, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4926, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4926, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4926, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4926, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4926, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4926, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4926, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4926, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4926, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4926, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4926, file: !208, line: 70, baseType: !4942, size: 64, offset: 832)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4926, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4926, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4926, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4926, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4926, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4926, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4926, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4926, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4926, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4926, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4926, file: !208, line: 93, baseType: !4942, size: 64, offset: 1344)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4926, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4926, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4926, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4926, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4958 = !{!4959}
!4959 = !DILocalVariable(name: "stream", arg: 1, scope: !4921, file: !922, line: 130, type: !4924)
!4960 = !DILocation(line: 0, scope: !4921)
!4961 = !DILocation(line: 151, column: 14, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4921, file: !922, line: 151, column: 7)
!4963 = !DILocation(line: 151, column: 22, scope: !4962)
!4964 = !DILocation(line: 151, column: 27, scope: !4962)
!4965 = !DILocation(line: 151, column: 7, scope: !4921)
!4966 = !DILocation(line: 152, column: 12, scope: !4962)
!4967 = !DILocation(line: 152, column: 5, scope: !4962)
!4968 = !DILocalVariable(name: "fp", arg: 1, scope: !4969, file: !922, line: 42, type: !4924)
!4969 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !922, file: !922, line: 42, type: !4970, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4972)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{null, !4924}
!4972 = !{!4968}
!4973 = !DILocation(line: 0, scope: !4969, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 157, column: 3, scope: !4921)
!4975 = !DILocation(line: 44, column: 12, scope: !4976, inlinedAt: !4974)
!4976 = distinct !DILexicalBlock(scope: !4969, file: !922, line: 44, column: 7)
!4977 = !DILocation(line: 44, column: 19, scope: !4976, inlinedAt: !4974)
!4978 = !DILocation(line: 44, column: 7, scope: !4969, inlinedAt: !4974)
!4979 = !DILocation(line: 46, column: 5, scope: !4976, inlinedAt: !4974)
!4980 = !DILocation(line: 159, column: 10, scope: !4921)
!4981 = !DILocation(line: 159, column: 3, scope: !4921)
!4982 = !DILocation(line: 236, column: 1, scope: !4921)
!4983 = !DISubprogram(name: "fflush", scope: !447, file: !447, line: 230, type: !4922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4984 = distinct !DISubprogram(name: "rpl_fseeko", scope: !924, file: !924, line: 28, type: !4985, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !5022)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!80, !4987, !5021, !80}
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4989)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4990)
!4990 = !{!4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4989, file: !208, line: 51, baseType: !80, size: 32)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4989, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4989, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4989, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4989, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4989, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4989, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4989, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4989, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4989, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4989, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4989, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4989, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4989, file: !208, line: 70, baseType: !5005, size: 64, offset: 832)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4989, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4989, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4989, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4989, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4989, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4989, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4989, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4989, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4989, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4989, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4989, file: !208, line: 93, baseType: !5005, size: 64, offset: 1344)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4989, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4989, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4989, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4989, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!5021 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !447, line: 63, baseType: !230)
!5022 = !{!5023, !5024, !5025, !5026}
!5023 = !DILocalVariable(name: "fp", arg: 1, scope: !4984, file: !924, line: 28, type: !4987)
!5024 = !DILocalVariable(name: "offset", arg: 2, scope: !4984, file: !924, line: 28, type: !5021)
!5025 = !DILocalVariable(name: "whence", arg: 3, scope: !4984, file: !924, line: 28, type: !80)
!5026 = !DILocalVariable(name: "pos", scope: !5027, file: !924, line: 123, type: !5021)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !924, line: 119, column: 5)
!5028 = distinct !DILexicalBlock(scope: !4984, file: !924, line: 55, column: 7)
!5029 = !DILocation(line: 0, scope: !4984)
!5030 = !DILocation(line: 55, column: 12, scope: !5028)
!5031 = !{!1562, !976, i64 16}
!5032 = !DILocation(line: 55, column: 33, scope: !5028)
!5033 = !{!1562, !976, i64 8}
!5034 = !DILocation(line: 55, column: 25, scope: !5028)
!5035 = !DILocation(line: 56, column: 7, scope: !5028)
!5036 = !DILocation(line: 56, column: 15, scope: !5028)
!5037 = !DILocation(line: 56, column: 37, scope: !5028)
!5038 = !{!1562, !976, i64 32}
!5039 = !DILocation(line: 56, column: 29, scope: !5028)
!5040 = !DILocation(line: 57, column: 7, scope: !5028)
!5041 = !DILocation(line: 57, column: 15, scope: !5028)
!5042 = !{!1562, !976, i64 72}
!5043 = !DILocation(line: 57, column: 29, scope: !5028)
!5044 = !DILocation(line: 55, column: 7, scope: !4984)
!5045 = !DILocation(line: 123, column: 26, scope: !5027)
!5046 = !DILocation(line: 123, column: 19, scope: !5027)
!5047 = !DILocation(line: 0, scope: !5027)
!5048 = !DILocation(line: 124, column: 15, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5027, file: !924, line: 124, column: 11)
!5050 = !DILocation(line: 124, column: 11, scope: !5027)
!5051 = !DILocation(line: 135, column: 19, scope: !5027)
!5052 = !DILocation(line: 136, column: 12, scope: !5027)
!5053 = !DILocation(line: 136, column: 20, scope: !5027)
!5054 = !{!1562, !1563, i64 144}
!5055 = !DILocation(line: 167, column: 7, scope: !5027)
!5056 = !DILocation(line: 169, column: 10, scope: !4984)
!5057 = !DILocation(line: 169, column: 3, scope: !4984)
!5058 = !DILocation(line: 170, column: 1, scope: !4984)
!5059 = !DISubprogram(name: "fseeko", scope: !447, file: !447, line: 736, type: !5060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!80, !4987, !230, !80}
!5062 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !784, file: !784, line: 100, type: !5063, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !5066)
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!140, !2456, !143, !140, !5065}
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!5066 = !{!5067, !5068, !5069, !5070, !5071}
!5067 = !DILocalVariable(name: "pwc", arg: 1, scope: !5062, file: !784, line: 100, type: !2456)
!5068 = !DILocalVariable(name: "s", arg: 2, scope: !5062, file: !784, line: 100, type: !143)
!5069 = !DILocalVariable(name: "n", arg: 3, scope: !5062, file: !784, line: 100, type: !140)
!5070 = !DILocalVariable(name: "ps", arg: 4, scope: !5062, file: !784, line: 100, type: !5065)
!5071 = !DILocalVariable(name: "ret", scope: !5062, file: !784, line: 130, type: !140)
!5072 = !DILocation(line: 0, scope: !5062)
!5073 = !DILocation(line: 105, column: 9, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5062, file: !784, line: 105, column: 7)
!5075 = !DILocation(line: 105, column: 7, scope: !5062)
!5076 = !DILocation(line: 117, column: 10, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5062, file: !784, line: 117, column: 7)
!5078 = !DILocation(line: 117, column: 7, scope: !5062)
!5079 = !DILocation(line: 130, column: 16, scope: !5062)
!5080 = !DILocation(line: 135, column: 11, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5062, file: !784, line: 135, column: 7)
!5082 = !DILocation(line: 135, column: 25, scope: !5081)
!5083 = !DILocation(line: 135, column: 30, scope: !5081)
!5084 = !DILocation(line: 135, column: 7, scope: !5062)
!5085 = !DILocalVariable(name: "ps", arg: 1, scope: !5086, file: !2429, line: 1135, type: !5065)
!5086 = distinct !DISubprogram(name: "mbszero", scope: !2429, file: !2429, line: 1135, type: !5087, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !5089)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !5065}
!5089 = !{!5085}
!5090 = !DILocation(line: 0, scope: !5086, inlinedAt: !5091)
!5091 = distinct !DILocation(line: 137, column: 5, scope: !5081)
!5092 = !DILocalVariable(name: "__dest", arg: 1, scope: !5093, file: !2438, line: 57, type: !138)
!5093 = distinct !DISubprogram(name: "memset", scope: !2438, file: !2438, line: 57, type: !2439, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !5094)
!5094 = !{!5092, !5095, !5096}
!5095 = !DILocalVariable(name: "__ch", arg: 2, scope: !5093, file: !2438, line: 57, type: !80)
!5096 = !DILocalVariable(name: "__len", arg: 3, scope: !5093, file: !2438, line: 57, type: !140)
!5097 = !DILocation(line: 0, scope: !5093, inlinedAt: !5098)
!5098 = distinct !DILocation(line: 1137, column: 3, scope: !5086, inlinedAt: !5091)
!5099 = !DILocation(line: 59, column: 10, scope: !5093, inlinedAt: !5098)
!5100 = !DILocation(line: 137, column: 5, scope: !5081)
!5101 = !DILocation(line: 138, column: 11, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5062, file: !784, line: 138, column: 7)
!5103 = !DILocation(line: 138, column: 7, scope: !5062)
!5104 = !DILocation(line: 139, column: 5, scope: !5102)
!5105 = !DILocation(line: 143, column: 26, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5062, file: !784, line: 143, column: 7)
!5107 = !DILocation(line: 143, column: 41, scope: !5106)
!5108 = !DILocation(line: 143, column: 7, scope: !5062)
!5109 = !DILocation(line: 145, column: 15, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5111, file: !784, line: 145, column: 11)
!5111 = distinct !DILexicalBlock(scope: !5106, file: !784, line: 144, column: 5)
!5112 = !DILocation(line: 145, column: 11, scope: !5111)
!5113 = !DILocation(line: 146, column: 32, scope: !5110)
!5114 = !DILocation(line: 146, column: 16, scope: !5110)
!5115 = !DILocation(line: 146, column: 14, scope: !5110)
!5116 = !DILocation(line: 146, column: 9, scope: !5110)
!5117 = !DILocation(line: 286, column: 1, scope: !5062)
!5118 = !DISubprogram(name: "mbsinit", scope: !5119, file: !5119, line: 293, type: !5120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5119 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!80, !5122}
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!5124 = distinct !DISubprogram(name: "mkancesdirs", scope: !926, file: !926, line: 65, type: !5125, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5128)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!900, !137, !5127, !1204, !138}
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!5128 = !{!5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5144, !5145}
!5129 = !DILocalVariable(name: "file", arg: 1, scope: !5124, file: !926, line: 65, type: !137)
!5130 = !DILocalVariable(name: "wd", arg: 2, scope: !5124, file: !926, line: 65, type: !5127)
!5131 = !DILocalVariable(name: "make_dir", arg: 3, scope: !5124, file: !926, line: 66, type: !1204)
!5132 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !5124, file: !926, line: 67, type: !138)
!5133 = !DILocalVariable(name: "sep", scope: !5124, file: !926, line: 72, type: !137)
!5134 = !DILocalVariable(name: "component", scope: !5124, file: !926, line: 76, type: !137)
!5135 = !DILocalVariable(name: "p", scope: !5124, file: !926, line: 78, type: !137)
!5136 = !DILocalVariable(name: "c", scope: !5124, file: !926, line: 79, type: !4)
!5137 = !DILocalVariable(name: "made_dir", scope: !5124, file: !926, line: 80, type: !191)
!5138 = !DILocalVariable(name: "make_dir_errno", scope: !5139, file: !926, line: 106, type: !80)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !926, line: 99, column: 11)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !926, line: 98, column: 13)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !926, line: 95, column: 7)
!5142 = distinct !DILexicalBlock(scope: !5143, file: !926, line: 94, column: 14)
!5143 = distinct !DILexicalBlock(scope: !5124, file: !926, line: 89, column: 9)
!5144 = !DILocalVariable(name: "savewd_chdir_options", scope: !5139, file: !926, line: 115, type: !80)
!5145 = !DILocalVariable(name: "chdir_result", scope: !5139, file: !926, line: 119, type: !80)
!5146 = !DILocation(line: 0, scope: !5124)
!5147 = !DILocation(line: 88, column: 15, scope: !5124)
!5148 = !DILocation(line: 88, column: 3, scope: !5124)
!5149 = !DILocation(line: 88, column: 17, scope: !5124)
!5150 = !DILocation(line: 89, column: 9, scope: !5143)
!5151 = !DILocation(line: 0, scope: !5143)
!5152 = !DILocation(line: 89, column: 9, scope: !5124)
!5153 = !DILocation(line: 91, column: 13, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5143, file: !926, line: 90, column: 7)
!5155 = !DILocation(line: 94, column: 26, scope: !5142)
!5156 = !DILocation(line: 94, column: 29, scope: !5142)
!5157 = !DILocation(line: 94, column: 32, scope: !5142)
!5158 = !DILocation(line: 98, column: 20, scope: !5140)
!5159 = !DILocation(line: 98, column: 32, scope: !5140)
!5160 = !DILocation(line: 98, column: 37, scope: !5140)
!5161 = !DILocation(line: 98, column: 40, scope: !5140)
!5162 = !DILocation(line: 98, column: 53, scope: !5140)
!5163 = !DILocation(line: 98, column: 13, scope: !5141)
!5164 = !DILocation(line: 102, column: 18, scope: !5139)
!5165 = !DILocation(line: 0, scope: !5139)
!5166 = !DILocation(line: 108, column: 17, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5139, file: !926, line: 107, column: 17)
!5168 = !DILocation(line: 107, column: 33, scope: !5167)
!5169 = !DILocation(line: 108, column: 20, scope: !5167)
!5170 = !DILocation(line: 108, column: 33, scope: !5167)
!5171 = !DILocation(line: 108, column: 40, scope: !5167)
!5172 = !DILocation(line: 108, column: 43, scope: !5167)
!5173 = !DILocation(line: 108, column: 56, scope: !5167)
!5174 = !DILocation(line: 107, column: 17, scope: !5139)
!5175 = !DILocation(line: 110, column: 22, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5167, file: !926, line: 110, column: 22)
!5177 = !DILocation(line: 110, column: 63, scope: !5176)
!5178 = !DILocation(line: 110, column: 22, scope: !5167)
!5179 = !DILocation(line: 111, column: 32, scope: !5176)
!5180 = !DILocation(line: 116, column: 17, scope: !5139)
!5181 = !DILocation(line: 120, column: 15, scope: !5139)
!5182 = !DILocation(line: 124, column: 30, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5139, file: !926, line: 124, column: 17)
!5184 = !DILocation(line: 124, column: 17, scope: !5139)
!5185 = !DILocation(line: 125, column: 20, scope: !5183)
!5186 = !DILocation(line: 127, column: 30, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5139, file: !926, line: 127, column: 17)
!5188 = !DILocation(line: 127, column: 17, scope: !5139)
!5189 = !DILocation(line: 129, column: 36, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !926, line: 129, column: 21)
!5191 = distinct !DILexicalBlock(scope: !5187, file: !926, line: 128, column: 15)
!5192 = !DILocation(line: 129, column: 41, scope: !5190)
!5193 = !DILocation(line: 129, column: 44, scope: !5190)
!5194 = !DILocation(line: 129, column: 50, scope: !5190)
!5195 = !DILocation(line: 129, column: 21, scope: !5191)
!5196 = !DILocation(line: 130, column: 25, scope: !5190)
!5197 = !DILocation(line: 130, column: 19, scope: !5190)
!5198 = !DILocation(line: 131, column: 24, scope: !5191)
!5199 = distinct !{!5199, !5148, !5200, !1090}
!5200 = !DILocation(line: 136, column: 7, scope: !5124)
!5201 = !DILocation(line: 138, column: 20, scope: !5124)
!5202 = !DILocation(line: 76, column: 9, scope: !5124)
!5203 = !DILocation(line: 138, column: 3, scope: !5124)
!5204 = !DILocation(line: 139, column: 1, scope: !5124)
!5205 = distinct !DISubprogram(name: "dirchownmod", scope: !939, file: !939, line: 67, type: !5206, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !5208)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!80, !80, !143, !941, !146, !148, !941, !941}
!5208 = !{!5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5239, !5240, !5243, !5246, !5249}
!5209 = !DILocalVariable(name: "fd", arg: 1, scope: !5205, file: !939, line: 67, type: !80)
!5210 = !DILocalVariable(name: "dir", arg: 2, scope: !5205, file: !939, line: 67, type: !143)
!5211 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !5205, file: !939, line: 67, type: !941)
!5212 = !DILocalVariable(name: "owner", arg: 4, scope: !5205, file: !939, line: 68, type: !146)
!5213 = !DILocalVariable(name: "group", arg: 5, scope: !5205, file: !939, line: 68, type: !148)
!5214 = !DILocalVariable(name: "mode", arg: 6, scope: !5205, file: !939, line: 69, type: !941)
!5215 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !5205, file: !939, line: 69, type: !941)
!5216 = !DILocalVariable(name: "st", scope: !5205, file: !939, line: 71, type: !5217)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1872, line: 44, size: 1024, elements: !5218)
!5218 = !{!5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5236, !5237, !5238}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5217, file: !1872, line: 46, baseType: !1875, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5217, file: !1872, line: 47, baseType: !1877, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5217, file: !1872, line: 48, baseType: !942, size: 32, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5217, file: !1872, line: 49, baseType: !1880, size: 32, offset: 160)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5217, file: !1872, line: 50, baseType: !147, size: 32, offset: 192)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5217, file: !1872, line: 51, baseType: !149, size: 32, offset: 224)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5217, file: !1872, line: 52, baseType: !1875, size: 64, offset: 256)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5217, file: !1872, line: 53, baseType: !1875, size: 64, offset: 320)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5217, file: !1872, line: 54, baseType: !230, size: 64, offset: 384)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5217, file: !1872, line: 55, baseType: !1887, size: 32, offset: 448)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5217, file: !1872, line: 56, baseType: !80, size: 32, offset: 480)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5217, file: !1872, line: 57, baseType: !1890, size: 64, offset: 512)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5217, file: !1872, line: 65, baseType: !5232, size: 128, offset: 576)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1893, line: 11, size: 128, elements: !5233)
!5233 = !{!5234, !5235}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5232, file: !1893, line: 16, baseType: !1896, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5232, file: !1893, line: 21, baseType: !1898, size: 64, offset: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5217, file: !1872, line: 66, baseType: !5232, size: 128, offset: 704)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5217, file: !1872, line: 67, baseType: !5232, size: 128, offset: 832)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5217, file: !1872, line: 79, baseType: !1902, size: 64, offset: 960)
!5239 = !DILocalVariable(name: "result", scope: !5205, file: !939, line: 72, type: !80)
!5240 = !DILocalVariable(name: "dir_mode", scope: !5241, file: !939, line: 76, type: !941)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !939, line: 75, column: 5)
!5242 = distinct !DILexicalBlock(scope: !5205, file: !939, line: 74, column: 7)
!5243 = !DILocalVariable(name: "indeterminate", scope: !5244, file: !939, line: 93, type: !941)
!5244 = distinct !DILexicalBlock(scope: !5245, file: !939, line: 88, column: 9)
!5245 = distinct !DILexicalBlock(scope: !5241, file: !939, line: 82, column: 11)
!5246 = !DILocalVariable(name: "chmod_mode", scope: !5247, file: !939, line: 123, type: !941)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !939, line: 122, column: 13)
!5248 = distinct !DILexicalBlock(scope: !5244, file: !939, line: 121, column: 15)
!5249 = !DILocalVariable(name: "saved_errno", scope: !5250, file: !939, line: 140, type: !80)
!5250 = distinct !DILexicalBlock(scope: !5251, file: !939, line: 139, column: 9)
!5251 = distinct !DILexicalBlock(scope: !5252, file: !939, line: 136, column: 11)
!5252 = distinct !DILexicalBlock(scope: !5253, file: !939, line: 135, column: 5)
!5253 = distinct !DILexicalBlock(scope: !5205, file: !939, line: 134, column: 7)
!5254 = distinct !DIAssignID()
!5255 = !DILocation(line: 0, scope: !5205)
!5256 = !DILocation(line: 71, column: 3, scope: !5205)
!5257 = !DILocation(line: 72, column: 20, scope: !5205)
!5258 = !DILocation(line: 72, column: 17, scope: !5205)
!5259 = !DILocation(line: 72, column: 26, scope: !5205)
!5260 = !DILocation(line: 72, column: 44, scope: !5205)
!5261 = !DILocation(line: 74, column: 14, scope: !5242)
!5262 = !DILocation(line: 74, column: 7, scope: !5205)
!5263 = !DILocation(line: 76, column: 28, scope: !5241)
!5264 = !DILocation(line: 0, scope: !5241)
!5265 = !DILocation(line: 82, column: 13, scope: !5245)
!5266 = !DILocation(line: 82, column: 11, scope: !5241)
!5267 = !DILocation(line: 84, column: 11, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5245, file: !939, line: 83, column: 9)
!5269 = !DILocation(line: 84, column: 17, scope: !5268)
!5270 = !DILocation(line: 86, column: 9, scope: !5268)
!5271 = !DILocation(line: 0, scope: !5244)
!5272 = !DILocation(line: 100, column: 22, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5244, file: !939, line: 100, column: 15)
!5274 = !DILocation(line: 100, column: 36, scope: !5273)
!5275 = !DILocation(line: 101, column: 25, scope: !5273)
!5276 = !DILocation(line: 101, column: 39, scope: !5273)
!5277 = !DILocation(line: 103, column: 42, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5273, file: !939, line: 102, column: 13)
!5279 = !DILocation(line: 103, column: 25, scope: !5278)
!5280 = !DILocation(line: 104, column: 27, scope: !5278)
!5281 = !DILocation(line: 105, column: 38, scope: !5278)
!5282 = !DILocation(line: 105, column: 27, scope: !5278)
!5283 = !DILocation(line: 106, column: 27, scope: !5278)
!5284 = !DILocation(line: 107, column: 27, scope: !5278)
!5285 = !DILocation(line: 114, column: 26, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5278, file: !939, line: 114, column: 19)
!5287 = !DILocation(line: 114, column: 31, scope: !5286)
!5288 = !DILocation(line: 114, column: 44, scope: !5286)
!5289 = !DILocation(line: 114, column: 19, scope: !5278)
!5290 = !DILocation(line: 121, column: 42, scope: !5248)
!5291 = !DILocation(line: 121, column: 50, scope: !5248)
!5292 = !DILocation(line: 121, column: 67, scope: !5248)
!5293 = !DILocation(line: 121, column: 15, scope: !5244)
!5294 = !DILocation(line: 124, column: 34, scope: !5247)
!5295 = !DILocation(line: 124, column: 52, scope: !5247)
!5296 = !DILocation(line: 124, column: 22, scope: !5247)
!5297 = !DILocation(line: 0, scope: !5247)
!5298 = !DILocation(line: 125, column: 42, scope: !5247)
!5299 = !DILocation(line: 125, column: 25, scope: !5247)
!5300 = !DILocation(line: 126, column: 27, scope: !5247)
!5301 = !DILocation(line: 134, column: 7, scope: !5205)
!5302 = !DILocation(line: 127, column: 38, scope: !5247)
!5303 = !DILocation(line: 127, column: 27, scope: !5247)
!5304 = !DILocation(line: 128, column: 27, scope: !5247)
!5305 = !DILocation(line: 129, column: 27, scope: !5247)
!5306 = !DILocation(line: 134, column: 9, scope: !5253)
!5307 = !DILocation(line: 136, column: 18, scope: !5251)
!5308 = !DILocation(line: 136, column: 11, scope: !5252)
!5309 = !DILocation(line: 137, column: 18, scope: !5251)
!5310 = !DILocation(line: 137, column: 9, scope: !5251)
!5311 = !DILocation(line: 140, column: 29, scope: !5250)
!5312 = !DILocation(line: 0, scope: !5250)
!5313 = !DILocation(line: 141, column: 11, scope: !5250)
!5314 = !DILocation(line: 142, column: 17, scope: !5250)
!5315 = !DILocation(line: 147, column: 1, scope: !5205)
!5316 = !DILocation(line: 146, column: 3, scope: !5205)
!5317 = !DISubprogram(name: "fstat", scope: !1406, file: !1406, line: 210, type: !5318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!80, !80, !5320}
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5321 = !DISubprogram(name: "fchown", scope: !1623, file: !1623, line: 498, type: !5322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!80, !80, !147, !149}
!5324 = !DISubprogram(name: "lchown", scope: !1623, file: !1623, line: 503, type: !5325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!80, !143, !147, !149}
!5327 = !DISubprogram(name: "chown", scope: !1623, file: !1623, line: 493, type: !5325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5328 = !DISubprogram(name: "fchmod", scope: !1406, file: !1406, line: 365, type: !5329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!80, !80, !942}
!5331 = !DISubprogram(name: "lchmod", scope: !1406, file: !1406, line: 359, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5332 = !DISubprogram(name: "chmod", scope: !1406, file: !1406, line: 352, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5333 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !944, file: !944, line: 27, type: !4295, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !5334)
!5334 = !{!5335, !5336, !5337, !5338}
!5335 = !DILocalVariable(name: "ptr", arg: 1, scope: !5333, file: !944, line: 27, type: !138)
!5336 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5333, file: !944, line: 27, type: !140)
!5337 = !DILocalVariable(name: "size", arg: 3, scope: !5333, file: !944, line: 27, type: !140)
!5338 = !DILocalVariable(name: "nbytes", scope: !5333, file: !944, line: 29, type: !140)
!5339 = !DILocation(line: 0, scope: !5333)
!5340 = !DILocation(line: 30, column: 7, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5333, file: !944, line: 30, column: 7)
!5342 = !DILocation(line: 30, column: 7, scope: !5333)
!5343 = !DILocation(line: 32, column: 7, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5341, file: !944, line: 31, column: 5)
!5345 = !DILocation(line: 32, column: 13, scope: !5344)
!5346 = !DILocation(line: 33, column: 7, scope: !5344)
!5347 = !DILocalVariable(name: "ptr", arg: 1, scope: !5348, file: !4387, line: 2057, type: !138)
!5348 = distinct !DISubprogram(name: "rpl_realloc", scope: !4387, file: !4387, line: 2057, type: !4379, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !5349)
!5349 = !{!5347, !5350}
!5350 = !DILocalVariable(name: "size", arg: 2, scope: !5348, file: !4387, line: 2057, type: !140)
!5351 = !DILocation(line: 0, scope: !5348, inlinedAt: !5352)
!5352 = distinct !DILocation(line: 37, column: 10, scope: !5333)
!5353 = !DILocation(line: 2059, column: 24, scope: !5348, inlinedAt: !5352)
!5354 = !DILocation(line: 2059, column: 10, scope: !5348, inlinedAt: !5352)
!5355 = !DILocation(line: 37, column: 3, scope: !5333)
!5356 = !DILocation(line: 38, column: 1, scope: !5333)
!5357 = distinct !DISubprogram(name: "fd_safer", scope: !946, file: !946, line: 37, type: !1649, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !5358)
!5358 = !{!5359, !5360, !5363}
!5359 = !DILocalVariable(name: "fd", arg: 1, scope: !5357, file: !946, line: 37, type: !80)
!5360 = !DILocalVariable(name: "f", scope: !5361, file: !946, line: 41, type: !80)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !946, line: 40, column: 5)
!5362 = distinct !DILexicalBlock(scope: !5357, file: !946, line: 39, column: 7)
!5363 = !DILocalVariable(name: "saved_errno", scope: !5361, file: !946, line: 42, type: !80)
!5364 = !DILocation(line: 0, scope: !5357)
!5365 = !DILocation(line: 39, column: 26, scope: !5362)
!5366 = !DILocation(line: 41, column: 15, scope: !5361)
!5367 = !DILocation(line: 0, scope: !5361)
!5368 = !DILocation(line: 42, column: 25, scope: !5361)
!5369 = !DILocation(line: 43, column: 7, scope: !5361)
!5370 = !DILocation(line: 44, column: 13, scope: !5361)
!5371 = !DILocation(line: 46, column: 5, scope: !5361)
!5372 = !DILocation(line: 48, column: 3, scope: !5357)
!5373 = distinct !DISubprogram(name: "hard_locale", scope: !802, file: !802, line: 28, type: !5374, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !947, retainedNodes: !5376)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{!191, !80}
!5376 = !{!5377, !5378}
!5377 = !DILocalVariable(name: "category", arg: 1, scope: !5373, file: !802, line: 28, type: !80)
!5378 = !DILocalVariable(name: "locale", scope: !5373, file: !802, line: 30, type: !5379)
!5379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5380)
!5380 = !{!5381}
!5381 = !DISubrange(count: 257)
!5382 = distinct !DIAssignID()
!5383 = !DILocation(line: 0, scope: !5373)
!5384 = !DILocation(line: 30, column: 3, scope: !5373)
!5385 = !DILocation(line: 32, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5373, file: !802, line: 32, column: 7)
!5387 = !DILocation(line: 32, column: 7, scope: !5373)
!5388 = !DILocalVariable(name: "__s1", arg: 1, scope: !5389, file: !1056, line: 1359, type: !143)
!5389 = distinct !DISubprogram(name: "streq", scope: !1056, file: !1056, line: 1359, type: !1057, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !947, retainedNodes: !5390)
!5390 = !{!5388, !5391}
!5391 = !DILocalVariable(name: "__s2", arg: 2, scope: !5389, file: !1056, line: 1359, type: !143)
!5392 = !DILocation(line: 0, scope: !5389, inlinedAt: !5393)
!5393 = distinct !DILocation(line: 35, column: 9, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5373, file: !802, line: 35, column: 7)
!5395 = !DILocation(line: 1361, column: 11, scope: !5389, inlinedAt: !5393)
!5396 = !DILocation(line: 1361, column: 10, scope: !5389, inlinedAt: !5393)
!5397 = !DILocation(line: 35, column: 29, scope: !5394)
!5398 = !DILocation(line: 0, scope: !5389, inlinedAt: !5399)
!5399 = distinct !DILocation(line: 35, column: 32, scope: !5394)
!5400 = !DILocation(line: 1361, column: 11, scope: !5389, inlinedAt: !5399)
!5401 = !DILocation(line: 1361, column: 10, scope: !5389, inlinedAt: !5399)
!5402 = !DILocation(line: 35, column: 7, scope: !5373)
!5403 = !DILocation(line: 46, column: 3, scope: !5373)
!5404 = !DILocation(line: 47, column: 1, scope: !5373)
!5405 = distinct !DISubprogram(name: "setlocale_null_r", scope: !950, file: !950, line: 154, type: !5406, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !949, retainedNodes: !5408)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!80, !80, !137, !140}
!5408 = !{!5409, !5410, !5411}
!5409 = !DILocalVariable(name: "category", arg: 1, scope: !5405, file: !950, line: 154, type: !80)
!5410 = !DILocalVariable(name: "buf", arg: 2, scope: !5405, file: !950, line: 154, type: !137)
!5411 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5405, file: !950, line: 154, type: !140)
!5412 = !DILocation(line: 0, scope: !5405)
!5413 = !DILocation(line: 159, column: 10, scope: !5405)
!5414 = !DILocation(line: 159, column: 3, scope: !5405)
!5415 = distinct !DISubprogram(name: "setlocale_null", scope: !950, file: !950, line: 186, type: !5416, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !949, retainedNodes: !5418)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!143, !80}
!5418 = !{!5419}
!5419 = !DILocalVariable(name: "category", arg: 1, scope: !5415, file: !950, line: 186, type: !80)
!5420 = !DILocation(line: 0, scope: !5415)
!5421 = !DILocation(line: 189, column: 10, scope: !5415)
!5422 = !DILocation(line: 189, column: 3, scope: !5415)
!5423 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !952, file: !952, line: 35, type: !5416, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !5424)
!5424 = !{!5425, !5426}
!5425 = !DILocalVariable(name: "category", arg: 1, scope: !5423, file: !952, line: 35, type: !80)
!5426 = !DILocalVariable(name: "result", scope: !5423, file: !952, line: 37, type: !143)
!5427 = !DILocation(line: 0, scope: !5423)
!5428 = !DILocation(line: 37, column: 24, scope: !5423)
!5429 = !DILocation(line: 62, column: 3, scope: !5423)
!5430 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !952, file: !952, line: 66, type: !5406, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !5431)
!5431 = !{!5432, !5433, !5434, !5435, !5436}
!5432 = !DILocalVariable(name: "category", arg: 1, scope: !5430, file: !952, line: 66, type: !80)
!5433 = !DILocalVariable(name: "buf", arg: 2, scope: !5430, file: !952, line: 66, type: !137)
!5434 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5430, file: !952, line: 66, type: !140)
!5435 = !DILocalVariable(name: "result", scope: !5430, file: !952, line: 111, type: !143)
!5436 = !DILocalVariable(name: "length", scope: !5437, file: !952, line: 125, type: !140)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !952, line: 124, column: 5)
!5438 = distinct !DILexicalBlock(scope: !5430, file: !952, line: 113, column: 7)
!5439 = !DILocation(line: 0, scope: !5430)
!5440 = !DILocation(line: 0, scope: !5423, inlinedAt: !5441)
!5441 = distinct !DILocation(line: 111, column: 24, scope: !5430)
!5442 = !DILocation(line: 37, column: 24, scope: !5423, inlinedAt: !5441)
!5443 = !DILocation(line: 113, column: 14, scope: !5438)
!5444 = !DILocation(line: 113, column: 7, scope: !5430)
!5445 = !DILocation(line: 116, column: 19, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5447, file: !952, line: 116, column: 11)
!5447 = distinct !DILexicalBlock(scope: !5438, file: !952, line: 114, column: 5)
!5448 = !DILocation(line: 116, column: 11, scope: !5447)
!5449 = !DILocation(line: 120, column: 16, scope: !5446)
!5450 = !DILocation(line: 120, column: 9, scope: !5446)
!5451 = !DILocation(line: 125, column: 23, scope: !5437)
!5452 = !DILocation(line: 0, scope: !5437)
!5453 = !DILocation(line: 126, column: 18, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5437, file: !952, line: 126, column: 11)
!5455 = !DILocation(line: 126, column: 11, scope: !5437)
!5456 = !DILocation(line: 128, column: 39, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5454, file: !952, line: 127, column: 9)
!5458 = !DILocalVariable(name: "__dest", arg: 1, scope: !5459, file: !2438, line: 26, type: !4657)
!5459 = distinct !DISubprogram(name: "memcpy", scope: !2438, file: !2438, line: 26, type: !4655, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !5460)
!5460 = !{!5458, !5461, !5462}
!5461 = !DILocalVariable(name: "__src", arg: 2, scope: !5459, file: !2438, line: 26, type: !1187)
!5462 = !DILocalVariable(name: "__len", arg: 3, scope: !5459, file: !2438, line: 26, type: !140)
!5463 = !DILocation(line: 0, scope: !5459, inlinedAt: !5464)
!5464 = distinct !DILocation(line: 128, column: 11, scope: !5457)
!5465 = !DILocation(line: 29, column: 10, scope: !5459, inlinedAt: !5464)
!5466 = !DILocation(line: 129, column: 11, scope: !5457)
!5467 = !DILocation(line: 133, column: 23, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5469, file: !952, line: 133, column: 15)
!5469 = distinct !DILexicalBlock(scope: !5454, file: !952, line: 132, column: 9)
!5470 = !DILocation(line: 133, column: 15, scope: !5469)
!5471 = !DILocation(line: 138, column: 44, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5468, file: !952, line: 134, column: 13)
!5473 = !DILocation(line: 0, scope: !5459, inlinedAt: !5474)
!5474 = distinct !DILocation(line: 138, column: 15, scope: !5472)
!5475 = !DILocation(line: 29, column: 10, scope: !5459, inlinedAt: !5474)
!5476 = !DILocation(line: 139, column: 15, scope: !5472)
!5477 = !DILocation(line: 139, column: 32, scope: !5472)
!5478 = !DILocation(line: 140, column: 13, scope: !5472)
!5479 = !DILocation(line: 0, scope: !5438)
!5480 = !DILocation(line: 145, column: 1, scope: !5430)
!5481 = distinct !DISubprogram(name: "dup_safer", scope: !954, file: !954, line: 31, type: !1649, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !5482)
!5482 = !{!5483}
!5483 = !DILocalVariable(name: "fd", arg: 1, scope: !5481, file: !954, line: 31, type: !80)
!5484 = !DILocation(line: 0, scope: !5481)
!5485 = !DILocation(line: 33, column: 10, scope: !5481)
!5486 = !DILocation(line: 33, column: 3, scope: !5481)
!5487 = distinct !DISubprogram(name: "rpl_fcntl", scope: !808, file: !808, line: 202, type: !1767, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !5488)
!5488 = !{!5489, !5490, !5491, !5501, !5502, !5505, !5507, !5511}
!5489 = !DILocalVariable(name: "fd", arg: 1, scope: !5487, file: !808, line: 202, type: !80)
!5490 = !DILocalVariable(name: "action", arg: 2, scope: !5487, file: !808, line: 202, type: !80)
!5491 = !DILocalVariable(name: "arg", scope: !5487, file: !808, line: 208, type: !5492)
!5492 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4895, line: 12, baseType: !5493)
!5493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !808, baseType: !5494)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !5495)
!5495 = !{!5496, !5497, !5498, !5499, !5500}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !5494, file: !808, line: 208, baseType: !138, size: 64)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !5494, file: !808, line: 208, baseType: !138, size: 64, offset: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !5494, file: !808, line: 208, baseType: !138, size: 64, offset: 128)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !5494, file: !808, line: 208, baseType: !80, size: 32, offset: 192)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !5494, file: !808, line: 208, baseType: !80, size: 32, offset: 224)
!5501 = !DILocalVariable(name: "result", scope: !5487, file: !808, line: 211, type: !80)
!5502 = !DILocalVariable(name: "target", scope: !5503, file: !808, line: 216, type: !80)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !808, line: 215, column: 7)
!5504 = distinct !DILexicalBlock(scope: !5487, file: !808, line: 213, column: 5)
!5505 = !DILocalVariable(name: "target", scope: !5506, file: !808, line: 223, type: !80)
!5506 = distinct !DILexicalBlock(scope: !5504, file: !808, line: 222, column: 7)
!5507 = !DILocalVariable(name: "x", scope: !5508, file: !808, line: 418, type: !80)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !808, line: 417, column: 13)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !808, line: 261, column: 11)
!5510 = distinct !DILexicalBlock(scope: !5504, file: !808, line: 258, column: 7)
!5511 = !DILocalVariable(name: "p", scope: !5512, file: !808, line: 426, type: !138)
!5512 = distinct !DILexicalBlock(scope: !5509, file: !808, line: 425, column: 13)
!5513 = distinct !DIAssignID()
!5514 = !DILocation(line: 0, scope: !5487)
!5515 = !DILocation(line: 208, column: 3, scope: !5487)
!5516 = !DILocation(line: 209, column: 3, scope: !5487)
!5517 = !DILocation(line: 212, column: 3, scope: !5487)
!5518 = !DILocation(line: 216, column: 22, scope: !5503)
!5519 = distinct !DIAssignID()
!5520 = distinct !DIAssignID()
!5521 = !DILocation(line: 0, scope: !5503)
!5522 = !DILocalVariable(name: "fd", arg: 1, scope: !5523, file: !808, line: 444, type: !80)
!5523 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !808, file: !808, line: 444, type: !809, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !5524)
!5524 = !{!5522, !5525, !5526}
!5525 = !DILocalVariable(name: "target", arg: 2, scope: !5523, file: !808, line: 444, type: !80)
!5526 = !DILocalVariable(name: "result", scope: !5523, file: !808, line: 446, type: !80)
!5527 = !DILocation(line: 0, scope: !5523, inlinedAt: !5528)
!5528 = distinct !DILocation(line: 217, column: 18, scope: !5503)
!5529 = !DILocation(line: 479, column: 12, scope: !5523, inlinedAt: !5528)
!5530 = !DILocation(line: 223, column: 22, scope: !5506)
!5531 = distinct !DIAssignID()
!5532 = distinct !DIAssignID()
!5533 = !DILocation(line: 0, scope: !5506)
!5534 = !DILocation(line: 0, scope: !807, inlinedAt: !5535)
!5535 = distinct !DILocation(line: 224, column: 18, scope: !5506)
!5536 = !DILocation(line: 507, column: 12, scope: !5537, inlinedAt: !5535)
!5537 = distinct !DILexicalBlock(scope: !807, file: !808, line: 507, column: 7)
!5538 = !DILocation(line: 507, column: 9, scope: !5537, inlinedAt: !5535)
!5539 = !DILocation(line: 507, column: 7, scope: !807, inlinedAt: !5535)
!5540 = !DILocation(line: 509, column: 16, scope: !5541, inlinedAt: !5535)
!5541 = distinct !DILexicalBlock(scope: !5537, file: !808, line: 508, column: 5)
!5542 = !DILocation(line: 510, column: 13, scope: !5543, inlinedAt: !5535)
!5543 = distinct !DILexicalBlock(scope: !5541, file: !808, line: 510, column: 11)
!5544 = !DILocation(line: 510, column: 23, scope: !5543, inlinedAt: !5535)
!5545 = !DILocation(line: 510, column: 26, scope: !5543, inlinedAt: !5535)
!5546 = !DILocation(line: 510, column: 32, scope: !5543, inlinedAt: !5535)
!5547 = !DILocation(line: 510, column: 11, scope: !5541, inlinedAt: !5535)
!5548 = !DILocation(line: 512, column: 30, scope: !5549, inlinedAt: !5535)
!5549 = distinct !DILexicalBlock(scope: !5543, file: !808, line: 511, column: 9)
!5550 = !DILocation(line: 528, column: 19, scope: !819, inlinedAt: !5535)
!5551 = !DILocation(line: 0, scope: !5523, inlinedAt: !5552)
!5552 = distinct !DILocation(line: 520, column: 20, scope: !5553, inlinedAt: !5535)
!5553 = distinct !DILexicalBlock(scope: !5543, file: !808, line: 519, column: 9)
!5554 = !DILocation(line: 479, column: 12, scope: !5523, inlinedAt: !5552)
!5555 = !DILocation(line: 521, column: 22, scope: !5556, inlinedAt: !5535)
!5556 = distinct !DILexicalBlock(scope: !5553, file: !808, line: 521, column: 15)
!5557 = !DILocation(line: 521, column: 15, scope: !5553, inlinedAt: !5535)
!5558 = !DILocation(line: 522, column: 32, scope: !5556, inlinedAt: !5535)
!5559 = !DILocation(line: 522, column: 13, scope: !5556, inlinedAt: !5535)
!5560 = !DILocation(line: 0, scope: !5523, inlinedAt: !5561)
!5561 = distinct !DILocation(line: 527, column: 14, scope: !5537, inlinedAt: !5535)
!5562 = !DILocation(line: 479, column: 12, scope: !5523, inlinedAt: !5561)
!5563 = !DILocation(line: 0, scope: !5537, inlinedAt: !5535)
!5564 = !DILocation(line: 528, column: 9, scope: !819, inlinedAt: !5535)
!5565 = !DILocation(line: 530, column: 19, scope: !818, inlinedAt: !5535)
!5566 = !DILocation(line: 0, scope: !818, inlinedAt: !5535)
!5567 = !DILocation(line: 531, column: 17, scope: !822, inlinedAt: !5535)
!5568 = !DILocation(line: 531, column: 21, scope: !822, inlinedAt: !5535)
!5569 = !DILocation(line: 531, column: 54, scope: !822, inlinedAt: !5535)
!5570 = !DILocation(line: 531, column: 24, scope: !822, inlinedAt: !5535)
!5571 = !DILocation(line: 531, column: 68, scope: !822, inlinedAt: !5535)
!5572 = !DILocation(line: 531, column: 11, scope: !818, inlinedAt: !5535)
!5573 = !DILocation(line: 533, column: 29, scope: !821, inlinedAt: !5535)
!5574 = !DILocation(line: 0, scope: !821, inlinedAt: !5535)
!5575 = !DILocation(line: 534, column: 11, scope: !821, inlinedAt: !5535)
!5576 = !DILocation(line: 535, column: 17, scope: !821, inlinedAt: !5535)
!5577 = !DILocation(line: 537, column: 9, scope: !821, inlinedAt: !5535)
!5578 = !DILocation(line: 329, column: 22, scope: !5509)
!5579 = !DILocation(line: 330, column: 13, scope: !5509)
!5580 = !DILocation(line: 418, column: 23, scope: !5508)
!5581 = distinct !DIAssignID()
!5582 = distinct !DIAssignID()
!5583 = !DILocation(line: 0, scope: !5508)
!5584 = !DILocation(line: 419, column: 24, scope: !5508)
!5585 = !DILocation(line: 421, column: 13, scope: !5509)
!5586 = !DILocation(line: 426, column: 25, scope: !5512)
!5587 = distinct !DIAssignID()
!5588 = distinct !DIAssignID()
!5589 = !DILocation(line: 0, scope: !5512)
!5590 = !DILocation(line: 427, column: 24, scope: !5512)
!5591 = !DILocation(line: 429, column: 13, scope: !5509)
!5592 = !DILocation(line: 0, scope: !5504)
!5593 = !DILocation(line: 438, column: 3, scope: !5487)
!5594 = !DILocation(line: 441, column: 1, scope: !5487)
!5595 = !DILocation(line: 440, column: 3, scope: !5487)
