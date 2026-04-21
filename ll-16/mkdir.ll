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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !476
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !441
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !466
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !468
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !470
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !472
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !474
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !478
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !480
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !482
@.str.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !487
@.str.1.51 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1, !dbg !490
@.str.2.52 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !492
@.str.3.53 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1, !dbg !494
@.str.4.54 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1, !dbg !499
@.str.5.55 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1, !dbg !504
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !506
@.str.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !512
@.str.1.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !514
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !516
@.str.68 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !547
@.str.1.69 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !550
@.str.2.70 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !552
@.str.3.71 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !557
@.str.4.72 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !559
@.str.5.73 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !561
@.str.6.74 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !563
@.str.7.75 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !565
@.str.8.76 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !567
@.str.9.77 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !569
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.68, ptr @.str.1.69, ptr @.str.2.70, ptr @.str.3.71, ptr @.str.4.72, ptr @.str.5.73, ptr @.str.6.74, ptr @.str.7.75, ptr @.str.8.76, ptr @.str.9.77, ptr null], align 8, !dbg !571
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !582
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !596
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !634
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !641
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !598
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !643
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !586
@.str.10.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !603
@.str.11.78 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !605
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !607
@.str.13.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !609
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !611
@.str.93 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1, !dbg !649
@.str.1.92 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1, !dbg !655
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1, !dbg !657
@.str.2.91 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !662
@.str.3.94 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1, !dbg !664
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1, !dbg !669
@.str.4.95 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1, !dbg !674
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1, !dbg !679
@.str.5.90 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !682
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1, !dbg !684
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !689
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !692
@.str.2.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !694
@.str.3.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !696
@.str.4.102 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !698
@.str.5.103 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !700
@.str.6.104 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !705
@.str.7.105 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !710
@.str.8.106 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !712
@.str.9.107 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !717
@.str.10.108 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !719
@.str.11.109 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !721
@.str.12.110 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !723
@.str.13.111 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !725
@.str.14.112 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !730
@.str.15.113 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !735
@.str.16.114 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !740
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !743
@.str.18.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !745
@.str.19.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !747
@.str.20.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !749
@.str.21.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !751
@.str.22.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !753
@.str.23.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !755
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !760
@exit_failure = dso_local global i32 1, align 4, !dbg !768
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !774
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !777
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !779
@.str.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !781
@internal_state = internal global %struct.savewd zeroinitializer, align 4, !dbg !784
@.str.166 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !799
@.str.1.167 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !802
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !804

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !961 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !965, metadata !DIExpression()), !dbg !966
  %2 = icmp eq i32 %0, 0, !dbg !967
  br i1 %2, label %8, label %3, !dbg !969

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !970, !tbaa !972
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !970
  %6 = load ptr, ptr @program_name, align 8, !dbg !970, !tbaa !972
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !970
  br label %39, !dbg !970

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !976
  %10 = load ptr, ptr @program_name, align 8, !dbg !976, !tbaa !972
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !976
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !978
  %13 = load ptr, ptr @stdout, align 8, !dbg !978, !tbaa !972
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !978
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !979
  %16 = load ptr, ptr @stdout, align 8, !dbg !979, !tbaa !972
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !979
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !983
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !983
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !984
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !984
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !985
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !985
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !986
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !986
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !987
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !987
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !988
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !988
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !989
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !990, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1002, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr poison, metadata !1002, metadata !DIExpression()), !dbg !1007
  tail call void @emit_bug_reporting_address() #39, !dbg !1009
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1010
  call void @llvm.dbg.value(metadata ptr %25, metadata !1005, metadata !DIExpression()), !dbg !1007
  %26 = icmp eq ptr %25, null, !dbg !1011
  br i1 %26, label %34, label %27, !dbg !1013

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #40, !dbg !1014
  %29 = icmp eq i32 %28, 0, !dbg !1014
  br i1 %29, label %34, label %30, !dbg !1015

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !1016
  %32 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !972
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1016
  br label %34, !dbg !1018

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1002, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1006, metadata !DIExpression()), !dbg !1007
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #39, !dbg !1019
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #39, !dbg !1019
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #39, !dbg !1020
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #39, !dbg !1020
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1021
  unreachable, !dbg !1021
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1022 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1026 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1032 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1035 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !181 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !185, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata ptr %0, metadata !186, metadata !DIExpression()), !dbg !1038
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1039, !tbaa !1040
  %3 = icmp eq i32 %2, -1, !dbg !1042
  br i1 %3, label %4, label %16, !dbg !1043

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #39, !dbg !1044
  call void @llvm.dbg.value(metadata ptr %5, metadata !187, metadata !DIExpression()), !dbg !1045
  %6 = icmp eq ptr %5, null, !dbg !1046
  br i1 %6, label %14, label %7, !dbg !1047

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1048, !tbaa !1049
  %9 = icmp eq i8 %8, 0, !dbg !1048
  br i1 %9, label %14, label %10, !dbg !1050

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !1057, metadata !DIExpression()), !dbg !1058
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #40, !dbg !1060
  %12 = icmp eq i32 %11, 0, !dbg !1061
  %13 = zext i1 %12 to i32, !dbg !1050
  br label %14, !dbg !1050

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1062, !tbaa !1040
  br label %16, !dbg !1063

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1064
  %18 = icmp eq i32 %17, 0, !dbg !1064
  br i1 %18, label %22, label %19, !dbg !1066

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1067, !tbaa !972
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1067
  br label %122, !dbg !1069

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !190, metadata !DIExpression()), !dbg !1038
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #40, !dbg !1070
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1038
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1072
  call void @llvm.dbg.value(metadata ptr %25, metadata !193, metadata !DIExpression()), !dbg !1038
  %26 = icmp eq ptr %25, null, !dbg !1073
  br i1 %26, label %54, label %27, !dbg !1074

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1075
  br i1 %28, label %54, label %29, !dbg !1076

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !194, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !1077
  %30 = icmp ult ptr %24, %25, !dbg !1078
  br i1 %30, label %31, label %52, !dbg !1079

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1038
  %33 = load ptr, ptr %32, align 8, !tbaa !972
  br label %34, !dbg !1079

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !194, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %36, metadata !198, metadata !DIExpression()), !dbg !1077
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1080
  call void @llvm.dbg.value(metadata ptr %37, metadata !194, metadata !DIExpression()), !dbg !1077
  %38 = load i8, ptr %35, align 1, !dbg !1080, !tbaa !1049
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1080
  %41 = load i16, ptr %40, align 2, !dbg !1080, !tbaa !1081
  %42 = freeze i16 %41, !dbg !1083
  %43 = lshr i16 %42, 13, !dbg !1083
  %44 = and i16 %43, 1, !dbg !1083
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %46, metadata !198, metadata !DIExpression()), !dbg !1077
  %47 = icmp ult ptr %37, %25, !dbg !1078
  %48 = icmp ult i64 %46, 2, !dbg !1085
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1085
  br i1 %49, label %34, label %50, !dbg !1079, !llvm.loop !1086

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1088
  br i1 %51, label %52, label %54, !dbg !1090

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1090

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1038
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !190, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata ptr %55, metadata !193, metadata !DIExpression()), !dbg !1038
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.26) #40, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %57, metadata !199, metadata !DIExpression()), !dbg !1038
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1092
  call void @llvm.dbg.value(metadata ptr %58, metadata !200, metadata !DIExpression()), !dbg !1038
  br label %59, !dbg !1093

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1038
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !190, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata ptr %60, metadata !200, metadata !DIExpression()), !dbg !1038
  %62 = load i8, ptr %60, align 1, !dbg !1094, !tbaa !1049
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1095

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1096
  %65 = load i8, ptr %64, align 1, !dbg !1099, !tbaa !1049
  %66 = icmp ne i8 %65, 45, !dbg !1100
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1101
  br label %68, !dbg !1101

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !190, metadata !DIExpression()), !dbg !1038
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1102
  %71 = load ptr, ptr %70, align 8, !dbg !1102, !tbaa !972
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1102
  %74 = load i16, ptr %73, align 2, !dbg !1102, !tbaa !1081
  %75 = and i16 %74, 8192, !dbg !1102
  %76 = icmp eq i16 %75, 0, !dbg !1102
  br i1 %76, label %90, label %77, !dbg !1104

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1105
  br i1 %78, label %92, label %79, !dbg !1108

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1109
  %81 = load i8, ptr %80, align 1, !dbg !1109, !tbaa !1049
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1109
  %84 = load i16, ptr %83, align 2, !dbg !1109, !tbaa !1081
  %85 = and i16 %84, 8192, !dbg !1109
  %86 = icmp eq i16 %85, 0, !dbg !1109
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1110
  br i1 %89, label %90, label %92, !dbg !1110

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1111
  call void @llvm.dbg.value(metadata ptr %91, metadata !200, metadata !DIExpression()), !dbg !1038
  br label %59, !dbg !1093, !llvm.loop !1112

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1114
  %94 = load ptr, ptr @stdout, align 8, !dbg !1114, !tbaa !972
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !256, metadata !DIExpression()), !dbg !1038
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #40, !dbg !1135
  %97 = icmp eq i32 %96, 0, !dbg !1135
  br i1 %97, label %101, label %98, !dbg !1137

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #40, !dbg !1138
  %100 = icmp eq i32 %99, 0, !dbg !1138
  br i1 %100, label %101, label %104, !dbg !1139

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1140
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !1140
  br label %107, !dbg !1142

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1143
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !1143
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1145, !tbaa !972
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %108), !dbg !1145
  %110 = load ptr, ptr @stdout, align 8, !dbg !1146, !tbaa !972
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %110), !dbg !1146
  %112 = ptrtoint ptr %60 to i64, !dbg !1147
  %113 = sub i64 %112, %93, !dbg !1147
  %114 = load ptr, ptr @stdout, align 8, !dbg !1147, !tbaa !972
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1147
  %116 = load ptr, ptr @stdout, align 8, !dbg !1148, !tbaa !972
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %116), !dbg !1148
  %118 = load ptr, ptr @stdout, align 8, !dbg !1149, !tbaa !972
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %118), !dbg !1149
  %120 = load ptr, ptr @stdout, align 8, !dbg !1150, !tbaa !972
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1150
  br label %122, !dbg !1151

122:                                              ; preds = %107, %19
  ret void, !dbg !1151
}

; Function Attrs: nounwind
declare !dbg !1152 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1156 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1160 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1162 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1165 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1168 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1171 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1174 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1180 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1181 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1187 {
  %3 = alloca %struct.mkdir_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1192, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr %1, metadata !1193, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr null, metadata !1194, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr null, metadata !1196, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #39, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1197, metadata !DIExpression()), !dbg !1227
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 3, !dbg !1228
  store i32 511, ptr %4, align 8, !dbg !1229, !tbaa !1230
  %5 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 4, !dbg !1232
  %6 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 6, !dbg !1233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false), !dbg !1234
  %7 = load ptr, ptr %1, align 8, !dbg !1235, !tbaa !972
  tail call void @set_program_name(ptr noundef %7) #39, !dbg !1236
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #39, !dbg !1237
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #39, !dbg !1238
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #39, !dbg !1239
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1240
  br label %12, !dbg !1241

12:                                               ; preds = %22, %2
  %13 = phi i1 [ false, %2 ], [ true, %22 ]
  %14 = phi ptr [ null, %2 ], [ @make_ancestor, %22 ]
  %15 = phi ptr [ null, %2 ], [ %18, %22 ]
  %16 = phi ptr [ null, %2 ], [ %21, %22 ]
  br label %17, !dbg !1241

17:                                               ; preds = %12, %26
  %18 = phi ptr [ %15, %12 ], [ %27, %26 ]
  %19 = phi ptr [ %16, %12 ], [ %21, %26 ]
  br label %20, !dbg !1241

20:                                               ; preds = %17, %24
  %21 = phi ptr [ %19, %17 ], [ %25, %24 ]
  br label %22, !dbg !1241

22:                                               ; preds = %33, %20
  call void @llvm.dbg.value(metadata ptr %21, metadata !1194, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr null, metadata !1196, metadata !DIExpression()), !dbg !1225
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %23, metadata !1195, metadata !DIExpression()), !dbg !1225
  switch i32 %23, label %39 [
    i32 -1, label %40
    i32 112, label %12
    i32 109, label %24
    i32 118, label %26
    i32 90, label %28
    i32 -2, label %34
    i32 -3, label %35
  ], !dbg !1241, !llvm.loop !1243

24:                                               ; preds = %22
  %25 = load ptr, ptr @optarg, align 8, !dbg !1245, !tbaa !972
  call void @llvm.dbg.value(metadata ptr %25, metadata !1194, metadata !DIExpression()), !dbg !1225
  br label %20, !dbg !1248, !llvm.loop !1243

26:                                               ; preds = %22
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1249
  br label %17, !dbg !1250, !llvm.loop !1243

28:                                               ; preds = %22
  %29 = load ptr, ptr @optarg, align 8, !dbg !1251, !tbaa !972
  %30 = icmp eq ptr %29, null, !dbg !1251
  br i1 %30, label %33, label %31, !dbg !1255

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1256
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #39, !dbg !1256
  br label %33, !dbg !1258

33:                                               ; preds = %31, %28
  br label %22, !dbg !1225, !llvm.loop !1243

34:                                               ; preds = %22
  tail call void @usage(i32 noundef 0) #43, !dbg !1259
  unreachable, !dbg !1259

35:                                               ; preds = %22
  %36 = load ptr, ptr @stdout, align 8, !dbg !1260, !tbaa !972
  %37 = load ptr, ptr @Version, align 8, !dbg !1260, !tbaa !972
  %38 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #39, !dbg !1260
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %37, ptr noundef %38, ptr noundef null) #39, !dbg !1260
  tail call void @exit(i32 noundef 0) #41, !dbg !1260
  unreachable, !dbg !1260

39:                                               ; preds = %22
  tail call void @usage(i32 noundef 1) #43, !dbg !1261
  unreachable, !dbg !1261

40:                                               ; preds = %22
  store ptr %18, ptr %6, align 8, !dbg !1262, !tbaa !1263
  store ptr %14, ptr %3, align 8, !dbg !1264, !tbaa !1265
  %41 = load i32, ptr @optind, align 4, !dbg !1266, !tbaa !1040
  %42 = icmp eq i32 %41, %0, !dbg !1268
  br i1 %42, label %43, label %45, !dbg !1269

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1270
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %44) #39, !dbg !1270
  tail call void @usage(i32 noundef 1) #43, !dbg !1272
  unreachable, !dbg !1272

45:                                               ; preds = %40
  %46 = icmp ne ptr %21, null
  %47 = select i1 %13, i1 true, i1 %46, !dbg !1273
  br i1 %47, label %48, label %69, !dbg !1273

48:                                               ; preds = %45
  %49 = tail call i32 @umask(i32 noundef 0) #39, !dbg !1274
  call void @llvm.dbg.value(metadata i32 %49, metadata !1216, metadata !DIExpression()), !dbg !1275
  %50 = and i32 %49, -193, !dbg !1276
  %51 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 1, !dbg !1277
  store i32 %50, ptr %51, align 8, !dbg !1278, !tbaa !1279
  br i1 %46, label %52, label %63, !dbg !1280

52:                                               ; preds = %48
  %53 = tail call noalias ptr @mode_compile(ptr noundef nonnull %21) #39, !dbg !1281
  call void @llvm.dbg.value(metadata ptr %53, metadata !1219, metadata !DIExpression()), !dbg !1282
  %54 = icmp eq ptr %53, null, !dbg !1283
  br i1 %54, label %55, label %58, !dbg !1285

55:                                               ; preds = %52
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1286
  %57 = tail call ptr @quote(ptr noundef nonnull %21) #39, !dbg !1286
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %56, ptr noundef %57) #39, !dbg !1286
  unreachable, !dbg !1286

58:                                               ; preds = %52
  %59 = call i32 @mode_adjust(i32 noundef 511, i1 noundef true, i32 noundef %49, ptr noundef nonnull %53, ptr noundef nonnull %5) #40, !dbg !1287
  store i32 %59, ptr %4, align 8, !dbg !1288, !tbaa !1230
  %60 = xor i32 %59, -1, !dbg !1289
  %61 = and i32 %49, %60, !dbg !1290
  %62 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1291
  store i32 %61, ptr %62, align 4, !dbg !1292, !tbaa !1293
  call void @free(ptr noundef nonnull %53) #39, !dbg !1294
  br label %65, !dbg !1295

63:                                               ; preds = %48
  store i32 511, ptr %4, align 8, !dbg !1296, !tbaa !1230
  %64 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1298
  store i32 %49, ptr %64, align 4, !dbg !1299, !tbaa !1293
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %49, %63 ], [ %61, %58 ], !dbg !1300
  %67 = call i32 @umask(i32 noundef %66) #39, !dbg !1301
  %68 = load i32, ptr @optind, align 4, !dbg !1302, !tbaa !1040
  br label %69, !dbg !1303

69:                                               ; preds = %45, %65
  %70 = phi i32 [ %41, %45 ], [ %68, %65 ], !dbg !1302
  %71 = sub nsw i32 %0, %70, !dbg !1304
  %72 = sext i32 %70 to i64, !dbg !1305
  %73 = getelementptr inbounds ptr, ptr %1, i64 %72, !dbg !1305
  %74 = call i32 @savewd_process_files(i32 noundef %71, ptr noundef nonnull %73, ptr noundef nonnull @process_dir, ptr noundef nonnull %3) #39, !dbg !1306
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #39, !dbg !1307
  ret i32 %74, !dbg !1308
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !1309 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1312 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1313 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @make_ancestor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 !dbg !1316 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1318, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %1, metadata !1319, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %2, metadata !1320, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %2, metadata !1321, metadata !DIExpression()), !dbg !1328
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1329
  %5 = load ptr, ptr %4, align 8, !dbg !1329, !tbaa !1331
  %6 = icmp eq ptr %5, null, !dbg !1332
  br i1 %6, label %9, label %7, !dbg !1333

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1334, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %1, metadata !1340, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata i32 16384, metadata !1341, metadata !DIExpression()), !dbg !1342
  %8 = tail call ptr @__errno_location() #42, !dbg !1344
  store i32 95, ptr %8, align 4, !dbg !1345, !tbaa !1040
  br label %9, !dbg !1346

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 1, !dbg !1347
  %11 = load i32, ptr %10, align 8, !dbg !1347, !tbaa !1279
  %12 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 2, !dbg !1349
  %13 = load i32, ptr %12, align 4, !dbg !1349, !tbaa !1293
  %14 = icmp eq i32 %11, %13, !dbg !1350
  br i1 %14, label %17, label %15, !dbg !1351

15:                                               ; preds = %9
  %16 = tail call i32 @umask(i32 noundef %11) #39, !dbg !1352
  br label %17, !dbg !1352

17:                                               ; preds = %15, %9
  %18 = tail call i32 @mkdir(ptr noundef %1, i32 noundef 511) #39, !dbg !1353
  call void @llvm.dbg.value(metadata i32 %18, metadata !1324, metadata !DIExpression()), !dbg !1328
  %19 = load i32, ptr %10, align 8, !dbg !1354, !tbaa !1279
  %20 = load i32, ptr %12, align 4, !dbg !1355, !tbaa !1293
  %21 = icmp eq i32 %19, %20, !dbg !1356
  br i1 %21, label %26, label %22, !dbg !1357

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #42, !dbg !1358
  %24 = load i32, ptr %23, align 4, !dbg !1358, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %24, metadata !1325, metadata !DIExpression()), !dbg !1359
  %25 = tail call i32 @umask(i32 noundef %20) #39, !dbg !1360
  store i32 %24, ptr %23, align 4, !dbg !1361, !tbaa !1040
  br label %26, !dbg !1362

26:                                               ; preds = %22, %17
  %27 = icmp eq i32 %18, 0, !dbg !1363
  br i1 %27, label %28, label %38, !dbg !1365

28:                                               ; preds = %26
  %29 = load i32, ptr %10, align 8, !dbg !1366, !tbaa !1279
  %30 = lshr i32 %29, 8, !dbg !1368
  %31 = and i32 %30, 1, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %31, metadata !1324, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %0, metadata !1369, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %2, metadata !1374, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %2, metadata !1375, metadata !DIExpression()), !dbg !1376
  %32 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 6, !dbg !1378
  %33 = load ptr, ptr %32, align 8, !dbg !1378, !tbaa !1263
  %34 = icmp eq ptr %33, null, !dbg !1380
  br i1 %34, label %38, label %35, !dbg !1381

35:                                               ; preds = %28
  %36 = load ptr, ptr @stdout, align 8, !dbg !1382, !tbaa !972
  %37 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #39, !dbg !1383
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %36, ptr noundef nonnull %33, ptr noundef %37) #39, !dbg !1384
  br label %38, !dbg !1384

38:                                               ; preds = %35, %28, %26
  %39 = phi i32 [ %18, %26 ], [ %31, %28 ], [ %31, %35 ], !dbg !1328
  call void @llvm.dbg.value(metadata i32 %39, metadata !1324, metadata !DIExpression()), !dbg !1328
  ret i32 %39, !dbg !1385
}

; Function Attrs: nounwind
declare !dbg !1386 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1392 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1396 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal i32 @process_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10 !dbg !1399 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1404, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr %1, metadata !1405, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr %2, metadata !1406, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr %2, metadata !1407, metadata !DIExpression()), !dbg !1409
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1410
  %5 = load ptr, ptr %4, align 8, !dbg !1410, !tbaa !1331
  %6 = icmp ne ptr %5, null, !dbg !1412
  %7 = load ptr, ptr %2, align 8, !dbg !1409, !tbaa !1265
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false, !dbg !1413
  br i1 %9, label %10, label %12, !dbg !1413

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1334, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %0, metadata !1340, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i32 16384, metadata !1341, metadata !DIExpression()), !dbg !1414
  %11 = tail call ptr @__errno_location() #42, !dbg !1418
  store i32 95, ptr %11, align 4, !dbg !1419, !tbaa !1040
  br label %12, !dbg !1420

12:                                               ; preds = %3, %10
  %13 = phi ptr [ null, %10 ], [ %7, %3 ], !dbg !1421
  %14 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 3, !dbg !1422
  %15 = load i32, ptr %14, align 8, !dbg !1422, !tbaa !1230
  %16 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 4, !dbg !1423
  %17 = load i32, ptr %16, align 4, !dbg !1423, !tbaa !1424
  %18 = tail call i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef nonnull %2, i32 noundef %15, ptr noundef nonnull @announce_mkdir, i32 noundef %17, i32 noundef -1, i32 noundef -1, i1 noundef true) #39, !dbg !1425
  call void @llvm.dbg.value(metadata i32 poison, metadata !1408, metadata !DIExpression()), !dbg !1409
  br i1 %18, label %19, label %27, !dbg !1426

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 8, !dbg !1428, !tbaa !1331
  %21 = icmp eq ptr %20, null, !dbg !1429
  br i1 %21, label %27, label %22, !dbg !1430

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !dbg !1431, !tbaa !1265
  %24 = icmp eq ptr %23, null, !dbg !1432
  br i1 %24, label %27, label %25, !dbg !1433

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %20, metadata !1434, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr poison, metadata !1439, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i1 false, metadata !1440, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1441
  %26 = tail call ptr @__errno_location() #42, !dbg !1445
  store i32 95, ptr %26, align 4, !dbg !1446, !tbaa !1040
  br label %27, !dbg !1447

27:                                               ; preds = %25, %22, %19, %12
  %28 = xor i1 %18, true, !dbg !1425
  %29 = zext i1 %28 to i32, !dbg !1425
  call void @llvm.dbg.value(metadata i32 %29, metadata !1408, metadata !DIExpression()), !dbg !1409
  ret i32 %29, !dbg !1448
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1449 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @announce_mkdir(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !dbg !1370 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1369, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata ptr %1, metadata !1374, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata ptr %1, metadata !1375, metadata !DIExpression()), !dbg !1453
  %3 = getelementptr inbounds %struct.mkdir_options, ptr %1, i64 0, i32 6, !dbg !1454
  %4 = load ptr, ptr %3, align 8, !dbg !1454, !tbaa !1263
  %5 = icmp eq ptr %4, null, !dbg !1455
  br i1 %5, label %9, label %6, !dbg !1456

6:                                                ; preds = %2
  %7 = load ptr, ptr @stdout, align 8, !dbg !1457, !tbaa !972
  %8 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #39, !dbg !1458
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %7, ptr noundef nonnull %4, ptr noundef %8) #39, !dbg !1459
  br label %9, !dbg !1459

9:                                                ; preds = %6, %2
  ret void, !dbg !1460
}

; Function Attrs: nofree nounwind
declare !dbg !1461 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1464 {
  %3 = alloca %struct.__va_list, align 8
  %4 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1502, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %1, metadata !1503, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1517
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1504, metadata !DIExpression()), !dbg !1518
  %5 = load ptr, ptr @program_name, align 8, !dbg !1519, !tbaa !972
  %6 = tail call i32 @fputs_unlocked(ptr noundef %5, ptr noundef nonnull %0), !dbg !1519
  %7 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.20, ptr noundef nonnull %0), !dbg !1520
  call void @llvm.va_start(ptr nonnull %4), !dbg !1521
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !1522, !noalias !1532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1536
  call void @llvm.dbg.value(metadata ptr %0, metadata !1528, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %1, metadata !1529, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1530, metadata !DIExpression()), !dbg !1538
  %8 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #39, !dbg !1522
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !1522, !noalias !1532
  call void @llvm.va_end(ptr nonnull %4), !dbg !1539
  call void @llvm.dbg.value(metadata i32 10, metadata !1540, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr %0, metadata !1546, metadata !DIExpression()), !dbg !1547
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1549
  %10 = load ptr, ptr %9, align 8, !dbg !1549, !tbaa !1550
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1549
  %12 = load ptr, ptr %11, align 8, !dbg !1549, !tbaa !1553
  %13 = icmp ult ptr %10, %12, !dbg !1549
  br i1 %13, label %16, label %14, !dbg !1549, !prof !1554

14:                                               ; preds = %2
  %15 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #39, !dbg !1549
  br label %18, !dbg !1549

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1549
  store ptr %17, ptr %9, align 8, !dbg !1549, !tbaa !1550
  store i8 10, ptr %10, align 1, !dbg !1549, !tbaa !1049
  br label %18, !dbg !1549

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1555
  ret void, !dbg !1555
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare !dbg !1556 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

declare !dbg !1559 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1562 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1564, metadata !DIExpression()), !dbg !1565
  store ptr %0, ptr @file_name, align 8, !dbg !1566, !tbaa !972
  ret void, !dbg !1567
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1568 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1574, !tbaa !1575
  ret void, !dbg !1577
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1578 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1583, !tbaa !972
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1584
  %3 = icmp eq i32 %2, 0, !dbg !1585
  br i1 %3, label %22, label %4, !dbg !1586

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1587, !tbaa !1575, !range !1588, !noundef !981
  %6 = icmp eq i8 %5, 0, !dbg !1587
  br i1 %6, label %11, label %7, !dbg !1589

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1590
  %9 = load i32, ptr %8, align 4, !dbg !1590, !tbaa !1040
  %10 = icmp eq i32 %9, 32, !dbg !1591
  br i1 %10, label %22, label %11, !dbg !1592

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1.31, i32 noundef 5) #39, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %12, metadata !1580, metadata !DIExpression()), !dbg !1594
  %13 = load ptr, ptr @file_name, align 8, !dbg !1595, !tbaa !972
  %14 = icmp eq ptr %13, null, !dbg !1595
  %15 = tail call ptr @__errno_location() #42, !dbg !1597
  %16 = load i32, ptr %15, align 4, !dbg !1597, !tbaa !1040
  br i1 %14, label %19, label %17, !dbg !1598

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1599
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.32, ptr noundef %18, ptr noundef %12) #39, !dbg !1599
  br label %20, !dbg !1599

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.33, ptr noundef %12) #39, !dbg !1600
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1601, !tbaa !1040
  tail call void @_exit(i32 noundef %21) #41, !dbg !1602
  unreachable, !dbg !1602

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1603, !tbaa !972
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1605
  %25 = icmp eq i32 %24, 0, !dbg !1606
  br i1 %25, label %28, label %26, !dbg !1607

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1608, !tbaa !1040
  tail call void @_exit(i32 noundef %27) #41, !dbg !1609
  unreachable, !dbg !1609

28:                                               ; preds = %22
  ret void, !dbg !1610
}

; Function Attrs: noreturn
declare !dbg !1611 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1613 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1617, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i32 %1, metadata !1618, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata ptr %2, metadata !1619, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1620, metadata !DIExpression()), !dbg !1622
  tail call fastcc void @flush_stdout(), !dbg !1623
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1624, !tbaa !972
  %7 = icmp eq ptr %6, null, !dbg !1624
  br i1 %7, label %9, label %8, !dbg !1626

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1627
  br label %13, !dbg !1627

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1628, !tbaa !972
  %11 = tail call ptr @getprogname() #40, !dbg !1628
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %11) #39, !dbg !1628
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1630, !tbaa.struct !1631
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1630
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1630
  ret void, !dbg !1632
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1633 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 1, metadata !1637, metadata !DIExpression()), !dbg !1642
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1645
  %2 = icmp slt i32 %1, 0, !dbg !1646
  br i1 %2, label %6, label %3, !dbg !1647

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1648, !tbaa !972
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1648
  br label %6, !dbg !1648

6:                                                ; preds = %3, %0
  ret void, !dbg !1649
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1650 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1652, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %1, metadata !1653, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata ptr %2, metadata !1654, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1655, metadata !DIExpression()), !dbg !1657
  %7 = load ptr, ptr @stderr, align 8, !dbg !1658, !tbaa !972
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1659, !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %7, metadata !1699, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %2, metadata !1700, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1701, metadata !DIExpression()), !dbg !1709
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1659
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1659, !noalias !1703
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1710, !tbaa !1040
  %10 = add i32 %9, 1, !dbg !1710
  store i32 %10, ptr @error_message_count, align 4, !dbg !1710, !tbaa !1040
  %11 = icmp eq i32 %1, 0, !dbg !1711
  br i1 %11, label %21, label %12, !dbg !1713

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1714, metadata !DIExpression()), !dbg !1722
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1718, metadata !DIExpression()), !dbg !1725
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %13, metadata !1717, metadata !DIExpression()), !dbg !1722
  %14 = icmp eq ptr %13, null, !dbg !1727
  br i1 %14, label %15, label %17, !dbg !1729

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #39, !dbg !1730
  call void @llvm.dbg.value(metadata ptr %16, metadata !1717, metadata !DIExpression()), !dbg !1722
  br label %17, !dbg !1731

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1722
  call void @llvm.dbg.value(metadata ptr %18, metadata !1717, metadata !DIExpression()), !dbg !1722
  %19 = load ptr, ptr @stderr, align 8, !dbg !1732, !tbaa !972
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %18) #39, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1733
  br label %21, !dbg !1734

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1735, !tbaa !972
  call void @llvm.dbg.value(metadata i32 10, metadata !1736, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %22, metadata !1741, metadata !DIExpression()), !dbg !1742
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1744
  %24 = load ptr, ptr %23, align 8, !dbg !1744, !tbaa !1550
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1744
  %26 = load ptr, ptr %25, align 8, !dbg !1744, !tbaa !1553
  %27 = icmp ult ptr %24, %26, !dbg !1744
  br i1 %27, label %30, label %28, !dbg !1744, !prof !1554

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1744
  br label %32, !dbg !1744

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1744
  store ptr %31, ptr %23, align 8, !dbg !1744, !tbaa !1550
  store i8 10, ptr %24, align 1, !dbg !1744, !tbaa !1049
  br label %32, !dbg !1744

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1745, !tbaa !972
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1745
  %35 = icmp eq i32 %0, 0, !dbg !1746
  br i1 %35, label %37, label %36, !dbg !1748

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1749
  unreachable, !dbg !1749

37:                                               ; preds = %32
  ret void, !dbg !1750
}

; Function Attrs: nounwind
declare !dbg !1751 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1754 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1757 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1761 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1, metadata !1766, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %2, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1770
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1768, metadata !DIExpression()), !dbg !1771
  call void @llvm.va_start(ptr nonnull %4), !dbg !1772
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1773, !tbaa.struct !1631
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1773
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1773
  call void @llvm.va_end(ptr nonnull %4), !dbg !1774
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1775
  ret void, !dbg !1775
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !443 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !460, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i32 %1, metadata !461, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata ptr %2, metadata !462, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i32 %3, metadata !463, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata ptr %4, metadata !464, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.declare(metadata ptr %5, metadata !465, metadata !DIExpression()), !dbg !1777
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1778, !tbaa !1040
  %9 = icmp eq i32 %8, 0, !dbg !1778
  br i1 %9, label %24, label %10, !dbg !1780

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1781, !tbaa !1040
  %12 = icmp eq i32 %11, %3, !dbg !1784
  br i1 %12, label %13, label %23, !dbg !1785

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1786, !tbaa !972
  %15 = icmp eq ptr %14, %2, !dbg !1787
  br i1 %15, label %37, label %16, !dbg !1788

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1789
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1790
  br i1 %19, label %20, label %23, !dbg !1790

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1791
  %22 = icmp eq i32 %21, 0, !dbg !1792
  br i1 %22, label %37, label %23, !dbg !1793

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1794, !tbaa !972
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1795, !tbaa !1040
  br label %24, !dbg !1796

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1797
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1798, !tbaa !972
  %26 = icmp eq ptr %25, null, !dbg !1798
  br i1 %26, label %28, label %27, !dbg !1800

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1801
  br label %32, !dbg !1801

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1802, !tbaa !972
  %30 = tail call ptr @getprogname() #40, !dbg !1802
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %30) #39, !dbg !1802
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1804, !tbaa !972
  %34 = icmp eq ptr %2, null, !dbg !1804
  %35 = select i1 %34, ptr @.str.3.41, ptr @.str.2.42, !dbg !1804
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1804
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1805, !tbaa.struct !1631
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1805
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1805
  br label %37, !dbg !1806

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1806
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1807 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1811, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %1, metadata !1812, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %2, metadata !1813, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %3, metadata !1814, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata ptr %4, metadata !1815, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1818
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1816, metadata !DIExpression()), !dbg !1819
  call void @llvm.va_start(ptr nonnull %6), !dbg !1820
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1821, !tbaa.struct !1631
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1821
  call void @llvm.va_end(ptr nonnull %6), !dbg !1822
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1823
  ret void, !dbg !1823
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1824 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1827, !tbaa !972
  ret ptr %1, !dbg !1828
}

; Function Attrs: nounwind uwtable
define dso_local i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef %9) local_unnamed_addr #10 !dbg !1829 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1835, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata ptr %1, metadata !1836, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata ptr %2, metadata !1837, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata ptr %3, metadata !1838, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %4, metadata !1839, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata ptr %5, metadata !1840, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %6, metadata !1841, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %7, metadata !1842, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %8, metadata !1843, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i1 %9, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1904
  %13 = load i8, ptr %0, align 1, !dbg !1905, !tbaa !1049
  %14 = icmp eq i8 %13, 47, !dbg !1905
  br i1 %14, label %22, label %15, !dbg !1905

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %1, metadata !1906, metadata !DIExpression()), !dbg !1913
  %16 = load i32, ptr %1, align 4, !dbg !1915, !tbaa !1916
  %17 = icmp ult i32 %16, 4, !dbg !1918
  br i1 %17, label %22, label %18, !dbg !1919

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.savewd, ptr %1, i64 0, i32 1, !dbg !1920
  %20 = load i32, ptr %19, align 4, !dbg !1921, !tbaa !1049
  call void @llvm.dbg.value(metadata i32 %20, metadata !1845, metadata !DIExpression()), !dbg !1904
  %21 = icmp eq i32 %20, 0, !dbg !1922
  br i1 %21, label %22, label %119, !dbg !1923

22:                                               ; preds = %15, %10, %18
  call void @llvm.dbg.value(metadata i32 2, metadata !1846, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 0, metadata !1849, metadata !DIExpression()), !dbg !1924
  %23 = icmp eq ptr %2, null, !dbg !1925
  br i1 %23, label %32, label %24, !dbg !1927

24:                                               ; preds = %22
  %25 = tail call i64 @mkancesdirs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %25, metadata !1849, metadata !DIExpression()), !dbg !1924
  %26 = icmp slt i64 %25, 0, !dbg !1930
  br i1 %26, label %27, label %32, !dbg !1932

27:                                               ; preds = %24
  %28 = icmp eq i64 %25, -1, !dbg !1933
  br i1 %28, label %29, label %123, !dbg !1936

29:                                               ; preds = %27
  %30 = tail call ptr @__errno_location() #42, !dbg !1937
  %31 = load i32, ptr %30, align 4, !dbg !1937, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %31, metadata !1845, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 -1, metadata !1849, metadata !DIExpression()), !dbg !1924
  br label %119, !dbg !1938

32:                                               ; preds = %24, %22
  %33 = phi i64 [ 0, %22 ], [ %25, %24 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %33, metadata !1849, metadata !DIExpression()), !dbg !1924
  %34 = and i32 %8, %7, !dbg !1939
  %35 = icmp eq i32 %34, -1, !dbg !1939
  call void @llvm.dbg.value(metadata i1 %35, metadata !1850, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1940
  %36 = and i32 %6, 3072, !dbg !1941
  %37 = and i32 %4, 512, !dbg !1942
  %38 = or i32 %36, %37, !dbg !1943
  call void @llvm.dbg.value(metadata i1 poison, metadata !1853, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1940
  call void @llvm.dbg.value(metadata i32 %4, metadata !1854, metadata !DIExpression()), !dbg !1940
  %39 = and i32 %4, -64, !dbg !1944
  %40 = icmp eq i32 %38, 0, !dbg !1944
  %41 = and i32 %4, -19, !dbg !1944
  %42 = select i1 %40, i32 %4, i32 %41, !dbg !1944
  %43 = select i1 %35, i32 %42, i32 %39, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %43, metadata !1854, metadata !DIExpression()), !dbg !1940
  %44 = getelementptr inbounds i8, ptr %0, i64 %33, !dbg !1945
  %45 = tail call i32 @mkdir(ptr noundef nonnull %44, i32 noundef %43) #39, !dbg !1946
  %46 = icmp eq i32 %45, 0, !dbg !1947
  br i1 %46, label %47, label %53, !dbg !1948

47:                                               ; preds = %32
  %48 = and i32 %4, 511, !dbg !1949
  %49 = and i32 %48, %6, !dbg !1950
  call void @llvm.dbg.value(metadata i1 poison, metadata !1855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1951
  tail call void %5(ptr noundef nonnull %0, ptr noundef %3) #39, !dbg !1952
  %50 = or i32 %38, %49, !dbg !1953
  %51 = icmp eq i32 %50, 0, !dbg !1953
  %52 = and i1 %35, %51, !dbg !1953
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 3, metadata !1846, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i32 %43, metadata !1854, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i1 %9, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1904
  br i1 %52, label %123, label %77, !dbg !1954

53:                                               ; preds = %32
  %54 = tail call ptr @__errno_location() #42, !dbg !1955
  %55 = load i32, ptr %54, align 4, !dbg !1955, !tbaa !1040
  call void @llvm.dbg.value(metadata i1 %9, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %55, metadata !1845, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 2, metadata !1846, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i32 -1, metadata !1854, metadata !DIExpression()), !dbg !1940
  switch i32 %55, label %56 [
    i32 20, label %119
    i32 2, label %119
  ], !dbg !1957

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i1 %9, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1904
  br i1 %9, label %57, label %77, !dbg !1954

57:                                               ; preds = %56
  %58 = icmp eq i32 %55, 0, !dbg !1958
  br i1 %58, label %123, label %59, !dbg !1960

59:                                               ; preds = %57
  br i1 %23, label %119, label %60, !dbg !1961

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #39, !dbg !1962
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1858, metadata !DIExpression()), !dbg !1963
  %61 = call i32 @stat(ptr noundef nonnull %44, ptr noundef nonnull %11) #39, !dbg !1964
  %62 = icmp eq i32 %61, 0, !dbg !1966
  br i1 %62, label %63, label %68, !dbg !1967

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.stat, ptr %11, i64 0, i32 2, !dbg !1968
  %65 = load i32, ptr %64, align 8, !dbg !1968, !tbaa !1971
  %66 = and i32 %65, 61440, !dbg !1968
  %67 = icmp eq i32 %66, 16384, !dbg !1968
  br i1 %67, label %75, label %76, !dbg !1974

68:                                               ; preds = %60
  %69 = icmp eq i32 %55, 17, !dbg !1975
  br i1 %69, label %70, label %76, !dbg !1977

70:                                               ; preds = %68
  %71 = load i32, ptr %54, align 4, !dbg !1978, !tbaa !1040
  switch i32 %71, label %72 [
    i32 2, label %76
    i32 20, label %76
  ], !dbg !1979

72:                                               ; preds = %70
  %73 = tail call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1.51, i32 noundef 5) #39, !dbg !1980
  %74 = tail call ptr @quote(ptr noundef nonnull %0) #39, !dbg !1980
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %73, ptr noundef %74) #39, !dbg !1980
  br label %75, !dbg !1982

75:                                               ; preds = %72, %63
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #39, !dbg !1983
  br label %123

76:                                               ; preds = %63, %68, %70, %70
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #39, !dbg !1983
  br label %119

77:                                               ; preds = %47, %56
  %78 = phi i32 [ %43, %47 ], [ -1, %56 ]
  %79 = phi i32 [ 3, %47 ], [ 2, %56 ]
  %80 = phi i32 [ 0, %47 ], [ %55, %56 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #39, !dbg !1984
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1896, metadata !DIExpression()), !dbg !1985
  %81 = call i32 @savewd_chdir(ptr noundef %1, ptr noundef nonnull %44, i32 noundef %79, ptr noundef nonnull %12) #39, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %81, metadata !1898, metadata !DIExpression()), !dbg !1987
  %82 = icmp slt i32 %81, -1, !dbg !1988
  br i1 %82, label %117, label %83, !dbg !1989

83:                                               ; preds = %77
  %84 = icmp eq i32 %81, 0, !dbg !1990
  br i1 %84, label %89, label %85, !dbg !1991

85:                                               ; preds = %83
  %86 = tail call ptr @__errno_location() #42, !dbg !1992
  %87 = load i32, ptr %86, align 4, !dbg !1992, !tbaa !1040
  %88 = icmp eq i32 %87, 13, !dbg !1993
  br i1 %88, label %89, label %108, !dbg !1994

89:                                               ; preds = %85, %83
  %90 = phi ptr [ %44, %85 ], [ @.str.2.52, %83 ], !dbg !1995
  call void @llvm.dbg.value(metadata i1 %84, metadata !1899, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %90, metadata !1903, metadata !DIExpression()), !dbg !1995
  %91 = load i32, ptr %12, align 4, !dbg !1996, !tbaa !1040
  %92 = call i32 @dirchownmod(i32 noundef %91, ptr noundef %90, i32 noundef %78, i32 noundef %7, i32 noundef %8, i32 noundef %4, i32 noundef %6) #39, !dbg !1998
  %93 = icmp eq i32 %92, 0, !dbg !1999
  br i1 %93, label %117, label %94, !dbg !2000

94:                                               ; preds = %89
  %95 = icmp eq i32 %80, 0, !dbg !2001
  br i1 %95, label %96, label %98, !dbg !2003

96:                                               ; preds = %94
  %97 = tail call ptr @__errno_location() #42, !dbg !2004
  br label %102, !dbg !2003

98:                                               ; preds = %94
  br i1 %23, label %115, label %99, !dbg !2006

99:                                               ; preds = %98
  %100 = tail call ptr @__errno_location() #42, !dbg !2007
  %101 = load i32, ptr %100, align 4, !dbg !2007, !tbaa !1040
  switch i32 %101, label %102 [
    i32 2, label %115
    i32 20, label %115
  ], !dbg !2008

102:                                              ; preds = %96, %99
  %103 = phi ptr [ %97, %96 ], [ %100, %99 ], !dbg !2004
  %104 = load i32, ptr %103, align 4, !dbg !2004, !tbaa !1040
  %105 = select i1 %35, ptr @.str.3.53, ptr @.str.4.54, !dbg !2004
  %106 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull %105, i32 noundef 5) #39, !dbg !2004
  %107 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !2004
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %104, ptr noundef %106, ptr noundef %107) #39, !dbg !2004
  br label %117, !dbg !2009

108:                                              ; preds = %85
  %109 = icmp eq i32 %80, 0, !dbg !2010
  %110 = select i1 %109, i32 %87, i32 %80, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %110, metadata !1845, metadata !DIExpression()), !dbg !1904
  %111 = load i32, ptr %12, align 4, !dbg !2014, !tbaa !1040
  %112 = icmp sgt i32 %111, -1, !dbg !2016
  br i1 %112, label %113, label %115, !dbg !2017

113:                                              ; preds = %108
  %114 = call i32 @close(i32 noundef %111) #39, !dbg !2018
  br label %115, !dbg !2018

115:                                              ; preds = %113, %108, %99, %99, %98
  %116 = phi i32 [ %110, %108 ], [ %110, %113 ], [ %80, %99 ], [ %80, %99 ], [ %80, %98 ]
  call void @llvm.dbg.value(metadata i32 %116, metadata !1845, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #39, !dbg !2019
  br label %119

117:                                              ; preds = %102, %89, %77
  %118 = phi i1 [ true, %77 ], [ false, %102 ], [ true, %89 ], !dbg !2020
  call void @llvm.dbg.value(metadata i32 poison, metadata !1845, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #39, !dbg !2019
  br label %123

119:                                              ; preds = %59, %53, %53, %76, %115, %29, %18
  %120 = phi i32 [ %20, %18 ], [ %31, %29 ], [ %116, %115 ], [ %55, %53 ], [ %55, %59 ], [ %55, %76 ], [ %55, %53 ], !dbg !2021
  call void @llvm.dbg.value(metadata i32 %120, metadata !1845, metadata !DIExpression()), !dbg !1904
  %121 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.5.55, i32 noundef 5) #39, !dbg !2022
  %122 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !2022
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %120, ptr noundef %121, ptr noundef %122) #39, !dbg !2022
  br label %123, !dbg !2023

123:                                              ; preds = %47, %57, %75, %117, %27, %119
  %124 = phi i1 [ false, %119 ], [ %62, %75 ], [ true, %57 ], [ %118, %117 ], [ true, %27 ], [ true, %47 ], !dbg !1904
  ret i1 %124, !dbg !2024
}

; Function Attrs: nofree nounwind
declare !dbg !2025 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !2030 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !2031 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2043, metadata !DIExpression()), !dbg !2073
  %2 = load i8, ptr %0, align 1, !dbg !2074, !tbaa !1049
  %3 = and i8 %2, -8, !dbg !2075
  %4 = icmp eq i8 %3, 48, !dbg !2075
  br i1 %4, label %5, label %34, !dbg !2075

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !2076
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !2078
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !2078
  call void @llvm.dbg.value(metadata ptr %8, metadata !2044, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %7, metadata !2047, metadata !DIExpression()), !dbg !2078
  %9 = shl i32 %7, 3, !dbg !2079
  call void @llvm.dbg.value(metadata ptr %8, metadata !2044, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2078
  %10 = zext i8 %6 to i32, !dbg !2076
  %11 = add i32 %9, -48, !dbg !2080
  %12 = add i32 %11, %10, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %12, metadata !2047, metadata !DIExpression()), !dbg !2078
  %13 = icmp ugt i32 %12, 4095, !dbg !2082
  br i1 %13, label %139, label %14, !dbg !2084

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %15, metadata !2044, metadata !DIExpression()), !dbg !2078
  %16 = load i8, ptr %15, align 1, !dbg !2086, !tbaa !1049
  %17 = and i8 %16, -8, !dbg !2087
  %18 = icmp eq i8 %17, 48, !dbg !2087
  br i1 %18, label %5, label %19, !dbg !2087, !llvm.loop !2088

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !2091
  br i1 %20, label %21, label %139, !dbg !2093

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %12, metadata !2048, metadata !DIExpression()), !dbg !2078
  %22 = ptrtoint ptr %15 to i64, !dbg !2094
  %23 = ptrtoint ptr %0 to i64, !dbg !2094
  %24 = sub i64 %22, %23, !dbg !2094
  %25 = icmp slt i64 %24, 5, !dbg !2095
  %26 = or i32 %12, 1023, !dbg !2096
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %27, metadata !2049, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %12, metadata !2097, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 %27, metadata !2102, metadata !DIExpression()), !dbg !2104
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #45, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %28, metadata !2103, metadata !DIExpression()), !dbg !2104
  store i8 61, ptr %28, align 4, !dbg !2107, !tbaa !2108
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !2110
  store i8 1, ptr %29, align 1, !dbg !2111, !tbaa !2112
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !2113
  store i32 4095, ptr %30, align 4, !dbg !2114, !tbaa !2115
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !2116
  store i32 %12, ptr %31, align 4, !dbg !2117, !tbaa !2118
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !2119
  store i32 %27, ptr %32, align 4, !dbg !2120, !tbaa !2121
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !2122
  store i8 0, ptr %33, align 1, !dbg !2123, !tbaa !2112
  br label %139, !dbg !2124

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !2125
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !2127
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !2128
  call void @llvm.dbg.value(metadata ptr %37, metadata !2053, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %36, metadata !2051, metadata !DIExpression()), !dbg !2127
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !2130

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #46, !dbg !2131
  call void @llvm.dbg.value(metadata ptr %39, metadata !2050, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 0, metadata !2055, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata ptr %0, metadata !2056, metadata !DIExpression()), !dbg !2073
  br label %46, !dbg !2132

40:                                               ; preds = %34
  br label %41, !dbg !2133

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %43, metadata !2051, metadata !DIExpression()), !dbg !2127
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2135
  call void @llvm.dbg.value(metadata ptr %44, metadata !2053, metadata !DIExpression()), !dbg !2129
  %45 = load i8, ptr %44, align 1, !dbg !2125, !tbaa !1049
  br label %34, !dbg !2136, !llvm.loop !2137

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %122, %134 ], !dbg !2139
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !2140
  call void @llvm.dbg.value(metadata i32 poison, metadata !2063, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %48, metadata !2056, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %47, metadata !2055, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !2057, metadata !DIExpression()), !dbg !2142
  br label %49, !dbg !2143

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !2144
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !2142
  call void @llvm.dbg.value(metadata i32 %51, metadata !2057, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %50, metadata !2056, metadata !DIExpression()), !dbg !2073
  %52 = load i8, ptr %50, align 1, !dbg !2145, !tbaa !1049
  switch i8 %52, label %138 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !2148

53:                                               ; preds = %49, %49, %49
  br label %63, !dbg !2149

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !2150
  call void @llvm.dbg.value(metadata i32 %55, metadata !2057, metadata !DIExpression()), !dbg !2142
  br label %60, !dbg !2152

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %57, metadata !2057, metadata !DIExpression()), !dbg !2142
  br label %60, !dbg !2154

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %59, metadata !2057, metadata !DIExpression()), !dbg !2142
  br label %60, !dbg !2156

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !2157
  call void @llvm.dbg.value(metadata i32 %61, metadata !2057, metadata !DIExpression()), !dbg !2142
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %62, metadata !2056, metadata !DIExpression()), !dbg !2073
  br label %49, !dbg !2159, !llvm.loop !2160

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %52, %53 ], [ %132, %133 ], !dbg !2163
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !2073
  %66 = phi ptr [ %50, %53 ], [ %115, %133 ], !dbg !2144
  %67 = phi i32 [ %51, %53 ], [ %121, %133 ], !dbg !2164
  call void @llvm.dbg.value(metadata i32 poison, metadata !2063, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %67, metadata !2057, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %66, metadata !2056, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %65, metadata !2055, metadata !DIExpression()), !dbg !2073
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !2165
  call void @llvm.dbg.value(metadata ptr %68, metadata !2056, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 %64, metadata !2061, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 0, metadata !2064, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 3, metadata !2065, metadata !DIExpression()), !dbg !2141
  %69 = load i8, ptr %68, align 1, !dbg !2166, !tbaa !1049
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
  ], !dbg !2149

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !2167

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !2168
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !2141
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !2170
  call void @llvm.dbg.value(metadata i32 %74, metadata !2066, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr %73, metadata !2056, metadata !DIExpression()), !dbg !2073
  %75 = shl i32 %74, 3, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %73, metadata !2056, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2073
  %76 = zext i8 %72 to i32, !dbg !2168
  %77 = add i32 %75, -48, !dbg !2172
  %78 = add i32 %77, %76, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %78, metadata !2066, metadata !DIExpression()), !dbg !2170
  %79 = icmp ugt i32 %78, 4095, !dbg !2174
  br i1 %79, label %138, label %80, !dbg !2176

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !2177
  call void @llvm.dbg.value(metadata ptr %81, metadata !2056, metadata !DIExpression()), !dbg !2073
  %82 = load i8, ptr %81, align 1, !dbg !2178, !tbaa !1049
  %83 = and i8 %82, -8, !dbg !2179
  %84 = icmp eq i8 %83, 48, !dbg !2179
  br i1 %84, label %71, label %85, !dbg !2179, !llvm.loop !2180

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0, !dbg !2182
  br i1 %86, label %87, label %138, !dbg !2184

87:                                               ; preds = %85
  switch i8 %82, label %138 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !2185

88:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 448, metadata !2063, metadata !DIExpression()), !dbg !2141
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2186
  call void @llvm.dbg.value(metadata ptr %89, metadata !2056, metadata !DIExpression()), !dbg !2073
  br label %114, !dbg !2187

90:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 56, metadata !2063, metadata !DIExpression()), !dbg !2141
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %91, metadata !2056, metadata !DIExpression()), !dbg !2073
  br label %114, !dbg !2189

92:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 7, metadata !2063, metadata !DIExpression()), !dbg !2141
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !2190
  call void @llvm.dbg.value(metadata ptr %93, metadata !2056, metadata !DIExpression()), !dbg !2073
  br label %114, !dbg !2191

94:                                               ; preds = %63, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %63 ], !dbg !2192
  %96 = phi ptr [ %112, %109 ], [ %68, %63 ], !dbg !2141
  %97 = phi i32 [ %110, %109 ], [ 0, %63 ], !dbg !2195
  %98 = phi i8 [ %111, %109 ], [ 1, %63 ], !dbg !2196
  call void @llvm.dbg.value(metadata i8 %98, metadata !2065, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %97, metadata !2063, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %96, metadata !2056, metadata !DIExpression()), !dbg !2073
  switch i8 %95, label %114 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !2197

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %100, metadata !2063, metadata !DIExpression()), !dbg !2141
  br label %109, !dbg !2200

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %102, metadata !2063, metadata !DIExpression()), !dbg !2141
  br label %109, !dbg !2202

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %104, metadata !2063, metadata !DIExpression()), !dbg !2141
  br label %109, !dbg !2204

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !2205
  call void @llvm.dbg.value(metadata i32 %106, metadata !2063, metadata !DIExpression()), !dbg !2141
  br label %109, !dbg !2206

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %108, metadata !2063, metadata !DIExpression()), !dbg !2141
  br label %109, !dbg !2208

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !2195
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !2195
  call void @llvm.dbg.value(metadata i8 %111, metadata !2065, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %110, metadata !2063, metadata !DIExpression()), !dbg !2141
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !2209
  call void @llvm.dbg.value(metadata ptr %112, metadata !2056, metadata !DIExpression()), !dbg !2073
  %113 = load i8, ptr %112, align 1, !dbg !2192, !tbaa !1049
  br label %94, !dbg !2210, !llvm.loop !2211

114:                                              ; preds = %94, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %81, %87 ], [ %81, %87 ], [ %96, %94 ], !dbg !2141
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %94 ], !dbg !2164
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %78, %87 ], [ %78, %87 ], [ %97, %94 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %94 ], !dbg !2214
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %94 ], !dbg !2214
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %98, %94 ], !dbg !2141
  %121 = freeze i32 %116, !dbg !2215
  call void @llvm.dbg.value(metadata i8 %120, metadata !2065, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %119, metadata !2064, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %117, metadata !2063, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %116, metadata !2057, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %115, metadata !2056, metadata !DIExpression()), !dbg !2073
  %122 = add i64 %65, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %122, metadata !2055, metadata !DIExpression()), !dbg !2073
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !2217
  call void @llvm.dbg.value(metadata ptr %123, metadata !2069, metadata !DIExpression()), !dbg !2141
  store i8 %64, ptr %123, align 4, !dbg !2218, !tbaa !2108
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !2219
  store i8 %120, ptr %124, align 1, !dbg !2220, !tbaa !2112
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !2221
  store i32 %121, ptr %125, align 4, !dbg !2222, !tbaa !2115
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !2223
  store i32 %117, ptr %126, align 4, !dbg !2224, !tbaa !2118
  %127 = icmp eq i32 %121, 0, !dbg !2215
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !2215
  %129 = and i32 %128, %117, !dbg !2215
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !2215
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !2225
  store i32 %130, ptr %131, align 4, !dbg !2226, !tbaa !2121
  %132 = load i8, ptr %115, align 1, !dbg !2227, !tbaa !1049
  switch i8 %132, label %138 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !2228

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !2141

134:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 poison, metadata !2063, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %115, metadata !2056, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %122, metadata !2055, metadata !DIExpression()), !dbg !2073
  %135 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !2229
  call void @llvm.dbg.value(metadata ptr %135, metadata !2056, metadata !DIExpression()), !dbg !2073
  br label %46, !dbg !2230, !llvm.loop !2231

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %122, i32 1, !dbg !2234
  store i8 0, ptr %137, align 1, !dbg !2237, !tbaa !2112
  br label %139, !dbg !2238

138:                                              ; preds = %49, %85, %87, %114, %71
  call void @llvm.dbg.label(metadata !2072), !dbg !2239
  tail call void @free(ptr noundef nonnull %39) #39, !dbg !2240
  br label %139, !dbg !2241

139:                                              ; preds = %5, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %5 ]
  ret ptr %140, !dbg !2242
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !2243 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2245, metadata !DIExpression()), !dbg !2269
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #39, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2246, metadata !DIExpression()), !dbg !2271
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #39, !dbg !2272
  %4 = icmp eq i32 %3, 0, !dbg !2274
  br i1 %4, label %5, label %14, !dbg !2275

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !2276
  %7 = load i32, ptr %6, align 8, !dbg !2276, !tbaa !1971
  call void @llvm.dbg.value(metadata i32 %7, metadata !2097, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 4095, metadata !2102, metadata !DIExpression()), !dbg !2277
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #45, !dbg !2279
  call void @llvm.dbg.value(metadata ptr %8, metadata !2103, metadata !DIExpression()), !dbg !2277
  store i8 61, ptr %8, align 4, !dbg !2280, !tbaa !2108
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !2281
  store i8 1, ptr %9, align 1, !dbg !2282, !tbaa !2112
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !2283
  store i32 4095, ptr %10, align 4, !dbg !2284, !tbaa !2115
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !2285
  store i32 %7, ptr %11, align 4, !dbg !2286, !tbaa !2118
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !2287
  store i32 4095, ptr %12, align 4, !dbg !2288, !tbaa !2121
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !2289
  store i8 0, ptr %13, align 1, !dbg !2290, !tbaa !2112
  br label %14, !dbg !2291

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !2269
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #39, !dbg !2292
  ret ptr %15, !dbg !2292
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #20 !dbg !2293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2300, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i1 %1, metadata !2301, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %2, metadata !2302, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata ptr %3, metadata !2303, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata ptr %4, metadata !2304, metadata !DIExpression()), !dbg !2316
  %6 = and i32 %0, 4095, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %6, metadata !2305, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, metadata !2306, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata ptr %3, metadata !2303, metadata !DIExpression()), !dbg !2316
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !2318
  %8 = load i8, ptr %7, align 1, !dbg !2318, !tbaa !2112
  %9 = icmp eq i8 %8, 0, !dbg !2319
  br i1 %9, label %78, label %10, !dbg !2320

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !2320

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !2303, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %17, metadata !2305, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %18, metadata !2306, metadata !DIExpression()), !dbg !2316
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !2321
  %20 = load i32, ptr %19, align 4, !dbg !2321, !tbaa !2115
  call void @llvm.dbg.value(metadata i32 %20, metadata !2307, metadata !DIExpression()), !dbg !2322
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !2323
  %22 = load i32, ptr %21, align 4, !dbg !2323, !tbaa !2121
  %23 = xor i32 %22, -1, !dbg !2324
  %24 = and i32 %11, %23, !dbg !2325
  call void @llvm.dbg.value(metadata i32 %24, metadata !2311, metadata !DIExpression()), !dbg !2322
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !2326
  %26 = load i32, ptr %25, align 4, !dbg !2326, !tbaa !2118
  call void @llvm.dbg.value(metadata i32 %26, metadata !2312, metadata !DIExpression()), !dbg !2322
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !2327

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !2328
  call void @llvm.dbg.value(metadata i32 %28, metadata !2312, metadata !DIExpression()), !dbg !2322
  %29 = and i32 %28, 292, !dbg !2330
  %30 = icmp eq i32 %29, 0, !dbg !2331
  %31 = select i1 %30, i32 0, i32 292, !dbg !2331
  %32 = and i32 %28, 146, !dbg !2332
  %33 = icmp eq i32 %32, 0, !dbg !2333
  %34 = select i1 %33, i32 0, i32 146, !dbg !2333
  %35 = and i32 %28, 73, !dbg !2334
  %36 = icmp eq i32 %35, 0, !dbg !2335
  %37 = select i1 %36, i32 0, i32 73, !dbg !2335
  %38 = or i32 %34, %31, !dbg !2336
  %39 = or i32 %38, %37, !dbg !2337
  %40 = or i32 %39, %28, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %40, metadata !2312, metadata !DIExpression()), !dbg !2322
  br label %47, !dbg !2338

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !2339
  %43 = or i32 %42, %12, !dbg !2341
  %44 = icmp eq i32 %43, 0, !dbg !2341
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !2342
  br label %47, !dbg !2342

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !2322
  call void @llvm.dbg.value(metadata i32 %48, metadata !2312, metadata !DIExpression()), !dbg !2322
  %49 = icmp eq i32 %20, 0, !dbg !2343
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !2343
  %51 = xor i32 %24, -1, !dbg !2344
  %52 = and i32 %50, %51, !dbg !2345
  %53 = and i32 %52, %48, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %53, metadata !2312, metadata !DIExpression()), !dbg !2322
  %54 = load i8, ptr %16, align 4, !dbg !2347, !tbaa !2108
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !2348

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !2349
  %57 = select i1 %49, i32 0, i32 %56, !dbg !2349
  %58 = or i32 %57, %24, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %58, metadata !2313, metadata !DIExpression()), !dbg !2351
  %59 = and i32 %58, 4095, !dbg !2352
  %60 = xor i32 %59, 4095, !dbg !2352
  %61 = or i32 %60, %18, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %61, metadata !2306, metadata !DIExpression()), !dbg !2316
  %62 = and i32 %58, %17, !dbg !2354
  %63 = or i32 %53, %62, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %63, metadata !2305, metadata !DIExpression()), !dbg !2316
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !2356
  call void @llvm.dbg.value(metadata i32 %65, metadata !2306, metadata !DIExpression()), !dbg !2316
  %66 = or i32 %53, %17, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %66, metadata !2305, metadata !DIExpression()), !dbg !2316
  br label %71, !dbg !2358

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %68, metadata !2306, metadata !DIExpression()), !dbg !2316
  %69 = xor i32 %53, -1, !dbg !2360
  %70 = and i32 %17, %69, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %70, metadata !2305, metadata !DIExpression()), !dbg !2316
  br label %71, !dbg !2362

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !2316
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !2316
  call void @llvm.dbg.value(metadata i32 %73, metadata !2305, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %72, metadata !2306, metadata !DIExpression()), !dbg !2316
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !2363
  call void @llvm.dbg.value(metadata ptr %74, metadata !2303, metadata !DIExpression()), !dbg !2316
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !2318
  %76 = load i8, ptr %75, align 1, !dbg !2318, !tbaa !2112
  %77 = icmp eq i8 %76, 0, !dbg !2319
  br i1 %77, label %78, label %14, !dbg !2320, !llvm.loop !2364

78:                                               ; preds = %71, %5
  %79 = phi i32 [ 0, %5 ], [ %72, %71 ], !dbg !2366
  %80 = phi i32 [ %6, %5 ], [ %73, %71 ], !dbg !2367
  %81 = icmp eq ptr %4, null, !dbg !2368
  br i1 %81, label %83, label %82, !dbg !2370

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !2371, !tbaa !1040
  br label %83, !dbg !2372

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !2373
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2374 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2376, metadata !DIExpression()), !dbg !2379
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2380
  call void @llvm.dbg.value(metadata ptr %2, metadata !2377, metadata !DIExpression()), !dbg !2379
  %3 = icmp eq ptr %2, null, !dbg !2381
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2381
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2381
  call void @llvm.dbg.value(metadata ptr %5, metadata !2378, metadata !DIExpression()), !dbg !2379
  %6 = ptrtoint ptr %5 to i64, !dbg !2382
  %7 = ptrtoint ptr %0 to i64, !dbg !2382
  %8 = sub i64 %6, %7, !dbg !2382
  %9 = icmp sgt i64 %8, 6, !dbg !2384
  br i1 %9, label %10, label %19, !dbg !2385

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2386
  call void @llvm.dbg.value(metadata ptr %11, metadata !2387, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 7, metadata !2393, metadata !DIExpression()), !dbg !2394
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.64, i64 7), !dbg !2396
  %13 = icmp eq i32 %12, 0, !dbg !2397
  br i1 %13, label %14, label %19, !dbg !2398

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2376, metadata !DIExpression()), !dbg !2379
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.65, i64 noundef 3) #40, !dbg !2399
  %16 = icmp eq i32 %15, 0, !dbg !2402
  %17 = select i1 %16, i64 3, i64 0, !dbg !2403
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2403
  br label %19, !dbg !2403

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2379
  call void @llvm.dbg.value(metadata ptr %21, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata ptr %20, metadata !2376, metadata !DIExpression()), !dbg !2379
  store ptr %20, ptr @program_name, align 8, !dbg !2404, !tbaa !972
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2405, !tbaa !972
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2406, !tbaa !972
  ret void, !dbg !2407
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2408 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !518 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.savewd, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !525, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata ptr %1, metadata !526, metadata !DIExpression()), !dbg !2409
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2410
  call void @llvm.dbg.value(metadata ptr %5, metadata !527, metadata !DIExpression()), !dbg !2409
  %6 = icmp eq ptr %5, %0, !dbg !2411
  br i1 %6, label %7, label %14, !dbg !2413

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2414
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %4, metadata !533, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata ptr %4, metadata !2417, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %4, metadata !2426, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i32 0, metadata !2432, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 8, metadata !2433, metadata !DIExpression()), !dbg !2434
  store i64 0, ptr %4, align 8, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %3, metadata !528, metadata !DIExpression(DW_OP_deref)), !dbg !2409
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2437
  %9 = icmp eq i64 %8, 2, !dbg !2439
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !528, metadata !DIExpression()), !dbg !2409
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2440
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2409
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2441
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2409
  ret ptr %15, !dbg !2441
}

; Function Attrs: nounwind
declare !dbg !2442 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2453, metadata !DIExpression()), !dbg !2456
  %2 = tail call ptr @__errno_location() #42, !dbg !2457
  %3 = load i32, ptr %2, align 4, !dbg !2457, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %3, metadata !2454, metadata !DIExpression()), !dbg !2456
  %4 = icmp eq ptr %0, null, !dbg !2458
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2458
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2459
  call void @llvm.dbg.value(metadata ptr %6, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i32 %3, ptr %2, align 4, !dbg !2460, !tbaa !1040
  ret ptr %6, !dbg !2461
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !2462 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2468, metadata !DIExpression()), !dbg !2469
  %2 = icmp eq ptr %0, null, !dbg !2470
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2470
  %4 = load i32, ptr %3, align 8, !dbg !2471, !tbaa !2472
  ret i32 %4, !dbg !2474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %1, metadata !2480, metadata !DIExpression()), !dbg !2481
  %3 = icmp eq ptr %0, null, !dbg !2482
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2482
  store i32 %1, ptr %4, align 8, !dbg !2483, !tbaa !2472
  ret void, !dbg !2484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2485 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 %1, metadata !2490, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %2, metadata !2491, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()), !dbg !2497
  %4 = icmp eq ptr %0, null, !dbg !2498
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2498
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2499
  %7 = lshr i8 %1, 5, !dbg !2500
  %8 = zext i8 %7 to i64, !dbg !2500
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2501
  call void @llvm.dbg.value(metadata ptr %9, metadata !2493, metadata !DIExpression()), !dbg !2497
  %10 = and i8 %1, 31, !dbg !2502
  %11 = zext i8 %10 to i32, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %11, metadata !2495, metadata !DIExpression()), !dbg !2497
  %12 = load i32, ptr %9, align 4, !dbg !2503, !tbaa !1040
  %13 = lshr i32 %12, %11, !dbg !2504
  %14 = and i32 %13, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %14, metadata !2496, metadata !DIExpression()), !dbg !2497
  %15 = xor i32 %13, %2, !dbg !2506
  %16 = and i32 %15, 1, !dbg !2506
  %17 = shl nuw i32 %16, %11, !dbg !2507
  %18 = xor i32 %17, %12, !dbg !2508
  store i32 %18, ptr %9, align 4, !dbg !2508, !tbaa !1040
  ret i32 %14, !dbg !2509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2510 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2514, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1, metadata !2515, metadata !DIExpression()), !dbg !2517
  %3 = icmp eq ptr %0, null, !dbg !2518
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2520
  call void @llvm.dbg.value(metadata ptr %4, metadata !2514, metadata !DIExpression()), !dbg !2517
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2521
  %6 = load i32, ptr %5, align 4, !dbg !2521, !tbaa !2522
  call void @llvm.dbg.value(metadata i32 %6, metadata !2516, metadata !DIExpression()), !dbg !2517
  store i32 %1, ptr %5, align 4, !dbg !2523, !tbaa !2522
  ret i32 %6, !dbg !2524
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2525 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %1, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %2, metadata !2531, metadata !DIExpression()), !dbg !2532
  %4 = icmp eq ptr %0, null, !dbg !2533
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2535
  call void @llvm.dbg.value(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !2532
  store i32 10, ptr %5, align 8, !dbg !2536, !tbaa !2472
  %6 = icmp ne ptr %1, null, !dbg !2537
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2539
  br i1 %8, label %10, label %9, !dbg !2539

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2540
  unreachable, !dbg !2540

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2541
  store ptr %1, ptr %11, align 8, !dbg !2542, !tbaa !2543
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2544
  store ptr %2, ptr %12, align 8, !dbg !2545, !tbaa !2546
  ret void, !dbg !2547
}

; Function Attrs: noreturn nounwind
declare !dbg !2548 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2549 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %1, metadata !2554, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata ptr %2, metadata !2555, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %3, metadata !2556, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata ptr %4, metadata !2557, metadata !DIExpression()), !dbg !2561
  %6 = icmp eq ptr %4, null, !dbg !2562
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %7, metadata !2558, metadata !DIExpression()), !dbg !2561
  %8 = tail call ptr @__errno_location() #42, !dbg !2563
  %9 = load i32, ptr %8, align 4, !dbg !2563, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %9, metadata !2559, metadata !DIExpression()), !dbg !2561
  %10 = load i32, ptr %7, align 8, !dbg !2564, !tbaa !2472
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2565
  %12 = load i32, ptr %11, align 4, !dbg !2565, !tbaa !2522
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2566
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2567
  %15 = load ptr, ptr %14, align 8, !dbg !2567, !tbaa !2543
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2568
  %17 = load ptr, ptr %16, align 8, !dbg !2568, !tbaa !2546
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %18, metadata !2560, metadata !DIExpression()), !dbg !2561
  store i32 %9, ptr %8, align 4, !dbg !2570, !tbaa !1040
  ret i64 %18, !dbg !2571
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2572 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.savewd, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.savewd, align 8
  %14 = alloca %struct.savewd, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %1, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %3, metadata !2581, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 %4, metadata !2582, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 %5, metadata !2583, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %6, metadata !2584, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %7, metadata !2585, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %8, metadata !2586, metadata !DIExpression()), !dbg !2640
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2641
  %17 = icmp eq i64 %16, 1, !dbg !2642
  call void @llvm.dbg.value(metadata i1 %17, metadata !2587, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr null, metadata !2590, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2591, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2592, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 %5, metadata !2593, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 1, metadata !2595, metadata !DIExpression()), !dbg !2640
  %18 = and i32 %5, 2, !dbg !2643
  %19 = icmp ne i32 %18, 0, !dbg !2643
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2643

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2644
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2645
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2646
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %34, metadata !2591, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %33, metadata !2590, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %32, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %31, metadata !2581, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %30, metadata !2586, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %29, metadata !2585, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 %28, metadata !2582, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.label(metadata !2633), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2640
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
  ], !dbg !2648

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 5, metadata !2582, metadata !DIExpression()), !dbg !2640
  br label %102, !dbg !2649

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 5, metadata !2582, metadata !DIExpression()), !dbg !2640
  br i1 %36, label %102, label %42, !dbg !2649

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2650
  br i1 %43, label %102, label %44, !dbg !2654

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2650, !tbaa !1049
  br label %102, !dbg !2650

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.78, metadata !617, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 %28, metadata !618, metadata !DIExpression()), !dbg !2655
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.11.78, i32 noundef 5) #39, !dbg !2659
  call void @llvm.dbg.value(metadata ptr %46, metadata !619, metadata !DIExpression()), !dbg !2655
  %47 = icmp eq ptr %46, @.str.11.78, !dbg !2660
  br i1 %47, label %48, label %57, !dbg !2662

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2663
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2664
  call void @llvm.dbg.declare(metadata ptr %13, metadata !621, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata ptr %13, metadata !2666, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %13, metadata !2674, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 8, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i64 0, ptr %13, align 8, !dbg !2681
  call void @llvm.dbg.value(metadata ptr %12, metadata !620, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2682
  %50 = icmp eq i64 %49, 3, !dbg !2684
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !620, metadata !DIExpression()), !dbg !2655
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2685
  %54 = icmp eq i32 %28, 9, !dbg !2685
  %55 = select i1 %54, ptr @.str.10.80, ptr @.str.12.81, !dbg !2685
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2685
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2686
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2655
  call void @llvm.dbg.value(metadata ptr %58, metadata !2585, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr @.str.12.81, metadata !617, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 %28, metadata !618, metadata !DIExpression()), !dbg !2687
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.12.81, i32 noundef 5) #39, !dbg !2689
  call void @llvm.dbg.value(metadata ptr %59, metadata !619, metadata !DIExpression()), !dbg !2687
  %60 = icmp eq ptr %59, @.str.12.81, !dbg !2690
  br i1 %60, label %61, label %70, !dbg !2691

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2692
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %11, metadata !621, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %11, metadata !2666, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %11, metadata !2674, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 8, metadata !2678, metadata !DIExpression()), !dbg !2697
  store i64 0, ptr %11, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata ptr %10, metadata !620, metadata !DIExpression(DW_OP_deref)), !dbg !2687
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2700
  %63 = icmp eq i64 %62, 3, !dbg !2701
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !620, metadata !DIExpression()), !dbg !2687
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2702
  %67 = icmp eq i32 %28, 9, !dbg !2702
  %68 = select i1 %67, ptr @.str.10.80, ptr @.str.12.81, !dbg !2702
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2702
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2703
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2586, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %71, metadata !2585, metadata !DIExpression()), !dbg !2640
  br i1 %36, label %88, label %73, !dbg !2704

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2597, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2588, metadata !DIExpression()), !dbg !2640
  %74 = load i8, ptr %71, align 1, !dbg !2706, !tbaa !1049
  %75 = icmp eq i8 %74, 0, !dbg !2708
  br i1 %75, label %88, label %76, !dbg !2708

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2597, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %79, metadata !2588, metadata !DIExpression()), !dbg !2640
  %80 = icmp ult i64 %79, %39, !dbg !2709
  br i1 %80, label %81, label %83, !dbg !2712

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2709
  store i8 %77, ptr %82, align 1, !dbg !2709, !tbaa !1049
  br label %83, !dbg !2709

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %84, metadata !2588, metadata !DIExpression()), !dbg !2640
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2713
  call void @llvm.dbg.value(metadata ptr %85, metadata !2597, metadata !DIExpression()), !dbg !2705
  %86 = load i8, ptr %85, align 1, !dbg !2706, !tbaa !1049
  %87 = icmp eq i8 %86, 0, !dbg !2708
  br i1 %87, label %88, label %76, !dbg !2708, !llvm.loop !2714

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2716
  call void @llvm.dbg.value(metadata i64 %89, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 1, metadata !2592, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %72, metadata !2590, metadata !DIExpression()), !dbg !2640
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %90, metadata !2591, metadata !DIExpression()), !dbg !2640
  br label %102, !dbg !2718

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2592, metadata !DIExpression()), !dbg !2640
  br label %93, !dbg !2719

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2640
  br i1 %36, label %102, label %96, !dbg !2720

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 2, metadata !2582, metadata !DIExpression()), !dbg !2640
  br label %102, !dbg !2721

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 2, metadata !2582, metadata !DIExpression()), !dbg !2640
  br i1 %36, label %102, label %96, !dbg !2721

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2722
  br i1 %98, label %102, label %99, !dbg !2726

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2722, !tbaa !1049
  br label %102, !dbg !2722

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2640
  br label %102, !dbg !2727

101:                                              ; preds = %27
  call void @abort() #41, !dbg !2728
  unreachable, !dbg !2728

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2716
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.80, %42 ], [ @.str.10.80, %44 ], [ @.str.10.80, %41 ], [ %33, %27 ], [ @.str.12.81, %96 ], [ @.str.12.81, %99 ], [ @.str.12.81, %95 ], [ @.str.10.80, %40 ], [ @.str.12.81, %93 ], [ @.str.12.81, %92 ], !dbg !2640
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2640
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %108, metadata !2591, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %107, metadata !2590, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %106, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %105, metadata !2586, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %104, metadata !2585, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 %103, metadata !2582, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2602, metadata !DIExpression()), !dbg !2729
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
  br label %122, !dbg !2730

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2716
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2644
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2731
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %129, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %125, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %124, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %123, metadata !2581, metadata !DIExpression()), !dbg !2640
  %131 = icmp eq i64 %123, -1, !dbg !2732
  br i1 %131, label %132, label %136, !dbg !2733

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2734
  %134 = load i8, ptr %133, align 1, !dbg !2734, !tbaa !1049
  %135 = icmp eq i8 %134, 0, !dbg !2735
  br i1 %135, label %579, label %138, !dbg !2736

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2737
  br i1 %137, label %579, label %138, !dbg !2736

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2738
  br i1 %114, label %139, label %152, !dbg !2739

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2741
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2742
  br i1 %141, label %142, label %144, !dbg !2742

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %143, metadata !2581, metadata !DIExpression()), !dbg !2640
  br label %144, !dbg !2744

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2744
  call void @llvm.dbg.value(metadata i64 %145, metadata !2581, metadata !DIExpression()), !dbg !2640
  %146 = icmp ugt i64 %140, %145, !dbg !2745
  br i1 %146, label %152, label %147, !dbg !2746

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2747
  call void @llvm.dbg.value(metadata ptr %148, metadata !2748, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %107, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %108, metadata !2752, metadata !DIExpression()), !dbg !2753
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2755
  %150 = icmp eq i32 %149, 0, !dbg !2756
  %151 = and i1 %150, %110, !dbg !2757
  br i1 %151, label %630, label %152, !dbg !2757

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %153, metadata !2581, metadata !DIExpression()), !dbg !2640
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2758
  %156 = load i8, ptr %155, align 1, !dbg !2758, !tbaa !1049
  call void @llvm.dbg.value(metadata i8 %156, metadata !2609, metadata !DIExpression()), !dbg !2738
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
  ], !dbg !2759

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2760

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2761

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2607, metadata !DIExpression()), !dbg !2738
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2765
  br i1 %160, label %177, label %161, !dbg !2765

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2767
  br i1 %162, label %163, label %165, !dbg !2771

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2767
  store i8 39, ptr %164, align 1, !dbg !2767, !tbaa !1049
  br label %165, !dbg !2767

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %166, metadata !2588, metadata !DIExpression()), !dbg !2640
  %167 = icmp ult i64 %166, %130, !dbg !2772
  br i1 %167, label %168, label %170, !dbg !2775

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2772
  store i8 36, ptr %169, align 1, !dbg !2772, !tbaa !1049
  br label %170, !dbg !2772

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %171, metadata !2588, metadata !DIExpression()), !dbg !2640
  %172 = icmp ult i64 %171, %130, !dbg !2776
  br i1 %172, label %173, label %175, !dbg !2779

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2776
  store i8 39, ptr %174, align 1, !dbg !2776, !tbaa !1049
  br label %175, !dbg !2776

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %176, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2640
  br label %177, !dbg !2780

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2640
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %178, metadata !2588, metadata !DIExpression()), !dbg !2640
  %180 = icmp ult i64 %178, %130, !dbg !2781
  br i1 %180, label %181, label %183, !dbg !2784

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2781
  store i8 92, ptr %182, align 1, !dbg !2781, !tbaa !1049
  br label %183, !dbg !2781

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %184, metadata !2588, metadata !DIExpression()), !dbg !2640
  br i1 %111, label %185, label %482, !dbg !2785

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2787
  %187 = icmp ult i64 %186, %153, !dbg !2788
  br i1 %187, label %188, label %439, !dbg !2789

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2790
  %190 = load i8, ptr %189, align 1, !dbg !2790, !tbaa !1049
  %191 = add i8 %190, -48, !dbg !2791
  %192 = icmp ult i8 %191, 10, !dbg !2791
  br i1 %192, label %193, label %439, !dbg !2791

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2792
  br i1 %194, label %195, label %197, !dbg !2796

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2792
  store i8 48, ptr %196, align 1, !dbg !2792, !tbaa !1049
  br label %197, !dbg !2792

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %198, metadata !2588, metadata !DIExpression()), !dbg !2640
  %199 = icmp ult i64 %198, %130, !dbg !2797
  br i1 %199, label %200, label %202, !dbg !2800

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2797
  store i8 48, ptr %201, align 1, !dbg !2797, !tbaa !1049
  br label %202, !dbg !2797

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %203, metadata !2588, metadata !DIExpression()), !dbg !2640
  br label %439, !dbg !2801

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2802

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2803

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2804

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2806

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2808
  %210 = icmp ult i64 %209, %153, !dbg !2809
  br i1 %210, label %211, label %439, !dbg !2810

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2811
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2812
  %214 = load i8, ptr %213, align 1, !dbg !2812, !tbaa !1049
  %215 = icmp eq i8 %214, 63, !dbg !2813
  br i1 %215, label %216, label %439, !dbg !2814

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2815
  %218 = load i8, ptr %217, align 1, !dbg !2815, !tbaa !1049
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
  ], !dbg !2816

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2817

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %209, metadata !2602, metadata !DIExpression()), !dbg !2729
  %221 = icmp ult i64 %124, %130, !dbg !2819
  br i1 %221, label %222, label %224, !dbg !2822

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2819
  store i8 63, ptr %223, align 1, !dbg !2819, !tbaa !1049
  br label %224, !dbg !2819

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2822
  call void @llvm.dbg.value(metadata i64 %225, metadata !2588, metadata !DIExpression()), !dbg !2640
  %226 = icmp ult i64 %225, %130, !dbg !2823
  br i1 %226, label %227, label %229, !dbg !2826

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2823
  store i8 34, ptr %228, align 1, !dbg !2823, !tbaa !1049
  br label %229, !dbg !2823

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %230, metadata !2588, metadata !DIExpression()), !dbg !2640
  %231 = icmp ult i64 %230, %130, !dbg !2827
  br i1 %231, label %232, label %234, !dbg !2830

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2827
  store i8 34, ptr %233, align 1, !dbg !2827, !tbaa !1049
  br label %234, !dbg !2827

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %235, metadata !2588, metadata !DIExpression()), !dbg !2640
  %236 = icmp ult i64 %235, %130, !dbg !2831
  br i1 %236, label %237, label %239, !dbg !2834

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2831
  store i8 63, ptr %238, align 1, !dbg !2831, !tbaa !1049
  br label %239, !dbg !2831

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %240, metadata !2588, metadata !DIExpression()), !dbg !2640
  br label %439, !dbg !2835

241:                                              ; preds = %152
  br label %251, !dbg !2836

242:                                              ; preds = %152
  br label %251, !dbg !2837

243:                                              ; preds = %152
  br label %249, !dbg !2838

244:                                              ; preds = %152
  br label %249, !dbg !2839

245:                                              ; preds = %152
  br label %251, !dbg !2840

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2841

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2842

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2845

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2847
  call void @llvm.dbg.label(metadata !2634), !dbg !2848
  br i1 %119, label %621, label %251, !dbg !2849

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2847
  call void @llvm.dbg.label(metadata !2636), !dbg !2851
  br i1 %109, label %493, label %450, !dbg !2852

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2853

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2854, !tbaa !1049
  %256 = icmp eq i8 %255, 0, !dbg !2856
  br i1 %256, label %257, label %439, !dbg !2857

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2858
  br i1 %258, label %259, label %439, !dbg !2860

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2608, metadata !DIExpression()), !dbg !2738
  br label %260, !dbg !2861

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2608, metadata !DIExpression()), !dbg !2738
  br i1 %116, label %262, label %439, !dbg !2862

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2864

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 1, metadata !2608, metadata !DIExpression()), !dbg !2738
  br i1 %116, label %264, label %439, !dbg !2865

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2866

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2869
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2871
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2871
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %270, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %269, metadata !2589, metadata !DIExpression()), !dbg !2640
  %271 = icmp ult i64 %124, %270, !dbg !2872
  br i1 %271, label %272, label %274, !dbg !2875

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2872
  store i8 39, ptr %273, align 1, !dbg !2872, !tbaa !1049
  br label %274, !dbg !2872

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %275, metadata !2588, metadata !DIExpression()), !dbg !2640
  %276 = icmp ult i64 %275, %270, !dbg !2876
  br i1 %276, label %277, label %279, !dbg !2879

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2876
  store i8 92, ptr %278, align 1, !dbg !2876, !tbaa !1049
  br label %279, !dbg !2876

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %280, metadata !2588, metadata !DIExpression()), !dbg !2640
  %281 = icmp ult i64 %280, %270, !dbg !2880
  br i1 %281, label %282, label %284, !dbg !2883

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2880
  store i8 39, ptr %283, align 1, !dbg !2880, !tbaa !1049
  br label %284, !dbg !2880

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %285, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2640
  br label %439, !dbg !2884

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2885

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2610, metadata !DIExpression()), !dbg !2886
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !2887
  %289 = load ptr, ptr %288, align 8, !dbg !2887, !tbaa !972
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2887
  %292 = load i16, ptr %291, align 2, !dbg !2887, !tbaa !1081
  %293 = and i16 %292, 16384, !dbg !2887
  %294 = icmp ne i16 %293, 0, !dbg !2889
  call void @llvm.dbg.value(metadata i1 %294, metadata !2613, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2886
  br label %337, !dbg !2890

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2614, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %14, metadata !2666, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %14, metadata !2674, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 8, metadata !2678, metadata !DIExpression()), !dbg !2895
  store i64 0, ptr %14, align 8, !dbg !2897
  call void @llvm.dbg.value(metadata i64 0, metadata !2610, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8 1, metadata !2613, metadata !DIExpression()), !dbg !2886
  %296 = icmp eq i64 %153, -1, !dbg !2898
  br i1 %296, label %297, label %299, !dbg !2900

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %298, metadata !2581, metadata !DIExpression()), !dbg !2640
  br label %299, !dbg !2902

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2738
  call void @llvm.dbg.value(metadata i64 %300, metadata !2581, metadata !DIExpression()), !dbg !2640
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2903
  %301 = sub i64 %300, %129, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %15, metadata !2617, metadata !DIExpression(DW_OP_deref)), !dbg !2905
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %302, metadata !2621, metadata !DIExpression()), !dbg !2905
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2907

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2610, metadata !DIExpression()), !dbg !2886
  %304 = icmp ugt i64 %300, %129, !dbg !2908
  br i1 %304, label %306, label %332, !dbg !2910

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2613, metadata !DIExpression()), !dbg !2886
  br label %332, !dbg !2911

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2610, metadata !DIExpression()), !dbg !2886
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2913
  %310 = load i8, ptr %309, align 1, !dbg !2913, !tbaa !1049
  %311 = icmp eq i8 %310, 0, !dbg !2910
  br i1 %311, label %332, label %312, !dbg !2914

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %313, metadata !2610, metadata !DIExpression()), !dbg !2886
  %314 = add i64 %313, %129, !dbg !2916
  %315 = icmp eq i64 %313, %301, !dbg !2908
  br i1 %315, label %332, label %306, !dbg !2910, !llvm.loop !2917

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2918
  %319 = and i1 %318, %110, !dbg !2918
  call void @llvm.dbg.value(metadata i64 1, metadata !2622, metadata !DIExpression()), !dbg !2919
  br i1 %319, label %320, label %328, !dbg !2918

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2622, metadata !DIExpression()), !dbg !2919
  %322 = add i64 %321, %129, !dbg !2920
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2922
  %324 = load i8, ptr %323, align 1, !dbg !2922, !tbaa !1049
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2923

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %326, metadata !2622, metadata !DIExpression()), !dbg !2919
  %327 = icmp eq i64 %326, %302, !dbg !2925
  br i1 %327, label %328, label %320, !dbg !2926, !llvm.loop !2927

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2929, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %329, metadata !2617, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 %329, metadata !2931, metadata !DIExpression()), !dbg !2939
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !2941
  %331 = icmp ne i32 %330, 0, !dbg !2942
  call void @llvm.dbg.value(metadata i8 poison, metadata !2613, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %302, metadata !2610, metadata !DIExpression()), !dbg !2886
  br label %332, !dbg !2943

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2613, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %333, metadata !2610, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2945
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2613, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 0, metadata !2610, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2945
  call void @llvm.dbg.label(metadata !2639), !dbg !2946
  %336 = select i1 %109, i32 4, i32 2, !dbg !2947
  br label %626, !dbg !2947

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2738
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2949
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2613, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %339, metadata !2610, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %338, metadata !2581, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i1 %340, metadata !2608, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2738
  %341 = icmp ult i64 %339, 2, !dbg !2950
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2951
  br i1 %343, label %439, label %344, !dbg !2951

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %345, metadata !2630, metadata !DIExpression()), !dbg !2953
  br label %346, !dbg !2954

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2640
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2729
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2955
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2738
  call void @llvm.dbg.value(metadata i8 %352, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 %351, metadata !2607, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %349, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %347, metadata !2588, metadata !DIExpression()), !dbg !2640
  br i1 %342, label %397, label %353, !dbg !2956

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2961

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2607, metadata !DIExpression()), !dbg !2738
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2964
  br i1 %355, label %372, label %356, !dbg !2964

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2966
  br i1 %357, label %358, label %360, !dbg !2970

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2966
  store i8 39, ptr %359, align 1, !dbg !2966, !tbaa !1049
  br label %360, !dbg !2966

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %361, metadata !2588, metadata !DIExpression()), !dbg !2640
  %362 = icmp ult i64 %361, %130, !dbg !2971
  br i1 %362, label %363, label %365, !dbg !2974

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2971
  store i8 36, ptr %364, align 1, !dbg !2971, !tbaa !1049
  br label %365, !dbg !2971

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %366, metadata !2588, metadata !DIExpression()), !dbg !2640
  %367 = icmp ult i64 %366, %130, !dbg !2975
  br i1 %367, label %368, label %370, !dbg !2978

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2975
  store i8 39, ptr %369, align 1, !dbg !2975, !tbaa !1049
  br label %370, !dbg !2975

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %371, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2640
  br label %372, !dbg !2979

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2640
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %373, metadata !2588, metadata !DIExpression()), !dbg !2640
  %375 = icmp ult i64 %373, %130, !dbg !2980
  br i1 %375, label %376, label %378, !dbg !2983

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2980
  store i8 92, ptr %377, align 1, !dbg !2980, !tbaa !1049
  br label %378, !dbg !2980

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %379, metadata !2588, metadata !DIExpression()), !dbg !2640
  %380 = icmp ult i64 %379, %130, !dbg !2984
  br i1 %380, label %381, label %385, !dbg !2987

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2984
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2984
  store i8 %383, ptr %384, align 1, !dbg !2984, !tbaa !1049
  br label %385, !dbg !2984

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %386, metadata !2588, metadata !DIExpression()), !dbg !2640
  %387 = icmp ult i64 %386, %130, !dbg !2988
  br i1 %387, label %388, label %393, !dbg !2991

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2988
  %391 = or i8 %390, 48, !dbg !2988
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2988
  store i8 %391, ptr %392, align 1, !dbg !2988, !tbaa !1049
  br label %393, !dbg !2988

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %394, metadata !2588, metadata !DIExpression()), !dbg !2640
  %395 = and i8 %352, 7, !dbg !2992
  %396 = or i8 %395, 48, !dbg !2993
  call void @llvm.dbg.value(metadata i8 %396, metadata !2609, metadata !DIExpression()), !dbg !2738
  br label %404, !dbg !2994

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2995

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2996
  br i1 %399, label %400, label %402, !dbg !3001

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2996
  store i8 92, ptr %401, align 1, !dbg !2996, !tbaa !1049
  br label %402, !dbg !2996

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %403, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2738
  br label %404, !dbg !3002

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2640
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2738
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2738
  call void @llvm.dbg.value(metadata i8 %409, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 %408, metadata !2607, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %405, metadata !2588, metadata !DIExpression()), !dbg !2640
  %410 = add i64 %349, 1, !dbg !3003
  %411 = icmp ugt i64 %345, %410, !dbg !3005
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3006

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3007
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3007
  br i1 %415, label %416, label %427, !dbg !3007

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3010
  br i1 %417, label %418, label %420, !dbg !3014

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3010
  store i8 39, ptr %419, align 1, !dbg !3010, !tbaa !1049
  br label %420, !dbg !3010

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %421, metadata !2588, metadata !DIExpression()), !dbg !2640
  %422 = icmp ult i64 %421, %130, !dbg !3015
  br i1 %422, label %423, label %425, !dbg !3018

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3015
  store i8 39, ptr %424, align 1, !dbg !3015, !tbaa !1049
  br label %425, !dbg !3015

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %426, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2640
  br label %427, !dbg !3019

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3020
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %428, metadata !2588, metadata !DIExpression()), !dbg !2640
  %430 = icmp ult i64 %428, %130, !dbg !3021
  br i1 %430, label %431, label %433, !dbg !3024

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3021
  store i8 %409, ptr %432, align 1, !dbg !3021, !tbaa !1049
  br label %433, !dbg !3021

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %434, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %410, metadata !2602, metadata !DIExpression()), !dbg !2729
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3025
  %436 = load i8, ptr %435, align 1, !dbg !3025, !tbaa !1049
  call void @llvm.dbg.value(metadata i8 %436, metadata !2609, metadata !DIExpression()), !dbg !2738
  br label %346, !dbg !3026, !llvm.loop !3027

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i1 %340, metadata !2608, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2738
  call void @llvm.dbg.value(metadata i8 %408, metadata !2607, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %349, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %405, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %338, metadata !2581, metadata !DIExpression()), !dbg !2640
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3030
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2640
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2644
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2729
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2738
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %448, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2608, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %445, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %442, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %441, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %440, metadata !2581, metadata !DIExpression()), !dbg !2640
  br i1 %112, label %461, label %450, !dbg !3031

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
  br i1 %121, label %462, label %482, !dbg !3033

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3034

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
  %473 = lshr i8 %464, 5, !dbg !3035
  %474 = zext i8 %473 to i64, !dbg !3035
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3036
  %476 = load i32, ptr %475, align 4, !dbg !3036, !tbaa !1040
  %477 = and i8 %464, 31, !dbg !3037
  %478 = zext i8 %477 to i32, !dbg !3037
  %479 = shl nuw i32 1, %478, !dbg !3038
  %480 = and i32 %476, %479, !dbg !3038
  %481 = icmp eq i32 %480, 0, !dbg !3038
  br i1 %481, label %482, label %493, !dbg !3039

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
  br i1 %154, label %493, label %529, !dbg !3040

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3030
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2640
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2644
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3041
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2738
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %501, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2608, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %499, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %496, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %495, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %494, metadata !2581, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.label(metadata !2637), !dbg !3042
  br i1 %110, label %621, label %503, !dbg !3043

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2607, metadata !DIExpression()), !dbg !2738
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3045
  br i1 %504, label %521, label %505, !dbg !3045

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3047
  br i1 %506, label %507, label %509, !dbg !3051

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3047
  store i8 39, ptr %508, align 1, !dbg !3047, !tbaa !1049
  br label %509, !dbg !3047

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %510, metadata !2588, metadata !DIExpression()), !dbg !2640
  %511 = icmp ult i64 %510, %502, !dbg !3052
  br i1 %511, label %512, label %514, !dbg !3055

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3052
  store i8 36, ptr %513, align 1, !dbg !3052, !tbaa !1049
  br label %514, !dbg !3052

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %515, metadata !2588, metadata !DIExpression()), !dbg !2640
  %516 = icmp ult i64 %515, %502, !dbg !3056
  br i1 %516, label %517, label %519, !dbg !3059

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3056
  store i8 39, ptr %518, align 1, !dbg !3056, !tbaa !1049
  br label %519, !dbg !3056

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %520, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2640
  br label %521, !dbg !3060

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2738
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %522, metadata !2588, metadata !DIExpression()), !dbg !2640
  %524 = icmp ult i64 %522, %502, !dbg !3061
  br i1 %524, label %525, label %527, !dbg !3064

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3061
  store i8 92, ptr %526, align 1, !dbg !3061, !tbaa !1049
  br label %527, !dbg !3061

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %502, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %501, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2608, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %499, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %496, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %528, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %494, metadata !2581, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.label(metadata !2638), !dbg !3065
  br label %553, !dbg !3066

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3030
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2640
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2644
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3041
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3069
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 %538, metadata !2609, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2608, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 poison, metadata !2607, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %535, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %532, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %531, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %530, metadata !2581, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.label(metadata !2638), !dbg !3065
  %540 = xor i1 %534, true, !dbg !3066
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3066
  br i1 %541, label %553, label %542, !dbg !3066

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3070
  br i1 %543, label %544, label %546, !dbg !3074

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3070
  store i8 39, ptr %545, align 1, !dbg !3070, !tbaa !1049
  br label %546, !dbg !3070

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %547, metadata !2588, metadata !DIExpression()), !dbg !2640
  %548 = icmp ult i64 %547, %539, !dbg !3075
  br i1 %548, label %549, label %551, !dbg !3078

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3075
  store i8 39, ptr %550, align 1, !dbg !3075, !tbaa !1049
  br label %551, !dbg !3075

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %552, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2640
  br label %553, !dbg !3079

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2738
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %561, metadata !2588, metadata !DIExpression()), !dbg !2640
  %563 = icmp ult i64 %561, %554, !dbg !3080
  br i1 %563, label %564, label %566, !dbg !3083

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3080
  store i8 %555, ptr %565, align 1, !dbg !3080, !tbaa !1049
  br label %566, !dbg !3080

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %567, metadata !2588, metadata !DIExpression()), !dbg !2640
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3084
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2640
  br label %569, !dbg !3085

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3030
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2640
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2644
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3041
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %576, metadata !2602, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %572, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %571, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %570, metadata !2581, metadata !DIExpression()), !dbg !2640
  %578 = add i64 %576, 1, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %578, metadata !2602, metadata !DIExpression()), !dbg !2729
  br label %122, !dbg !3087, !llvm.loop !3088

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2579, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2595, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 poison, metadata !2594, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %125, metadata !2589, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %124, metadata !2588, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %123, metadata !2581, metadata !DIExpression()), !dbg !2640
  %580 = icmp ne i64 %124, 0, !dbg !3090
  %581 = xor i1 %110, true, !dbg !3092
  %582 = or i1 %580, %581, !dbg !3092
  %583 = or i1 %582, %111, !dbg !3092
  br i1 %583, label %584, label %621, !dbg !3092

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3093
  %586 = xor i1 %126, true, !dbg !3093
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3093
  br i1 %587, label %595, label %588, !dbg !3093

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3095

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3097
  br label %636, !dbg !3099

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3100
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3102
  br i1 %594, label %27, label %595, !dbg !3102

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3103
  %598 = or i1 %597, %596, !dbg !3105
  br i1 %598, label %614, label %599, !dbg !3105

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2590, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %124, metadata !2588, metadata !DIExpression()), !dbg !2640
  %600 = load i8, ptr %107, align 1, !dbg !3106, !tbaa !1049
  %601 = icmp eq i8 %600, 0, !dbg !3109
  br i1 %601, label %614, label %602, !dbg !3109

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2590, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %605, metadata !2588, metadata !DIExpression()), !dbg !2640
  %606 = icmp ult i64 %605, %130, !dbg !3110
  br i1 %606, label %607, label %609, !dbg !3113

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3110
  store i8 %603, ptr %608, align 1, !dbg !3110, !tbaa !1049
  br label %609, !dbg !3110

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %610, metadata !2588, metadata !DIExpression()), !dbg !2640
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3114
  call void @llvm.dbg.value(metadata ptr %611, metadata !2590, metadata !DIExpression()), !dbg !2640
  %612 = load i8, ptr %611, align 1, !dbg !3106, !tbaa !1049
  %613 = icmp eq i8 %612, 0, !dbg !3109
  br i1 %613, label %614, label %602, !dbg !3109, !llvm.loop !3115

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2716
  call void @llvm.dbg.value(metadata i64 %615, metadata !2588, metadata !DIExpression()), !dbg !2640
  %616 = icmp ult i64 %615, %130, !dbg !3117
  br i1 %616, label %617, label %636, !dbg !3119

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3120
  store i8 0, ptr %618, align 1, !dbg !3121, !tbaa !1049
  br label %636, !dbg !3120

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2639), !dbg !2946
  %620 = icmp eq i32 %103, 2, !dbg !3122
  br i1 %620, label %626, label %630, !dbg !2947

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2639), !dbg !2946
  %624 = icmp eq i32 %103, 2, !dbg !3122
  %625 = select i1 %109, i32 4, i32 2, !dbg !2947
  br i1 %624, label %626, label %630, !dbg !2947

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2947

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2582, metadata !DIExpression()), !dbg !2640
  %634 = and i32 %5, -3, !dbg !3123
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3124
  br label %636, !dbg !3125

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3126
}

; Function Attrs: nounwind
declare !dbg !3127 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3130 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3133 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3135 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %2, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr null, metadata !3149, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %2, metadata !3150, metadata !DIExpression()), !dbg !3156
  %4 = icmp eq ptr %2, null, !dbg !3158
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %5, metadata !3151, metadata !DIExpression()), !dbg !3156
  %6 = tail call ptr @__errno_location() #42, !dbg !3159
  %7 = load i32, ptr %6, align 4, !dbg !3159, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %7, metadata !3152, metadata !DIExpression()), !dbg !3156
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3160
  %9 = load i32, ptr %8, align 4, !dbg !3160, !tbaa !2522
  %10 = or i32 %9, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %10, metadata !3153, metadata !DIExpression()), !dbg !3156
  %11 = load i32, ptr %5, align 8, !dbg !3162, !tbaa !2472
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3163
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3164
  %14 = load ptr, ptr %13, align 8, !dbg !3164, !tbaa !2543
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3165
  %16 = load ptr, ptr %15, align 8, !dbg !3165, !tbaa !2546
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3166
  %18 = add i64 %17, 1, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %18, metadata !3154, metadata !DIExpression()), !dbg !3156
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %19, metadata !3155, metadata !DIExpression()), !dbg !3156
  %20 = load i32, ptr %5, align 8, !dbg !3169, !tbaa !2472
  %21 = load ptr, ptr %13, align 8, !dbg !3170, !tbaa !2543
  %22 = load ptr, ptr %15, align 8, !dbg !3171, !tbaa !2546
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3172
  store i32 %7, ptr %6, align 4, !dbg !3173, !tbaa !1040
  ret ptr %19, !dbg !3174
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3144 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr %2, metadata !3149, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr %3, metadata !3150, metadata !DIExpression()), !dbg !3175
  %5 = icmp eq ptr %3, null, !dbg !3176
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3176
  call void @llvm.dbg.value(metadata ptr %6, metadata !3151, metadata !DIExpression()), !dbg !3175
  %7 = tail call ptr @__errno_location() #42, !dbg !3177
  %8 = load i32, ptr %7, align 4, !dbg !3177, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %8, metadata !3152, metadata !DIExpression()), !dbg !3175
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3178
  %10 = load i32, ptr %9, align 4, !dbg !3178, !tbaa !2522
  %11 = icmp eq ptr %2, null, !dbg !3179
  %12 = zext i1 %11 to i32, !dbg !3179
  %13 = or i32 %10, %12, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %13, metadata !3153, metadata !DIExpression()), !dbg !3175
  %14 = load i32, ptr %6, align 8, !dbg !3181, !tbaa !2472
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3182
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3183
  %17 = load ptr, ptr %16, align 8, !dbg !3183, !tbaa !2543
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3184
  %19 = load ptr, ptr %18, align 8, !dbg !3184, !tbaa !2546
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3185
  %21 = add i64 %20, 1, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %21, metadata !3154, metadata !DIExpression()), !dbg !3175
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3187
  call void @llvm.dbg.value(metadata ptr %22, metadata !3155, metadata !DIExpression()), !dbg !3175
  %23 = load i32, ptr %6, align 8, !dbg !3188, !tbaa !2472
  %24 = load ptr, ptr %16, align 8, !dbg !3189, !tbaa !2543
  %25 = load ptr, ptr %18, align 8, !dbg !3190, !tbaa !2546
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3191
  store i32 %8, ptr %7, align 4, !dbg !3192, !tbaa !1040
  br i1 %11, label %28, label %27, !dbg !3193

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3194, !tbaa !3196
  br label %28, !dbg !3197

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3198
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3199 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3204, !tbaa !972
  call void @llvm.dbg.value(metadata ptr %1, metadata !3201, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 1, metadata !3202, metadata !DIExpression()), !dbg !3206
  %2 = load i32, ptr @nslots, align 4, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 1, metadata !3202, metadata !DIExpression()), !dbg !3206
  %3 = icmp sgt i32 %2, 1, !dbg !3207
  br i1 %3, label %4, label %6, !dbg !3209

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3207
  br label %10, !dbg !3209

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3210
  %8 = load ptr, ptr %7, align 8, !dbg !3210, !tbaa !3212
  %9 = icmp eq ptr %8, @slot0, !dbg !3214
  br i1 %9, label %17, label %16, !dbg !3215

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3202, metadata !DIExpression()), !dbg !3206
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3216
  %13 = load ptr, ptr %12, align 8, !dbg !3216, !tbaa !3212
  tail call void @free(ptr noundef %13) #39, !dbg !3217
  %14 = add nuw nsw i64 %11, 1, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %14, metadata !3202, metadata !DIExpression()), !dbg !3206
  %15 = icmp eq i64 %14, %5, !dbg !3207
  br i1 %15, label %6, label %10, !dbg !3209, !llvm.loop !3219

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3221
  store i64 256, ptr @slotvec0, align 8, !dbg !3223, !tbaa !3224
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3225, !tbaa !3212
  br label %17, !dbg !3226

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3227
  br i1 %18, label %20, label %19, !dbg !3229

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3230
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3232, !tbaa !972
  br label %20, !dbg !3233

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3234, !tbaa !1040
  ret void, !dbg !3235
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3238, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata ptr %1, metadata !3239, metadata !DIExpression()), !dbg !3240
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3241
  ret ptr %3, !dbg !3242
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3243 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3247, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata ptr %1, metadata !3248, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %2, metadata !3249, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata ptr %3, metadata !3250, metadata !DIExpression()), !dbg !3263
  %6 = tail call ptr @__errno_location() #42, !dbg !3264
  %7 = load i32, ptr %6, align 4, !dbg !3264, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %7, metadata !3251, metadata !DIExpression()), !dbg !3263
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3265, !tbaa !972
  call void @llvm.dbg.value(metadata ptr %8, metadata !3252, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3253, metadata !DIExpression()), !dbg !3263
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3266
  br i1 %9, label %10, label %11, !dbg !3266

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3268
  unreachable, !dbg !3268

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3269, !tbaa !1040
  %13 = icmp sgt i32 %12, %0, !dbg !3270
  br i1 %13, label %32, label %14, !dbg !3271

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3272
  call void @llvm.dbg.value(metadata i1 %15, metadata !3254, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3273
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3274
  %16 = sext i32 %12 to i64, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %16, metadata !3257, metadata !DIExpression()), !dbg !3273
  store i64 %16, ptr %5, align 8, !dbg !3276, !tbaa !3196
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3277
  %18 = add nuw nsw i32 %0, 1, !dbg !3278
  %19 = sub i32 %18, %12, !dbg !3279
  %20 = sext i32 %19 to i64, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %5, metadata !3257, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3281
  call void @llvm.dbg.value(metadata ptr %21, metadata !3252, metadata !DIExpression()), !dbg !3263
  store ptr %21, ptr @slotvec, align 8, !dbg !3282, !tbaa !972
  br i1 %15, label %22, label %23, !dbg !3283

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3284, !tbaa.struct !3286
  br label %23, !dbg !3287

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3288, !tbaa !1040
  %25 = sext i32 %24 to i64, !dbg !3289
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3289
  %27 = load i64, ptr %5, align 8, !dbg !3290, !tbaa !3196
  call void @llvm.dbg.value(metadata i64 %27, metadata !3257, metadata !DIExpression()), !dbg !3273
  %28 = sub nsw i64 %27, %25, !dbg !3291
  %29 = shl i64 %28, 4, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %26, metadata !2674, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %29, metadata !2678, metadata !DIExpression()), !dbg !3293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3295
  %30 = load i64, ptr %5, align 8, !dbg !3296, !tbaa !3196
  call void @llvm.dbg.value(metadata i64 %30, metadata !3257, metadata !DIExpression()), !dbg !3273
  %31 = trunc i64 %30 to i32, !dbg !3296
  store i32 %31, ptr @nslots, align 4, !dbg !3297, !tbaa !1040
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3298
  br label %32, !dbg !3299

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3263
  call void @llvm.dbg.value(metadata ptr %33, metadata !3252, metadata !DIExpression()), !dbg !3263
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3300
  %36 = load i64, ptr %35, align 8, !dbg !3301, !tbaa !3224
  call void @llvm.dbg.value(metadata i64 %36, metadata !3258, metadata !DIExpression()), !dbg !3302
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3303
  %38 = load ptr, ptr %37, align 8, !dbg !3303, !tbaa !3212
  call void @llvm.dbg.value(metadata ptr %38, metadata !3260, metadata !DIExpression()), !dbg !3302
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3304
  %40 = load i32, ptr %39, align 4, !dbg !3304, !tbaa !2522
  %41 = or i32 %40, 1, !dbg !3305
  call void @llvm.dbg.value(metadata i32 %41, metadata !3261, metadata !DIExpression()), !dbg !3302
  %42 = load i32, ptr %3, align 8, !dbg !3306, !tbaa !2472
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3307
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3308
  %45 = load ptr, ptr %44, align 8, !dbg !3308, !tbaa !2543
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3309
  %47 = load ptr, ptr %46, align 8, !dbg !3309, !tbaa !2546
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %48, metadata !3262, metadata !DIExpression()), !dbg !3302
  %49 = icmp ugt i64 %36, %48, !dbg !3311
  br i1 %49, label %60, label %50, !dbg !3313

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %51, metadata !3258, metadata !DIExpression()), !dbg !3302
  store i64 %51, ptr %35, align 8, !dbg !3316, !tbaa !3224
  %52 = icmp eq ptr %38, @slot0, !dbg !3317
  br i1 %52, label %54, label %53, !dbg !3319

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3320
  br label %54, !dbg !3320

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3321
  call void @llvm.dbg.value(metadata ptr %55, metadata !3260, metadata !DIExpression()), !dbg !3302
  store ptr %55, ptr %37, align 8, !dbg !3322, !tbaa !3212
  %56 = load i32, ptr %3, align 8, !dbg !3323, !tbaa !2472
  %57 = load ptr, ptr %44, align 8, !dbg !3324, !tbaa !2543
  %58 = load ptr, ptr %46, align 8, !dbg !3325, !tbaa !2546
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3326
  br label %60, !dbg !3327

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3302
  call void @llvm.dbg.value(metadata ptr %61, metadata !3260, metadata !DIExpression()), !dbg !3302
  store i32 %7, ptr %6, align 4, !dbg !3328, !tbaa !1040
  ret ptr %61, !dbg !3329
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata ptr %1, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %2, metadata !3336, metadata !DIExpression()), !dbg !3337
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3338
  ret ptr %4, !dbg !3339
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3340 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %0, metadata !3239, metadata !DIExpression()), !dbg !3344
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3346
  ret ptr %2, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3348 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %0, metadata !3335, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3355
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3357
  ret ptr %3, !dbg !3358
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3359 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3363, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 %1, metadata !3364, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata ptr %2, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3368
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3366, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3370), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %1, metadata !3374, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3379, metadata !DIExpression()), !dbg !3382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3382, !alias.scope !3370
  %5 = icmp eq i32 %1, 10, !dbg !3383
  br i1 %5, label %6, label %7, !dbg !3385

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3386, !noalias !3370
  unreachable, !dbg !3386

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3387, !tbaa !2472, !alias.scope !3370
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3388
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3389
  ret ptr %8, !dbg !3390
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3391 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3395, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i32 %1, metadata !3396, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata ptr %2, metadata !3397, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %3, metadata !3398, metadata !DIExpression()), !dbg !3400
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3401
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3399, metadata !DIExpression()), !dbg !3402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3403), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %1, metadata !3374, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3379, metadata !DIExpression()), !dbg !3409
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3409, !alias.scope !3403
  %6 = icmp eq i32 %1, 10, !dbg !3410
  br i1 %6, label %7, label %8, !dbg !3411

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3412, !noalias !3403
  unreachable, !dbg !3412

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3413, !tbaa !2472, !alias.scope !3403
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3414
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3415
  ret ptr %9, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3417 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata ptr %1, metadata !3422, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i32 0, metadata !3363, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %0, metadata !3364, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %1, metadata !3365, metadata !DIExpression()), !dbg !3424
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3426
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3366, metadata !DIExpression()), !dbg !3427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3428), !dbg !3431
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3379, metadata !DIExpression()), !dbg !3434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3434, !alias.scope !3428
  %4 = icmp eq i32 %0, 10, !dbg !3435
  br i1 %4, label %5, label %6, !dbg !3436

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3437, !noalias !3428
  unreachable, !dbg !3437

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3438, !tbaa !2472, !alias.scope !3428
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3439
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3440
  ret ptr %7, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3442 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %1, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %2, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3395, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata ptr %1, metadata !3397, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %2, metadata !3398, metadata !DIExpression()), !dbg !3450
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3399, metadata !DIExpression()), !dbg !3453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3379, metadata !DIExpression()), !dbg !3460
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3460, !alias.scope !3454
  %5 = icmp eq i32 %0, 10, !dbg !3461
  br i1 %5, label %6, label %7, !dbg !3462

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3463, !noalias !3454
  unreachable, !dbg !3463

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3464, !tbaa !2472, !alias.scope !3454
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3465
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3466
  ret ptr %8, !dbg !3467
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3468 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 %2, metadata !3474, metadata !DIExpression()), !dbg !3476
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3477
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3475, metadata !DIExpression()), !dbg !3478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3479, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %4, metadata !2489, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 %2, metadata !2490, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 1, metadata !2491, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8 %2, metadata !2492, metadata !DIExpression()), !dbg !3481
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3483
  %6 = lshr i8 %2, 5, !dbg !3484
  %7 = zext i8 %6 to i64, !dbg !3484
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3485
  call void @llvm.dbg.value(metadata ptr %8, metadata !2493, metadata !DIExpression()), !dbg !3481
  %9 = and i8 %2, 31, !dbg !3486
  %10 = zext i8 %9 to i32, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %10, metadata !2495, metadata !DIExpression()), !dbg !3481
  %11 = load i32, ptr %8, align 4, !dbg !3487, !tbaa !1040
  %12 = lshr i32 %11, %10, !dbg !3488
  call void @llvm.dbg.value(metadata i32 %12, metadata !2496, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3481
  %13 = and i32 %12, 1, !dbg !3489
  %14 = xor i32 %13, 1, !dbg !3489
  %15 = shl nuw i32 %14, %10, !dbg !3490
  %16 = xor i32 %15, %11, !dbg !3491
  store i32 %16, ptr %8, align 4, !dbg !3491, !tbaa !1040
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3492
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3493
  ret ptr %17, !dbg !3494
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3495 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 %1, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 -1, metadata !3473, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i8 %1, metadata !3474, metadata !DIExpression()), !dbg !3502
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3504
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3475, metadata !DIExpression()), !dbg !3505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3506, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %3, metadata !2489, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8 %1, metadata !2490, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 1, metadata !2491, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()), !dbg !3507
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3509
  %5 = lshr i8 %1, 5, !dbg !3510
  %6 = zext i8 %5 to i64, !dbg !3510
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3511
  call void @llvm.dbg.value(metadata ptr %7, metadata !2493, metadata !DIExpression()), !dbg !3507
  %8 = and i8 %1, 31, !dbg !3512
  %9 = zext i8 %8 to i32, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %9, metadata !2495, metadata !DIExpression()), !dbg !3507
  %10 = load i32, ptr %7, align 4, !dbg !3513, !tbaa !1040
  %11 = lshr i32 %10, %9, !dbg !3514
  call void @llvm.dbg.value(metadata i32 %11, metadata !2496, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3507
  %12 = and i32 %11, 1, !dbg !3515
  %13 = xor i32 %12, 1, !dbg !3515
  %14 = shl nuw i32 %13, %9, !dbg !3516
  %15 = xor i32 %14, %10, !dbg !3517
  store i32 %15, ptr %7, align 4, !dbg !3517, !tbaa !1040
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3518
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3519
  ret ptr %16, !dbg !3520
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3521 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata ptr %0, metadata !3499, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8 58, metadata !3500, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 -1, metadata !3473, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !3474, metadata !DIExpression()), !dbg !3527
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3529
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3475, metadata !DIExpression()), !dbg !3530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3531, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %2, metadata !2489, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8 58, metadata !2490, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 1, metadata !2491, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !3532
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %3, metadata !2493, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 26, metadata !2495, metadata !DIExpression()), !dbg !3532
  %4 = load i32, ptr %3, align 4, !dbg !3535, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %4, metadata !2496, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3532
  %5 = or i32 %4, 67108864, !dbg !3536
  store i32 %5, ptr %3, align 4, !dbg !3536, !tbaa !1040
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3537
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3538
  ret ptr %6, !dbg !3539
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3540 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3542, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3543, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %1, metadata !3473, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 58, metadata !3474, metadata !DIExpression()), !dbg !3545
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3547
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3475, metadata !DIExpression()), !dbg !3548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3549, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %3, metadata !2489, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 58, metadata !2490, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 1, metadata !2491, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !3550
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3552
  call void @llvm.dbg.value(metadata ptr %4, metadata !2493, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 26, metadata !2495, metadata !DIExpression()), !dbg !3550
  %5 = load i32, ptr %4, align 4, !dbg !3553, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %5, metadata !2496, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3550
  %6 = or i32 %5, 67108864, !dbg !3554
  store i32 %6, ptr %4, align 4, !dbg !3554, !tbaa !1040
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3555
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3556
  ret ptr %7, !dbg !3557
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3558 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3379, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3564
  call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %1, metadata !3561, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr %2, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3567
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3563, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %1, metadata !3374, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !3379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3569
  %5 = icmp eq i32 %1, 10, !dbg !3570
  br i1 %5, label %6, label %7, !dbg !3571

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3572, !noalias !3573
  unreachable, !dbg !3572

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3569
  store i32 %1, ptr %4, align 8, !dbg !3576, !tbaa.struct !3480
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3576
  call void @llvm.dbg.value(metadata ptr %4, metadata !2489, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8 58, metadata !2490, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 1, metadata !2491, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !3577
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3579
  call void @llvm.dbg.value(metadata ptr %9, metadata !2493, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 26, metadata !2495, metadata !DIExpression()), !dbg !3577
  %10 = load i32, ptr %9, align 4, !dbg !3580, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %10, metadata !2496, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3577
  %11 = or i32 %10, 67108864, !dbg !3581
  store i32 %11, ptr %9, align 4, !dbg !3581, !tbaa !1040
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3582
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3583
  ret ptr %12, !dbg !3584
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3585 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3589, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata ptr %1, metadata !3590, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata ptr %2, metadata !3591, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata ptr %3, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %1, metadata !3599, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %2, metadata !3600, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %3, metadata !3601, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i64 -1, metadata !3602, metadata !DIExpression()), !dbg !3604
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3606
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3608, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %1, metadata !2530, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %2, metadata !2531, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !3609
  store i32 10, ptr %5, align 8, !dbg !3611, !tbaa !2472
  %6 = icmp ne ptr %1, null, !dbg !3612
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3613
  br i1 %8, label %10, label %9, !dbg !3613

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3614
  unreachable, !dbg !3614

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3615
  store ptr %1, ptr %11, align 8, !dbg !3616, !tbaa !2543
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3617
  store ptr %2, ptr %12, align 8, !dbg !3618, !tbaa !2546
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3619
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3620
  ret ptr %13, !dbg !3621
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3595 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %1, metadata !3599, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %2, metadata !3600, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %3, metadata !3601, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %4, metadata !3602, metadata !DIExpression()), !dbg !3622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3603, metadata !DIExpression()), !dbg !3624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3625, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %6, metadata !2529, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %1, metadata !2530, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %2, metadata !2531, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata ptr %6, metadata !2529, metadata !DIExpression()), !dbg !3626
  store i32 10, ptr %6, align 8, !dbg !3628, !tbaa !2472
  %7 = icmp ne ptr %1, null, !dbg !3629
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3630
  br i1 %9, label %11, label %10, !dbg !3630

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3631
  unreachable, !dbg !3631

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3632
  store ptr %1, ptr %12, align 8, !dbg !3633, !tbaa !2543
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3634
  store ptr %2, ptr %13, align 8, !dbg !3635, !tbaa !2546
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3637
  ret ptr %14, !dbg !3638
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3639 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %1, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %2, metadata !3645, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %0, metadata !3590, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %1, metadata !3591, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %2, metadata !3592, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 0, metadata !3594, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %1, metadata !3600, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %2, metadata !3601, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 -1, metadata !3602, metadata !DIExpression()), !dbg !3649
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3651
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3603, metadata !DIExpression()), !dbg !3652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3653, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %4, metadata !2529, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !2530, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %1, metadata !2531, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %4, metadata !2529, metadata !DIExpression()), !dbg !3654
  store i32 10, ptr %4, align 8, !dbg !3656, !tbaa !2472
  %5 = icmp ne ptr %0, null, !dbg !3657
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3658
  br i1 %7, label %9, label %8, !dbg !3658

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3659
  unreachable, !dbg !3659

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3660
  store ptr %0, ptr %10, align 8, !dbg !3661, !tbaa !2543
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3662
  store ptr %1, ptr %11, align 8, !dbg !3663, !tbaa !2546
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3665
  ret ptr %12, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3667 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata ptr %2, metadata !3673, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %3, metadata !3674, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 0, metadata !3594, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %1, metadata !3600, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %2, metadata !3601, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %3, metadata !3602, metadata !DIExpression()), !dbg !3676
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3678
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3603, metadata !DIExpression()), !dbg !3679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3680, !tbaa.struct !3480
  call void @llvm.dbg.value(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %0, metadata !2530, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %1, metadata !2531, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !3681
  store i32 10, ptr %5, align 8, !dbg !3683, !tbaa !2472
  %6 = icmp ne ptr %0, null, !dbg !3684
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3685
  br i1 %8, label %10, label %9, !dbg !3685

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3686
  unreachable, !dbg !3686

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3687
  store ptr %0, ptr %11, align 8, !dbg !3688, !tbaa !2543
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3689
  store ptr %1, ptr %12, align 8, !dbg !3690, !tbaa !2546
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3691
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3692
  ret ptr %13, !dbg !3693
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %1, metadata !3699, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %2, metadata !3700, metadata !DIExpression()), !dbg !3701
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3702
  ret ptr %4, !dbg !3703
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 0, metadata !3698, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %1, metadata !3700, metadata !DIExpression()), !dbg !3711
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3713
  ret ptr %3, !dbg !3714
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3715 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3719, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata ptr %1, metadata !3720, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %1, metadata !3699, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 -1, metadata !3700, metadata !DIExpression()), !dbg !3722
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3724
  ret ptr %3, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3726 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3730, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32 0, metadata !3719, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata ptr %0, metadata !3720, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3698, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 -1, metadata !3700, metadata !DIExpression()), !dbg !3734
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3736
  ret ptr %2, !dbg !3737
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @savewd_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #26 !dbg !3738 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3743, metadata !DIExpression()), !dbg !3744
  store i32 0, ptr %0, align 4, !dbg !3745, !tbaa !1916
  ret void, !dbg !3746
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @savewd_errno(ptr nocapture noundef readonly %0) local_unnamed_addr #27 !dbg !3747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3754
  %2 = load i32, ptr %0, align 4, !dbg !3755, !tbaa !1916
  %3 = icmp ult i32 %2, 4, !dbg !3756
  br i1 %3, label %7, label %4, !dbg !3757

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3758
  %6 = load i32, ptr %5, align 4, !dbg !3759, !tbaa !1049
  br label %7, !dbg !3757

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ], !dbg !3757
  ret i32 %8, !dbg !3760
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_chdir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #10 !dbg !3761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %1, metadata !3766, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %2, metadata !3767, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %3, metadata !3768, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 -1, metadata !3769, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3774
  %5 = icmp eq ptr %3, null, !dbg !3775
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7, !dbg !3777
  br i1 %8, label %27, label %9, !dbg !3777

9:                                                ; preds = %4
  %10 = shl i32 %2, 15, !dbg !3778
  %11 = and i32 %10, 32768, !dbg !3778
  %12 = or i32 %11, 18688, !dbg !3780
  %13 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %1, i32 noundef %12) #39, !dbg !3781
  call void @llvm.dbg.value(metadata i32 %13, metadata !3769, metadata !DIExpression()), !dbg !3774
  br i1 %5, label %18, label %14, !dbg !3782

14:                                               ; preds = %9
  store i32 %13, ptr %3, align 4, !dbg !3783, !tbaa !1040
  %15 = tail call ptr @__errno_location() #42, !dbg !3786
  %16 = load i32, ptr %15, align 4, !dbg !3786, !tbaa !1040
  %17 = getelementptr inbounds i32, ptr %3, i64 1, !dbg !3787
  store i32 %16, ptr %17, align 4, !dbg !3788, !tbaa !1040
  br label %18, !dbg !3789

18:                                               ; preds = %14, %9
  %19 = icmp slt i32 %13, 0, !dbg !3790
  br i1 %19, label %20, label %24, !dbg !3792

20:                                               ; preds = %18
  %21 = tail call ptr @__errno_location() #42, !dbg !3793
  %22 = load i32, ptr %21, align 4, !dbg !3793, !tbaa !1040
  %23 = icmp eq i32 %22, 13, !dbg !3794
  call void @llvm.dbg.value(metadata i32 poison, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %13, metadata !3769, metadata !DIExpression()), !dbg !3774
  br i1 %23, label %27, label %84, !dbg !3795

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 poison, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %13, metadata !3769, metadata !DIExpression()), !dbg !3774
  %25 = and i32 %2, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %73, !dbg !3797

27:                                               ; preds = %20, %4, %24
  %28 = phi i32 [ %13, %24 ], [ -1, %4 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !3798, metadata !DIExpression()), !dbg !3807
  %29 = load i32, ptr %0, align 4, !dbg !3811, !tbaa !1916
  switch i32 %29, label %54 [
    i32 0, label %30
    i32 3, label %41
    i32 1, label %55
    i32 2, label %55
    i32 4, label %55
    i32 5, label %55
  ], !dbg !3812

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef nonnull @.str.5.90, i32 noundef 0) #39, !dbg !3813
  call void @llvm.dbg.value(metadata i32 %31, metadata !3803, metadata !DIExpression()), !dbg !3814
  %32 = icmp sgt i32 %31, -1, !dbg !3815
  br i1 %32, label %33, label %35, !dbg !3817

33:                                               ; preds = %30
  store i32 1, ptr %0, align 4, !dbg !3818, !tbaa !1916
  %34 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3820
  store i32 %31, ptr %34, align 4, !dbg !3821, !tbaa !1049
  br label %55, !dbg !3822

35:                                               ; preds = %30
  %36 = tail call ptr @__errno_location() #42, !dbg !3823
  %37 = load i32, ptr %36, align 4, !dbg !3823, !tbaa !1040
  call void @llvm.dbg.value(metadata i1 poison, metadata !3806, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3814
  switch i32 %37, label %38 [
    i32 116, label %40
    i32 13, label %40
  ], !dbg !3824

38:                                               ; preds = %35
  store i32 4, ptr %0, align 4, !dbg !3825, !tbaa !1916
  %39 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3828
  store i32 %37, ptr %39, align 4, !dbg !3829, !tbaa !1049
  br label %55, !dbg !3830

40:                                               ; preds = %35, %35
  store <2 x i32> <i32 3, i32 -1>, ptr %0, align 4, !dbg !3831, !tbaa !1049
  br label %45, !dbg !3832

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !dbg !3833, !tbaa !1049
  %44 = icmp slt i32 %43, 0, !dbg !3835
  br i1 %44, label %45, label %55, !dbg !3832

45:                                               ; preds = %41, %40
  %46 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3836
  %47 = tail call i32 @fork() #39, !dbg !3837
  store i32 %47, ptr %46, align 4, !dbg !3839, !tbaa !1049
  %48 = icmp eq i32 %47, 0, !dbg !3840
  br i1 %48, label %55, label %49, !dbg !3842

49:                                               ; preds = %45
  %50 = icmp sgt i32 %47, 0, !dbg !3843
  br i1 %50, label %73, label %51, !dbg !3846

51:                                               ; preds = %49
  store i32 4, ptr %0, align 4, !dbg !3847, !tbaa !1916
  %52 = tail call ptr @__errno_location() #42, !dbg !3848
  %53 = load i32, ptr %52, align 4, !dbg !3848, !tbaa !1040
  store i32 %53, ptr %46, align 4, !dbg !3849, !tbaa !1049
  br label %55, !dbg !3850

54:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_save) #41, !dbg !3851
  unreachable, !dbg !3851

55:                                               ; preds = %27, %27, %27, %27, %41, %51, %45, %33, %38
  %56 = icmp slt i32 %28, 0, !dbg !3854
  br i1 %56, label %57, label %59, !dbg !3856

57:                                               ; preds = %55
  %58 = tail call i32 @chdir(ptr noundef %1) #39, !dbg !3857
  br label %61, !dbg !3856

59:                                               ; preds = %55
  %60 = tail call i32 @fchdir(i32 noundef %28) #39, !dbg !3858
  br label %61, !dbg !3856

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ], !dbg !3856
  call void @llvm.dbg.value(metadata i32 %62, metadata !3770, metadata !DIExpression()), !dbg !3774
  %63 = icmp eq i32 %62, 0, !dbg !3859
  br i1 %63, label %64, label %73, !dbg !3861

64:                                               ; preds = %61
  %65 = load i32, ptr %0, align 4, !dbg !3862, !tbaa !1916
  switch i32 %65, label %72 [
    i32 1, label %66
    i32 4, label %73
    i32 2, label %73
    i32 5, label %73
    i32 3, label %67
  ], !dbg !3863

66:                                               ; preds = %64
  store i32 2, ptr %0, align 4, !dbg !3864, !tbaa !1916
  br label %73, !dbg !3866

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3867
  %69 = load i32, ptr %68, align 4, !dbg !3867, !tbaa !1049
  %70 = icmp eq i32 %69, 0, !dbg !3867
  br i1 %70, label %73, label %71, !dbg !3870

71:                                               ; preds = %67
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1.92, i32 noundef 162, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #41, !dbg !3867
  unreachable, !dbg !3867

72:                                               ; preds = %64
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #41, !dbg !3871
  unreachable, !dbg !3871

73:                                               ; preds = %49, %24, %66, %64, %64, %64, %67, %61
  %74 = phi i32 [ %28, %67 ], [ %28, %64 ], [ %28, %64 ], [ %28, %64 ], [ %28, %66 ], [ %28, %61 ], [ %13, %24 ], [ %28, %49 ]
  %75 = phi i32 [ 0, %67 ], [ 0, %64 ], [ 0, %64 ], [ 0, %64 ], [ 0, %66 ], [ %62, %61 ], [ 0, %24 ], [ -2, %49 ], !dbg !3774
  %76 = phi ptr [ %3, %67 ], [ %3, %64 ], [ %3, %64 ], [ %3, %64 ], [ %3, %66 ], [ %3, %61 ], [ %3, %24 ], [ null, %49 ]
  call void @llvm.dbg.value(metadata ptr %76, metadata !3768, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %75, metadata !3770, metadata !DIExpression()), !dbg !3774
  %77 = icmp slt i32 %74, 0, !dbg !3874
  %78 = icmp ne ptr %76, null
  %79 = or i1 %77, %78, !dbg !3875
  br i1 %79, label %84, label %80, !dbg !3875

80:                                               ; preds = %73
  %81 = tail call ptr @__errno_location() #42, !dbg !3876
  %82 = load i32, ptr %81, align 4, !dbg !3876, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %82, metadata !3771, metadata !DIExpression()), !dbg !3877
  %83 = tail call i32 @close(i32 noundef %74) #39, !dbg !3878
  store i32 %82, ptr %81, align 4, !dbg !3879, !tbaa !1040
  br label %84, !dbg !3880

84:                                               ; preds = %20, %80, %73
  %85 = phi i32 [ %75, %80 ], [ %75, %73 ], [ -1, %20 ]
  ret i32 %85, !dbg !3881
}

; Function Attrs: nofree nounwind
declare !dbg !3882 i32 @fork() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !3885 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3889 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3892 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_restore(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3893 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3897, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i32 %1, metadata !3898, metadata !DIExpression()), !dbg !3908
  %4 = load i32, ptr %0, align 4, !dbg !3909, !tbaa !1916
  switch i32 %4, label %50 [
    i32 0, label %51
    i32 1, label %51
    i32 2, label %9
    i32 4, label %5
    i32 3, label %23
  ], !dbg !3910

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !dbg !3911, !tbaa !1049
  %8 = tail call ptr @__errno_location() #42, !dbg !3912
  br label %20, !dbg !3910

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3913
  %11 = load i32, ptr %10, align 4, !dbg !3914, !tbaa !1049
  %12 = tail call i32 @fchdir(i32 noundef %11) #39, !dbg !3915
  %13 = icmp eq i32 %12, 0, !dbg !3916
  br i1 %13, label %14, label %15, !dbg !3917

14:                                               ; preds = %9
  store i32 1, ptr %0, align 4, !dbg !3918, !tbaa !1916
  br label %51, !dbg !3920

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #42, !dbg !3921
  %17 = load i32, ptr %16, align 4, !dbg !3921, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %17, metadata !3899, metadata !DIExpression()), !dbg !3922
  %18 = load i32, ptr %10, align 4, !dbg !3923, !tbaa !1049
  %19 = tail call i32 @close(i32 noundef %18) #39, !dbg !3924
  store i32 4, ptr %0, align 4, !dbg !3925, !tbaa !1916
  store i32 %17, ptr %10, align 4, !dbg !3926, !tbaa !1049
  br label %20, !dbg !3927

20:                                               ; preds = %5, %15
  %21 = phi ptr [ %8, %5 ], [ %16, %15 ], !dbg !3912
  %22 = phi i32 [ %7, %5 ], [ %17, %15 ], !dbg !3911
  store i32 %22, ptr %21, align 4, !dbg !3928, !tbaa !1040
  br label %51, !dbg !3929

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3930
  %25 = load i32, ptr %24, align 4, !dbg !3931, !tbaa !1049
  call void @llvm.dbg.value(metadata i32 %25, metadata !3903, metadata !DIExpression()), !dbg !3932
  %26 = icmp eq i32 %25, 0, !dbg !3933
  br i1 %26, label %27, label %28, !dbg !3935

27:                                               ; preds = %23
  tail call void @_exit(i32 noundef %1) #41, !dbg !3936
  unreachable, !dbg !3936

28:                                               ; preds = %23
  %29 = icmp slt i32 %25, 1, !dbg !3937
  br i1 %29, label %51, label %30, !dbg !3938

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !3939
  br label %31, !dbg !3940

31:                                               ; preds = %34, %30
  call void @llvm.dbg.value(metadata ptr %3, metadata !3905, metadata !DIExpression(DW_OP_deref)), !dbg !3941
  %32 = call i32 @waitpid(i32 noundef %25, ptr noundef nonnull %3, i32 noundef 0) #39, !dbg !3942
  %33 = icmp slt i32 %32, 0, !dbg !3943
  br i1 %33, label %34, label %39, !dbg !3940

34:                                               ; preds = %31
  %35 = tail call ptr @__errno_location() #42, !dbg !3944
  %36 = load i32, ptr %35, align 4, !dbg !3944, !tbaa !1040
  %37 = icmp eq i32 %36, 4, !dbg !3944
  br i1 %37, label %31, label %38, !dbg !3947, !llvm.loop !3948

38:                                               ; preds = %34
  call void @__assert_fail(ptr noundef nonnull @.str.3.94, ptr noundef nonnull @.str.1.92, i32 noundef 223, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #41, !dbg !3944
  unreachable, !dbg !3944

39:                                               ; preds = %31
  store i32 -1, ptr %24, align 4, !dbg !3950, !tbaa !1049
  %40 = load i32, ptr %3, align 4, !dbg !3951, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %40, metadata !3905, metadata !DIExpression()), !dbg !3941
  %41 = and i32 %40, 127, !dbg !3951
  %42 = icmp eq i32 %41, 0, !dbg !3951
  br i1 %42, label %46, label %43, !dbg !3953

43:                                               ; preds = %39
  %44 = call i32 @raise(i32 noundef %41) #39, !dbg !3954
  %45 = load i32, ptr %3, align 4, !dbg !3955, !tbaa !1040
  br label %46, !dbg !3954

46:                                               ; preds = %39, %43
  %47 = phi i32 [ %40, %39 ], [ %45, %43 ], !dbg !3955
  call void @llvm.dbg.value(metadata i32 %47, metadata !3905, metadata !DIExpression()), !dbg !3941
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !3956
  br label %51

50:                                               ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #41, !dbg !3957
  unreachable, !dbg !3957

51:                                               ; preds = %14, %2, %2, %28, %46, %20
  %52 = phi i32 [ %49, %46 ], [ -1, %20 ], [ 0, %28 ], [ 0, %2 ], [ 0, %2 ], [ 0, %14 ], !dbg !3908
  ret i32 %52, !dbg !3960
}

declare !dbg !3961 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3965 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @savewd_finish(ptr nocapture noundef %0) local_unnamed_addr #10 !dbg !3967 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3969, metadata !DIExpression()), !dbg !3970
  %2 = load i32, ptr %0, align 4, !dbg !3971, !tbaa !1916
  switch i32 %2, label %14 [
    i32 4, label %17
    i32 1, label %3
    i32 2, label %3
    i32 0, label %7
    i32 3, label %9
  ], !dbg !3972

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3973
  %5 = load i32, ptr %4, align 4, !dbg !3975, !tbaa !1049
  %6 = tail call i32 @close(i32 noundef %5) #39, !dbg !3976
  br label %7, !dbg !3976

7:                                                ; preds = %1, %3
  %8 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3977
  br label %15, !dbg !3978

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3979
  %11 = load i32, ptr %10, align 4, !dbg !3979, !tbaa !1049
  %12 = icmp slt i32 %11, 0, !dbg !3979
  br i1 %12, label %15, label %13, !dbg !3982

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !3979
  unreachable, !dbg !3979

14:                                               ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !3983
  unreachable, !dbg !3983

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %10, %9 ]
  store i32 0, ptr %16, align 4, !dbg !3986, !tbaa !1049
  br label %17, !dbg !3987

17:                                               ; preds = %15, %1
  store i32 5, ptr %0, align 4, !dbg !3987, !tbaa !1916
  ret void, !dbg !3988
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_process_files(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3989 {
  %5 = alloca %struct.savewd, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3996, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %1, metadata !3997, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %2, metadata !3998, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %3, metadata !3999, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 0, metadata !4000, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 0, metadata !4002, metadata !DIExpression()), !dbg !4017
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !4018
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4003, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %5, metadata !3743, metadata !DIExpression()), !dbg !4020
  store i32 0, ptr %5, align 4, !dbg !4022, !tbaa !1916
  call void @llvm.dbg.value(metadata i32 %0, metadata !4001, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4017
  %6 = zext i32 %0 to i64, !dbg !4023
  br label %7, !dbg !4023

7:                                                ; preds = %11, %4
  %8 = phi i64 [ %12, %11 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !4001, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4017
  %9 = trunc i64 %8 to i32, !dbg !4025
  %10 = icmp sgt i32 %9, 0, !dbg !4025
  br i1 %10, label %11, label %58, !dbg !4027

11:                                               ; preds = %7
  %12 = add nsw i64 %8, -1, !dbg !4028
  call void @llvm.dbg.value(metadata i64 %12, metadata !4001, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4017
  call void @llvm.dbg.value(metadata i64 %12, metadata !4001, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4017
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !4029
  %15 = load ptr, ptr %14, align 8, !dbg !4029, !tbaa !972
  %16 = load i8, ptr %15, align 1, !dbg !4029, !tbaa !1049
  %17 = icmp eq i8 %16, 47, !dbg !4029
  br i1 %17, label %7, label %18, !dbg !4031, !llvm.loop !4032

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !4000, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 0, metadata !4002, metadata !DIExpression()), !dbg !4017
  %19 = and i64 %8, 4294967294, !dbg !4034
  %20 = icmp eq i64 %19, 0, !dbg !4034
  br i1 %20, label %58, label %21, !dbg !4035

21:                                               ; preds = %18
  %22 = trunc i64 %12 to i32, !dbg !4028
  %23 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1
  %24 = tail call i32 @llvm.smax.i32(i32 %22, i32 1), !dbg !4035
  %25 = zext i32 %24 to i64, !dbg !4034
  br label %26, !dbg !4035

26:                                               ; preds = %21, %49
  %27 = phi i64 [ 0, %21 ], [ %41, %49 ]
  %28 = phi i32 [ 0, %21 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !4000, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %28, metadata !4002, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %5, metadata !4036, metadata !DIExpression()), !dbg !4041
  %29 = load i32, ptr %5, align 4, !dbg !4043, !tbaa !1916
  %30 = icmp eq i32 %29, 3, !dbg !4044
  %31 = load i32, ptr %23, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false, !dbg !4045
  br i1 %33, label %39, label %34, !dbg !4045

34:                                               ; preds = %26
  %35 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !4046
  %36 = load ptr, ptr %35, align 8, !dbg !4046, !tbaa !972
  %37 = call i32 %2(ptr noundef %36, ptr noundef nonnull %5, ptr noundef %3) #39, !dbg !4047
  call void @llvm.dbg.value(metadata i32 %37, metadata !4004, metadata !DIExpression()), !dbg !4048
  %38 = call i32 @llvm.smax.i32(i32 %28, i32 %37), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %38, metadata !4002, metadata !DIExpression()), !dbg !4017
  br label %39, !dbg !4050

39:                                               ; preds = %26, %34
  %40 = phi i32 [ %38, %34 ], [ %28, %26 ], !dbg !4017
  call void @llvm.dbg.value(metadata i32 %40, metadata !4002, metadata !DIExpression()), !dbg !4017
  %41 = add nuw nsw i64 %27, 1, !dbg !4051
  %42 = getelementptr inbounds ptr, ptr %1, i64 %41, !dbg !4051
  %43 = load ptr, ptr %42, align 8, !dbg !4051, !tbaa !972
  %44 = load i8, ptr %43, align 1, !dbg !4051, !tbaa !1049
  %45 = icmp eq i8 %44, 47, !dbg !4051
  br i1 %45, label %49, label %46, !dbg !4052

46:                                               ; preds = %39
  %47 = call i32 @savewd_restore(ptr noundef nonnull %5, i32 noundef %40), !dbg !4053
  call void @llvm.dbg.value(metadata i32 %47, metadata !4010, metadata !DIExpression()), !dbg !4054
  %48 = call i32 @llvm.smax.i32(i32 %40, i32 %47), !dbg !4055
  call void @llvm.dbg.value(metadata i32 %48, metadata !4002, metadata !DIExpression()), !dbg !4017
  br label %49, !dbg !4056

49:                                               ; preds = %39, %46
  %50 = phi i32 [ %40, %39 ], [ %48, %46 ], !dbg !4017
  call void @llvm.dbg.value(metadata i64 %41, metadata !4000, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %50, metadata !4002, metadata !DIExpression()), !dbg !4017
  %51 = icmp eq i64 %41, %25, !dbg !4034
  br i1 %51, label %52, label %26, !dbg !4035, !llvm.loop !4057

52:                                               ; preds = %49
  %53 = load i32, ptr %5, align 4, !dbg !4059, !tbaa !1916
  call void @llvm.dbg.value(metadata ptr %5, metadata !3969, metadata !DIExpression()), !dbg !4061
  switch i32 %53, label %67 [
    i32 4, label %72
    i32 1, label %54
    i32 2, label %54
    i32 0, label %58
    i32 3, label %62
  ], !dbg !4062

54:                                               ; preds = %52, %52
  %55 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4063
  %56 = load i32, ptr %55, align 4, !dbg !4064, !tbaa !1049
  %57 = call i32 @close(i32 noundef %56) #39, !dbg !4065
  br label %58, !dbg !4065

58:                                               ; preds = %7, %18, %54, %52
  %59 = phi i32 [ %24, %54 ], [ %24, %52 ], [ 0, %18 ], [ 0, %7 ]
  %60 = phi i32 [ %50, %54 ], [ %50, %52 ], [ 0, %18 ], [ 0, %7 ]
  %61 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4066
  br label %68, !dbg !4067

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4068
  %64 = load i32, ptr %63, align 4, !dbg !4068, !tbaa !1049
  %65 = icmp slt i32 %64, 0, !dbg !4068
  br i1 %65, label %68, label %66, !dbg !4069

66:                                               ; preds = %62
  call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !4068
  unreachable, !dbg !4068

67:                                               ; preds = %52
  call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !4070
  unreachable, !dbg !4070

68:                                               ; preds = %62, %58
  %69 = phi i32 [ %59, %58 ], [ %24, %62 ]
  %70 = phi i32 [ %60, %58 ], [ %50, %62 ]
  %71 = phi ptr [ %61, %58 ], [ %63, %62 ]
  store i32 0, ptr %71, align 4, !dbg !4071, !tbaa !1049
  br label %72, !dbg !4072

72:                                               ; preds = %52, %68
  %73 = phi i32 [ %24, %52 ], [ %69, %68 ]
  %74 = phi i32 [ %50, %52 ], [ %70, %68 ]
  store i32 5, ptr %5, align 4, !dbg !4072, !tbaa !1916
  call void @llvm.dbg.value(metadata i32 %24, metadata !4000, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %50, metadata !4002, metadata !DIExpression()), !dbg !4017
  %75 = icmp slt i32 %73, %0, !dbg !4073
  br i1 %75, label %76, label %87, !dbg !4074

76:                                               ; preds = %72
  %77 = zext i32 %73 to i64, !dbg !4074
  br label %78, !dbg !4074

78:                                               ; preds = %76, %78
  %79 = phi i64 [ %77, %76 ], [ %85, %78 ]
  %80 = phi i32 [ %74, %76 ], [ %84, %78 ]
  call void @llvm.dbg.value(metadata i64 %79, metadata !4000, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %80, metadata !4002, metadata !DIExpression()), !dbg !4017
  %81 = getelementptr inbounds ptr, ptr %1, i64 %79, !dbg !4075
  %82 = load ptr, ptr %81, align 8, !dbg !4075, !tbaa !972
  %83 = call i32 %2(ptr noundef %82, ptr noundef nonnull %5, ptr noundef %3) #39, !dbg !4076
  call void @llvm.dbg.value(metadata i32 %83, metadata !4013, metadata !DIExpression()), !dbg !4077
  %84 = call i32 @llvm.smax.i32(i32 %80, i32 %83), !dbg !4078
  call void @llvm.dbg.value(metadata i32 %84, metadata !4002, metadata !DIExpression()), !dbg !4017
  %85 = add nuw nsw i64 %79, 1, !dbg !4079
  call void @llvm.dbg.value(metadata i64 %85, metadata !4000, metadata !DIExpression()), !dbg !4017
  %86 = icmp eq i64 %85, %6
  br i1 %86, label %87, label %78, !dbg !4074, !llvm.loop !4080

87:                                               ; preds = %78, %72
  %88 = phi i32 [ %74, %72 ], [ %84, %78 ], !dbg !4017
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !4082
  ret i32 %88, !dbg !4083
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4084 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4123, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata ptr %1, metadata !4124, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata ptr %2, metadata !4125, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata ptr %3, metadata !4126, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata ptr %4, metadata !4127, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %5, metadata !4128, metadata !DIExpression()), !dbg !4129
  %7 = icmp eq ptr %1, null, !dbg !4130
  br i1 %7, label %10, label %8, !dbg !4132

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4133
  br label %12, !dbg !4133

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.99, ptr noundef %2, ptr noundef %3) #39, !dbg !4134
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.3.101, i32 noundef 5) #39, !dbg !4135
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4135
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4136
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.5.103, i32 noundef 5) #39, !dbg !4137
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.104) #39, !dbg !4137
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4138
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
  ], !dbg !4139

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.7.105, i32 noundef 5) #39, !dbg !4140
  %21 = load ptr, ptr %4, align 8, !dbg !4140, !tbaa !972
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4140
  br label %147, !dbg !4142

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.8.106, i32 noundef 5) #39, !dbg !4143
  %25 = load ptr, ptr %4, align 8, !dbg !4143, !tbaa !972
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4143
  %27 = load ptr, ptr %26, align 8, !dbg !4143, !tbaa !972
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4143
  br label %147, !dbg !4144

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.9.107, i32 noundef 5) #39, !dbg !4145
  %31 = load ptr, ptr %4, align 8, !dbg !4145, !tbaa !972
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4145
  %33 = load ptr, ptr %32, align 8, !dbg !4145, !tbaa !972
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4145
  %35 = load ptr, ptr %34, align 8, !dbg !4145, !tbaa !972
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4145
  br label %147, !dbg !4146

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.10.108, i32 noundef 5) #39, !dbg !4147
  %39 = load ptr, ptr %4, align 8, !dbg !4147, !tbaa !972
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4147
  %41 = load ptr, ptr %40, align 8, !dbg !4147, !tbaa !972
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4147
  %43 = load ptr, ptr %42, align 8, !dbg !4147, !tbaa !972
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4147
  %45 = load ptr, ptr %44, align 8, !dbg !4147, !tbaa !972
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4147
  br label %147, !dbg !4148

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.11.109, i32 noundef 5) #39, !dbg !4149
  %49 = load ptr, ptr %4, align 8, !dbg !4149, !tbaa !972
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4149
  %51 = load ptr, ptr %50, align 8, !dbg !4149, !tbaa !972
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4149
  %53 = load ptr, ptr %52, align 8, !dbg !4149, !tbaa !972
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4149
  %55 = load ptr, ptr %54, align 8, !dbg !4149, !tbaa !972
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4149
  %57 = load ptr, ptr %56, align 8, !dbg !4149, !tbaa !972
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4149
  br label %147, !dbg !4150

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.12.110, i32 noundef 5) #39, !dbg !4151
  %61 = load ptr, ptr %4, align 8, !dbg !4151, !tbaa !972
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4151
  %63 = load ptr, ptr %62, align 8, !dbg !4151, !tbaa !972
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4151
  %65 = load ptr, ptr %64, align 8, !dbg !4151, !tbaa !972
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4151
  %67 = load ptr, ptr %66, align 8, !dbg !4151, !tbaa !972
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4151
  %69 = load ptr, ptr %68, align 8, !dbg !4151, !tbaa !972
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4151
  %71 = load ptr, ptr %70, align 8, !dbg !4151, !tbaa !972
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4151
  br label %147, !dbg !4152

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.13.111, i32 noundef 5) #39, !dbg !4153
  %75 = load ptr, ptr %4, align 8, !dbg !4153, !tbaa !972
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4153
  %77 = load ptr, ptr %76, align 8, !dbg !4153, !tbaa !972
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4153
  %79 = load ptr, ptr %78, align 8, !dbg !4153, !tbaa !972
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4153
  %81 = load ptr, ptr %80, align 8, !dbg !4153, !tbaa !972
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4153
  %83 = load ptr, ptr %82, align 8, !dbg !4153, !tbaa !972
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4153
  %85 = load ptr, ptr %84, align 8, !dbg !4153, !tbaa !972
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4153
  %87 = load ptr, ptr %86, align 8, !dbg !4153, !tbaa !972
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4153
  br label %147, !dbg !4154

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.14.112, i32 noundef 5) #39, !dbg !4155
  %91 = load ptr, ptr %4, align 8, !dbg !4155, !tbaa !972
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4155
  %93 = load ptr, ptr %92, align 8, !dbg !4155, !tbaa !972
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4155
  %95 = load ptr, ptr %94, align 8, !dbg !4155, !tbaa !972
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4155
  %97 = load ptr, ptr %96, align 8, !dbg !4155, !tbaa !972
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4155
  %99 = load ptr, ptr %98, align 8, !dbg !4155, !tbaa !972
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4155
  %101 = load ptr, ptr %100, align 8, !dbg !4155, !tbaa !972
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4155
  %103 = load ptr, ptr %102, align 8, !dbg !4155, !tbaa !972
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4155
  %105 = load ptr, ptr %104, align 8, !dbg !4155, !tbaa !972
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4155
  br label %147, !dbg !4156

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.15.113, i32 noundef 5) #39, !dbg !4157
  %109 = load ptr, ptr %4, align 8, !dbg !4157, !tbaa !972
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4157
  %111 = load ptr, ptr %110, align 8, !dbg !4157, !tbaa !972
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4157
  %113 = load ptr, ptr %112, align 8, !dbg !4157, !tbaa !972
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4157
  %115 = load ptr, ptr %114, align 8, !dbg !4157, !tbaa !972
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4157
  %117 = load ptr, ptr %116, align 8, !dbg !4157, !tbaa !972
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4157
  %119 = load ptr, ptr %118, align 8, !dbg !4157, !tbaa !972
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4157
  %121 = load ptr, ptr %120, align 8, !dbg !4157, !tbaa !972
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4157
  %123 = load ptr, ptr %122, align 8, !dbg !4157, !tbaa !972
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4157
  %125 = load ptr, ptr %124, align 8, !dbg !4157, !tbaa !972
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4157
  br label %147, !dbg !4158

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.16.114, i32 noundef 5) #39, !dbg !4159
  %129 = load ptr, ptr %4, align 8, !dbg !4159, !tbaa !972
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4159
  %131 = load ptr, ptr %130, align 8, !dbg !4159, !tbaa !972
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4159
  %133 = load ptr, ptr %132, align 8, !dbg !4159, !tbaa !972
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4159
  %135 = load ptr, ptr %134, align 8, !dbg !4159, !tbaa !972
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4159
  %137 = load ptr, ptr %136, align 8, !dbg !4159, !tbaa !972
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4159
  %139 = load ptr, ptr %138, align 8, !dbg !4159, !tbaa !972
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4159
  %141 = load ptr, ptr %140, align 8, !dbg !4159, !tbaa !972
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4159
  %143 = load ptr, ptr %142, align 8, !dbg !4159, !tbaa !972
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4159
  %145 = load ptr, ptr %144, align 8, !dbg !4159, !tbaa !972
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4159
  br label %147, !dbg !4160

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4161
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4162 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4166, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %1, metadata !4167, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %2, metadata !4168, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %3, metadata !4169, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %4, metadata !4170, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 0, metadata !4171, metadata !DIExpression()), !dbg !4172
  br label %6, !dbg !4173

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4175
  call void @llvm.dbg.value(metadata i64 %7, metadata !4171, metadata !DIExpression()), !dbg !4172
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4176
  %9 = load ptr, ptr %8, align 8, !dbg !4176, !tbaa !972
  %10 = icmp eq ptr %9, null, !dbg !4178
  %11 = add i64 %7, 1, !dbg !4179
  call void @llvm.dbg.value(metadata i64 %11, metadata !4171, metadata !DIExpression()), !dbg !4172
  br i1 %10, label %12, label %6, !dbg !4178, !llvm.loop !4180

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4182
  ret void, !dbg !4183
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4184 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4199, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %1, metadata !4200, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %2, metadata !4201, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %3, metadata !4202, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4203, metadata !DIExpression()), !dbg !4208
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4209
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4205, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 0, metadata !4204, metadata !DIExpression()), !dbg !4207
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4204, metadata !DIExpression()), !dbg !4207
  %10 = icmp sgt i32 %9, -1, !dbg !4211
  br i1 %10, label %18, label %11, !dbg !4211

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4211
  store i32 %12, ptr %7, align 8, !dbg !4211
  %13 = icmp ult i32 %9, -7, !dbg !4211
  br i1 %13, label %14, label %18, !dbg !4211

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4211
  %16 = sext i32 %9 to i64, !dbg !4211
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4211
  br label %22, !dbg !4211

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4211
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4211
  store ptr %21, ptr %4, align 8, !dbg !4211
  br label %22, !dbg !4211

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4211
  %25 = load ptr, ptr %24, align 8, !dbg !4211
  store ptr %25, ptr %6, align 8, !dbg !4214, !tbaa !972
  %26 = icmp eq ptr %25, null, !dbg !4215
  br i1 %26, label %197, label %27, !dbg !4216

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 1, metadata !4204, metadata !DIExpression()), !dbg !4207
  %28 = icmp sgt i32 %23, -1, !dbg !4211
  br i1 %28, label %36, label %29, !dbg !4211

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4211
  store i32 %30, ptr %7, align 8, !dbg !4211
  %31 = icmp ult i32 %23, -7, !dbg !4211
  br i1 %31, label %32, label %36, !dbg !4211

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4211
  %34 = sext i32 %23 to i64, !dbg !4211
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4211
  br label %40, !dbg !4211

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4211
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4211
  store ptr %39, ptr %4, align 8, !dbg !4211
  br label %40, !dbg !4211

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4211
  %43 = load ptr, ptr %42, align 8, !dbg !4211
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4217
  store ptr %43, ptr %44, align 8, !dbg !4214, !tbaa !972
  %45 = icmp eq ptr %43, null, !dbg !4215
  br i1 %45, label %197, label %46, !dbg !4216

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 2, metadata !4204, metadata !DIExpression()), !dbg !4207
  %47 = icmp sgt i32 %41, -1, !dbg !4211
  br i1 %47, label %55, label %48, !dbg !4211

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4211
  store i32 %49, ptr %7, align 8, !dbg !4211
  %50 = icmp ult i32 %41, -7, !dbg !4211
  br i1 %50, label %51, label %55, !dbg !4211

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4211
  %53 = sext i32 %41 to i64, !dbg !4211
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4211
  br label %59, !dbg !4211

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4211
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4211
  store ptr %58, ptr %4, align 8, !dbg !4211
  br label %59, !dbg !4211

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4211
  %62 = load ptr, ptr %61, align 8, !dbg !4211
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4217
  store ptr %62, ptr %63, align 8, !dbg !4214, !tbaa !972
  %64 = icmp eq ptr %62, null, !dbg !4215
  br i1 %64, label %197, label %65, !dbg !4216

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 3, metadata !4204, metadata !DIExpression()), !dbg !4207
  %66 = icmp sgt i32 %60, -1, !dbg !4211
  br i1 %66, label %74, label %67, !dbg !4211

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4211
  store i32 %68, ptr %7, align 8, !dbg !4211
  %69 = icmp ult i32 %60, -7, !dbg !4211
  br i1 %69, label %70, label %74, !dbg !4211

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4211
  %72 = sext i32 %60 to i64, !dbg !4211
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4211
  br label %78, !dbg !4211

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4211
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4211
  store ptr %77, ptr %4, align 8, !dbg !4211
  br label %78, !dbg !4211

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4211
  %81 = load ptr, ptr %80, align 8, !dbg !4211
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4217
  store ptr %81, ptr %82, align 8, !dbg !4214, !tbaa !972
  %83 = icmp eq ptr %81, null, !dbg !4215
  br i1 %83, label %197, label %84, !dbg !4216

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 4, metadata !4204, metadata !DIExpression()), !dbg !4207
  %85 = icmp sgt i32 %79, -1, !dbg !4211
  br i1 %85, label %93, label %86, !dbg !4211

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4211
  store i32 %87, ptr %7, align 8, !dbg !4211
  %88 = icmp ult i32 %79, -7, !dbg !4211
  br i1 %88, label %89, label %93, !dbg !4211

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4211
  %91 = sext i32 %79 to i64, !dbg !4211
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4211
  br label %97, !dbg !4211

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4211
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4211
  store ptr %96, ptr %4, align 8, !dbg !4211
  br label %97, !dbg !4211

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4211
  %100 = load ptr, ptr %99, align 8, !dbg !4211
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4217
  store ptr %100, ptr %101, align 8, !dbg !4214, !tbaa !972
  %102 = icmp eq ptr %100, null, !dbg !4215
  br i1 %102, label %197, label %103, !dbg !4216

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 5, metadata !4204, metadata !DIExpression()), !dbg !4207
  %104 = icmp sgt i32 %98, -1, !dbg !4211
  br i1 %104, label %112, label %105, !dbg !4211

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4211
  store i32 %106, ptr %7, align 8, !dbg !4211
  %107 = icmp ult i32 %98, -7, !dbg !4211
  br i1 %107, label %108, label %112, !dbg !4211

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4211
  %110 = sext i32 %98 to i64, !dbg !4211
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4211
  br label %116, !dbg !4211

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4211
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4211
  store ptr %115, ptr %4, align 8, !dbg !4211
  br label %116, !dbg !4211

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4211
  %119 = load ptr, ptr %118, align 8, !dbg !4211
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4217
  store ptr %119, ptr %120, align 8, !dbg !4214, !tbaa !972
  %121 = icmp eq ptr %119, null, !dbg !4215
  br i1 %121, label %197, label %122, !dbg !4216

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 6, metadata !4204, metadata !DIExpression()), !dbg !4207
  %123 = icmp sgt i32 %117, -1, !dbg !4211
  br i1 %123, label %131, label %124, !dbg !4211

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4211
  store i32 %125, ptr %7, align 8, !dbg !4211
  %126 = icmp ult i32 %117, -7, !dbg !4211
  br i1 %126, label %127, label %131, !dbg !4211

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4211
  %129 = sext i32 %117 to i64, !dbg !4211
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4211
  br label %135, !dbg !4211

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4211
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4211
  store ptr %134, ptr %4, align 8, !dbg !4211
  br label %135, !dbg !4211

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4211
  %138 = load ptr, ptr %137, align 8, !dbg !4211
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4217
  store ptr %138, ptr %139, align 8, !dbg !4214, !tbaa !972
  %140 = icmp eq ptr %138, null, !dbg !4215
  br i1 %140, label %197, label %141, !dbg !4216

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 7, metadata !4204, metadata !DIExpression()), !dbg !4207
  %142 = icmp sgt i32 %136, -1, !dbg !4211
  br i1 %142, label %150, label %143, !dbg !4211

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4211
  store i32 %144, ptr %7, align 8, !dbg !4211
  %145 = icmp ult i32 %136, -7, !dbg !4211
  br i1 %145, label %146, label %150, !dbg !4211

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4211
  %148 = sext i32 %136 to i64, !dbg !4211
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4211
  br label %154, !dbg !4211

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4211
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4211
  store ptr %153, ptr %4, align 8, !dbg !4211
  br label %154, !dbg !4211

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4211
  %157 = load ptr, ptr %156, align 8, !dbg !4211
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4217
  store ptr %157, ptr %158, align 8, !dbg !4214, !tbaa !972
  %159 = icmp eq ptr %157, null, !dbg !4215
  br i1 %159, label %197, label %160, !dbg !4216

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 8, metadata !4204, metadata !DIExpression()), !dbg !4207
  %161 = icmp sgt i32 %155, -1, !dbg !4211
  br i1 %161, label %169, label %162, !dbg !4211

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4211
  store i32 %163, ptr %7, align 8, !dbg !4211
  %164 = icmp ult i32 %155, -7, !dbg !4211
  br i1 %164, label %165, label %169, !dbg !4211

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4211
  %167 = sext i32 %155 to i64, !dbg !4211
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4211
  br label %173, !dbg !4211

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4211
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4211
  store ptr %172, ptr %4, align 8, !dbg !4211
  br label %173, !dbg !4211

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4211
  %176 = load ptr, ptr %175, align 8, !dbg !4211
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4217
  store ptr %176, ptr %177, align 8, !dbg !4214, !tbaa !972
  %178 = icmp eq ptr %176, null, !dbg !4215
  br i1 %178, label %197, label %179, !dbg !4216

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 9, metadata !4204, metadata !DIExpression()), !dbg !4207
  %180 = icmp sgt i32 %174, -1, !dbg !4211
  br i1 %180, label %188, label %181, !dbg !4211

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4211
  store i32 %182, ptr %7, align 8, !dbg !4211
  %183 = icmp ult i32 %174, -7, !dbg !4211
  br i1 %183, label %184, label %188, !dbg !4211

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4211
  %186 = sext i32 %174 to i64, !dbg !4211
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4211
  br label %191, !dbg !4211

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4211
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4211
  store ptr %190, ptr %4, align 8, !dbg !4211
  br label %191, !dbg !4211

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4211
  %193 = load ptr, ptr %192, align 8, !dbg !4211
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4217
  store ptr %193, ptr %194, align 8, !dbg !4214, !tbaa !972
  %195 = icmp eq ptr %193, null, !dbg !4215
  %196 = select i1 %195, i64 9, i64 10, !dbg !4216
  br label %197, !dbg !4216

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4218
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4219
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4220
  ret void, !dbg !4220
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4221 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4225, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %1, metadata !4226, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %2, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %3, metadata !4228, metadata !DIExpression()), !dbg !4230
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !4231
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4229, metadata !DIExpression()), !dbg !4232
  call void @llvm.va_start(ptr nonnull %5), !dbg !4233
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !4234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4234, !tbaa.struct !1631
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4234
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !4234
  call void @llvm.va_end(ptr nonnull %5), !dbg !4235
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !4236
  ret void, !dbg !4236
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4237 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4238, !tbaa !972
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %1), !dbg !4238
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.17.119, i32 noundef 5) #39, !dbg !4239
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.120) #39, !dbg !4239
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.19.121, i32 noundef 5) #39, !dbg !4240
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.122, ptr noundef nonnull @.str.21.123) #39, !dbg !4240
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.22.124, i32 noundef 5) #39, !dbg !4241
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.125) #39, !dbg !4241
  ret void, !dbg !4242
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4243 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %1, metadata !4249, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %2, metadata !4250, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4252, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %2, metadata !4256, metadata !DIExpression()), !dbg !4257
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4259
  call void @llvm.dbg.value(metadata ptr %4, metadata !4260, metadata !DIExpression()), !dbg !4265
  %5 = icmp eq ptr %4, null, !dbg !4267
  br i1 %5, label %6, label %7, !dbg !4269

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4270
  unreachable, !dbg !4270

7:                                                ; preds = %3
  ret ptr %4, !dbg !4271
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4253 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4252, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %2, metadata !4256, metadata !DIExpression()), !dbg !4272
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4273
  call void @llvm.dbg.value(metadata ptr %4, metadata !4260, metadata !DIExpression()), !dbg !4274
  %5 = icmp eq ptr %4, null, !dbg !4276
  br i1 %5, label %6, label %7, !dbg !4277

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4278
  unreachable, !dbg !4278

7:                                                ; preds = %3
  ret ptr %4, !dbg !4279
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4280 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4284, metadata !DIExpression()), !dbg !4285
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4286
  call void @llvm.dbg.value(metadata ptr %2, metadata !4260, metadata !DIExpression()), !dbg !4287
  %3 = icmp eq ptr %2, null, !dbg !4289
  br i1 %3, label %4, label %5, !dbg !4290

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4291
  unreachable, !dbg !4291

5:                                                ; preds = %1
  ret ptr %2, !dbg !4292
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4293 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4298, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %0, metadata !4300, metadata !DIExpression()), !dbg !4304
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4306
  call void @llvm.dbg.value(metadata ptr %2, metadata !4260, metadata !DIExpression()), !dbg !4307
  %3 = icmp eq ptr %2, null, !dbg !4309
  br i1 %3, label %4, label %5, !dbg !4310

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4311
  unreachable, !dbg !4311

5:                                                ; preds = %1
  ret ptr %2, !dbg !4312
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4313 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4317, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %0, metadata !4284, metadata !DIExpression()), !dbg !4319
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4321
  call void @llvm.dbg.value(metadata ptr %2, metadata !4260, metadata !DIExpression()), !dbg !4322
  %3 = icmp eq ptr %2, null, !dbg !4324
  br i1 %3, label %4, label %5, !dbg !4325

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4326
  unreachable, !dbg !4326

5:                                                ; preds = %1
  ret ptr %2, !dbg !4327
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4328 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4332, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 %1, metadata !4333, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %0, metadata !4335, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %1, metadata !4339, metadata !DIExpression()), !dbg !4340
  %3 = icmp eq i64 %1, 0, !dbg !4342
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4342
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4343
  call void @llvm.dbg.value(metadata ptr %5, metadata !4260, metadata !DIExpression()), !dbg !4344
  %6 = icmp eq ptr %5, null, !dbg !4346
  br i1 %6, label %7, label %8, !dbg !4347

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4348
  unreachable, !dbg !4348

8:                                                ; preds = %2
  ret ptr %5, !dbg !4349
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4350 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4351 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4355, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %1, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata ptr %0, metadata !4358, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %1, metadata !4361, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr %0, metadata !4335, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %1, metadata !4339, metadata !DIExpression()), !dbg !4364
  %3 = icmp eq i64 %1, 0, !dbg !4366
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4366
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4367
  call void @llvm.dbg.value(metadata ptr %5, metadata !4260, metadata !DIExpression()), !dbg !4368
  %6 = icmp eq ptr %5, null, !dbg !4370
  br i1 %6, label %7, label %8, !dbg !4371

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4372
  unreachable, !dbg !4372

8:                                                ; preds = %2
  ret ptr %5, !dbg !4373
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4374 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4378, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %1, metadata !4379, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %2, metadata !4380, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata ptr %0, metadata !4382, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 %1, metadata !4385, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i64 %2, metadata !4386, metadata !DIExpression()), !dbg !4387
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4389
  call void @llvm.dbg.value(metadata ptr %4, metadata !4260, metadata !DIExpression()), !dbg !4390
  %5 = icmp eq ptr %4, null, !dbg !4392
  br i1 %5, label %6, label %7, !dbg !4393

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4394
  unreachable, !dbg !4394

7:                                                ; preds = %3
  ret ptr %4, !dbg !4395
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4396 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4400, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i64 %1, metadata !4401, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata ptr null, metadata !4252, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata i64 %0, metadata !4255, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()), !dbg !4403
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4405
  call void @llvm.dbg.value(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4406
  %4 = icmp eq ptr %3, null, !dbg !4408
  br i1 %4, label %5, label %6, !dbg !4409

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4410
  unreachable, !dbg !4410

6:                                                ; preds = %2
  ret ptr %3, !dbg !4411
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4412 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4416, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %1, metadata !4417, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata ptr null, metadata !4378, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %0, metadata !4379, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %1, metadata !4380, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata ptr null, metadata !4382, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i64 %0, metadata !4385, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i64 %1, metadata !4386, metadata !DIExpression()), !dbg !4421
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4423
  call void @llvm.dbg.value(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4424
  %4 = icmp eq ptr %3, null, !dbg !4426
  br i1 %4, label %5, label %6, !dbg !4427

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4428
  unreachable, !dbg !4428

6:                                                ; preds = %2
  ret ptr %3, !dbg !4429
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4430 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4434, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %1, metadata !4435, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %0, metadata !885, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata ptr %1, metadata !886, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64 1, metadata !887, metadata !DIExpression()), !dbg !4437
  %3 = load i64, ptr %1, align 8, !dbg !4439, !tbaa !3196
  call void @llvm.dbg.value(metadata i64 %3, metadata !888, metadata !DIExpression()), !dbg !4437
  %4 = icmp eq ptr %0, null, !dbg !4440
  br i1 %4, label %5, label %8, !dbg !4442

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4443
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4446
  br label %15, !dbg !4446

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4447
  %10 = add nuw i64 %9, 1, !dbg !4447
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4447
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4447
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4447
  call void @llvm.dbg.value(metadata i64 %13, metadata !888, metadata !DIExpression()), !dbg !4437
  br i1 %12, label %14, label %15, !dbg !4450

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4451
  unreachable, !dbg !4451

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4437
  call void @llvm.dbg.value(metadata i64 %16, metadata !888, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata ptr %0, metadata !4252, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 %16, metadata !4255, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i64 1, metadata !4256, metadata !DIExpression()), !dbg !4452
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4454
  call void @llvm.dbg.value(metadata ptr %17, metadata !4260, metadata !DIExpression()), !dbg !4455
  %18 = icmp eq ptr %17, null, !dbg !4457
  br i1 %18, label %19, label %20, !dbg !4458

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4459
  unreachable, !dbg !4459

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !885, metadata !DIExpression()), !dbg !4437
  store i64 %16, ptr %1, align 8, !dbg !4460, !tbaa !3196
  ret ptr %17, !dbg !4461
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !880 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !885, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata ptr %1, metadata !886, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %2, metadata !887, metadata !DIExpression()), !dbg !4462
  %4 = load i64, ptr %1, align 8, !dbg !4463, !tbaa !3196
  call void @llvm.dbg.value(metadata i64 %4, metadata !888, metadata !DIExpression()), !dbg !4462
  %5 = icmp eq ptr %0, null, !dbg !4464
  br i1 %5, label %6, label %13, !dbg !4465

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4466
  br i1 %7, label %8, label %20, !dbg !4467

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4468
  call void @llvm.dbg.value(metadata i64 %9, metadata !888, metadata !DIExpression()), !dbg !4462
  %10 = icmp ugt i64 %2, 128, !dbg !4470
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4471
  call void @llvm.dbg.value(metadata i64 %12, metadata !888, metadata !DIExpression()), !dbg !4462
  br label %20, !dbg !4472

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4473
  %15 = add nuw i64 %14, 1, !dbg !4473
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4473
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4473
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %18, metadata !888, metadata !DIExpression()), !dbg !4462
  br i1 %17, label %19, label %20, !dbg !4474

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4475
  unreachable, !dbg !4475

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4462
  call void @llvm.dbg.value(metadata i64 %21, metadata !888, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata ptr %0, metadata !4252, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 %21, metadata !4255, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 %2, metadata !4256, metadata !DIExpression()), !dbg !4476
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4478
  call void @llvm.dbg.value(metadata ptr %22, metadata !4260, metadata !DIExpression()), !dbg !4479
  %23 = icmp eq ptr %22, null, !dbg !4481
  br i1 %23, label %24, label %25, !dbg !4482

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4483
  unreachable, !dbg !4483

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !885, metadata !DIExpression()), !dbg !4462
  store i64 %21, ptr %1, align 8, !dbg !4484, !tbaa !3196
  ret ptr %22, !dbg !4485
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !892 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !900, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata ptr %1, metadata !901, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %2, metadata !902, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %3, metadata !903, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %4, metadata !904, metadata !DIExpression()), !dbg !4486
  %6 = load i64, ptr %1, align 8, !dbg !4487, !tbaa !3196
  call void @llvm.dbg.value(metadata i64 %6, metadata !905, metadata !DIExpression()), !dbg !4486
  %7 = ashr i64 %6, 1, !dbg !4488
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4488
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4488
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4488
  call void @llvm.dbg.value(metadata i64 %10, metadata !906, metadata !DIExpression()), !dbg !4486
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4490
  call void @llvm.dbg.value(metadata i64 %11, metadata !906, metadata !DIExpression()), !dbg !4486
  %12 = icmp sgt i64 %3, -1, !dbg !4491
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4493
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4493
  call void @llvm.dbg.value(metadata i64 %15, metadata !906, metadata !DIExpression()), !dbg !4486
  %16 = icmp slt i64 %4, 0, !dbg !4494
  br i1 %16, label %17, label %30, !dbg !4494

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4494
  br i1 %18, label %19, label %24, !dbg !4494

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4494
  %21 = udiv i64 9223372036854775807, %20, !dbg !4494
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4494
  br i1 %23, label %46, label %43, !dbg !4494

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4494
  br i1 %25, label %43, label %26, !dbg !4494

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4494
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4494
  %29 = icmp ult i64 %28, %15, !dbg !4494
  br i1 %29, label %46, label %43, !dbg !4494

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4494
  br i1 %31, label %43, label %32, !dbg !4494

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4494
  br i1 %33, label %34, label %40, !dbg !4494

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4494
  br i1 %35, label %43, label %36, !dbg !4494

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4494
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4494
  %39 = icmp ult i64 %38, %4, !dbg !4494
  br i1 %39, label %46, label %43, !dbg !4494

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4494
  br i1 %42, label %46, label %43, !dbg !4494

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !907, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4486
  %44 = mul i64 %15, %4, !dbg !4494
  call void @llvm.dbg.value(metadata i64 %44, metadata !907, metadata !DIExpression()), !dbg !4486
  %45 = icmp slt i64 %44, 128, !dbg !4494
  br i1 %45, label %46, label %52, !dbg !4494

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !908, metadata !DIExpression()), !dbg !4486
  %48 = sdiv i64 %47, %4, !dbg !4495
  call void @llvm.dbg.value(metadata i64 %48, metadata !906, metadata !DIExpression()), !dbg !4486
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %51, metadata !907, metadata !DIExpression()), !dbg !4486
  br label %52, !dbg !4499

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4486
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4486
  call void @llvm.dbg.value(metadata i64 %54, metadata !907, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %53, metadata !906, metadata !DIExpression()), !dbg !4486
  %55 = icmp eq ptr %0, null, !dbg !4500
  br i1 %55, label %56, label %57, !dbg !4502

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4503, !tbaa !3196
  br label %57, !dbg !4504

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4505
  %59 = icmp slt i64 %58, %2, !dbg !4507
  br i1 %59, label %60, label %97, !dbg !4508

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4509
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4509
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %63, metadata !906, metadata !DIExpression()), !dbg !4486
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4510
  br i1 %66, label %96, label %67, !dbg !4510

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4511

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4511
  br i1 %69, label %70, label %75, !dbg !4511

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4511
  %72 = udiv i64 9223372036854775807, %71, !dbg !4511
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4511
  br i1 %74, label %96, label %94, !dbg !4511

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4511
  br i1 %76, label %94, label %77, !dbg !4511

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4511
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4511
  %80 = icmp ult i64 %79, %63, !dbg !4511
  br i1 %80, label %96, label %94, !dbg !4511

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4511
  br i1 %82, label %94, label %83, !dbg !4511

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4511
  br i1 %84, label %85, label %91, !dbg !4511

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4511
  br i1 %86, label %94, label %87, !dbg !4511

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4511
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4511
  %90 = icmp ult i64 %89, %4, !dbg !4511
  br i1 %90, label %96, label %94, !dbg !4511

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4511
  br i1 %93, label %96, label %94, !dbg !4511

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !907, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4486
  %95 = mul i64 %63, %4, !dbg !4511
  call void @llvm.dbg.value(metadata i64 %95, metadata !907, metadata !DIExpression()), !dbg !4486
  br label %97, !dbg !4512

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !4513
  unreachable, !dbg !4513

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4486
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4486
  call void @llvm.dbg.value(metadata i64 %99, metadata !907, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %98, metadata !906, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata ptr %0, metadata !4332, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %99, metadata !4333, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr %0, metadata !4335, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i64 %99, metadata !4339, metadata !DIExpression()), !dbg !4516
  %100 = icmp eq i64 %99, 0, !dbg !4518
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4518
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #47, !dbg !4519
  call void @llvm.dbg.value(metadata ptr %102, metadata !4260, metadata !DIExpression()), !dbg !4520
  %103 = icmp eq ptr %102, null, !dbg !4522
  br i1 %103, label %104, label %105, !dbg !4523

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !4524
  unreachable, !dbg !4524

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !900, metadata !DIExpression()), !dbg !4486
  store i64 %98, ptr %1, align 8, !dbg !4525, !tbaa !3196
  ret ptr %102, !dbg !4526
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4527 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4529, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i64 %0, metadata !4531, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 1, metadata !4534, metadata !DIExpression()), !dbg !4535
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4537
  call void @llvm.dbg.value(metadata ptr %2, metadata !4260, metadata !DIExpression()), !dbg !4538
  %3 = icmp eq ptr %2, null, !dbg !4540
  br i1 %3, label %4, label %5, !dbg !4541

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4542
  unreachable, !dbg !4542

5:                                                ; preds = %1
  ret ptr %2, !dbg !4543
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4544 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4532 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4531, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i64 %1, metadata !4534, metadata !DIExpression()), !dbg !4545
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4546
  call void @llvm.dbg.value(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4547
  %4 = icmp eq ptr %3, null, !dbg !4549
  br i1 %4, label %5, label %6, !dbg !4550

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4551
  unreachable, !dbg !4551

6:                                                ; preds = %2
  ret ptr %3, !dbg !4552
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4553 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4555, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i64 %0, metadata !4557, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i64 1, metadata !4560, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i64 %0, metadata !4563, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i64 1, metadata !4566, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i64 %0, metadata !4563, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i64 1, metadata !4566, metadata !DIExpression()), !dbg !4567
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4569
  call void @llvm.dbg.value(metadata ptr %2, metadata !4260, metadata !DIExpression()), !dbg !4570
  %3 = icmp eq ptr %2, null, !dbg !4572
  br i1 %3, label %4, label %5, !dbg !4573

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4574
  unreachable, !dbg !4574

5:                                                ; preds = %1
  ret ptr %2, !dbg !4575
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4558 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4557, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 %1, metadata !4560, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 %0, metadata !4563, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %1, metadata !4566, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %0, metadata !4563, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %1, metadata !4566, metadata !DIExpression()), !dbg !4577
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4579
  call void @llvm.dbg.value(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4580
  %4 = icmp eq ptr %3, null, !dbg !4582
  br i1 %4, label %5, label %6, !dbg !4583

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4584
  unreachable, !dbg !4584

6:                                                ; preds = %2
  ret ptr %3, !dbg !4585
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %1, metadata !4591, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %1, metadata !4284, metadata !DIExpression()), !dbg !4593
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4595
  call void @llvm.dbg.value(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4596
  %4 = icmp eq ptr %3, null, !dbg !4598
  br i1 %4, label %5, label %6, !dbg !4599

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4600
  unreachable, !dbg !4600

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4601, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata ptr %0, metadata !4607, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 %1, metadata !4608, metadata !DIExpression()), !dbg !4609
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4611
  ret ptr %3, !dbg !4612
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4613 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4617, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 %1, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %1, metadata !4300, metadata !DIExpression()), !dbg !4622
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4624
  call void @llvm.dbg.value(metadata ptr %3, metadata !4260, metadata !DIExpression()), !dbg !4625
  %4 = icmp eq ptr %3, null, !dbg !4627
  br i1 %4, label %5, label %6, !dbg !4628

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4629
  unreachable, !dbg !4629

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4601, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata ptr %0, metadata !4607, metadata !DIExpression()), !dbg !4630
  call void @llvm.dbg.value(metadata i64 %1, metadata !4608, metadata !DIExpression()), !dbg !4630
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4632
  ret ptr %3, !dbg !4633
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4634 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4638, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4641
  %3 = add nsw i64 %1, 1, !dbg !4642
  call void @llvm.dbg.value(metadata i64 %3, metadata !4298, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %3, metadata !4300, metadata !DIExpression()), !dbg !4645
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4647
  call void @llvm.dbg.value(metadata ptr %4, metadata !4260, metadata !DIExpression()), !dbg !4648
  %5 = icmp eq ptr %4, null, !dbg !4650
  br i1 %5, label %6, label %7, !dbg !4651

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4652
  unreachable, !dbg !4652

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4640, metadata !DIExpression()), !dbg !4641
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4653
  store i8 0, ptr %8, align 1, !dbg !4654, !tbaa !1049
  call void @llvm.dbg.value(metadata ptr %4, metadata !4601, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata ptr %0, metadata !4607, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %1, metadata !4608, metadata !DIExpression()), !dbg !4655
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4657
  ret ptr %4, !dbg !4658
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4659 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4661, metadata !DIExpression()), !dbg !4662
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4663
  %3 = add i64 %2, 1, !dbg !4664
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i64 %3, metadata !4591, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i64 %3, metadata !4284, metadata !DIExpression()), !dbg !4667
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4669
  call void @llvm.dbg.value(metadata ptr %4, metadata !4260, metadata !DIExpression()), !dbg !4670
  %5 = icmp eq ptr %4, null, !dbg !4672
  br i1 %5, label %6, label %7, !dbg !4673

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4674
  unreachable, !dbg !4674

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4601, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata ptr %0, metadata !4607, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i64 %3, metadata !4608, metadata !DIExpression()), !dbg !4675
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4677
  ret ptr %4, !dbg !4678
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4679 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4684, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %1, metadata !4681, metadata !DIExpression()), !dbg !4685
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #39, !dbg !4684
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #39, !dbg !4684
  %3 = icmp eq i32 %1, 0, !dbg !4684
  tail call void @llvm.assume(i1 %3), !dbg !4684
  tail call void @abort() #41, !dbg !4686
  unreachable, !dbg !4686
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4687 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4725, metadata !DIExpression()), !dbg !4730
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4731
  call void @llvm.dbg.value(metadata i1 poison, metadata !4726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4730
  call void @llvm.dbg.value(metadata ptr %0, metadata !4732, metadata !DIExpression()), !dbg !4735
  %3 = load i32, ptr %0, align 8, !dbg !4737, !tbaa !4738
  %4 = and i32 %3, 32, !dbg !4739
  %5 = icmp eq i32 %4, 0, !dbg !4739
  call void @llvm.dbg.value(metadata i1 %5, metadata !4728, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4730
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4740
  %7 = icmp eq i32 %6, 0, !dbg !4741
  call void @llvm.dbg.value(metadata i1 %7, metadata !4729, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4730
  br i1 %5, label %8, label %18, !dbg !4742

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4744
  call void @llvm.dbg.value(metadata i1 %9, metadata !4726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4730
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4745
  %11 = xor i1 %7, true, !dbg !4745
  %12 = sext i1 %11 to i32, !dbg !4745
  br i1 %10, label %21, label %13, !dbg !4745

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4746
  %15 = load i32, ptr %14, align 4, !dbg !4746, !tbaa !1040
  %16 = icmp ne i32 %15, 9, !dbg !4747
  %17 = sext i1 %16 to i32, !dbg !4748
  br label %21, !dbg !4748

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4749

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4751
  store i32 0, ptr %20, align 4, !dbg !4753, !tbaa !1040
  br label %21, !dbg !4751

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4730
  ret i32 %22, !dbg !4754
}

; Function Attrs: nounwind
declare !dbg !4755 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4797, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 0, metadata !4798, metadata !DIExpression()), !dbg !4801
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4802
  call void @llvm.dbg.value(metadata i32 %2, metadata !4799, metadata !DIExpression()), !dbg !4801
  %3 = icmp slt i32 %2, 0, !dbg !4803
  br i1 %3, label %4, label %6, !dbg !4805

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4806
  br label %24, !dbg !4807

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4808
  %8 = icmp eq i32 %7, 0, !dbg !4808
  br i1 %8, label %13, label %9, !dbg !4810

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4811
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4812
  %12 = icmp eq i64 %11, -1, !dbg !4813
  br i1 %12, label %16, label %13, !dbg !4814

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4815
  %15 = icmp eq i32 %14, 0, !dbg !4815
  br i1 %15, label %16, label %18, !dbg !4816

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4798, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 0, metadata !4800, metadata !DIExpression()), !dbg !4801
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4817
  call void @llvm.dbg.value(metadata i32 %17, metadata !4800, metadata !DIExpression()), !dbg !4801
  br label %24, !dbg !4818

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4819
  %20 = load i32, ptr %19, align 4, !dbg !4819, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %20, metadata !4798, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 0, metadata !4800, metadata !DIExpression()), !dbg !4801
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4817
  call void @llvm.dbg.value(metadata i32 %21, metadata !4800, metadata !DIExpression()), !dbg !4801
  %22 = icmp eq i32 %20, 0, !dbg !4820
  br i1 %22, label %24, label %23, !dbg !4818

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4822, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 -1, metadata !4800, metadata !DIExpression()), !dbg !4801
  br label %24, !dbg !4824

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4801
  ret i32 %25, !dbg !4825
}

; Function Attrs: nofree nounwind
declare !dbg !4826 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4827 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4828 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4829 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(ptr nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4832 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4836, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i32 %1, metadata !4837, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i32 0, metadata !4838, metadata !DIExpression()), !dbg !4852
  %4 = and i32 %1, 64, !dbg !4853
  %5 = icmp eq i32 %4, 0, !dbg !4853
  br i1 %5, label %24, label %6, !dbg !4854

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !4855
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4839, metadata !DIExpression()), !dbg !4856
  call void @llvm.va_start(ptr nonnull %3), !dbg !4857
  %7 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4858
  %8 = load i32, ptr %7, align 8, !dbg !4858
  %9 = icmp sgt i32 %8, -1, !dbg !4858
  br i1 %9, label %18, label %10, !dbg !4858

10:                                               ; preds = %6
  %11 = add nsw i32 %8, 8, !dbg !4858
  store i32 %11, ptr %7, align 8, !dbg !4858
  %12 = icmp ult i32 %8, -7, !dbg !4858
  br i1 %12, label %13, label %18, !dbg !4858

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4858
  %15 = load ptr, ptr %14, align 8, !dbg !4858
  %16 = sext i32 %8 to i64, !dbg !4858
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4858
  br label %21, !dbg !4858

18:                                               ; preds = %10, %6
  %19 = load ptr, ptr %3, align 8, !dbg !4858
  %20 = getelementptr inbounds i8, ptr %19, i64 8, !dbg !4858
  store ptr %20, ptr %3, align 8, !dbg !4858
  br label %21, !dbg !4858

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %17, %13 ], [ %19, %18 ], !dbg !4858
  %23 = load i32, ptr %22, align 8, !dbg !4858
  call void @llvm.dbg.value(metadata i32 %23, metadata !4838, metadata !DIExpression()), !dbg !4852
  call void @llvm.va_end(ptr nonnull %3), !dbg !4859
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !4860
  br label %24, !dbg !4861

24:                                               ; preds = %21, %2
  %25 = phi i32 [ %23, %21 ], [ 0, %2 ], !dbg !4852
  call void @llvm.dbg.value(metadata i32 %25, metadata !4838, metadata !DIExpression()), !dbg !4852
  %26 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %25) #39, !dbg !4862
  %27 = call i32 @fd_safer(i32 noundef %26) #39, !dbg !4863
  ret i32 %27, !dbg !4864
}

; Function Attrs: nofree
declare !dbg !4865 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4866 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4904, metadata !DIExpression()), !dbg !4905
  %2 = icmp eq ptr %0, null, !dbg !4906
  br i1 %2, label %6, label %3, !dbg !4908

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4909
  %5 = icmp eq i32 %4, 0, !dbg !4909
  br i1 %5, label %6, label %8, !dbg !4910

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4911
  br label %16, !dbg !4912

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4913, metadata !DIExpression()), !dbg !4918
  %9 = load i32, ptr %0, align 8, !dbg !4920, !tbaa !4738
  %10 = and i32 %9, 256, !dbg !4922
  %11 = icmp eq i32 %10, 0, !dbg !4922
  br i1 %11, label %14, label %12, !dbg !4923

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4924
  br label %14, !dbg !4924

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4925
  br label %16, !dbg !4926

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4905
  ret i32 %17, !dbg !4927
}

; Function Attrs: nofree nounwind
declare !dbg !4928 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4929 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4968, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i64 %1, metadata !4969, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i32 %2, metadata !4970, metadata !DIExpression()), !dbg !4974
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4975
  %5 = load ptr, ptr %4, align 8, !dbg !4975, !tbaa !4976
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4977
  %7 = load ptr, ptr %6, align 8, !dbg !4977, !tbaa !4978
  %8 = icmp eq ptr %5, %7, !dbg !4979
  br i1 %8, label %9, label %27, !dbg !4980

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4981
  %11 = load ptr, ptr %10, align 8, !dbg !4981, !tbaa !1550
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4982
  %13 = load ptr, ptr %12, align 8, !dbg !4982, !tbaa !4983
  %14 = icmp eq ptr %11, %13, !dbg !4984
  br i1 %14, label %15, label %27, !dbg !4985

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4986
  %17 = load ptr, ptr %16, align 8, !dbg !4986, !tbaa !4987
  %18 = icmp eq ptr %17, null, !dbg !4988
  br i1 %18, label %19, label %27, !dbg !4989

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4990
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4991
  call void @llvm.dbg.value(metadata i64 %21, metadata !4971, metadata !DIExpression()), !dbg !4992
  %22 = icmp eq i64 %21, -1, !dbg !4993
  br i1 %22, label %29, label %23, !dbg !4995

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4996, !tbaa !4738
  %25 = and i32 %24, -17, !dbg !4996
  store i32 %25, ptr %0, align 8, !dbg !4996, !tbaa !4738
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4997
  store i64 %21, ptr %26, align 8, !dbg !4998, !tbaa !4999
  br label %29, !dbg !5000

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5001
  br label %29, !dbg !5002

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4974
  ret i32 %30, !dbg !5003
}

; Function Attrs: nofree nounwind
declare !dbg !5004 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5007 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5012, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr %1, metadata !5013, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i64 %2, metadata !5014, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr %3, metadata !5015, metadata !DIExpression()), !dbg !5017
  %5 = icmp eq ptr %1, null, !dbg !5018
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5020
  %7 = select i1 %5, ptr @.str.155, ptr %1, !dbg !5020
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5020
  call void @llvm.dbg.value(metadata i64 %8, metadata !5014, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr %7, metadata !5013, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr %6, metadata !5012, metadata !DIExpression()), !dbg !5017
  %9 = icmp eq ptr %3, null, !dbg !5021
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5023
  call void @llvm.dbg.value(metadata ptr %10, metadata !5015, metadata !DIExpression()), !dbg !5017
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !5024
  call void @llvm.dbg.value(metadata i64 %11, metadata !5016, metadata !DIExpression()), !dbg !5017
  %12 = icmp ult i64 %11, -3, !dbg !5025
  br i1 %12, label %13, label %17, !dbg !5027

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !5028
  %15 = icmp eq i32 %14, 0, !dbg !5028
  br i1 %15, label %16, label %29, !dbg !5029

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5030, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata ptr %10, metadata !5037, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i32 0, metadata !5040, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i64 8, metadata !5041, metadata !DIExpression()), !dbg !5042
  store i64 0, ptr %10, align 1, !dbg !5044
  br label %29, !dbg !5045

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5046
  br i1 %18, label %19, label %20, !dbg !5048

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5049
  unreachable, !dbg !5049

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5050

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !5052
  br i1 %23, label %29, label %24, !dbg !5053

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5054
  br i1 %25, label %29, label %26, !dbg !5057

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5058, !tbaa !1049
  %28 = zext i8 %27 to i32, !dbg !5059
  store i32 %28, ptr %6, align 4, !dbg !5060, !tbaa !1040
  br label %29, !dbg !5061

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5017
  ret i64 %30, !dbg !5062
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5063 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i64 @mkancesdirs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5069 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5074, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %1, metadata !5075, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %2, metadata !5076, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %3, metadata !5077, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr null, metadata !5078, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %0, metadata !5079, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %0, metadata !5080, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i8 0, metadata !5082, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i8 poison, metadata !5082, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %0, metadata !5080, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5091
  %5 = load i8, ptr %0, align 1, !dbg !5092, !tbaa !1049
  call void @llvm.dbg.value(metadata i8 %5, metadata !5081, metadata !DIExpression()), !dbg !5091
  %6 = icmp eq i8 %5, 0, !dbg !5093
  br i1 %6, label %77, label %7, !dbg !5093

7:                                                ; preds = %4, %71
  %8 = phi i8 [ %72, %71 ], [ %5, %4 ]
  %9 = phi ptr [ %13, %71 ], [ %0, %4 ]
  %10 = phi i1 [ %75, %71 ], [ false, %4 ]
  %11 = phi ptr [ %74, %71 ], [ null, %4 ]
  %12 = phi ptr [ %73, %71 ], [ %0, %4 ]
  %13 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !5094
  call void @llvm.dbg.value(metadata ptr %11, metadata !5078, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %12, metadata !5079, metadata !DIExpression()), !dbg !5091
  %14 = load i8, ptr %13, align 1, !dbg !5095, !tbaa !1049
  %15 = icmp eq i8 %14, 47, !dbg !5095
  %16 = icmp eq i8 %8, 47, !dbg !5096
  br i1 %15, label %17, label %19, !dbg !5097

17:                                               ; preds = %7
  %18 = select i1 %16, ptr %11, ptr %13, !dbg !5098
  br label %71, !dbg !5098

19:                                               ; preds = %7
  br i1 %16, label %20, label %71, !dbg !5100

20:                                               ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !5101
  %22 = icmp ne ptr %11, null
  %23 = select i1 %21, i1 %22, i1 false, !dbg !5102
  br i1 %23, label %24, label %67, !dbg !5102

24:                                               ; preds = %20
  %25 = ptrtoint ptr %11 to i64, !dbg !5103
  %26 = ptrtoint ptr %12 to i64, !dbg !5103
  %27 = sub i64 %25, %26, !dbg !5103
  %28 = icmp eq i64 %27, 1, !dbg !5104
  br i1 %28, label %29, label %33, !dbg !5105

29:                                               ; preds = %24
  %30 = load i8, ptr %12, align 1, !dbg !5106, !tbaa !1049
  %31 = icmp eq i8 %30, 46, !dbg !5107
  br i1 %31, label %67, label %32, !dbg !5108

32:                                               ; preds = %29
  store i8 0, ptr %11, align 1, !dbg !5109, !tbaa !1049
  call void @llvm.dbg.value(metadata i32 0, metadata !5083, metadata !DIExpression()), !dbg !5110
  br label %42, !dbg !5111

33:                                               ; preds = %24
  store i8 0, ptr %11, align 1, !dbg !5109, !tbaa !1049
  call void @llvm.dbg.value(metadata i32 0, metadata !5083, metadata !DIExpression()), !dbg !5110
  %34 = icmp eq i64 %27, 2, !dbg !5113
  br i1 %34, label %35, label %42, !dbg !5111

35:                                               ; preds = %33
  %36 = load i8, ptr %12, align 1, !dbg !5114, !tbaa !1049
  %37 = icmp eq i8 %36, 46, !dbg !5115
  br i1 %37, label %38, label %42, !dbg !5116

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !5117
  %40 = load i8, ptr %39, align 1, !dbg !5117, !tbaa !1049
  %41 = icmp eq i8 %40, 46, !dbg !5118
  br i1 %41, label %50, label %42, !dbg !5119

42:                                               ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(ptr noundef nonnull %0, ptr noundef %12, ptr noundef %3) #39, !dbg !5120
  %44 = icmp slt i32 %43, 0, !dbg !5122
  br i1 %44, label %45, label %48, !dbg !5123

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #42, !dbg !5124
  %47 = load i32, ptr %46, align 4, !dbg !5124, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %47, metadata !5083, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.value(metadata i8 poison, metadata !5082, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata i32 0, metadata !5089, metadata !DIExpression()), !dbg !5110
  br i1 %10, label %48, label %50, !dbg !5125

48:                                               ; preds = %42, %45
  %49 = phi i32 [ %47, %45 ], [ 0, %42 ]
  br label %50, !dbg !5125

50:                                               ; preds = %38, %45, %48
  %51 = phi i32 [ %49, %48 ], [ %47, %45 ], [ 0, %38 ]
  %52 = phi i1 [ true, %48 ], [ false, %45 ], [ false, %38 ]
  %53 = phi i32 [ 1, %48 ], [ 0, %45 ], [ 0, %38 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !5089, metadata !DIExpression()), !dbg !5110
  %54 = tail call i32 @savewd_chdir(ptr noundef %1, ptr noundef %12, i32 noundef %53, ptr noundef null) #39, !dbg !5126
  call void @llvm.dbg.value(metadata i32 %54, metadata !5090, metadata !DIExpression()), !dbg !5110
  %55 = icmp eq i32 %54, -1, !dbg !5127
  br i1 %55, label %58, label %56, !dbg !5129

56:                                               ; preds = %50
  store i8 47, ptr %11, align 1, !dbg !5130, !tbaa !1049
  %57 = icmp eq i32 %54, 0, !dbg !5131
  br i1 %57, label %67, label %58, !dbg !5133

58:                                               ; preds = %50, %56
  %59 = icmp eq i32 %51, 0, !dbg !5134
  br i1 %59, label %65, label %60, !dbg !5137

60:                                               ; preds = %58
  %61 = tail call ptr @__errno_location() #42, !dbg !5138
  %62 = load i32, ptr %61, align 4, !dbg !5138, !tbaa !1040
  %63 = icmp eq i32 %62, 2, !dbg !5139
  br i1 %63, label %64, label %65, !dbg !5140

64:                                               ; preds = %60
  store i32 %51, ptr %61, align 4, !dbg !5141, !tbaa !1040
  br label %65, !dbg !5142

65:                                               ; preds = %58, %60, %64
  %66 = sext i32 %54 to i64, !dbg !5143
  br label %82

67:                                               ; preds = %20, %29, %56
  %68 = phi ptr [ %13, %56 ], [ %13, %29 ], [ %12, %20 ]
  %69 = phi i1 [ %52, %56 ], [ %10, %29 ], [ %10, %20 ]
  %70 = load i8, ptr %13, align 1, !dbg !5092, !tbaa !1049
  br label %71, !dbg !5092

71:                                               ; preds = %67, %17, %19
  %72 = phi i8 [ %70, %67 ], [ 47, %17 ], [ %14, %19 ], !dbg !5092
  %73 = phi ptr [ %68, %67 ], [ %12, %17 ], [ %12, %19 ], !dbg !5091
  %74 = phi ptr [ %11, %67 ], [ %18, %17 ], [ %11, %19 ], !dbg !5091
  %75 = phi i1 [ %69, %67 ], [ %10, %17 ], [ %10, %19 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !5082, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %74, metadata !5078, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %73, metadata !5079, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.value(metadata ptr %13, metadata !5080, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5091
  call void @llvm.dbg.value(metadata i8 %72, metadata !5081, metadata !DIExpression()), !dbg !5091
  %76 = icmp eq i8 %72, 0, !dbg !5093
  br i1 %76, label %77, label %7, !dbg !5093, !llvm.loop !5144

77:                                               ; preds = %71, %4
  %78 = phi ptr [ %0, %4 ], [ %73, %71 ], !dbg !5146
  %79 = ptrtoint ptr %78 to i64, !dbg !5147
  %80 = ptrtoint ptr %0 to i64, !dbg !5147
  %81 = sub i64 %79, %80, !dbg !5147
  br label %82, !dbg !5148

82:                                               ; preds = %65, %77
  %83 = phi i64 [ %66, %65 ], [ %81, %77 ], !dbg !5091
  ret i64 %83, !dbg !5149
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dirchownmod(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #10 !dbg !5150 {
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !5154, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata ptr %1, metadata !5155, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %2, metadata !5156, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %3, metadata !5157, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %4, metadata !5158, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %5, metadata !5159, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %6, metadata !5160, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #39, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5161, metadata !DIExpression()), !dbg !5201
  %9 = icmp slt i32 %0, 0, !dbg !5202
  br i1 %9, label %10, label %12, !dbg !5203

10:                                               ; preds = %7
  %11 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %8) #39, !dbg !5204
  br label %14, !dbg !5203

12:                                               ; preds = %7
  %13 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %8) #39, !dbg !5205
  br label %14, !dbg !5203

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ], !dbg !5203
  call void @llvm.dbg.value(metadata i32 %15, metadata !5184, metadata !DIExpression()), !dbg !5199
  %16 = icmp eq i32 %15, 0, !dbg !5206
  br i1 %16, label %17, label %74, !dbg !5207

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 2, !dbg !5208
  %19 = load i32, ptr %18, align 8, !dbg !5208, !tbaa !1971
  call void @llvm.dbg.value(metadata i32 %19, metadata !5185, metadata !DIExpression()), !dbg !5209
  %20 = and i32 %19, 61440, !dbg !5210
  %21 = icmp eq i32 %20, 16384, !dbg !5210
  br i1 %21, label %24, label %22, !dbg !5211

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #42, !dbg !5212
  store i32 20, ptr %23, align 4, !dbg !5214, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 -1, metadata !5184, metadata !DIExpression()), !dbg !5199
  br label %74, !dbg !5215

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !5188, metadata !DIExpression()), !dbg !5216
  %25 = icmp eq i32 %3, -1, !dbg !5217
  %26 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, %3
  %29 = select i1 %25, i1 true, i1 %28, !dbg !5219
  br i1 %29, label %30, label %36, !dbg !5219

30:                                               ; preds = %24
  %31 = icmp eq i32 %4, -1, !dbg !5220
  %32 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %4
  %35 = select i1 %31, i1 true, i1 %34, !dbg !5221
  br i1 %35, label %54, label %36, !dbg !5221

36:                                               ; preds = %30, %24
  %37 = icmp sgt i32 %0, -1, !dbg !5222
  br i1 %37, label %38, label %40, !dbg !5224

38:                                               ; preds = %36
  %39 = tail call i32 @fchown(i32 noundef %0, i32 noundef %3, i32 noundef %4) #39, !dbg !5225
  br label %46, !dbg !5224

40:                                               ; preds = %36
  %41 = icmp eq i32 %2, -1, !dbg !5226
  br i1 %41, label %44, label %42, !dbg !5227

42:                                               ; preds = %40
  %43 = tail call i32 @lchown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #39, !dbg !5228
  br label %46, !dbg !5227

44:                                               ; preds = %40
  %45 = tail call i32 @chown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #39, !dbg !5229
  br label %46, !dbg !5227

46:                                               ; preds = %42, %44, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ], [ %45, %44 ], !dbg !5224
  call void @llvm.dbg.value(metadata i32 %47, metadata !5184, metadata !DIExpression()), !dbg !5199
  %48 = icmp eq i32 %47, 0, !dbg !5230
  br i1 %48, label %49, label %74, !dbg !5232

49:                                               ; preds = %46
  %50 = and i32 %19, 73, !dbg !5233
  %51 = icmp eq i32 %50, 0, !dbg !5233
  %52 = and i32 %19, 3072
  %53 = select i1 %51, i32 0, i32 %52, !dbg !5234
  br label %54, !dbg !5234

54:                                               ; preds = %30, %49
  %55 = phi i32 [ %53, %49 ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !5184, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.value(metadata i32 %55, metadata !5188, metadata !DIExpression()), !dbg !5216
  %56 = xor i32 %19, %5, !dbg !5235
  %57 = or i32 %55, %56, !dbg !5236
  %58 = and i32 %57, %6, !dbg !5237
  %59 = icmp eq i32 %58, 0, !dbg !5237
  br i1 %59, label %74, label %60, !dbg !5238

60:                                               ; preds = %54
  %61 = and i32 %6, 4095, !dbg !5239
  %62 = xor i32 %61, 4095, !dbg !5239
  %63 = and i32 %62, %19, !dbg !5240
  %64 = or i32 %63, %5, !dbg !5241
  call void @llvm.dbg.value(metadata i32 %64, metadata !5191, metadata !DIExpression()), !dbg !5242
  %65 = icmp sgt i32 %0, -1, !dbg !5243
  br i1 %65, label %66, label %68, !dbg !5244

66:                                               ; preds = %60
  %67 = tail call i32 @fchmod(i32 noundef %0, i32 noundef %64) #39, !dbg !5245
  call void @llvm.dbg.value(metadata i32 %67, metadata !5184, metadata !DIExpression()), !dbg !5199
  br label %77, !dbg !5246

68:                                               ; preds = %60
  %69 = icmp eq i32 %2, -1, !dbg !5247
  br i1 %69, label %72, label %70, !dbg !5248

70:                                               ; preds = %68
  %71 = tail call i32 @lchmod(ptr noundef %1, i32 noundef %64) #39, !dbg !5249
  br label %86, !dbg !5248

72:                                               ; preds = %68
  %73 = tail call i32 @chmod(ptr noundef %1, i32 noundef %64) #39, !dbg !5250
  br label %86, !dbg !5248

74:                                               ; preds = %46, %22, %54, %14
  %75 = phi i32 [ %15, %14 ], [ -1, %22 ], [ 0, %54 ], [ %47, %46 ], !dbg !5199
  call void @llvm.dbg.value(metadata i32 %75, metadata !5184, metadata !DIExpression()), !dbg !5199
  %76 = icmp sgt i32 %0, -1, !dbg !5251
  br i1 %76, label %77, label %86, !dbg !5246

77:                                               ; preds = %66, %74
  %78 = phi i32 [ %67, %66 ], [ %75, %74 ]
  %79 = icmp eq i32 %78, 0, !dbg !5252
  br i1 %79, label %80, label %82, !dbg !5253

80:                                               ; preds = %77
  %81 = tail call i32 @close(i32 noundef %0) #39, !dbg !5254
  call void @llvm.dbg.value(metadata i32 %81, metadata !5184, metadata !DIExpression()), !dbg !5199
  br label %86, !dbg !5255

82:                                               ; preds = %77
  %83 = tail call ptr @__errno_location() #42, !dbg !5256
  %84 = load i32, ptr %83, align 4, !dbg !5256, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %84, metadata !5194, metadata !DIExpression()), !dbg !5257
  %85 = tail call i32 @close(i32 noundef %0) #39, !dbg !5258
  store i32 %84, ptr %83, align 4, !dbg !5259, !tbaa !1040
  br label %86

86:                                               ; preds = %70, %72, %80, %82, %74
  %87 = phi i32 [ %81, %80 ], [ %78, %82 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], !dbg !5199
  call void @llvm.dbg.value(metadata i32 %87, metadata !5184, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #39, !dbg !5260
  ret i32 %87, !dbg !5261
}

; Function Attrs: nofree nounwind
declare !dbg !5262 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5266 i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5269 noundef i32 @lchown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5272 noundef i32 @chown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5273 i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5276 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5277 noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5278 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5280, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata i64 %1, metadata !5281, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata i64 %2, metadata !5282, metadata !DIExpression()), !dbg !5284
  %4 = icmp eq i64 %2, 0, !dbg !5285
  br i1 %4, label %8, label %5, !dbg !5285

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5285
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5285
  br i1 %7, label %13, label %8, !dbg !5285

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5283, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5284
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5283, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5284
  %9 = mul i64 %2, %1, !dbg !5285
  call void @llvm.dbg.value(metadata i64 %9, metadata !5283, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata ptr %0, metadata !5287, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.value(metadata i64 %9, metadata !5290, metadata !DIExpression()), !dbg !5291
  %10 = icmp eq i64 %9, 0, !dbg !5293
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5293
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !5294
  br label %15, !dbg !5295

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5283, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5284
  %14 = tail call ptr @__errno_location() #42, !dbg !5296
  store i32 12, ptr %14, align 4, !dbg !5298, !tbaa !1040
  br label %15, !dbg !5299

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5284
  ret ptr %16, !dbg !5300
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5301 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5303, metadata !DIExpression()), !dbg !5308
  %2 = icmp ult i32 %0, 3, !dbg !5309
  br i1 %2, label %3, label %8, !dbg !5309

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #39, !dbg !5310
  call void @llvm.dbg.value(metadata i32 %4, metadata !5304, metadata !DIExpression()), !dbg !5311
  %5 = tail call ptr @__errno_location() #42, !dbg !5312
  %6 = load i32, ptr %5, align 4, !dbg !5312, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %6, metadata !5307, metadata !DIExpression()), !dbg !5311
  %7 = tail call i32 @close(i32 noundef %0) #39, !dbg !5313
  store i32 %6, ptr %5, align 4, !dbg !5314, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %4, metadata !5303, metadata !DIExpression()), !dbg !5308
  br label %8, !dbg !5315

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !5303, metadata !DIExpression()), !dbg !5308
  ret i32 %9, !dbg !5316
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5317 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5321, metadata !DIExpression()), !dbg !5326
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5327
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5322, metadata !DIExpression()), !dbg !5328
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5329
  %4 = icmp eq i32 %3, 0, !dbg !5329
  br i1 %4, label %5, label %12, !dbg !5331

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5332, metadata !DIExpression()), !dbg !5336
  call void @llvm.dbg.value(metadata ptr @.str.166, metadata !5335, metadata !DIExpression()), !dbg !5336
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.166, i64 2), !dbg !5339
  %7 = icmp eq i32 %6, 0, !dbg !5340
  br i1 %7, label %11, label %8, !dbg !5341

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5332, metadata !DIExpression()), !dbg !5342
  call void @llvm.dbg.value(metadata ptr @.str.1.167, metadata !5335, metadata !DIExpression()), !dbg !5342
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.167, i64 6), !dbg !5344
  %10 = icmp eq i32 %9, 0, !dbg !5345
  br i1 %10, label %11, label %12, !dbg !5346

11:                                               ; preds = %8, %5
  br label %12, !dbg !5347

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5326
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5348
  ret i1 %13, !dbg !5348
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5349 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5353, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.value(metadata ptr %1, metadata !5354, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.value(metadata i64 %2, metadata !5355, metadata !DIExpression()), !dbg !5356
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5357
  ret i32 %4, !dbg !5358
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5359 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5363, metadata !DIExpression()), !dbg !5364
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5365
  ret ptr %2, !dbg !5366
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5369, metadata !DIExpression()), !dbg !5371
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5372
  call void @llvm.dbg.value(metadata ptr %2, metadata !5370, metadata !DIExpression()), !dbg !5371
  ret ptr %2, !dbg !5373
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5376, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.value(metadata ptr %1, metadata !5377, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.value(metadata i64 %2, metadata !5378, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.value(metadata i32 %0, metadata !5369, metadata !DIExpression()), !dbg !5384
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5386
  call void @llvm.dbg.value(metadata ptr %4, metadata !5370, metadata !DIExpression()), !dbg !5384
  call void @llvm.dbg.value(metadata ptr %4, metadata !5379, metadata !DIExpression()), !dbg !5383
  %5 = icmp eq ptr %4, null, !dbg !5387
  br i1 %5, label %6, label %9, !dbg !5388

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5389
  br i1 %7, label %19, label %8, !dbg !5392

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5393, !tbaa !1049
  br label %19, !dbg !5394

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5395
  call void @llvm.dbg.value(metadata i64 %10, metadata !5380, metadata !DIExpression()), !dbg !5396
  %11 = icmp ult i64 %10, %2, !dbg !5397
  br i1 %11, label %12, label %14, !dbg !5399

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5400
  call void @llvm.dbg.value(metadata ptr %1, metadata !5402, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.value(metadata ptr %4, metadata !5405, metadata !DIExpression()), !dbg !5407
  call void @llvm.dbg.value(metadata i64 %13, metadata !5406, metadata !DIExpression()), !dbg !5407
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5409
  br label %19, !dbg !5410

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5411
  br i1 %15, label %19, label %16, !dbg !5414

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5415
  call void @llvm.dbg.value(metadata ptr %1, metadata !5402, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.value(metadata ptr %4, metadata !5405, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.value(metadata i64 %17, metadata !5406, metadata !DIExpression()), !dbg !5417
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5419
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5420
  store i8 0, ptr %18, align 1, !dbg !5421, !tbaa !1049
  br label %19, !dbg !5422

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5423
  ret i32 %20, !dbg !5424
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5425 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5427, metadata !DIExpression()), !dbg !5428
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #39, !dbg !5429
  ret i32 %2, !dbg !5430
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !5431 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !5433, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.value(metadata i32 %1, metadata !5434, metadata !DIExpression()), !dbg !5458
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !5459
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5435, metadata !DIExpression()), !dbg !5460
  call void @llvm.va_start(ptr nonnull %3), !dbg !5461
  call void @llvm.dbg.value(metadata i32 -1, metadata !5446, metadata !DIExpression()), !dbg !5458
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
  ], !dbg !5462

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5463
  %6 = load i32, ptr %5, align 8, !dbg !5463
  %7 = icmp sgt i32 %6, -1, !dbg !5463
  br i1 %7, label %16, label %8, !dbg !5463

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !5463
  store i32 %9, ptr %5, align 8, !dbg !5463
  %10 = icmp ult i32 %6, -7, !dbg !5463
  br i1 %10, label %11, label %16, !dbg !5463

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5463
  %13 = load ptr, ptr %12, align 8, !dbg !5463
  %14 = sext i32 %6 to i64, !dbg !5463
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !5463
  br label %19, !dbg !5463

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !5463
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !5463
  store ptr %18, ptr %3, align 8, !dbg !5463
  br label %19, !dbg !5463

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !5463
  %21 = load i32, ptr %20, align 8, !dbg !5463
  call void @llvm.dbg.value(metadata i32 %21, metadata !5447, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.value(metadata i32 %0, metadata !5465, metadata !DIExpression()), !dbg !5470
  call void @llvm.dbg.value(metadata i32 %21, metadata !5468, metadata !DIExpression()), !dbg !5470
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #39, !dbg !5472
  call void @llvm.dbg.value(metadata i32 %22, metadata !5469, metadata !DIExpression()), !dbg !5470
  call void @llvm.dbg.value(metadata i32 %22, metadata !5446, metadata !DIExpression()), !dbg !5458
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5473
  %25 = load i32, ptr %24, align 8, !dbg !5473
  %26 = icmp sgt i32 %25, -1, !dbg !5473
  br i1 %26, label %35, label %27, !dbg !5473

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !5473
  store i32 %28, ptr %24, align 8, !dbg !5473
  %29 = icmp ult i32 %25, -7, !dbg !5473
  br i1 %29, label %30, label %35, !dbg !5473

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5473
  %32 = load ptr, ptr %31, align 8, !dbg !5473
  %33 = sext i32 %25 to i64, !dbg !5473
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !5473
  br label %38, !dbg !5473

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !5473
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !5473
  store ptr %37, ptr %3, align 8, !dbg !5473
  br label %38, !dbg !5473

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !5473
  %40 = load i32, ptr %39, align 8, !dbg !5473
  call void @llvm.dbg.value(metadata i32 %40, metadata !5450, metadata !DIExpression()), !dbg !5474
  call void @llvm.dbg.value(metadata i32 %0, metadata !813, metadata !DIExpression()), !dbg !5475
  call void @llvm.dbg.value(metadata i32 %40, metadata !814, metadata !DIExpression()), !dbg !5475
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5477, !tbaa !1040
  %42 = icmp sgt i32 %41, -1, !dbg !5479
  br i1 %42, label %43, label %55, !dbg !5480

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #39, !dbg !5481
  call void @llvm.dbg.value(metadata i32 %44, metadata !815, metadata !DIExpression()), !dbg !5475
  %45 = icmp sgt i32 %44, -1, !dbg !5483
  br i1 %45, label %50, label %46, !dbg !5485

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #42, !dbg !5486
  %48 = load i32, ptr %47, align 4, !dbg !5486, !tbaa !1040
  %49 = icmp eq i32 %48, 22, !dbg !5487
  br i1 %49, label %51, label %50, !dbg !5488

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5489, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %44, metadata !815, metadata !DIExpression()), !dbg !5475
  br label %115, !dbg !5491

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !5465, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.value(metadata i32 %40, metadata !5468, metadata !DIExpression()), !dbg !5492
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !5495
  call void @llvm.dbg.value(metadata i32 %52, metadata !5469, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.value(metadata i32 %52, metadata !815, metadata !DIExpression()), !dbg !5475
  %53 = icmp sgt i32 %52, -1, !dbg !5496
  br i1 %53, label %54, label %115, !dbg !5498

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5499, !tbaa !1040
  br label %59, !dbg !5500

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !5465, metadata !DIExpression()), !dbg !5501
  call void @llvm.dbg.value(metadata i32 %40, metadata !5468, metadata !DIExpression()), !dbg !5501
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !5503
  call void @llvm.dbg.value(metadata i32 %56, metadata !5469, metadata !DIExpression()), !dbg !5501
  call void @llvm.dbg.value(metadata i32 %56, metadata !815, metadata !DIExpression()), !dbg !5475
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !5504
  call void @llvm.dbg.value(metadata i32 %61, metadata !815, metadata !DIExpression()), !dbg !5475
  %62 = icmp sgt i32 %61, -1, !dbg !5505
  %63 = select i1 %62, i1 %60, i1 false, !dbg !5491
  br i1 %63, label %64, label %115, !dbg !5491

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #39, !dbg !5506
  call void @llvm.dbg.value(metadata i32 %65, metadata !816, metadata !DIExpression()), !dbg !5507
  %66 = icmp slt i32 %65, 0, !dbg !5508
  br i1 %66, label %71, label %67, !dbg !5509

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !5510
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #39, !dbg !5511
  %70 = icmp eq i32 %69, -1, !dbg !5512
  br i1 %70, label %71, label %115, !dbg !5513

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #42, !dbg !5514
  %73 = load i32, ptr %72, align 4, !dbg !5514, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 %73, metadata !819, metadata !DIExpression()), !dbg !5515
  %74 = call i32 @close(i32 noundef %61) #39, !dbg !5516
  store i32 %73, ptr %72, align 4, !dbg !5517, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 -1, metadata !815, metadata !DIExpression()), !dbg !5475
  br label %115, !dbg !5518

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !5519
  call void @llvm.dbg.value(metadata i32 %76, metadata !5446, metadata !DIExpression()), !dbg !5458
  br label %115, !dbg !5520

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5521
  %79 = load i32, ptr %78, align 8, !dbg !5521
  %80 = icmp sgt i32 %79, -1, !dbg !5521
  br i1 %80, label %89, label %81, !dbg !5521

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !5521
  store i32 %82, ptr %78, align 8, !dbg !5521
  %83 = icmp ult i32 %79, -7, !dbg !5521
  br i1 %83, label %84, label %89, !dbg !5521

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5521
  %86 = load ptr, ptr %85, align 8, !dbg !5521
  %87 = sext i32 %79 to i64, !dbg !5521
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !5521
  br label %92, !dbg !5521

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !5521
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !5521
  store ptr %91, ptr %3, align 8, !dbg !5521
  br label %92, !dbg !5521

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !5521
  %94 = load i32, ptr %93, align 8, !dbg !5521
  call void @llvm.dbg.value(metadata i32 %94, metadata !5452, metadata !DIExpression()), !dbg !5522
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #39, !dbg !5523
  call void @llvm.dbg.value(metadata i32 %95, metadata !5446, metadata !DIExpression()), !dbg !5458
  br label %115, !dbg !5524

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !5525
  %98 = load i32, ptr %97, align 8, !dbg !5525
  %99 = icmp sgt i32 %98, -1, !dbg !5525
  br i1 %99, label %108, label %100, !dbg !5525

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !5525
  store i32 %101, ptr %97, align 8, !dbg !5525
  %102 = icmp ult i32 %98, -7, !dbg !5525
  br i1 %102, label %103, label %108, !dbg !5525

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !5525
  %105 = load ptr, ptr %104, align 8, !dbg !5525
  %106 = sext i32 %98 to i64, !dbg !5525
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !5525
  br label %111, !dbg !5525

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !5525
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !5525
  store ptr %110, ptr %3, align 8, !dbg !5525
  br label %111, !dbg !5525

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !5525
  %113 = load ptr, ptr %112, align 8, !dbg !5525
  call void @llvm.dbg.value(metadata ptr %113, metadata !5456, metadata !DIExpression()), !dbg !5526
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #39, !dbg !5527
  call void @llvm.dbg.value(metadata i32 %114, metadata !5446, metadata !DIExpression()), !dbg !5458
  br label %115, !dbg !5528

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !5529
  call void @llvm.dbg.value(metadata i32 %116, metadata !5446, metadata !DIExpression()), !dbg !5458
  call void @llvm.va_end(ptr nonnull %3), !dbg !5530
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !5531
  ret i32 %116, !dbg !5532
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
attributes #36 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }
attributes #47 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!76, !822, !825, !416, !420, !435, !770, !827, !829, !847, !508, !522, !573, !856, !869, !762, !876, !910, !912, !914, !916, !918, !920, !786, !922, !935, !940, !943, !945, !947, !949, !951, !810}
!llvm.ident = !{!953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953, !953}
!llvm.module.flags = !{!954, !955, !956, !957, !958, !959, !960}

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
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !136, globals: !150, splitDebugInlining: false, nameTableKind: None)
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
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 46, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!416 = distinct !DICompileUnit(language: DW_LANG_C11, file: !413, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !417, splitDebugInlining: false, nameTableKind: None)
!417 = !{!411, !414}
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "file_name", scope: !420, file: !421, line: 45, type: !143, isLocal: true, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !422, splitDebugInlining: false, nameTableKind: None)
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
!434 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !435, file: !436, line: 66, type: !484, isLocal: false, isDefinition: true)
!435 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !437, globals: !438, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!437 = !{!138, !145}
!438 = !{!439, !441, !466, !468, !470, !472, !433, !474, !476, !478, !480, !482}
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !436, line: 272, type: !263, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "old_file_name", scope: !443, file: !436, line: 304, type: !143, isLocal: true, isDefinition: true)
!443 = distinct !DISubprogram(name: "verror_at_line", scope: !436, file: !436, line: 298, type: !444, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !459)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !80, !80, !143, !99, !143, !446}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !447, line: 52, baseType: !448)
!447 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !449, line: 14, baseType: !450)
!449 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !451, baseType: !452)
!451 = !DIFile(filename: "lib/error.c", directory: "/src")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !453)
!453 = !{!454, !455, !456, !457, !458}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !452, file: !451, baseType: !138, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !452, file: !451, baseType: !138, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !452, file: !451, baseType: !138, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !452, file: !451, baseType: !80, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !452, file: !451, baseType: !80, size: 32, offset: 224)
!459 = !{!460, !461, !462, !463, !464, !465}
!460 = !DILocalVariable(name: "status", arg: 1, scope: !443, file: !436, line: 298, type: !80)
!461 = !DILocalVariable(name: "errnum", arg: 2, scope: !443, file: !436, line: 298, type: !80)
!462 = !DILocalVariable(name: "file_name", arg: 3, scope: !443, file: !436, line: 298, type: !143)
!463 = !DILocalVariable(name: "line_number", arg: 4, scope: !443, file: !436, line: 298, type: !99)
!464 = !DILocalVariable(name: "message", arg: 5, scope: !443, file: !436, line: 298, type: !143)
!465 = !DILocalVariable(name: "args", arg: 6, scope: !443, file: !436, line: 298, type: !446)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "old_line_number", scope: !443, file: !436, line: 305, type: !99, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !436, line: 338, type: !270, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !302, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !277, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "error_message_count", scope: !435, file: !436, line: 69, type: !99, isLocal: false, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !435, file: !436, line: 295, type: !80, isLocal: false, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !297, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !153, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !436, line: 214, type: !263, isLocal: true, isDefinition: true)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null}
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !489, line: 164, type: !297, isLocal: true, isDefinition: true)
!489 = !DIFile(filename: "lib/mkdir-p.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35fabba6c7fba2a5201f9ea7f8c0e0d1")
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !489, line: 164, type: !329, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !489, line: 180, type: !277, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !489, line: 189, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 32)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !489, line: 189, type: !501, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 42)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !363, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "program_name", scope: !508, file: !509, line: 31, type: !143, isLocal: false, isDefinition: true)
!508 = distinct !DICompileUnit(language: DW_LANG_C11, file: !509, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !510, globals: !511, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!510 = !{!137}
!511 = !{!506, !512, !514}
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !509, line: 46, type: !302, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !509, line: 49, type: !270, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "utf07FF", scope: !518, file: !519, line: 46, type: !546, isLocal: true, isDefinition: true)
!518 = distinct !DISubprogram(name: "proper_name_lite", scope: !519, file: !519, line: 38, type: !520, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !524)
!519 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!520 = !DISubroutineType(types: !521)
!521 = !{!143, !143, !143}
!522 = distinct !DICompileUnit(language: DW_LANG_C11, file: !519, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !523, splitDebugInlining: false, nameTableKind: None)
!523 = !{!516}
!524 = !{!525, !526, !527, !528, !533}
!525 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !518, file: !519, line: 38, type: !143)
!526 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !518, file: !519, line: 38, type: !143)
!527 = !DILocalVariable(name: "translation", scope: !518, file: !519, line: 40, type: !143)
!528 = !DILocalVariable(name: "w", scope: !518, file: !519, line: 47, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !530, line: 37, baseType: !531)
!530 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !98, line: 57, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !99)
!533 = !DILocalVariable(name: "mbs", scope: !518, file: !519, line: 48, type: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !535, line: 6, baseType: !536)
!535 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !537, line: 21, baseType: !538)
!537 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 13, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !538, file: !537, line: 15, baseType: !80, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !538, file: !537, line: 20, baseType: !542, size: 32, offset: 32)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !537, line: 16, size: 32, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !542, file: !537, line: 18, baseType: !99, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !542, file: !537, line: 19, baseType: !270, size: 32)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16, elements: !278)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !549, line: 78, type: !302, isLocal: true, isDefinition: true)
!549 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !549, line: 79, type: !19, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !549, line: 80, type: !554, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 13)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !549, line: 81, type: !554, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !549, line: 82, type: !252, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !549, line: 83, type: !277, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !549, line: 84, type: !302, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !549, line: 85, type: !297, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !549, line: 86, type: !297, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !549, line: 87, type: !302, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !573, file: !549, line: 76, type: !645, isLocal: false, isDefinition: true)
!573 = distinct !DICompileUnit(language: DW_LANG_C11, file: !549, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !574, retainedTypes: !580, globals: !581, splitDebugInlining: false, nameTableKind: None)
!574 = !{!122, !575, !107}
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !123, line: 254, baseType: !99, size: 32, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!578 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!579 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!580 = !{!80, !139, !140}
!581 = !{!547, !550, !552, !557, !559, !561, !563, !565, !567, !569, !571, !582, !586, !596, !598, !603, !605, !607, !609, !611, !634, !641, !643}
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !573, file: !549, line: 92, type: !584, isLocal: false, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 320, elements: !65)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !573, file: !549, line: 1040, type: !588, isLocal: false, isDefinition: true)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !549, line: 56, size: 448, elements: !589)
!589 = !{!590, !591, !592, !594, !595}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !588, file: !549, line: 59, baseType: !122, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !549, line: 62, baseType: !80, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !588, file: !549, line: 66, baseType: !593, size: 256, offset: 64)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !303)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !588, file: !549, line: 69, baseType: !143, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !588, file: !549, line: 72, baseType: !143, size: 64, offset: 384)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !573, file: !549, line: 107, type: !588, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "slot0", scope: !573, file: !549, line: 831, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 256)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !549, line: 321, type: !277, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !549, line: 357, type: !277, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !549, line: 358, type: !277, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !549, line: 199, type: !297, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "quote", scope: !613, file: !549, line: 228, type: !632, isLocal: true, isDefinition: true)
!613 = distinct !DISubprogram(name: "gettext_quote", scope: !549, file: !549, line: 197, type: !614, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!143, !143, !122}
!616 = !{!617, !618, !619, !620, !621}
!617 = !DILocalVariable(name: "msgid", arg: 1, scope: !613, file: !549, line: 197, type: !143)
!618 = !DILocalVariable(name: "s", arg: 2, scope: !613, file: !549, line: 197, type: !122)
!619 = !DILocalVariable(name: "translation", scope: !613, file: !549, line: 199, type: !143)
!620 = !DILocalVariable(name: "w", scope: !613, file: !549, line: 229, type: !529)
!621 = !DILocalVariable(name: "mbs", scope: !613, file: !549, line: 230, type: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !535, line: 6, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !537, line: 21, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 13, size: 64, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !624, file: !537, line: 15, baseType: !80, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !624, file: !537, line: 20, baseType: !628, size: 32, offset: 32)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !624, file: !537, line: 16, size: 32, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !628, file: !537, line: 18, baseType: !99, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !628, file: !537, line: 19, baseType: !270, size: 32)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !633)
!633 = !{!279, !272}
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "slotvec", scope: !573, file: !549, line: 834, type: !636, isLocal: true, isDefinition: true)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !549, line: 823, size: 128, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !637, file: !549, line: 825, baseType: !140, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !637, file: !549, line: 826, baseType: !137, size: 64, offset: 64)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "nslots", scope: !573, file: !549, line: 832, type: !80, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "slotvec0", scope: !573, file: !549, line: 833, type: !637, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 704, elements: !647)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!647 = !{!648}
!648 = !DISubrange(count: 11)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !651, line: 162, type: !652, isLocal: true, isDefinition: true)
!651 = !DIFile(filename: "lib/savewd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0cafd16d007fc7abd1f9bf11434952af")
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 19)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !651, line: 162, type: !554, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !651, line: 162, type: !659, isLocal: true, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 480, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 60)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !651, line: 166, type: !277, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !651, line: 223, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 28)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !651, line: 223, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 328, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 41)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !651, line: 256, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 18)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !651, line: 256, type: !681, isLocal: true, isDefinition: true)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 288, elements: !10)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !651, line: 55, type: !277, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !651, line: 106, type: !686, isLocal: true, isDefinition: true)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 280, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 35)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !691, line: 67, type: !373, isLocal: true, isDefinition: true)
!691 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !691, line: 69, type: !297, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !691, line: 83, type: !297, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !691, line: 83, type: !270, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !691, line: 85, type: !277, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !691, line: 88, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 171)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !691, line: 88, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 34)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !691, line: 105, type: !168, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !691, line: 109, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 23)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !691, line: 113, type: !666, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !691, line: 120, type: !496, isLocal: true, isDefinition: true)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !691, line: 127, type: !9, isLocal: true, isDefinition: true)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !691, line: 134, type: !324, isLocal: true, isDefinition: true)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !691, line: 142, type: !727, isLocal: true, isDefinition: true)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 44)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !691, line: 150, type: !732, isLocal: true, isDefinition: true)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 48)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !691, line: 159, type: !737, isLocal: true, isDefinition: true)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 52)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !691, line: 170, type: !742, isLocal: true, isDefinition: true)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !660)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !691, line: 248, type: !252, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !691, line: 248, type: !349, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !691, line: 254, type: !252, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !691, line: 254, type: !163, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !691, line: 254, type: !324, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !691, line: 259, type: !3, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !691, line: 259, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 29)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !762, file: !763, line: 26, type: !765, isLocal: false, isDefinition: true)
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!764 = !{!760}
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 376, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 47)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "exit_failure", scope: !770, file: !771, line: 24, type: !773, isLocal: false, isDefinition: true)
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !772, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!772 = !{!768}
!773 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !776, line: 34, type: !286, isLocal: true, isDefinition: true)
!776 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !776, line: 34, type: !297, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !776, line: 34, type: !319, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !783, line: 108, type: !59, isLocal: true, isDefinition: true)
!783 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "internal_state", scope: !786, file: !783, line: 97, type: !789, isLocal: true, isDefinition: true)
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !787, globals: !788, splitDebugInlining: false, nameTableKind: None)
!787 = !{!138, !140, !145}
!788 = !{!781, !784}
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !535, line: 6, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !537, line: 21, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 13, size: 64, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !791, file: !537, line: 15, baseType: !80, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !791, file: !537, line: 20, baseType: !795, size: 32, offset: 32)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !537, line: 16, size: 32, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !795, file: !537, line: 18, baseType: !99, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !795, file: !537, line: 19, baseType: !270, size: 32)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !801, line: 35, type: !277, isLocal: true, isDefinition: true)
!801 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !801, line: 35, type: !19, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !806, file: !807, line: 506, type: !80, isLocal: true, isDefinition: true)
!806 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !807, file: !807, line: 485, type: !808, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !812)
!807 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!808 = !DISubroutineType(types: !809)
!809 = !{!80, !80, !80}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !811, splitDebugInlining: false, nameTableKind: None)
!811 = !{!804}
!812 = !{!813, !814, !815, !816, !819}
!813 = !DILocalVariable(name: "fd", arg: 1, scope: !806, file: !807, line: 485, type: !80)
!814 = !DILocalVariable(name: "target", arg: 2, scope: !806, file: !807, line: 485, type: !80)
!815 = !DILocalVariable(name: "result", scope: !806, file: !807, line: 487, type: !80)
!816 = !DILocalVariable(name: "flags", scope: !817, file: !807, line: 530, type: !80)
!817 = distinct !DILexicalBlock(scope: !818, file: !807, line: 529, column: 5)
!818 = distinct !DILexicalBlock(scope: !806, file: !807, line: 528, column: 7)
!819 = !DILocalVariable(name: "saved_errno", scope: !820, file: !807, line: 533, type: !80)
!820 = distinct !DILexicalBlock(scope: !821, file: !807, line: 532, column: 9)
!821 = distinct !DILexicalBlock(scope: !817, file: !807, line: 531, column: 11)
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !823, globals: !824, splitDebugInlining: false, nameTableKind: None)
!823 = !{!145}
!824 = !{!408}
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !830, retainedTypes: !845, globals: !846, splitDebugInlining: false, nameTableKind: None)
!830 = !{!831, !841}
!831 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !832, file: !85, line: 45, baseType: !99, size: 32, elements: !100)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !85, line: 42, size: 64, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !832, file: !85, line: 73, baseType: !831, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !832, file: !85, line: 81, baseType: !836, size: 32, offset: 32)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !832, file: !85, line: 76, size: 32, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !836, file: !85, line: 78, baseType: !80, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !836, file: !85, line: 79, baseType: !80, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !836, file: !85, line: 80, baseType: !95, size: 32)
!841 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 93, baseType: !99, size: 32, elements: !842)
!842 = !{!843, !844}
!843 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1)
!844 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2)
!845 = !{!146, !148}
!846 = !{!487, !490, !492, !494, !499, !504}
!847 = distinct !DICompileUnit(language: DW_LANG_C11, file: !848, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !849, splitDebugInlining: false, nameTableKind: None)
!848 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!849 = !{!850}
!850 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !848, line: 78, baseType: !99, size: 32, elements: !851)
!851 = !{!852, !853, !854, !855}
!852 = !DIEnumerator(name: "MODE_DONE", value: 0)
!853 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!854 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!855 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !857, globals: !868, splitDebugInlining: false, nameTableKind: None)
!857 = !{!858, !841}
!858 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !859, file: !85, line: 45, baseType: !99, size: 32, elements: !100)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !85, line: 42, size: 64, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !859, file: !85, line: 73, baseType: !858, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !859, file: !85, line: 81, baseType: !863, size: 32, offset: 32)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !859, file: !85, line: 76, size: 32, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !863, file: !85, line: 78, baseType: !80, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !863, file: !85, line: 79, baseType: !80, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !863, file: !85, line: 80, baseType: !95, size: 32)
!868 = !{!649, !655, !657, !662, !664, !669, !674, !679, !682, !684}
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !870, retainedTypes: !874, globals: !875, splitDebugInlining: false, nameTableKind: None)
!870 = !{!871}
!871 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !691, line: 40, baseType: !99, size: 32, elements: !872)
!872 = !{!873}
!873 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!874 = !{!138}
!875 = !{!689, !692, !694, !696, !698, !700, !705, !710, !712, !717, !719, !721, !723, !725, !730, !735, !740, !743, !745, !747, !749, !751, !753, !755}
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !878, retainedTypes: !909, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!878 = !{!879, !891}
!879 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !880, file: !877, line: 188, baseType: !99, size: 32, elements: !889)
!880 = distinct !DISubprogram(name: "x2nrealloc", scope: !877, file: !877, line: 176, type: !881, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !884)
!881 = !DISubroutineType(types: !882)
!882 = !{!138, !138, !883, !140}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!884 = !{!885, !886, !887, !888}
!885 = !DILocalVariable(name: "p", arg: 1, scope: !880, file: !877, line: 176, type: !138)
!886 = !DILocalVariable(name: "pn", arg: 2, scope: !880, file: !877, line: 176, type: !883)
!887 = !DILocalVariable(name: "s", arg: 3, scope: !880, file: !877, line: 176, type: !140)
!888 = !DILocalVariable(name: "n", scope: !880, file: !877, line: 178, type: !140)
!889 = !{!890}
!890 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!891 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !892, file: !877, line: 228, baseType: !99, size: 32, elements: !889)
!892 = distinct !DISubprogram(name: "xpalloc", scope: !877, file: !877, line: 223, type: !893, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !899)
!893 = !DISubroutineType(types: !894)
!894 = !{!138, !138, !895, !896, !898, !896}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !897, line: 130, baseType: !898)
!897 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !141, line: 35, baseType: !231)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908}
!900 = !DILocalVariable(name: "pa", arg: 1, scope: !892, file: !877, line: 223, type: !138)
!901 = !DILocalVariable(name: "pn", arg: 2, scope: !892, file: !877, line: 223, type: !895)
!902 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !892, file: !877, line: 223, type: !896)
!903 = !DILocalVariable(name: "n_max", arg: 4, scope: !892, file: !877, line: 223, type: !898)
!904 = !DILocalVariable(name: "s", arg: 5, scope: !892, file: !877, line: 223, type: !896)
!905 = !DILocalVariable(name: "n0", scope: !892, file: !877, line: 230, type: !896)
!906 = !DILocalVariable(name: "n", scope: !892, file: !877, line: 237, type: !896)
!907 = !DILocalVariable(name: "nbytes", scope: !892, file: !877, line: 248, type: !896)
!908 = !DILocalVariable(name: "adjusted_nbytes", scope: !892, file: !877, line: 252, type: !896)
!909 = !{!137, !138, !191, !231, !142}
!910 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !911, splitDebugInlining: false, nameTableKind: None)
!911 = !{!774, !777, !779}
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !913, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!914 = distinct !DICompileUnit(language: DW_LANG_C11, file: !915, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!915 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !917, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !874, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !874, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !924, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6b54240f33d18f510b92d67eeccd60e")
!924 = !{!925, !841}
!925 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !926, file: !85, line: 45, baseType: !99, size: 32, elements: !100)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !85, line: 42, size: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !926, file: !85, line: 73, baseType: !925, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !926, file: !85, line: 81, baseType: !930, size: 32, offset: 32)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !85, line: 76, size: 32, elements: !931)
!931 = !{!932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !930, file: !85, line: 78, baseType: !80, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !930, file: !85, line: 79, baseType: !80, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !930, file: !85, line: 80, baseType: !95, size: 32)
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !937, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "lib/dirchownmod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b1a0bf6d4e9295f75572be521597aa1e")
!937 = !{!146, !148, !938}
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !96, line: 69, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !98, line: 150, baseType: !99)
!940 = distinct !DICompileUnit(language: DW_LANG_C11, file: !941, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !942, splitDebugInlining: false, nameTableKind: None)
!941 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!942 = !{!191, !142, !138}
!943 = distinct !DICompileUnit(language: DW_LANG_C11, file: !944, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!944 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!945 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !946, splitDebugInlining: false, nameTableKind: None)
!946 = !{!799, !802}
!947 = distinct !DICompileUnit(language: DW_LANG_C11, file: !948, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!948 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!949 = distinct !DICompileUnit(language: DW_LANG_C11, file: !950, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !874, splitDebugInlining: false, nameTableKind: None)
!950 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!951 = distinct !DICompileUnit(language: DW_LANG_C11, file: !952, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!952 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!953 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!954 = !{i32 7, !"Dwarf Version", i32 5}
!955 = !{i32 2, !"Debug Info Version", i32 3}
!956 = !{i32 1, !"wchar_size", i32 4}
!957 = !{i32 8, !"PIC Level", i32 2}
!958 = !{i32 7, !"PIE Level", i32 2}
!959 = !{i32 7, !"uwtable", i32 2}
!960 = !{i32 7, !"frame-pointer", i32 1}
!961 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 51, type: !962, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !80}
!964 = !{!965}
!965 = !DILocalVariable(name: "status", arg: 1, scope: !961, file: !2, line: 51, type: !80)
!966 = !DILocation(line: 0, scope: !961)
!967 = !DILocation(line: 53, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !961, file: !2, line: 53, column: 7)
!969 = !DILocation(line: 53, column: 7, scope: !961)
!970 = !DILocation(line: 54, column: 5, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !2, line: 54, column: 5)
!972 = !{!973, !973, i64 0}
!973 = !{!"any pointer", !974, i64 0}
!974 = !{!"omnipotent char", !975, i64 0}
!975 = !{!"Simple C/C++ TBAA"}
!976 = !DILocation(line: 57, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !968, file: !2, line: 56, column: 5)
!978 = !DILocation(line: 58, column: 7, scope: !977)
!979 = !DILocation(line: 736, column: 3, scope: !980, inlinedAt: !982)
!980 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !79, file: !79, line: 734, type: !485, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !981)
!981 = !{}
!982 = distinct !DILocation(line: 62, column: 7, scope: !977)
!983 = !DILocation(line: 64, column: 7, scope: !977)
!984 = !DILocation(line: 68, column: 7, scope: !977)
!985 = !DILocation(line: 73, column: 7, scope: !977)
!986 = !DILocation(line: 77, column: 7, scope: !977)
!987 = !DILocation(line: 82, column: 7, scope: !977)
!988 = !DILocation(line: 87, column: 7, scope: !977)
!989 = !DILocation(line: 88, column: 7, scope: !977)
!990 = !DILocalVariable(name: "program", arg: 1, scope: !991, file: !79, line: 836, type: !143)
!991 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !79, file: !79, line: 836, type: !992, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !143}
!994 = !{!990, !995, !1002, !1003, !1005, !1006}
!995 = !DILocalVariable(name: "infomap", scope: !991, file: !79, line: 838, type: !996)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 896, elements: !298)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !991, file: !79, line: 838, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !998, file: !79, line: 838, baseType: !143, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !998, file: !79, line: 838, baseType: !143, size: 64, offset: 64)
!1002 = !DILocalVariable(name: "node", scope: !991, file: !79, line: 848, type: !143)
!1003 = !DILocalVariable(name: "map_prog", scope: !991, file: !79, line: 849, type: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!1005 = !DILocalVariable(name: "lc_messages", scope: !991, file: !79, line: 861, type: !143)
!1006 = !DILocalVariable(name: "url_program", scope: !991, file: !79, line: 874, type: !143)
!1007 = !DILocation(line: 0, scope: !991, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 89, column: 7, scope: !977)
!1009 = !DILocation(line: 857, column: 3, scope: !991, inlinedAt: !1008)
!1010 = !DILocation(line: 861, column: 29, scope: !991, inlinedAt: !1008)
!1011 = !DILocation(line: 862, column: 7, scope: !1012, inlinedAt: !1008)
!1012 = distinct !DILexicalBlock(scope: !991, file: !79, line: 862, column: 7)
!1013 = !DILocation(line: 862, column: 19, scope: !1012, inlinedAt: !1008)
!1014 = !DILocation(line: 862, column: 22, scope: !1012, inlinedAt: !1008)
!1015 = !DILocation(line: 862, column: 7, scope: !991, inlinedAt: !1008)
!1016 = !DILocation(line: 868, column: 7, scope: !1017, inlinedAt: !1008)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !79, line: 863, column: 5)
!1018 = !DILocation(line: 870, column: 5, scope: !1017, inlinedAt: !1008)
!1019 = !DILocation(line: 875, column: 3, scope: !991, inlinedAt: !1008)
!1020 = !DILocation(line: 877, column: 3, scope: !991, inlinedAt: !1008)
!1021 = !DILocation(line: 91, column: 3, scope: !961)
!1022 = !DISubprogram(name: "dcgettext", scope: !1023, file: !1023, line: 51, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1023 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!137, !143, !143, !80}
!1026 = !DISubprogram(name: "__fprintf_chk", scope: !1027, file: !1027, line: 93, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1027 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!80, !1030, !80, !1031, null}
!1030 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!1031 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!1032 = !DISubprogram(name: "__printf_chk", scope: !1027, file: !1027, line: 95, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!80, !80, !1031, null}
!1035 = !DISubprogram(name: "fputs_unlocked", scope: !447, file: !447, line: 691, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!80, !1031, !1030}
!1038 = !DILocation(line: 0, scope: !181)
!1039 = !DILocation(line: 581, column: 7, scope: !189)
!1040 = !{!1041, !1041, i64 0}
!1041 = !{!"int", !974, i64 0}
!1042 = !DILocation(line: 581, column: 19, scope: !189)
!1043 = !DILocation(line: 581, column: 7, scope: !181)
!1044 = !DILocation(line: 585, column: 26, scope: !188)
!1045 = !DILocation(line: 0, scope: !188)
!1046 = !DILocation(line: 586, column: 23, scope: !188)
!1047 = !DILocation(line: 586, column: 28, scope: !188)
!1048 = !DILocation(line: 586, column: 32, scope: !188)
!1049 = !{!974, !974, i64 0}
!1050 = !DILocation(line: 586, column: 38, scope: !188)
!1051 = !DILocalVariable(name: "__s1", arg: 1, scope: !1052, file: !1053, line: 1359, type: !143)
!1052 = distinct !DISubprogram(name: "streq", scope: !1053, file: !1053, line: 1359, type: !1054, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1056)
!1053 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!191, !143, !143}
!1056 = !{!1051, !1057}
!1057 = !DILocalVariable(name: "__s2", arg: 2, scope: !1052, file: !1053, line: 1359, type: !143)
!1058 = !DILocation(line: 0, scope: !1052, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 586, column: 41, scope: !188)
!1060 = !DILocation(line: 1361, column: 11, scope: !1052, inlinedAt: !1059)
!1061 = !DILocation(line: 1361, column: 10, scope: !1052, inlinedAt: !1059)
!1062 = !DILocation(line: 586, column: 19, scope: !188)
!1063 = !DILocation(line: 587, column: 5, scope: !188)
!1064 = !DILocation(line: 588, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !181, file: !79, line: 588, column: 7)
!1066 = !DILocation(line: 588, column: 7, scope: !181)
!1067 = !DILocation(line: 590, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !79, line: 589, column: 5)
!1069 = !DILocation(line: 591, column: 7, scope: !1068)
!1070 = !DILocation(line: 595, column: 37, scope: !181)
!1071 = !DILocation(line: 595, column: 35, scope: !181)
!1072 = !DILocation(line: 596, column: 29, scope: !181)
!1073 = !DILocation(line: 597, column: 8, scope: !197)
!1074 = !DILocation(line: 597, column: 7, scope: !181)
!1075 = !DILocation(line: 604, column: 24, scope: !196)
!1076 = !DILocation(line: 604, column: 12, scope: !197)
!1077 = !DILocation(line: 0, scope: !195)
!1078 = !DILocation(line: 610, column: 16, scope: !195)
!1079 = !DILocation(line: 610, column: 7, scope: !195)
!1080 = !DILocation(line: 611, column: 21, scope: !195)
!1081 = !{!1082, !1082, i64 0}
!1082 = !{!"short", !974, i64 0}
!1083 = !DILocation(line: 611, column: 19, scope: !195)
!1084 = !DILocation(line: 611, column: 16, scope: !195)
!1085 = !DILocation(line: 610, column: 30, scope: !195)
!1086 = distinct !{!1086, !1079, !1080, !1087}
!1087 = !{!"llvm.loop.mustprogress"}
!1088 = !DILocation(line: 612, column: 18, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !195, file: !79, line: 612, column: 11)
!1090 = !DILocation(line: 612, column: 11, scope: !195)
!1091 = !DILocation(line: 620, column: 23, scope: !181)
!1092 = !DILocation(line: 625, column: 39, scope: !181)
!1093 = !DILocation(line: 626, column: 3, scope: !181)
!1094 = !DILocation(line: 626, column: 10, scope: !181)
!1095 = !DILocation(line: 626, column: 21, scope: !181)
!1096 = !DILocation(line: 628, column: 44, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !79, line: 628, column: 11)
!1098 = distinct !DILexicalBlock(scope: !181, file: !79, line: 627, column: 5)
!1099 = !DILocation(line: 628, column: 32, scope: !1097)
!1100 = !DILocation(line: 628, column: 49, scope: !1097)
!1101 = !DILocation(line: 628, column: 11, scope: !1098)
!1102 = !DILocation(line: 630, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !79, line: 630, column: 11)
!1104 = !DILocation(line: 630, column: 11, scope: !1098)
!1105 = !DILocation(line: 632, column: 26, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !79, line: 632, column: 15)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !79, line: 631, column: 9)
!1108 = !DILocation(line: 632, column: 34, scope: !1106)
!1109 = !DILocation(line: 632, column: 37, scope: !1106)
!1110 = !DILocation(line: 632, column: 15, scope: !1107)
!1111 = !DILocation(line: 640, column: 16, scope: !1098)
!1112 = distinct !{!1112, !1093, !1113, !1087}
!1113 = !DILocation(line: 641, column: 5, scope: !181)
!1114 = !DILocation(line: 644, column: 3, scope: !181)
!1115 = !DILocation(line: 0, scope: !1052, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 648, column: 31, scope: !181)
!1117 = !DILocation(line: 0, scope: !1052, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 649, column: 31, scope: !181)
!1119 = !DILocation(line: 0, scope: !1052, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 650, column: 31, scope: !181)
!1121 = !DILocation(line: 0, scope: !1052, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 651, column: 31, scope: !181)
!1123 = !DILocation(line: 0, scope: !1052, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 652, column: 31, scope: !181)
!1125 = !DILocation(line: 0, scope: !1052, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 653, column: 31, scope: !181)
!1127 = !DILocation(line: 0, scope: !1052, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 654, column: 31, scope: !181)
!1129 = !DILocation(line: 0, scope: !1052, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 655, column: 31, scope: !181)
!1131 = !DILocation(line: 0, scope: !1052, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 656, column: 31, scope: !181)
!1133 = !DILocation(line: 0, scope: !1052, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 657, column: 31, scope: !181)
!1135 = !DILocation(line: 663, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !181, file: !79, line: 663, column: 7)
!1137 = !DILocation(line: 664, column: 7, scope: !1136)
!1138 = !DILocation(line: 664, column: 10, scope: !1136)
!1139 = !DILocation(line: 663, column: 7, scope: !181)
!1140 = !DILocation(line: 669, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !79, line: 665, column: 5)
!1142 = !DILocation(line: 671, column: 5, scope: !1141)
!1143 = !DILocation(line: 676, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1136, file: !79, line: 673, column: 5)
!1145 = !DILocation(line: 679, column: 3, scope: !181)
!1146 = !DILocation(line: 683, column: 3, scope: !181)
!1147 = !DILocation(line: 686, column: 3, scope: !181)
!1148 = !DILocation(line: 688, column: 3, scope: !181)
!1149 = !DILocation(line: 691, column: 3, scope: !181)
!1150 = !DILocation(line: 695, column: 3, scope: !181)
!1151 = !DILocation(line: 696, column: 1, scope: !181)
!1152 = !DISubprogram(name: "setlocale", scope: !1153, file: !1153, line: 122, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1153 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!137, !80, !143}
!1156 = !DISubprogram(name: "strncmp", scope: !1157, file: !1157, line: 159, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1157 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!80, !143, !143, !140}
!1160 = !DISubprogram(name: "exit", scope: !1161, file: !1161, line: 624, type: !962, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1161 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1162 = !DISubprogram(name: "getenv", scope: !1161, file: !1161, line: 641, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!137, !143}
!1165 = !DISubprogram(name: "strcmp", scope: !1157, file: !1157, line: 156, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!80, !143, !143}
!1168 = !DISubprogram(name: "strspn", scope: !1157, file: !1157, line: 297, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!142, !143, !143}
!1171 = !DISubprogram(name: "strchr", scope: !1157, file: !1157, line: 246, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!137, !143, !80}
!1174 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1180 = !DISubprogram(name: "strcspn", scope: !1157, file: !1157, line: 293, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1181 = !DISubprogram(name: "fwrite_unlocked", scope: !447, file: !447, line: 704, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!140, !1184, !140, !140, !1030}
!1184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1187 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 202, type: !1188, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1191)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!80, !80, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1213, !1216, !1219}
!1192 = !DILocalVariable(name: "argc", arg: 1, scope: !1187, file: !2, line: 202, type: !80)
!1193 = !DILocalVariable(name: "argv", arg: 2, scope: !1187, file: !2, line: 202, type: !1190)
!1194 = !DILocalVariable(name: "specified_mode", scope: !1187, file: !2, line: 204, type: !143)
!1195 = !DILocalVariable(name: "optc", scope: !1187, file: !2, line: 205, type: !80)
!1196 = !DILocalVariable(name: "scontext", scope: !1187, file: !2, line: 206, type: !143)
!1197 = !DILocalVariable(name: "options", scope: !1187, file: !2, line: 207, type: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !2, line: 95, size: 320, elements: !1199)
!1199 = !{!1200, !1204, !1205, !1206, !1207, !1208, !1212}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !1198, file: !2, line: 99, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!80, !143, !143, !138}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !1198, file: !2, line: 102, baseType: !938, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !1198, file: !2, line: 105, baseType: !938, size: 32, offset: 96)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1198, file: !2, line: 108, baseType: !938, size: 32, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !1198, file: !2, line: 111, baseType: !938, size: 32, offset: 160)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !1198, file: !2, line: 114, baseType: !1209, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1211, line: 53, flags: DIFlagFwdDecl)
!1211 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !1198, file: !2, line: 117, baseType: !143, size: 64, offset: 256)
!1213 = !DILocalVariable(name: "ret", scope: !1214, file: !2, line: 279, type: !80)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 278, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 277, column: 7)
!1216 = !DILocalVariable(name: "umask_value", scope: !1217, file: !2, line: 294, type: !938)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 293, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 292, column: 7)
!1219 = !DILocalVariable(name: "change", scope: !1220, file: !2, line: 299, type: !1222)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 298, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 297, column: 11)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1224, line: 35, flags: DIFlagFwdDecl)
!1224 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1225 = !DILocation(line: 0, scope: !1187)
!1226 = !DILocation(line: 207, column: 3, scope: !1187)
!1227 = !DILocation(line: 207, column: 24, scope: !1187)
!1228 = !DILocation(line: 210, column: 11, scope: !1187)
!1229 = !DILocation(line: 210, column: 16, scope: !1187)
!1230 = !{!1231, !1041, i64 16}
!1231 = !{!"mkdir_options", !973, i64 0, !1041, i64 8, !1041, i64 12, !1041, i64 16, !1041, i64 20, !973, i64 24, !973, i64 32}
!1232 = !DILocation(line: 211, column: 11, scope: !1187)
!1233 = !DILocation(line: 212, column: 11, scope: !1187)
!1234 = !DILocation(line: 212, column: 36, scope: !1187)
!1235 = !DILocation(line: 216, column: 21, scope: !1187)
!1236 = !DILocation(line: 216, column: 3, scope: !1187)
!1237 = !DILocation(line: 217, column: 3, scope: !1187)
!1238 = !DILocation(line: 218, column: 3, scope: !1187)
!1239 = !DILocation(line: 219, column: 3, scope: !1187)
!1240 = !DILocation(line: 221, column: 3, scope: !1187)
!1241 = !DILocation(line: 223, column: 3, scope: !1187)
!1242 = !DILocation(line: 223, column: 18, scope: !1187)
!1243 = distinct !{!1243, !1241, !1244, !1087}
!1244 = !DILocation(line: 266, column: 5, scope: !1187)
!1245 = !DILocation(line: 231, column: 28, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 226, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 224, column: 5)
!1248 = !DILocation(line: 232, column: 11, scope: !1246)
!1249 = !DILocation(line: 234, column: 46, scope: !1246)
!1250 = !DILocation(line: 235, column: 11, scope: !1246)
!1251 = !DILocation(line: 254, column: 20, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 254, column: 20)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 242, column: 20)
!1254 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 237, column: 15)
!1255 = !DILocation(line: 254, column: 20, scope: !1253)
!1256 = !DILocation(line: 256, column: 15, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 255, column: 13)
!1258 = !DILocation(line: 259, column: 13, scope: !1257)
!1259 = !DILocation(line: 261, column: 9, scope: !1246)
!1260 = !DILocation(line: 262, column: 9, scope: !1246)
!1261 = !DILocation(line: 264, column: 11, scope: !1246)
!1262 = !DILocation(line: 234, column: 44, scope: !1246)
!1263 = !{!1231, !973, i64 32}
!1264 = !DILocation(line: 228, column: 42, scope: !1246)
!1265 = !{!1231, !973, i64 0}
!1266 = !DILocation(line: 268, column: 7, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 268, column: 7)
!1268 = !DILocation(line: 268, column: 14, scope: !1267)
!1269 = !DILocation(line: 268, column: 7, scope: !1187)
!1270 = !DILocation(line: 270, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 269, column: 5)
!1272 = !DILocation(line: 271, column: 7, scope: !1271)
!1273 = !DILocation(line: 292, column: 38, scope: !1218)
!1274 = !DILocation(line: 294, column: 28, scope: !1217)
!1275 = !DILocation(line: 0, scope: !1217)
!1276 = !DILocation(line: 295, column: 44, scope: !1217)
!1277 = !DILocation(line: 295, column: 15, scope: !1217)
!1278 = !DILocation(line: 295, column: 30, scope: !1217)
!1279 = !{!1231, !1041, i64 8}
!1280 = !DILocation(line: 297, column: 11, scope: !1217)
!1281 = !DILocation(line: 299, column: 40, scope: !1220)
!1282 = !DILocation(line: 0, scope: !1220)
!1283 = !DILocation(line: 300, column: 16, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 300, column: 15)
!1285 = !DILocation(line: 300, column: 15, scope: !1220)
!1286 = !DILocation(line: 301, column: 13, scope: !1284)
!1287 = !DILocation(line: 303, column: 26, scope: !1220)
!1288 = !DILocation(line: 303, column: 24, scope: !1220)
!1289 = !DILocation(line: 305, column: 46, scope: !1220)
!1290 = !DILocation(line: 305, column: 44, scope: !1220)
!1291 = !DILocation(line: 305, column: 19, scope: !1220)
!1292 = !DILocation(line: 305, column: 30, scope: !1220)
!1293 = !{!1231, !1041, i64 12}
!1294 = !DILocation(line: 306, column: 11, scope: !1220)
!1295 = !DILocation(line: 307, column: 9, scope: !1220)
!1296 = !DILocation(line: 310, column: 24, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 309, column: 9)
!1298 = !DILocation(line: 311, column: 19, scope: !1297)
!1299 = !DILocation(line: 311, column: 30, scope: !1297)
!1300 = !DILocation(line: 314, column: 22, scope: !1217)
!1301 = !DILocation(line: 314, column: 7, scope: !1217)
!1302 = !DILocation(line: 317, column: 39, scope: !1187)
!1303 = !DILocation(line: 315, column: 5, scope: !1217)
!1304 = !DILocation(line: 317, column: 37, scope: !1187)
!1305 = !DILocation(line: 317, column: 52, scope: !1187)
!1306 = !DILocation(line: 317, column: 10, scope: !1187)
!1307 = !DILocation(line: 319, column: 1, scope: !1187)
!1308 = !DILocation(line: 317, column: 3, scope: !1187)
!1309 = !DISubprogram(name: "bindtextdomain", scope: !1023, file: !1023, line: 86, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!137, !143, !143}
!1312 = !DISubprogram(name: "textdomain", scope: !1023, file: !1023, line: 82, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1313 = !DISubprogram(name: "atexit", scope: !1161, file: !1161, line: 602, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!80, !484}
!1316 = distinct !DISubprogram(name: "make_ancestor", scope: !2, file: !2, line: 135, type: !1202, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1324, !1325}
!1318 = !DILocalVariable(name: "dir", arg: 1, scope: !1316, file: !2, line: 135, type: !143)
!1319 = !DILocalVariable(name: "component", arg: 2, scope: !1316, file: !2, line: 135, type: !143)
!1320 = !DILocalVariable(name: "options", arg: 3, scope: !1316, file: !2, line: 135, type: !138)
!1321 = !DILocalVariable(name: "o", scope: !1316, file: !2, line: 137, type: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1324 = !DILocalVariable(name: "r", scope: !1316, file: !2, line: 147, type: !80)
!1325 = !DILocalVariable(name: "mkdir_errno", scope: !1326, file: !2, line: 150, type: !80)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 149, column: 5)
!1327 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 148, column: 7)
!1328 = !DILocation(line: 0, scope: !1316)
!1329 = !DILocation(line: 139, column: 10, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 139, column: 7)
!1331 = !{!1231, !973, i64 24}
!1332 = !DILocation(line: 139, column: 7, scope: !1330)
!1333 = !DILocation(line: 140, column: 7, scope: !1330)
!1334 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1335, file: !1336, line: 49, type: !1209)
!1335 = distinct !DISubprogram(name: "defaultcon", scope: !1336, file: !1336, line: 49, type: !1337, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1339)
!1336 = !DIFile(filename: "src/selinux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!80, !1209, !143, !938}
!1339 = !{!1334, !1340, !1341}
!1340 = !DILocalVariable(name: "path", arg: 2, scope: !1335, file: !1336, line: 50, type: !143)
!1341 = !DILocalVariable(name: "mode", arg: 3, scope: !1335, file: !1336, line: 50, type: !938)
!1342 = !DILocation(line: 0, scope: !1335, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 140, column: 10, scope: !1330)
!1344 = !DILocation(line: 51, column: 3, scope: !1335, inlinedAt: !1343)
!1345 = !DILocation(line: 51, column: 9, scope: !1335, inlinedAt: !1343)
!1346 = !DILocation(line: 139, column: 7, scope: !1316)
!1347 = !DILocation(line: 145, column: 10, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 145, column: 7)
!1349 = !DILocation(line: 145, column: 31, scope: !1348)
!1350 = !DILocation(line: 145, column: 25, scope: !1348)
!1351 = !DILocation(line: 145, column: 7, scope: !1316)
!1352 = !DILocation(line: 146, column: 5, scope: !1348)
!1353 = !DILocation(line: 147, column: 11, scope: !1316)
!1354 = !DILocation(line: 148, column: 10, scope: !1327)
!1355 = !DILocation(line: 148, column: 31, scope: !1327)
!1356 = !DILocation(line: 148, column: 25, scope: !1327)
!1357 = !DILocation(line: 148, column: 7, scope: !1316)
!1358 = !DILocation(line: 150, column: 25, scope: !1326)
!1359 = !DILocation(line: 0, scope: !1326)
!1360 = !DILocation(line: 151, column: 7, scope: !1326)
!1361 = !DILocation(line: 152, column: 13, scope: !1326)
!1362 = !DILocation(line: 153, column: 5, scope: !1326)
!1363 = !DILocation(line: 154, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 154, column: 7)
!1365 = !DILocation(line: 154, column: 7, scope: !1316)
!1366 = !DILocation(line: 156, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 155, column: 5)
!1368 = !DILocation(line: 156, column: 41, scope: !1367)
!1369 = !DILocalVariable(name: "dir", arg: 1, scope: !1370, file: !2, line: 122, type: !143)
!1370 = distinct !DISubprogram(name: "announce_mkdir", scope: !2, file: !2, line: 122, type: !1371, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !143, !138}
!1373 = !{!1369, !1374, !1375}
!1374 = !DILocalVariable(name: "options", arg: 2, scope: !1370, file: !2, line: 122, type: !138)
!1375 = !DILocalVariable(name: "o", scope: !1370, file: !2, line: 124, type: !1322)
!1376 = !DILocation(line: 0, scope: !1370, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 157, column: 7, scope: !1367)
!1378 = !DILocation(line: 125, column: 10, scope: !1379, inlinedAt: !1377)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 125, column: 7)
!1380 = !DILocation(line: 125, column: 7, scope: !1379, inlinedAt: !1377)
!1381 = !DILocation(line: 125, column: 7, scope: !1370, inlinedAt: !1377)
!1382 = !DILocation(line: 126, column: 19, scope: !1379, inlinedAt: !1377)
!1383 = !DILocation(line: 126, column: 56, scope: !1379, inlinedAt: !1377)
!1384 = !DILocation(line: 126, column: 5, scope: !1379, inlinedAt: !1377)
!1385 = !DILocation(line: 159, column: 3, scope: !1316)
!1386 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!80, !80, !1389, !143, !1391, !406}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1392 = !DISubprogram(name: "umask", scope: !1393, file: !1393, line: 380, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1393 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!939, !939}
!1396 = !DISubprogram(name: "free", scope: !1161, file: !1161, line: 555, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !138}
!1399 = distinct !DISubprogram(name: "process_dir", scope: !2, file: !2, line: 164, type: !1400, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1403)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!80, !137, !1402, !138}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1403 = !{!1404, !1405, !1406, !1407, !1408}
!1404 = !DILocalVariable(name: "dir", arg: 1, scope: !1399, file: !2, line: 164, type: !137)
!1405 = !DILocalVariable(name: "wd", arg: 2, scope: !1399, file: !2, line: 164, type: !1402)
!1406 = !DILocalVariable(name: "options", arg: 3, scope: !1399, file: !2, line: 164, type: !138)
!1407 = !DILocalVariable(name: "o", scope: !1399, file: !2, line: 166, type: !1322)
!1408 = !DILocalVariable(name: "ret", scope: !1399, file: !2, line: 178, type: !80)
!1409 = !DILocation(line: 0, scope: !1399)
!1410 = !DILocation(line: 169, column: 10, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 169, column: 7)
!1412 = !DILocation(line: 169, column: 7, scope: !1411)
!1413 = !DILocation(line: 169, column: 7, scope: !1399)
!1414 = !DILocation(line: 0, scope: !1335, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 172, column: 14, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 171, column: 11)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 170, column: 5)
!1418 = !DILocation(line: 51, column: 3, scope: !1335, inlinedAt: !1415)
!1419 = !DILocation(line: 51, column: 9, scope: !1335, inlinedAt: !1415)
!1420 = !DILocation(line: 171, column: 11, scope: !1417)
!1421 = !DILocation(line: 178, column: 44, scope: !1399)
!1422 = !DILocation(line: 179, column: 35, scope: !1399)
!1423 = !DILocation(line: 180, column: 35, scope: !1399)
!1424 = !{!1231, !1041, i64 20}
!1425 = !DILocation(line: 178, column: 14, scope: !1399)
!1426 = !DILocation(line: 189, column: 27, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 189, column: 7)
!1428 = !DILocation(line: 189, column: 33, scope: !1427)
!1429 = !DILocation(line: 189, column: 30, scope: !1427)
!1430 = !DILocation(line: 190, column: 7, scope: !1427)
!1431 = !DILocation(line: 190, column: 13, scope: !1427)
!1432 = !DILocation(line: 190, column: 10, scope: !1427)
!1433 = !DILocation(line: 189, column: 7, scope: !1399)
!1434 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1435, file: !1336, line: 44, type: !1209)
!1435 = distinct !DISubprogram(name: "restorecon", scope: !1336, file: !1336, line: 44, type: !1436, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!191, !1209, !143, !191}
!1438 = !{!1434, !1439, !1440}
!1439 = !DILocalVariable(name: "path", arg: 2, scope: !1435, file: !1336, line: 45, type: !143)
!1440 = !DILocalVariable(name: "recurse", arg: 3, scope: !1435, file: !1336, line: 45, type: !191)
!1441 = !DILocation(line: 0, scope: !1435, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 192, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 192, column: 11)
!1444 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 191, column: 5)
!1445 = !DILocation(line: 46, column: 3, scope: !1435, inlinedAt: !1442)
!1446 = !DILocation(line: 46, column: 9, scope: !1435, inlinedAt: !1442)
!1447 = !DILocation(line: 192, column: 11, scope: !1444)
!1448 = !DILocation(line: 198, column: 3, scope: !1399)
!1449 = !DISubprogram(name: "__errno_location", scope: !1450, file: !1450, line: 37, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1450 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!406}
!1453 = !DILocation(line: 0, scope: !1370)
!1454 = !DILocation(line: 125, column: 10, scope: !1379)
!1455 = !DILocation(line: 125, column: 7, scope: !1379)
!1456 = !DILocation(line: 125, column: 7, scope: !1370)
!1457 = !DILocation(line: 126, column: 19, scope: !1379)
!1458 = !DILocation(line: 126, column: 56, scope: !1379)
!1459 = !DILocation(line: 126, column: 5, scope: !1379)
!1460 = !DILocation(line: 127, column: 1, scope: !1370)
!1461 = !DISubprogram(name: "mkdir", scope: !1393, file: !1393, line: 389, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!80, !143, !939}
!1464 = distinct !DISubprogram(name: "prog_fprintf", scope: !410, file: !410, line: 28, type: !1465, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !1501)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !1467, !143, null}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1469, file: !208, line: 51, baseType: !80, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1469, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1469, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1469, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1469, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1469, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1469, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1469, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1469, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1469, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1469, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1469, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1469, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1469, file: !208, line: 70, baseType: !1485, size: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1469, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1469, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1469, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1469, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1469, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1469, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1469, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1469, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1469, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1469, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1469, file: !208, line: 93, baseType: !1485, size: 64, offset: 1344)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1469, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1469, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1469, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1469, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1501 = !{!1502, !1503, !1504}
!1502 = !DILocalVariable(name: "fp", arg: 1, scope: !1464, file: !410, line: 28, type: !1467)
!1503 = !DILocalVariable(name: "fmt", arg: 2, scope: !1464, file: !410, line: 28, type: !143)
!1504 = !DILocalVariable(name: "ap", scope: !1464, file: !410, line: 30, type: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !447, line: 52, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !449, line: 14, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1508, baseType: !1509)
!1508 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1509, file: !1508, line: 30, baseType: !138, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1509, file: !1508, line: 30, baseType: !138, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1509, file: !1508, line: 30, baseType: !138, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1509, file: !1508, line: 30, baseType: !80, size: 32, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1509, file: !1508, line: 30, baseType: !80, size: 32, offset: 224)
!1516 = !DILocation(line: 0, scope: !1464)
!1517 = !DILocation(line: 30, column: 3, scope: !1464)
!1518 = !DILocation(line: 30, column: 11, scope: !1464)
!1519 = !DILocation(line: 31, column: 3, scope: !1464)
!1520 = !DILocation(line: 32, column: 3, scope: !1464)
!1521 = !DILocation(line: 33, column: 3, scope: !1464)
!1522 = !DILocation(line: 135, column: 10, scope: !1523, inlinedAt: !1531)
!1523 = distinct !DISubprogram(name: "vfprintf", scope: !1027, file: !1027, line: 132, type: !1524, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !1527)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!80, !1526, !1031, !1506}
!1526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1467)
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "__stream", arg: 1, scope: !1523, file: !1027, line: 132, type: !1526)
!1529 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1523, file: !1027, line: 133, type: !1031)
!1530 = !DILocalVariable(name: "__ap", arg: 3, scope: !1523, file: !1027, line: 133, type: !1506)
!1531 = distinct !DILocation(line: 34, column: 3, scope: !1464)
!1532 = !{!1533, !1535}
!1533 = distinct !{!1533, !1534, !"vfprintf.inline: argument 0"}
!1534 = distinct !{!1534, !"vfprintf.inline"}
!1535 = distinct !{!1535, !1534, !"vfprintf.inline: argument 1"}
!1536 = !DILocation(line: 34, column: 3, scope: !1464)
!1537 = !DILocation(line: 0, scope: !1523, inlinedAt: !1531)
!1538 = !DILocation(line: 133, column: 49, scope: !1523, inlinedAt: !1531)
!1539 = !DILocation(line: 35, column: 3, scope: !1464)
!1540 = !DILocalVariable(name: "__c", arg: 1, scope: !1541, file: !1542, line: 91, type: !80)
!1541 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1542, file: !1542, line: 91, type: !1543, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !1545)
!1542 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!80, !80, !1467}
!1545 = !{!1540, !1546}
!1546 = !DILocalVariable(name: "__stream", arg: 2, scope: !1541, file: !1542, line: 91, type: !1467)
!1547 = !DILocation(line: 0, scope: !1541, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 36, column: 3, scope: !1464)
!1549 = !DILocation(line: 93, column: 10, scope: !1541, inlinedAt: !1548)
!1550 = !{!1551, !973, i64 40}
!1551 = !{!"_IO_FILE", !1041, i64 0, !973, i64 8, !973, i64 16, !973, i64 24, !973, i64 32, !973, i64 40, !973, i64 48, !973, i64 56, !973, i64 64, !973, i64 72, !973, i64 80, !973, i64 88, !973, i64 96, !973, i64 104, !1041, i64 112, !1041, i64 116, !1552, i64 120, !1082, i64 128, !974, i64 130, !974, i64 131, !973, i64 136, !1552, i64 144, !973, i64 152, !973, i64 160, !973, i64 168, !973, i64 176, !1552, i64 184, !1041, i64 192, !974, i64 196}
!1552 = !{!"long", !974, i64 0}
!1553 = !{!1551, !973, i64 48}
!1554 = !{!"branch_weights", i32 2000, i32 1}
!1555 = !DILocation(line: 37, column: 1, scope: !1464)
!1556 = !DISubprogram(name: "__vfprintf_chk", scope: !1027, file: !1027, line: 96, type: !1557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!80, !1526, !80, !1031, !1506}
!1559 = !DISubprogram(name: "__overflow", scope: !447, file: !447, line: 886, type: !1560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!80, !1467, !80}
!1562 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !421, file: !421, line: 50, type: !992, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1563)
!1563 = !{!1564}
!1564 = !DILocalVariable(name: "file", arg: 1, scope: !1562, file: !421, line: 50, type: !143)
!1565 = !DILocation(line: 0, scope: !1562)
!1566 = !DILocation(line: 52, column: 13, scope: !1562)
!1567 = !DILocation(line: 53, column: 1, scope: !1562)
!1568 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !421, file: !421, line: 87, type: !1569, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !191}
!1571 = !{!1572}
!1572 = !DILocalVariable(name: "ignore", arg: 1, scope: !1568, file: !421, line: 87, type: !191)
!1573 = !DILocation(line: 0, scope: !1568)
!1574 = !DILocation(line: 89, column: 16, scope: !1568)
!1575 = !{!1576, !1576, i64 0}
!1576 = !{!"_Bool", !974, i64 0}
!1577 = !DILocation(line: 90, column: 1, scope: !1568)
!1578 = distinct !DISubprogram(name: "close_stdout", scope: !421, file: !421, line: 116, type: !485, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1579)
!1579 = !{!1580}
!1580 = !DILocalVariable(name: "write_error", scope: !1581, file: !421, line: 121, type: !143)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !421, line: 120, column: 5)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !421, line: 118, column: 7)
!1583 = !DILocation(line: 118, column: 21, scope: !1582)
!1584 = !DILocation(line: 118, column: 7, scope: !1582)
!1585 = !DILocation(line: 118, column: 29, scope: !1582)
!1586 = !DILocation(line: 119, column: 7, scope: !1582)
!1587 = !DILocation(line: 119, column: 12, scope: !1582)
!1588 = !{i8 0, i8 2}
!1589 = !DILocation(line: 119, column: 25, scope: !1582)
!1590 = !DILocation(line: 119, column: 28, scope: !1582)
!1591 = !DILocation(line: 119, column: 34, scope: !1582)
!1592 = !DILocation(line: 118, column: 7, scope: !1578)
!1593 = !DILocation(line: 121, column: 33, scope: !1581)
!1594 = !DILocation(line: 0, scope: !1581)
!1595 = !DILocation(line: 122, column: 11, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1581, file: !421, line: 122, column: 11)
!1597 = !DILocation(line: 0, scope: !1596)
!1598 = !DILocation(line: 122, column: 11, scope: !1581)
!1599 = !DILocation(line: 123, column: 9, scope: !1596)
!1600 = !DILocation(line: 126, column: 9, scope: !1596)
!1601 = !DILocation(line: 128, column: 14, scope: !1581)
!1602 = !DILocation(line: 128, column: 7, scope: !1581)
!1603 = !DILocation(line: 133, column: 42, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1578, file: !421, line: 133, column: 7)
!1605 = !DILocation(line: 133, column: 28, scope: !1604)
!1606 = !DILocation(line: 133, column: 50, scope: !1604)
!1607 = !DILocation(line: 133, column: 7, scope: !1578)
!1608 = !DILocation(line: 134, column: 12, scope: !1604)
!1609 = !DILocation(line: 134, column: 5, scope: !1604)
!1610 = !DILocation(line: 135, column: 1, scope: !1578)
!1611 = !DISubprogram(name: "_exit", scope: !1612, file: !1612, line: 624, type: !962, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1612 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1613 = distinct !DISubprogram(name: "verror", scope: !436, file: !436, line: 251, type: !1614, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !80, !80, !143, !446}
!1616 = !{!1617, !1618, !1619, !1620}
!1617 = !DILocalVariable(name: "status", arg: 1, scope: !1613, file: !436, line: 251, type: !80)
!1618 = !DILocalVariable(name: "errnum", arg: 2, scope: !1613, file: !436, line: 251, type: !80)
!1619 = !DILocalVariable(name: "message", arg: 3, scope: !1613, file: !436, line: 251, type: !143)
!1620 = !DILocalVariable(name: "args", arg: 4, scope: !1613, file: !436, line: 251, type: !446)
!1621 = !DILocation(line: 0, scope: !1613)
!1622 = !DILocation(line: 251, column: 1, scope: !1613)
!1623 = !DILocation(line: 261, column: 3, scope: !1613)
!1624 = !DILocation(line: 265, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1613, file: !436, line: 265, column: 7)
!1626 = !DILocation(line: 265, column: 7, scope: !1613)
!1627 = !DILocation(line: 266, column: 5, scope: !1625)
!1628 = !DILocation(line: 272, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !436, line: 268, column: 5)
!1630 = !DILocation(line: 276, column: 3, scope: !1613)
!1631 = !{i64 0, i64 8, !972, i64 8, i64 8, !972, i64 16, i64 8, !972, i64 24, i64 4, !1040, i64 28, i64 4, !1040}
!1632 = !DILocation(line: 282, column: 1, scope: !1613)
!1633 = distinct !DISubprogram(name: "flush_stdout", scope: !436, file: !436, line: 163, type: !485, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1634)
!1634 = !{!1635}
!1635 = !DILocalVariable(name: "stdout_fd", scope: !1633, file: !436, line: 166, type: !80)
!1636 = !DILocation(line: 0, scope: !1633)
!1637 = !DILocalVariable(name: "fd", arg: 1, scope: !1638, file: !436, line: 145, type: !80)
!1638 = distinct !DISubprogram(name: "is_open", scope: !436, file: !436, line: 145, type: !1639, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!80, !80}
!1641 = !{!1637}
!1642 = !DILocation(line: 0, scope: !1638, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 182, column: 25, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1633, file: !436, line: 182, column: 7)
!1645 = !DILocation(line: 157, column: 15, scope: !1638, inlinedAt: !1643)
!1646 = !DILocation(line: 157, column: 12, scope: !1638, inlinedAt: !1643)
!1647 = !DILocation(line: 182, column: 7, scope: !1633)
!1648 = !DILocation(line: 184, column: 5, scope: !1644)
!1649 = !DILocation(line: 185, column: 1, scope: !1633)
!1650 = distinct !DISubprogram(name: "error_tail", scope: !436, file: !436, line: 219, type: !1614, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1651)
!1651 = !{!1652, !1653, !1654, !1655}
!1652 = !DILocalVariable(name: "status", arg: 1, scope: !1650, file: !436, line: 219, type: !80)
!1653 = !DILocalVariable(name: "errnum", arg: 2, scope: !1650, file: !436, line: 219, type: !80)
!1654 = !DILocalVariable(name: "message", arg: 3, scope: !1650, file: !436, line: 219, type: !143)
!1655 = !DILocalVariable(name: "args", arg: 4, scope: !1650, file: !436, line: 219, type: !446)
!1656 = !DILocation(line: 0, scope: !1650)
!1657 = !DILocation(line: 219, column: 1, scope: !1650)
!1658 = !DILocation(line: 229, column: 13, scope: !1650)
!1659 = !DILocation(line: 135, column: 10, scope: !1660, inlinedAt: !1702)
!1660 = distinct !DISubprogram(name: "vfprintf", scope: !1027, file: !1027, line: 132, type: !1661, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1698)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!80, !1663, !1031, !448}
!1663 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1666, file: !208, line: 51, baseType: !80, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1666, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1666, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1666, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1666, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1666, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1666, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1666, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1666, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1666, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1666, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1666, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1666, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1666, file: !208, line: 70, baseType: !1682, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1666, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1666, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1666, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1666, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1666, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1666, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1666, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1666, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1666, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1666, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1666, file: !208, line: 93, baseType: !1682, size: 64, offset: 1344)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1666, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1666, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1666, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1666, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1698 = !{!1699, !1700, !1701}
!1699 = !DILocalVariable(name: "__stream", arg: 1, scope: !1660, file: !1027, line: 132, type: !1663)
!1700 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1660, file: !1027, line: 133, type: !1031)
!1701 = !DILocalVariable(name: "__ap", arg: 3, scope: !1660, file: !1027, line: 133, type: !448)
!1702 = distinct !DILocation(line: 229, column: 3, scope: !1650)
!1703 = !{!1704, !1706}
!1704 = distinct !{!1704, !1705, !"vfprintf.inline: argument 0"}
!1705 = distinct !{!1705, !"vfprintf.inline"}
!1706 = distinct !{!1706, !1705, !"vfprintf.inline: argument 1"}
!1707 = !DILocation(line: 229, column: 3, scope: !1650)
!1708 = !DILocation(line: 0, scope: !1660, inlinedAt: !1702)
!1709 = !DILocation(line: 133, column: 49, scope: !1660, inlinedAt: !1702)
!1710 = !DILocation(line: 232, column: 3, scope: !1650)
!1711 = !DILocation(line: 233, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 233, column: 7)
!1713 = !DILocation(line: 233, column: 7, scope: !1650)
!1714 = !DILocalVariable(name: "errnum", arg: 1, scope: !1715, file: !436, line: 188, type: !80)
!1715 = distinct !DISubprogram(name: "print_errno_message", scope: !436, file: !436, line: 188, type: !962, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1716)
!1716 = !{!1714, !1717, !1718}
!1717 = !DILocalVariable(name: "s", scope: !1715, file: !436, line: 190, type: !143)
!1718 = !DILocalVariable(name: "errbuf", scope: !1715, file: !436, line: 193, type: !1719)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1720)
!1720 = !{!1721}
!1721 = !DISubrange(count: 1024)
!1722 = !DILocation(line: 0, scope: !1715, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 234, column: 5, scope: !1712)
!1724 = !DILocation(line: 193, column: 3, scope: !1715, inlinedAt: !1723)
!1725 = !DILocation(line: 193, column: 8, scope: !1715, inlinedAt: !1723)
!1726 = !DILocation(line: 195, column: 7, scope: !1715, inlinedAt: !1723)
!1727 = !DILocation(line: 207, column: 9, scope: !1728, inlinedAt: !1723)
!1728 = distinct !DILexicalBlock(scope: !1715, file: !436, line: 207, column: 7)
!1729 = !DILocation(line: 207, column: 7, scope: !1715, inlinedAt: !1723)
!1730 = !DILocation(line: 208, column: 9, scope: !1728, inlinedAt: !1723)
!1731 = !DILocation(line: 208, column: 5, scope: !1728, inlinedAt: !1723)
!1732 = !DILocation(line: 214, column: 3, scope: !1715, inlinedAt: !1723)
!1733 = !DILocation(line: 216, column: 1, scope: !1715, inlinedAt: !1723)
!1734 = !DILocation(line: 234, column: 5, scope: !1712)
!1735 = !DILocation(line: 238, column: 3, scope: !1650)
!1736 = !DILocalVariable(name: "__c", arg: 1, scope: !1737, file: !1542, line: 101, type: !80)
!1737 = distinct !DISubprogram(name: "putc_unlocked", scope: !1542, file: !1542, line: 101, type: !1738, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!80, !80, !1664}
!1740 = !{!1736, !1741}
!1741 = !DILocalVariable(name: "__stream", arg: 2, scope: !1737, file: !1542, line: 101, type: !1664)
!1742 = !DILocation(line: 0, scope: !1737, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 238, column: 3, scope: !1650)
!1744 = !DILocation(line: 103, column: 10, scope: !1737, inlinedAt: !1743)
!1745 = !DILocation(line: 240, column: 3, scope: !1650)
!1746 = !DILocation(line: 241, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1650, file: !436, line: 241, column: 7)
!1748 = !DILocation(line: 241, column: 7, scope: !1650)
!1749 = !DILocation(line: 242, column: 5, scope: !1747)
!1750 = !DILocation(line: 243, column: 1, scope: !1650)
!1751 = !DISubprogram(name: "strerror_r", scope: !1157, file: !1157, line: 444, type: !1752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!137, !80, !137, !140}
!1754 = !DISubprogram(name: "fflush_unlocked", scope: !447, file: !447, line: 239, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!80, !1664}
!1757 = !DISubprogram(name: "fcntl", scope: !1758, file: !1758, line: 149, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!1758 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!80, !80, !80, null}
!1761 = distinct !DISubprogram(name: "error", scope: !436, file: !436, line: 285, type: !1762, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !80, !80, !143, null}
!1764 = !{!1765, !1766, !1767, !1768}
!1765 = !DILocalVariable(name: "status", arg: 1, scope: !1761, file: !436, line: 285, type: !80)
!1766 = !DILocalVariable(name: "errnum", arg: 2, scope: !1761, file: !436, line: 285, type: !80)
!1767 = !DILocalVariable(name: "message", arg: 3, scope: !1761, file: !436, line: 285, type: !143)
!1768 = !DILocalVariable(name: "ap", scope: !1761, file: !436, line: 287, type: !446)
!1769 = !DILocation(line: 0, scope: !1761)
!1770 = !DILocation(line: 287, column: 3, scope: !1761)
!1771 = !DILocation(line: 287, column: 11, scope: !1761)
!1772 = !DILocation(line: 288, column: 3, scope: !1761)
!1773 = !DILocation(line: 289, column: 3, scope: !1761)
!1774 = !DILocation(line: 290, column: 3, scope: !1761)
!1775 = !DILocation(line: 291, column: 1, scope: !1761)
!1776 = !DILocation(line: 0, scope: !443)
!1777 = !DILocation(line: 298, column: 1, scope: !443)
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
!1816 = !DILocalVariable(name: "ap", scope: !1807, file: !436, line: 362, type: !446)
!1817 = !DILocation(line: 0, scope: !1807)
!1818 = !DILocation(line: 362, column: 3, scope: !1807)
!1819 = !DILocation(line: 362, column: 11, scope: !1807)
!1820 = !DILocation(line: 363, column: 3, scope: !1807)
!1821 = !DILocation(line: 364, column: 3, scope: !1807)
!1822 = !DILocation(line: 366, column: 3, scope: !1807)
!1823 = !DILocation(line: 367, column: 1, scope: !1807)
!1824 = distinct !DISubprogram(name: "getprogname", scope: !828, file: !828, line: 54, type: !1825, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !981)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!143}
!1827 = !DILocation(line: 58, column: 10, scope: !1824)
!1828 = !DILocation(line: 58, column: 3, scope: !1824)
!1829 = distinct !DISubprogram(name: "make_dir_parents", scope: !489, file: !489, line: 85, type: !1830, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !1834)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!191, !137, !1832, !1201, !138, !938, !1833, !938, !146, !148, !191}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1834 = !{!1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1849, !1850, !1853, !1854, !1855, !1858, !1896, !1898, !1899, !1903}
!1835 = !DILocalVariable(name: "dir", arg: 1, scope: !1829, file: !489, line: 85, type: !137)
!1836 = !DILocalVariable(name: "wd", arg: 2, scope: !1829, file: !489, line: 86, type: !1832)
!1837 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1829, file: !489, line: 87, type: !1201)
!1838 = !DILocalVariable(name: "options", arg: 4, scope: !1829, file: !489, line: 88, type: !138)
!1839 = !DILocalVariable(name: "mode", arg: 5, scope: !1829, file: !489, line: 89, type: !938)
!1840 = !DILocalVariable(name: "announce", arg: 6, scope: !1829, file: !489, line: 90, type: !1833)
!1841 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1829, file: !489, line: 91, type: !938)
!1842 = !DILocalVariable(name: "owner", arg: 8, scope: !1829, file: !489, line: 92, type: !146)
!1843 = !DILocalVariable(name: "group", arg: 9, scope: !1829, file: !489, line: 93, type: !148)
!1844 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1829, file: !489, line: 94, type: !191)
!1845 = !DILocalVariable(name: "mkdir_errno", scope: !1829, file: !489, line: 96, type: !80)
!1846 = !DILocalVariable(name: "savewd_chdir_options", scope: !1847, file: !489, line: 100, type: !80)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !489, line: 99, column: 5)
!1848 = distinct !DILexicalBlock(scope: !1829, file: !489, line: 98, column: 7)
!1849 = !DILocalVariable(name: "prefix_len", scope: !1847, file: !489, line: 102, type: !898)
!1850 = !DILocalVariable(name: "keep_owner", scope: !1851, file: !489, line: 121, type: !191)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !489, line: 115, column: 9)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !489, line: 114, column: 11)
!1853 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1851, file: !489, line: 122, type: !191)
!1854 = !DILocalVariable(name: "mkdir_mode", scope: !1851, file: !489, line: 124, type: !938)
!1855 = !DILocalVariable(name: "umask_must_be_ok", scope: !1856, file: !489, line: 134, type: !191)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !489, line: 131, column: 13)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !489, line: 130, column: 15)
!1858 = !DILocalVariable(name: "st", scope: !1859, file: !489, line: 155, type: !1864)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !489, line: 154, column: 17)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !489, line: 153, column: 19)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !489, line: 150, column: 13)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !489, line: 149, column: 20)
!1863 = distinct !DILexicalBlock(scope: !1851, file: !489, line: 147, column: 15)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1865, line: 44, size: 1024, elements: !1866)
!1865 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1866 = !{!1867, !1869, !1871, !1872, !1874, !1875, !1876, !1877, !1878, !1879, !1881, !1882, !1884, !1892, !1893, !1894}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1864, file: !1865, line: 46, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !98, line: 145, baseType: !142)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1864, file: !1865, line: 47, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !98, line: 148, baseType: !142)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1864, file: !1865, line: 48, baseType: !939, size: 32, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1864, file: !1865, line: 49, baseType: !1873, size: 32, offset: 160)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !98, line: 151, baseType: !99)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1864, file: !1865, line: 50, baseType: !147, size: 32, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1864, file: !1865, line: 51, baseType: !149, size: 32, offset: 224)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1864, file: !1865, line: 52, baseType: !1868, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1864, file: !1865, line: 53, baseType: !1868, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1864, file: !1865, line: 54, baseType: !230, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1864, file: !1865, line: 55, baseType: !1880, size: 32, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !98, line: 175, baseType: !80)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1864, file: !1865, line: 56, baseType: !80, size: 32, offset: 480)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1864, file: !1865, line: 57, baseType: !1883, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !98, line: 180, baseType: !231)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1864, file: !1865, line: 65, baseType: !1885, size: 128, offset: 576)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1886, line: 11, size: 128, elements: !1887)
!1886 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1887 = !{!1888, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1885, file: !1886, line: 16, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !98, line: 160, baseType: !231)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1885, file: !1886, line: 21, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !98, line: 197, baseType: !231)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1864, file: !1865, line: 66, baseType: !1885, size: 128, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1864, file: !1865, line: 67, baseType: !1885, size: 128, offset: 832)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1864, file: !1865, line: 79, baseType: !1895, size: 64, offset: 960)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !278)
!1896 = !DILocalVariable(name: "open_result", scope: !1897, file: !489, line: 171, type: !1895)
!1897 = distinct !DILexicalBlock(scope: !1862, file: !489, line: 170, column: 13)
!1898 = !DILocalVariable(name: "chdir_result", scope: !1897, file: !489, line: 172, type: !80)
!1899 = !DILocalVariable(name: "chdir_ok", scope: !1900, file: !489, line: 179, type: !191)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !489, line: 178, column: 17)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !489, line: 177, column: 24)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !489, line: 175, column: 19)
!1903 = !DILocalVariable(name: "subdir", scope: !1900, file: !489, line: 180, type: !143)
!1904 = !DILocation(line: 0, scope: !1829)
!1905 = !DILocation(line: 96, column: 22, scope: !1829)
!1906 = !DILocalVariable(name: "wd", arg: 1, scope: !1907, file: !85, line: 131, type: !1910)
!1907 = distinct !DISubprogram(name: "savewd_errno", scope: !85, file: !85, line: 131, type: !1908, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !1912)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!80, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!1912 = !{!1906}
!1913 = !DILocation(line: 0, scope: !1907, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 96, column: 56, scope: !1829)
!1915 = !DILocation(line: 133, column: 14, scope: !1907, inlinedAt: !1914)
!1916 = !{!1917, !974, i64 0}
!1917 = !{!"savewd", !974, i64 0, !974, i64 4}
!1918 = !DILocation(line: 133, column: 20, scope: !1907, inlinedAt: !1914)
!1919 = !DILocation(line: 133, column: 10, scope: !1907, inlinedAt: !1914)
!1920 = !DILocation(line: 133, column: 44, scope: !1907, inlinedAt: !1914)
!1921 = !DILocation(line: 133, column: 48, scope: !1907, inlinedAt: !1914)
!1922 = !DILocation(line: 98, column: 19, scope: !1848)
!1923 = !DILocation(line: 98, column: 7, scope: !1829)
!1924 = !DILocation(line: 0, scope: !1847)
!1925 = !DILocation(line: 103, column: 11, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1847, file: !489, line: 103, column: 11)
!1927 = !DILocation(line: 103, column: 11, scope: !1847)
!1928 = !DILocation(line: 105, column: 24, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !489, line: 104, column: 9)
!1930 = !DILocation(line: 106, column: 26, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !489, line: 106, column: 15)
!1932 = !DILocation(line: 106, column: 15, scope: !1929)
!1933 = !DILocation(line: 108, column: 30, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !489, line: 108, column: 19)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !489, line: 107, column: 13)
!1936 = !DILocation(line: 108, column: 19, scope: !1935)
!1937 = !DILocation(line: 110, column: 29, scope: !1935)
!1938 = !DILocation(line: 114, column: 11, scope: !1847)
!1939 = !DILocation(line: 121, column: 49, scope: !1851)
!1940 = !DILocation(line: 0, scope: !1851)
!1941 = !DILocation(line: 123, column: 25, scope: !1851)
!1942 = !DILocation(line: 123, column: 56, scope: !1851)
!1943 = !DILocation(line: 123, column: 48, scope: !1851)
!1944 = !DILocation(line: 125, column: 15, scope: !1851)
!1945 = !DILocation(line: 130, column: 26, scope: !1857)
!1946 = !DILocation(line: 130, column: 15, scope: !1857)
!1947 = !DILocation(line: 130, column: 52, scope: !1857)
!1948 = !DILocation(line: 130, column: 15, scope: !1851)
!1949 = !DILocation(line: 134, column: 45, scope: !1856)
!1950 = !DILocation(line: 134, column: 57, scope: !1856)
!1951 = !DILocation(line: 0, scope: !1856)
!1952 = !DILocation(line: 136, column: 15, scope: !1856)
!1953 = !DILocation(line: 138, column: 36, scope: !1856)
!1954 = !DILocation(line: 149, column: 20, scope: !1863)
!1955 = !DILocation(line: 143, column: 29, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1857, file: !489, line: 142, column: 13)
!1957 = !DILocation(line: 147, column: 37, scope: !1863)
!1958 = !DILocation(line: 151, column: 31, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1861, file: !489, line: 151, column: 19)
!1960 = !DILocation(line: 151, column: 19, scope: !1861)
!1961 = !DILocation(line: 153, column: 19, scope: !1861)
!1962 = !DILocation(line: 155, column: 19, scope: !1859)
!1963 = !DILocation(line: 155, column: 31, scope: !1859)
!1964 = !DILocation(line: 156, column: 23, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1859, file: !489, line: 156, column: 23)
!1966 = !DILocation(line: 156, column: 52, scope: !1965)
!1967 = !DILocation(line: 156, column: 23, scope: !1859)
!1968 = !DILocation(line: 158, column: 27, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !489, line: 158, column: 27)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !489, line: 157, column: 21)
!1971 = !{!1972, !1041, i64 16}
!1972 = !{!"stat", !1552, i64 0, !1552, i64 8, !1041, i64 16, !1041, i64 20, !1041, i64 24, !1041, i64 28, !1552, i64 32, !1552, i64 40, !1552, i64 48, !1041, i64 56, !1041, i64 60, !1552, i64 64, !1973, i64 72, !1973, i64 88, !1973, i64 104, !974, i64 120}
!1973 = !{!"timespec", !1552, i64 0, !1552, i64 8}
!1974 = !DILocation(line: 158, column: 27, scope: !1970)
!1975 = !DILocation(line: 161, column: 40, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1965, file: !489, line: 161, column: 28)
!1977 = !DILocation(line: 162, column: 28, scope: !1976)
!1978 = !DILocation(line: 162, column: 31, scope: !1976)
!1979 = !DILocation(line: 162, column: 47, scope: !1976)
!1980 = !DILocation(line: 164, column: 23, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !489, line: 163, column: 21)
!1982 = !DILocation(line: 165, column: 23, scope: !1981)
!1983 = !DILocation(line: 167, column: 17, scope: !1860)
!1984 = !DILocation(line: 171, column: 15, scope: !1897)
!1985 = !DILocation(line: 171, column: 19, scope: !1897)
!1986 = !DILocation(line: 173, column: 17, scope: !1897)
!1987 = !DILocation(line: 0, scope: !1897)
!1988 = !DILocation(line: 175, column: 32, scope: !1902)
!1989 = !DILocation(line: 175, column: 19, scope: !1897)
!1990 = !DILocation(line: 177, column: 37, scope: !1901)
!1991 = !DILocation(line: 177, column: 42, scope: !1901)
!1992 = !DILocation(line: 177, column: 45, scope: !1901)
!1993 = !DILocation(line: 177, column: 51, scope: !1901)
!1994 = !DILocation(line: 177, column: 24, scope: !1902)
!1995 = !DILocation(line: 0, scope: !1900)
!1996 = !DILocation(line: 181, column: 36, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1900, file: !489, line: 181, column: 23)
!1998 = !DILocation(line: 181, column: 23, scope: !1997)
!1999 = !DILocation(line: 183, column: 23, scope: !1997)
!2000 = !DILocation(line: 181, column: 23, scope: !1900)
!2001 = !DILocation(line: 186, column: 35, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1900, file: !489, line: 186, column: 23)
!2003 = !DILocation(line: 187, column: 23, scope: !2002)
!2004 = !DILocation(line: 189, column: 23, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !489, line: 188, column: 21)
!2006 = !DILocation(line: 187, column: 41, scope: !2002)
!2007 = !DILocation(line: 187, column: 44, scope: !2002)
!2008 = !DILocation(line: 187, column: 60, scope: !2002)
!2009 = !DILocation(line: 194, column: 23, scope: !2005)
!2010 = !DILocation(line: 199, column: 35, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !489, line: 199, column: 23)
!2012 = distinct !DILexicalBlock(scope: !1901, file: !489, line: 198, column: 17)
!2013 = !DILocation(line: 199, column: 23, scope: !2012)
!2014 = !DILocation(line: 201, column: 28, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !489, line: 201, column: 23)
!2016 = !DILocation(line: 201, column: 25, scope: !2015)
!2017 = !DILocation(line: 201, column: 23, scope: !2012)
!2018 = !DILocation(line: 202, column: 21, scope: !2015)
!2019 = !DILocation(line: 204, column: 13, scope: !1862)
!2020 = !DILocation(line: 0, scope: !1902)
!2021 = !DILocation(line: 96, column: 7, scope: !1829)
!2022 = !DILocation(line: 208, column: 3, scope: !1829)
!2023 = !DILocation(line: 209, column: 3, scope: !1829)
!2024 = !DILocation(line: 210, column: 1, scope: !1829)
!2025 = !DISubprogram(name: "stat", scope: !1393, file: !1393, line: 205, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!80, !1031, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!2030 = !DISubprogram(name: "close", scope: !1612, file: !1612, line: 358, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!2031 = distinct !DISubprogram(name: "mode_compile", scope: !848, file: !848, line: 134, type: !2032, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !2042)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!2034, !143}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !848, line: 98, size: 128, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2041}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2035, file: !848, line: 100, baseType: !4, size: 8)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !2035, file: !848, line: 101, baseType: !4, size: 8, offset: 8)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !2035, file: !848, line: 102, baseType: !938, size: 32, offset: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2035, file: !848, line: 103, baseType: !938, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !2035, file: !848, line: 104, baseType: !938, size: 32, offset: 96)
!2042 = !{!2043, !2044, !2047, !2048, !2049, !2050, !2051, !2053, !2055, !2056, !2057, !2061, !2063, !2064, !2065, !2066, !2069, !2070, !2071, !2072}
!2043 = !DILocalVariable(name: "mode_string", arg: 1, scope: !2031, file: !848, line: 134, type: !143)
!2044 = !DILocalVariable(name: "p", scope: !2045, file: !848, line: 138, type: !143)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !848, line: 137, column: 5)
!2046 = distinct !DILexicalBlock(scope: !2031, file: !848, line: 136, column: 7)
!2047 = !DILocalVariable(name: "octal_mode", scope: !2045, file: !848, line: 139, type: !99)
!2048 = !DILocalVariable(name: "mode", scope: !2045, file: !848, line: 140, type: !938)
!2049 = !DILocalVariable(name: "mentioned", scope: !2045, file: !848, line: 141, type: !938)
!2050 = !DILocalVariable(name: "mc", scope: !2031, file: !848, line: 163, type: !2034)
!2051 = !DILocalVariable(name: "needed", scope: !2052, file: !848, line: 167, type: !140)
!2052 = distinct !DILexicalBlock(scope: !2031, file: !848, line: 166, column: 3)
!2053 = !DILocalVariable(name: "p", scope: !2054, file: !848, line: 168, type: !143)
!2054 = distinct !DILexicalBlock(scope: !2052, file: !848, line: 168, column: 5)
!2055 = !DILocalVariable(name: "used", scope: !2031, file: !848, line: 175, type: !140)
!2056 = !DILocalVariable(name: "p", scope: !2031, file: !848, line: 176, type: !143)
!2057 = !DILocalVariable(name: "affected", scope: !2058, file: !848, line: 180, type: !938)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !848, line: 178, column: 5)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !848, line: 177, column: 3)
!2060 = distinct !DILexicalBlock(scope: !2031, file: !848, line: 177, column: 3)
!2061 = !DILocalVariable(name: "op", scope: !2062, file: !848, line: 207, type: !4)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !848, line: 206, column: 9)
!2063 = !DILocalVariable(name: "value", scope: !2062, file: !848, line: 208, type: !938)
!2064 = !DILocalVariable(name: "mentioned", scope: !2062, file: !848, line: 209, type: !938)
!2065 = !DILocalVariable(name: "flag", scope: !2062, file: !848, line: 210, type: !4)
!2066 = !DILocalVariable(name: "octal_mode", scope: !2067, file: !848, line: 217, type: !99)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !848, line: 216, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !848, line: 213, column: 13)
!2069 = !DILocalVariable(name: "change", scope: !2062, file: !848, line: 287, type: !2034)
!2070 = !DILabel(scope: !2058, name: "no_more_affected", file: !848, line: 203)
!2071 = !DILabel(scope: !2068, name: "no_more_values", file: !848, line: 284)
!2072 = !DILabel(scope: !2031, name: "invalid", file: !848, line: 308)
!2073 = !DILocation(line: 0, scope: !2031)
!2074 = !DILocation(line: 136, column: 14, scope: !2046)
!2075 = !DILocation(line: 136, column: 27, scope: !2046)
!2076 = !DILocation(line: 146, column: 41, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2045, file: !848, line: 145, column: 9)
!2078 = !DILocation(line: 0, scope: !2045)
!2079 = !DILocation(line: 146, column: 26, scope: !2077)
!2080 = !DILocation(line: 146, column: 39, scope: !2077)
!2081 = !DILocation(line: 146, column: 46, scope: !2077)
!2082 = !DILocation(line: 147, column: 20, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2077, file: !848, line: 147, column: 15)
!2084 = !DILocation(line: 147, column: 15, scope: !2077)
!2085 = !DILocation(line: 146, column: 43, scope: !2077)
!2086 = !DILocation(line: 150, column: 21, scope: !2045)
!2087 = !DILocation(line: 150, column: 24, scope: !2045)
!2088 = distinct !{!2088, !2089, !2090, !1087}
!2089 = !DILocation(line: 144, column: 7, scope: !2045)
!2090 = !DILocation(line: 150, column: 35, scope: !2045)
!2091 = !DILocation(line: 152, column: 11, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2045, file: !848, line: 152, column: 11)
!2093 = !DILocation(line: 152, column: 11, scope: !2045)
!2094 = !DILocation(line: 156, column: 22, scope: !2045)
!2095 = !DILocation(line: 156, column: 36, scope: !2045)
!2096 = !DILocation(line: 156, column: 20, scope: !2045)
!2097 = !DILocalVariable(name: "new_mode", arg: 1, scope: !2098, file: !848, line: 112, type: !938)
!2098 = distinct !DISubprogram(name: "make_node_op_equals", scope: !848, file: !848, line: 112, type: !2099, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2034, !938, !938}
!2101 = !{!2097, !2102, !2103}
!2102 = !DILocalVariable(name: "mentioned", arg: 2, scope: !2098, file: !848, line: 112, type: !938)
!2103 = !DILocalVariable(name: "p", scope: !2098, file: !848, line: 114, type: !2034)
!2104 = !DILocation(line: 0, scope: !2098, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 159, column: 14, scope: !2045)
!2106 = !DILocation(line: 114, column: 27, scope: !2098, inlinedAt: !2105)
!2107 = !DILocation(line: 115, column: 9, scope: !2098, inlinedAt: !2105)
!2108 = !{!2109, !974, i64 0}
!2109 = !{!"mode_change", !974, i64 0, !974, i64 1, !1041, i64 4, !1041, i64 8, !1041, i64 12}
!2110 = !DILocation(line: 116, column: 6, scope: !2098, inlinedAt: !2105)
!2111 = !DILocation(line: 116, column: 11, scope: !2098, inlinedAt: !2105)
!2112 = !{!2109, !974, i64 1}
!2113 = !DILocation(line: 117, column: 6, scope: !2098, inlinedAt: !2105)
!2114 = !DILocation(line: 117, column: 15, scope: !2098, inlinedAt: !2105)
!2115 = !{!2109, !1041, i64 4}
!2116 = !DILocation(line: 118, column: 6, scope: !2098, inlinedAt: !2105)
!2117 = !DILocation(line: 118, column: 12, scope: !2098, inlinedAt: !2105)
!2118 = !{!2109, !1041, i64 8}
!2119 = !DILocation(line: 119, column: 6, scope: !2098, inlinedAt: !2105)
!2120 = !DILocation(line: 119, column: 16, scope: !2098, inlinedAt: !2105)
!2121 = !{!2109, !1041, i64 12}
!2122 = !DILocation(line: 120, column: 8, scope: !2098, inlinedAt: !2105)
!2123 = !DILocation(line: 120, column: 13, scope: !2098, inlinedAt: !2105)
!2124 = !DILocation(line: 159, column: 7, scope: !2045)
!2125 = !DILocation(line: 168, column: 39, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2054, file: !848, line: 168, column: 5)
!2127 = !DILocation(line: 0, scope: !2052)
!2128 = !DILocation(line: 168, scope: !2054)
!2129 = !DILocation(line: 0, scope: !2054)
!2130 = !DILocation(line: 168, column: 5, scope: !2054)
!2131 = !DILocation(line: 170, column: 10, scope: !2052)
!2132 = !DILocation(line: 177, column: 8, scope: !2060)
!2133 = !DILocation(line: 169, column: 41, scope: !2126)
!2134 = !DILocation(line: 169, column: 14, scope: !2126)
!2135 = !DILocation(line: 168, column: 44, scope: !2126)
!2136 = !DILocation(line: 168, column: 5, scope: !2126)
!2137 = distinct !{!2137, !2130, !2138, !1087}
!2138 = !DILocation(line: 169, column: 53, scope: !2054)
!2139 = !DILocation(line: 175, column: 10, scope: !2031)
!2140 = !DILocation(line: 177, scope: !2060)
!2141 = !DILocation(line: 0, scope: !2062)
!2142 = !DILocation(line: 0, scope: !2058)
!2143 = !DILocation(line: 183, column: 7, scope: !2058)
!2144 = !DILocation(line: 0, scope: !2060)
!2145 = !DILocation(line: 184, column: 17, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !848, line: 183, column: 7)
!2147 = distinct !DILexicalBlock(scope: !2058, file: !848, line: 183, column: 7)
!2148 = !DILocation(line: 184, column: 9, scope: !2146)
!2149 = !DILocation(line: 212, column: 11, scope: !2062)
!2150 = !DILocation(line: 189, column: 22, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !848, line: 185, column: 11)
!2152 = !DILocation(line: 190, column: 13, scope: !2151)
!2153 = !DILocation(line: 192, column: 22, scope: !2151)
!2154 = !DILocation(line: 193, column: 13, scope: !2151)
!2155 = !DILocation(line: 195, column: 22, scope: !2151)
!2156 = !DILocation(line: 196, column: 13, scope: !2151)
!2157 = !DILocation(line: 0, scope: !2151)
!2158 = !DILocation(line: 183, column: 16, scope: !2146)
!2159 = !DILocation(line: 183, column: 7, scope: !2146)
!2160 = distinct !{!2160, !2161, !2162}
!2161 = !DILocation(line: 183, column: 7, scope: !2147)
!2162 = !DILocation(line: 202, column: 11, scope: !2147)
!2163 = !DILocation(line: 207, column: 21, scope: !2062)
!2164 = !DILocation(line: 180, column: 14, scope: !2058)
!2165 = !DILocation(line: 207, column: 23, scope: !2062)
!2166 = !DILocation(line: 212, column: 19, scope: !2062)
!2167 = !DILocation(line: 219, column: 17, scope: !2067)
!2168 = !DILocation(line: 221, column: 51, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2067, file: !848, line: 220, column: 19)
!2170 = !DILocation(line: 0, scope: !2067)
!2171 = !DILocation(line: 221, column: 36, scope: !2169)
!2172 = !DILocation(line: 221, column: 49, scope: !2169)
!2173 = !DILocation(line: 221, column: 56, scope: !2169)
!2174 = !DILocation(line: 222, column: 30, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !848, line: 222, column: 25)
!2176 = !DILocation(line: 222, column: 25, scope: !2169)
!2177 = !DILocation(line: 221, column: 53, scope: !2169)
!2178 = !DILocation(line: 225, column: 31, scope: !2067)
!2179 = !DILocation(line: 225, column: 34, scope: !2067)
!2180 = distinct !{!2180, !2167, !2181, !1087}
!2181 = !DILocation(line: 225, column: 45, scope: !2067)
!2182 = !DILocation(line: 227, column: 21, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2067, file: !848, line: 227, column: 21)
!2184 = !DILocation(line: 227, column: 30, scope: !2183)
!2185 = !DILocation(line: 227, column: 37, scope: !2183)
!2186 = !DILocation(line: 239, column: 16, scope: !2068)
!2187 = !DILocation(line: 240, column: 15, scope: !2068)
!2188 = !DILocation(line: 245, column: 16, scope: !2068)
!2189 = !DILocation(line: 246, column: 15, scope: !2068)
!2190 = !DILocation(line: 251, column: 16, scope: !2068)
!2191 = !DILocation(line: 252, column: 15, scope: !2068)
!2192 = !DILocation(line: 259, column: 25, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !848, line: 258, column: 15)
!2194 = distinct !DILexicalBlock(scope: !2068, file: !848, line: 258, column: 15)
!2195 = !DILocation(line: 0, scope: !2068)
!2196 = !DILocation(line: 256, column: 20, scope: !2068)
!2197 = !DILocation(line: 259, column: 17, scope: !2193)
!2198 = !DILocation(line: 262, column: 27, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !848, line: 260, column: 19)
!2200 = !DILocation(line: 263, column: 21, scope: !2199)
!2201 = !DILocation(line: 265, column: 27, scope: !2199)
!2202 = !DILocation(line: 266, column: 21, scope: !2199)
!2203 = !DILocation(line: 268, column: 27, scope: !2199)
!2204 = !DILocation(line: 269, column: 21, scope: !2199)
!2205 = !DILocation(line: 275, column: 27, scope: !2199)
!2206 = !DILocation(line: 276, column: 21, scope: !2199)
!2207 = !DILocation(line: 279, column: 27, scope: !2199)
!2208 = !DILocation(line: 280, column: 21, scope: !2199)
!2209 = !DILocation(line: 258, column: 24, scope: !2193)
!2210 = !DILocation(line: 258, column: 15, scope: !2193)
!2211 = distinct !{!2211, !2212, !2213}
!2212 = !DILocation(line: 258, column: 15, scope: !2194)
!2213 = !DILocation(line: 283, column: 19, scope: !2194)
!2214 = !DILocation(line: 209, column: 18, scope: !2062)
!2215 = !DILocation(line: 294, column: 14, scope: !2062)
!2216 = !DILocation(line: 288, column: 28, scope: !2062)
!2217 = !DILocation(line: 288, column: 21, scope: !2062)
!2218 = !DILocation(line: 289, column: 22, scope: !2062)
!2219 = !DILocation(line: 290, column: 19, scope: !2062)
!2220 = !DILocation(line: 290, column: 24, scope: !2062)
!2221 = !DILocation(line: 291, column: 19, scope: !2062)
!2222 = !DILocation(line: 291, column: 28, scope: !2062)
!2223 = !DILocation(line: 292, column: 19, scope: !2062)
!2224 = !DILocation(line: 292, column: 25, scope: !2062)
!2225 = !DILocation(line: 293, column: 19, scope: !2062)
!2226 = !DILocation(line: 293, column: 29, scope: !2062)
!2227 = !DILocation(line: 296, column: 14, scope: !2058)
!2228 = !DILocation(line: 296, column: 24, scope: !2058)
!2229 = !DILocation(line: 177, column: 28, scope: !2059)
!2230 = !DILocation(line: 177, column: 3, scope: !2059)
!2231 = distinct !{!2231, !2232, !2233}
!2232 = !DILocation(line: 177, column: 3, scope: !2060)
!2233 = !DILocation(line: 300, column: 5, scope: !2060)
!2234 = !DILocation(line: 304, column: 16, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !848, line: 303, column: 5)
!2236 = distinct !DILexicalBlock(scope: !2031, file: !848, line: 302, column: 7)
!2237 = !DILocation(line: 304, column: 21, scope: !2235)
!2238 = !DILocation(line: 305, column: 7, scope: !2235)
!2239 = !DILocation(line: 308, column: 1, scope: !2031)
!2240 = !DILocation(line: 309, column: 3, scope: !2031)
!2241 = !DILocation(line: 310, column: 3, scope: !2031)
!2242 = !DILocation(line: 311, column: 1, scope: !2031)
!2243 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !848, file: !848, line: 317, type: !2032, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !2244)
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "ref_file", arg: 1, scope: !2243, file: !848, line: 317, type: !143)
!2246 = !DILocalVariable(name: "ref_stats", scope: !2243, file: !848, line: 319, type: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1865, line: 44, size: 1024, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2266, !2267, !2268}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2247, file: !1865, line: 46, baseType: !1868, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2247, file: !1865, line: 47, baseType: !1870, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2247, file: !1865, line: 48, baseType: !939, size: 32, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2247, file: !1865, line: 49, baseType: !1873, size: 32, offset: 160)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2247, file: !1865, line: 50, baseType: !147, size: 32, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2247, file: !1865, line: 51, baseType: !149, size: 32, offset: 224)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2247, file: !1865, line: 52, baseType: !1868, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2247, file: !1865, line: 53, baseType: !1868, size: 64, offset: 320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2247, file: !1865, line: 54, baseType: !230, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2247, file: !1865, line: 55, baseType: !1880, size: 32, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2247, file: !1865, line: 56, baseType: !80, size: 32, offset: 480)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2247, file: !1865, line: 57, baseType: !1883, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2247, file: !1865, line: 65, baseType: !2262, size: 128, offset: 576)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1886, line: 11, size: 128, elements: !2263)
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2262, file: !1886, line: 16, baseType: !1889, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2262, file: !1886, line: 21, baseType: !1891, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2247, file: !1865, line: 66, baseType: !2262, size: 128, offset: 704)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2247, file: !1865, line: 67, baseType: !2262, size: 128, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2247, file: !1865, line: 79, baseType: !1895, size: 64, offset: 960)
!2269 = !DILocation(line: 0, scope: !2243)
!2270 = !DILocation(line: 319, column: 3, scope: !2243)
!2271 = !DILocation(line: 319, column: 15, scope: !2243)
!2272 = !DILocation(line: 321, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2243, file: !848, line: 321, column: 7)
!2274 = !DILocation(line: 321, column: 35, scope: !2273)
!2275 = !DILocation(line: 321, column: 7, scope: !2243)
!2276 = !DILocation(line: 323, column: 41, scope: !2243)
!2277 = !DILocation(line: 0, scope: !2098, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 323, column: 10, scope: !2243)
!2279 = !DILocation(line: 114, column: 27, scope: !2098, inlinedAt: !2278)
!2280 = !DILocation(line: 115, column: 9, scope: !2098, inlinedAt: !2278)
!2281 = !DILocation(line: 116, column: 6, scope: !2098, inlinedAt: !2278)
!2282 = !DILocation(line: 116, column: 11, scope: !2098, inlinedAt: !2278)
!2283 = !DILocation(line: 117, column: 6, scope: !2098, inlinedAt: !2278)
!2284 = !DILocation(line: 117, column: 15, scope: !2098, inlinedAt: !2278)
!2285 = !DILocation(line: 118, column: 6, scope: !2098, inlinedAt: !2278)
!2286 = !DILocation(line: 118, column: 12, scope: !2098, inlinedAt: !2278)
!2287 = !DILocation(line: 119, column: 6, scope: !2098, inlinedAt: !2278)
!2288 = !DILocation(line: 119, column: 16, scope: !2098, inlinedAt: !2278)
!2289 = !DILocation(line: 120, column: 8, scope: !2098, inlinedAt: !2278)
!2290 = !DILocation(line: 120, column: 13, scope: !2098, inlinedAt: !2278)
!2291 = !DILocation(line: 323, column: 3, scope: !2243)
!2292 = !DILocation(line: 324, column: 1, scope: !2243)
!2293 = distinct !DISubprogram(name: "mode_adjust", scope: !848, file: !848, line: 340, type: !2294, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !847, retainedNodes: !2299)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!938, !938, !191, !938, !2296, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2311, !2312, !2313}
!2300 = !DILocalVariable(name: "oldmode", arg: 1, scope: !2293, file: !848, line: 340, type: !938)
!2301 = !DILocalVariable(name: "dir", arg: 2, scope: !2293, file: !848, line: 340, type: !191)
!2302 = !DILocalVariable(name: "umask_value", arg: 3, scope: !2293, file: !848, line: 340, type: !938)
!2303 = !DILocalVariable(name: "changes", arg: 4, scope: !2293, file: !848, line: 341, type: !2296)
!2304 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !2293, file: !848, line: 341, type: !2298)
!2305 = !DILocalVariable(name: "newmode", scope: !2293, file: !848, line: 344, type: !938)
!2306 = !DILocalVariable(name: "mode_bits", scope: !2293, file: !848, line: 347, type: !938)
!2307 = !DILocalVariable(name: "affected", scope: !2308, file: !848, line: 351, type: !938)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !848, line: 350, column: 5)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !848, line: 349, column: 3)
!2310 = distinct !DILexicalBlock(scope: !2293, file: !848, line: 349, column: 3)
!2311 = !DILocalVariable(name: "omit_change", scope: !2308, file: !848, line: 352, type: !938)
!2312 = !DILocalVariable(name: "value", scope: !2308, file: !848, line: 354, type: !938)
!2313 = !DILocalVariable(name: "preserved", scope: !2314, file: !848, line: 394, type: !938)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !848, line: 393, column: 11)
!2315 = distinct !DILexicalBlock(scope: !2308, file: !848, line: 388, column: 9)
!2316 = !DILocation(line: 0, scope: !2293)
!2317 = !DILocation(line: 344, column: 28, scope: !2293)
!2318 = !DILocation(line: 349, column: 19, scope: !2309)
!2319 = !DILocation(line: 349, column: 24, scope: !2309)
!2320 = !DILocation(line: 349, column: 3, scope: !2310)
!2321 = !DILocation(line: 351, column: 34, scope: !2308)
!2322 = !DILocation(line: 0, scope: !2308)
!2323 = !DILocation(line: 353, column: 52, scope: !2308)
!2324 = !DILocation(line: 353, column: 41, scope: !2308)
!2325 = !DILocation(line: 353, column: 39, scope: !2308)
!2326 = !DILocation(line: 354, column: 31, scope: !2308)
!2327 = !DILocation(line: 356, column: 7, scope: !2308)
!2328 = !DILocation(line: 363, column: 17, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2308, file: !848, line: 357, column: 9)
!2330 = !DILocation(line: 366, column: 28, scope: !2329)
!2331 = !DILocation(line: 366, column: 22, scope: !2329)
!2332 = !DILocation(line: 368, column: 30, scope: !2329)
!2333 = !DILocation(line: 368, column: 24, scope: !2329)
!2334 = !DILocation(line: 370, column: 30, scope: !2329)
!2335 = !DILocation(line: 370, column: 24, scope: !2329)
!2336 = !DILocation(line: 370, column: 21, scope: !2329)
!2337 = !DILocation(line: 366, column: 17, scope: !2329)
!2338 = !DILocation(line: 372, column: 11, scope: !2329)
!2339 = !DILocation(line: 377, column: 24, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2329, file: !848, line: 377, column: 15)
!2341 = !DILocation(line: 377, column: 57, scope: !2340)
!2342 = !DILocation(line: 377, column: 15, scope: !2329)
!2343 = !DILocation(line: 385, column: 17, scope: !2308)
!2344 = !DILocation(line: 385, column: 55, scope: !2308)
!2345 = !DILocation(line: 385, column: 53, scope: !2308)
!2346 = !DILocation(line: 385, column: 13, scope: !2308)
!2347 = !DILocation(line: 387, column: 24, scope: !2308)
!2348 = !DILocation(line: 387, column: 7, scope: !2308)
!2349 = !DILocation(line: 394, column: 33, scope: !2314)
!2350 = !DILocation(line: 394, column: 59, scope: !2314)
!2351 = !DILocation(line: 0, scope: !2314)
!2352 = !DILocation(line: 395, column: 42, scope: !2314)
!2353 = !DILocation(line: 395, column: 23, scope: !2314)
!2354 = !DILocation(line: 396, column: 32, scope: !2314)
!2355 = !DILocation(line: 396, column: 45, scope: !2314)
!2356 = !DILocation(line: 401, column: 21, scope: !2315)
!2357 = !DILocation(line: 402, column: 19, scope: !2315)
!2358 = !DILocation(line: 403, column: 11, scope: !2315)
!2359 = !DILocation(line: 406, column: 21, scope: !2315)
!2360 = !DILocation(line: 407, column: 22, scope: !2315)
!2361 = !DILocation(line: 407, column: 19, scope: !2315)
!2362 = !DILocation(line: 408, column: 11, scope: !2315)
!2363 = !DILocation(line: 349, column: 45, scope: !2309)
!2364 = distinct !{!2364, !2320, !2365, !1087}
!2365 = !DILocation(line: 410, column: 5, scope: !2310)
!2366 = !DILocation(line: 347, column: 10, scope: !2293)
!2367 = !DILocation(line: 344, column: 10, scope: !2293)
!2368 = !DILocation(line: 412, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2293, file: !848, line: 412, column: 7)
!2370 = !DILocation(line: 412, column: 7, scope: !2293)
!2371 = !DILocation(line: 413, column: 17, scope: !2369)
!2372 = !DILocation(line: 413, column: 5, scope: !2369)
!2373 = !DILocation(line: 414, column: 3, scope: !2293)
!2374 = distinct !DISubprogram(name: "set_program_name", scope: !509, file: !509, line: 37, type: !992, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !2375)
!2375 = !{!2376, !2377, !2378}
!2376 = !DILocalVariable(name: "argv0", arg: 1, scope: !2374, file: !509, line: 37, type: !143)
!2377 = !DILocalVariable(name: "slash", scope: !2374, file: !509, line: 44, type: !143)
!2378 = !DILocalVariable(name: "base", scope: !2374, file: !509, line: 45, type: !143)
!2379 = !DILocation(line: 0, scope: !2374)
!2380 = !DILocation(line: 44, column: 23, scope: !2374)
!2381 = !DILocation(line: 45, column: 22, scope: !2374)
!2382 = !DILocation(line: 46, column: 17, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !509, line: 46, column: 7)
!2384 = !DILocation(line: 46, column: 9, scope: !2383)
!2385 = !DILocation(line: 46, column: 25, scope: !2383)
!2386 = !DILocation(line: 46, column: 40, scope: !2383)
!2387 = !DILocalVariable(name: "__s1", arg: 1, scope: !2388, file: !1053, line: 974, type: !1185)
!2388 = distinct !DISubprogram(name: "memeq", scope: !1053, file: !1053, line: 974, type: !2389, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!191, !1185, !1185, !140}
!2391 = !{!2387, !2392, !2393}
!2392 = !DILocalVariable(name: "__s2", arg: 2, scope: !2388, file: !1053, line: 974, type: !1185)
!2393 = !DILocalVariable(name: "__n", arg: 3, scope: !2388, file: !1053, line: 974, type: !140)
!2394 = !DILocation(line: 0, scope: !2388, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 46, column: 28, scope: !2383)
!2396 = !DILocation(line: 976, column: 11, scope: !2388, inlinedAt: !2395)
!2397 = !DILocation(line: 976, column: 10, scope: !2388, inlinedAt: !2395)
!2398 = !DILocation(line: 46, column: 7, scope: !2374)
!2399 = !DILocation(line: 49, column: 11, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !509, line: 49, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2383, file: !509, line: 47, column: 5)
!2402 = !DILocation(line: 49, column: 36, scope: !2400)
!2403 = !DILocation(line: 49, column: 11, scope: !2401)
!2404 = !DILocation(line: 65, column: 16, scope: !2374)
!2405 = !DILocation(line: 71, column: 27, scope: !2374)
!2406 = !DILocation(line: 74, column: 33, scope: !2374)
!2407 = !DILocation(line: 76, column: 1, scope: !2374)
!2408 = !DISubprogram(name: "strrchr", scope: !1157, file: !1157, line: 273, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!2409 = !DILocation(line: 0, scope: !518)
!2410 = !DILocation(line: 40, column: 29, scope: !518)
!2411 = !DILocation(line: 41, column: 19, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !518, file: !519, line: 41, column: 7)
!2413 = !DILocation(line: 41, column: 7, scope: !518)
!2414 = !DILocation(line: 47, column: 3, scope: !518)
!2415 = !DILocation(line: 48, column: 3, scope: !518)
!2416 = !DILocation(line: 48, column: 13, scope: !518)
!2417 = !DILocalVariable(name: "ps", arg: 1, scope: !2418, file: !2419, line: 1135, type: !2422)
!2418 = distinct !DISubprogram(name: "mbszero", scope: !2419, file: !2419, line: 1135, type: !2420, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !2423)
!2419 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!2423 = !{!2417}
!2424 = !DILocation(line: 0, scope: !2418, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 48, column: 18, scope: !518)
!2426 = !DILocalVariable(name: "__dest", arg: 1, scope: !2427, file: !2428, line: 57, type: !138)
!2427 = distinct !DISubprogram(name: "memset", scope: !2428, file: !2428, line: 57, type: !2429, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !2431)
!2428 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!138, !138, !80, !140}
!2431 = !{!2426, !2432, !2433}
!2432 = !DILocalVariable(name: "__ch", arg: 2, scope: !2427, file: !2428, line: 57, type: !80)
!2433 = !DILocalVariable(name: "__len", arg: 3, scope: !2427, file: !2428, line: 57, type: !140)
!2434 = !DILocation(line: 0, scope: !2427, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 1137, column: 3, scope: !2418, inlinedAt: !2425)
!2436 = !DILocation(line: 59, column: 10, scope: !2427, inlinedAt: !2435)
!2437 = !DILocation(line: 49, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !518, file: !519, line: 49, column: 7)
!2439 = !DILocation(line: 49, column: 39, scope: !2438)
!2440 = !DILocation(line: 49, column: 44, scope: !2438)
!2441 = !DILocation(line: 54, column: 1, scope: !518)
!2442 = !DISubprogram(name: "mbrtoc32", scope: !530, file: !530, line: 57, type: !2443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!140, !2445, !1031, !140, !2447}
!2445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2446)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2422)
!2448 = distinct !DISubprogram(name: "clone_quoting_options", scope: !549, file: !549, line: 113, type: !2449, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2452)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2451, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2452 = !{!2453, !2454, !2455}
!2453 = !DILocalVariable(name: "o", arg: 1, scope: !2448, file: !549, line: 113, type: !2451)
!2454 = !DILocalVariable(name: "saved_errno", scope: !2448, file: !549, line: 115, type: !80)
!2455 = !DILocalVariable(name: "p", scope: !2448, file: !549, line: 116, type: !2451)
!2456 = !DILocation(line: 0, scope: !2448)
!2457 = !DILocation(line: 115, column: 21, scope: !2448)
!2458 = !DILocation(line: 116, column: 40, scope: !2448)
!2459 = !DILocation(line: 116, column: 31, scope: !2448)
!2460 = !DILocation(line: 118, column: 9, scope: !2448)
!2461 = !DILocation(line: 119, column: 3, scope: !2448)
!2462 = distinct !DISubprogram(name: "get_quoting_style", scope: !549, file: !549, line: 124, type: !2463, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2467)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!122, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!2467 = !{!2468}
!2468 = !DILocalVariable(name: "o", arg: 1, scope: !2462, file: !549, line: 124, type: !2465)
!2469 = !DILocation(line: 0, scope: !2462)
!2470 = !DILocation(line: 126, column: 11, scope: !2462)
!2471 = !DILocation(line: 126, column: 46, scope: !2462)
!2472 = !{!2473, !974, i64 0}
!2473 = !{!"quoting_options", !974, i64 0, !1041, i64 4, !974, i64 8, !973, i64 40, !973, i64 48}
!2474 = !DILocation(line: 126, column: 3, scope: !2462)
!2475 = distinct !DISubprogram(name: "set_quoting_style", scope: !549, file: !549, line: 132, type: !2476, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{null, !2451, !122}
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "o", arg: 1, scope: !2475, file: !549, line: 132, type: !2451)
!2480 = !DILocalVariable(name: "s", arg: 2, scope: !2475, file: !549, line: 132, type: !122)
!2481 = !DILocation(line: 0, scope: !2475)
!2482 = !DILocation(line: 134, column: 4, scope: !2475)
!2483 = !DILocation(line: 134, column: 45, scope: !2475)
!2484 = !DILocation(line: 135, column: 1, scope: !2475)
!2485 = distinct !DISubprogram(name: "set_char_quoting", scope: !549, file: !549, line: 143, type: !2486, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!80, !2451, !4, !80}
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2495, !2496}
!2489 = !DILocalVariable(name: "o", arg: 1, scope: !2485, file: !549, line: 143, type: !2451)
!2490 = !DILocalVariable(name: "c", arg: 2, scope: !2485, file: !549, line: 143, type: !4)
!2491 = !DILocalVariable(name: "i", arg: 3, scope: !2485, file: !549, line: 143, type: !80)
!2492 = !DILocalVariable(name: "uc", scope: !2485, file: !549, line: 145, type: !145)
!2493 = !DILocalVariable(name: "p", scope: !2485, file: !549, line: 146, type: !2494)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2495 = !DILocalVariable(name: "shift", scope: !2485, file: !549, line: 148, type: !80)
!2496 = !DILocalVariable(name: "r", scope: !2485, file: !549, line: 149, type: !99)
!2497 = !DILocation(line: 0, scope: !2485)
!2498 = !DILocation(line: 147, column: 6, scope: !2485)
!2499 = !DILocation(line: 147, column: 41, scope: !2485)
!2500 = !DILocation(line: 147, column: 62, scope: !2485)
!2501 = !DILocation(line: 147, column: 57, scope: !2485)
!2502 = !DILocation(line: 148, column: 15, scope: !2485)
!2503 = !DILocation(line: 149, column: 21, scope: !2485)
!2504 = !DILocation(line: 149, column: 24, scope: !2485)
!2505 = !DILocation(line: 149, column: 34, scope: !2485)
!2506 = !DILocation(line: 150, column: 19, scope: !2485)
!2507 = !DILocation(line: 150, column: 24, scope: !2485)
!2508 = !DILocation(line: 150, column: 6, scope: !2485)
!2509 = !DILocation(line: 151, column: 3, scope: !2485)
!2510 = distinct !DISubprogram(name: "set_quoting_flags", scope: !549, file: !549, line: 159, type: !2511, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!80, !2451, !80}
!2513 = !{!2514, !2515, !2516}
!2514 = !DILocalVariable(name: "o", arg: 1, scope: !2510, file: !549, line: 159, type: !2451)
!2515 = !DILocalVariable(name: "i", arg: 2, scope: !2510, file: !549, line: 159, type: !80)
!2516 = !DILocalVariable(name: "r", scope: !2510, file: !549, line: 163, type: !80)
!2517 = !DILocation(line: 0, scope: !2510)
!2518 = !DILocation(line: 161, column: 8, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2510, file: !549, line: 161, column: 7)
!2520 = !DILocation(line: 161, column: 7, scope: !2510)
!2521 = !DILocation(line: 163, column: 14, scope: !2510)
!2522 = !{!2473, !1041, i64 4}
!2523 = !DILocation(line: 164, column: 12, scope: !2510)
!2524 = !DILocation(line: 165, column: 3, scope: !2510)
!2525 = distinct !DISubprogram(name: "set_custom_quoting", scope: !549, file: !549, line: 169, type: !2526, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !2451, !143, !143}
!2528 = !{!2529, !2530, !2531}
!2529 = !DILocalVariable(name: "o", arg: 1, scope: !2525, file: !549, line: 169, type: !2451)
!2530 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2525, file: !549, line: 170, type: !143)
!2531 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2525, file: !549, line: 170, type: !143)
!2532 = !DILocation(line: 0, scope: !2525)
!2533 = !DILocation(line: 172, column: 8, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2525, file: !549, line: 172, column: 7)
!2535 = !DILocation(line: 172, column: 7, scope: !2525)
!2536 = !DILocation(line: 174, column: 12, scope: !2525)
!2537 = !DILocation(line: 175, column: 8, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2525, file: !549, line: 175, column: 7)
!2539 = !DILocation(line: 175, column: 19, scope: !2538)
!2540 = !DILocation(line: 176, column: 5, scope: !2538)
!2541 = !DILocation(line: 177, column: 6, scope: !2525)
!2542 = !DILocation(line: 177, column: 17, scope: !2525)
!2543 = !{!2473, !973, i64 40}
!2544 = !DILocation(line: 178, column: 6, scope: !2525)
!2545 = !DILocation(line: 178, column: 18, scope: !2525)
!2546 = !{!2473, !973, i64 48}
!2547 = !DILocation(line: 179, column: 1, scope: !2525)
!2548 = !DISubprogram(name: "abort", scope: !1161, file: !1161, line: 598, type: !485, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !981)
!2549 = distinct !DISubprogram(name: "quotearg_buffer", scope: !549, file: !549, line: 774, type: !2550, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!140, !137, !140, !143, !140, !2465}
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2553 = !DILocalVariable(name: "buffer", arg: 1, scope: !2549, file: !549, line: 774, type: !137)
!2554 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2549, file: !549, line: 774, type: !140)
!2555 = !DILocalVariable(name: "arg", arg: 3, scope: !2549, file: !549, line: 775, type: !143)
!2556 = !DILocalVariable(name: "argsize", arg: 4, scope: !2549, file: !549, line: 775, type: !140)
!2557 = !DILocalVariable(name: "o", arg: 5, scope: !2549, file: !549, line: 776, type: !2465)
!2558 = !DILocalVariable(name: "p", scope: !2549, file: !549, line: 778, type: !2465)
!2559 = !DILocalVariable(name: "saved_errno", scope: !2549, file: !549, line: 779, type: !80)
!2560 = !DILocalVariable(name: "r", scope: !2549, file: !549, line: 780, type: !140)
!2561 = !DILocation(line: 0, scope: !2549)
!2562 = !DILocation(line: 778, column: 37, scope: !2549)
!2563 = !DILocation(line: 779, column: 21, scope: !2549)
!2564 = !DILocation(line: 781, column: 43, scope: !2549)
!2565 = !DILocation(line: 781, column: 53, scope: !2549)
!2566 = !DILocation(line: 781, column: 63, scope: !2549)
!2567 = !DILocation(line: 782, column: 43, scope: !2549)
!2568 = !DILocation(line: 782, column: 58, scope: !2549)
!2569 = !DILocation(line: 780, column: 14, scope: !2549)
!2570 = !DILocation(line: 783, column: 9, scope: !2549)
!2571 = !DILocation(line: 784, column: 3, scope: !2549)
!2572 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !549, file: !549, line: 251, type: !2573, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2577)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!140, !137, !140, !143, !140, !122, !80, !2575, !143, !143}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2602, !2604, !2607, !2608, !2609, !2610, !2613, !2614, !2617, !2621, !2622, !2630, !2633, !2634, !2636, !2637, !2638, !2639}
!2578 = !DILocalVariable(name: "buffer", arg: 1, scope: !2572, file: !549, line: 251, type: !137)
!2579 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2572, file: !549, line: 251, type: !140)
!2580 = !DILocalVariable(name: "arg", arg: 3, scope: !2572, file: !549, line: 252, type: !143)
!2581 = !DILocalVariable(name: "argsize", arg: 4, scope: !2572, file: !549, line: 252, type: !140)
!2582 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2572, file: !549, line: 253, type: !122)
!2583 = !DILocalVariable(name: "flags", arg: 6, scope: !2572, file: !549, line: 253, type: !80)
!2584 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2572, file: !549, line: 254, type: !2575)
!2585 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2572, file: !549, line: 255, type: !143)
!2586 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2572, file: !549, line: 256, type: !143)
!2587 = !DILocalVariable(name: "unibyte_locale", scope: !2572, file: !549, line: 258, type: !191)
!2588 = !DILocalVariable(name: "len", scope: !2572, file: !549, line: 260, type: !140)
!2589 = !DILocalVariable(name: "orig_buffersize", scope: !2572, file: !549, line: 261, type: !140)
!2590 = !DILocalVariable(name: "quote_string", scope: !2572, file: !549, line: 262, type: !143)
!2591 = !DILocalVariable(name: "quote_string_len", scope: !2572, file: !549, line: 263, type: !140)
!2592 = !DILocalVariable(name: "backslash_escapes", scope: !2572, file: !549, line: 264, type: !191)
!2593 = !DILocalVariable(name: "elide_outer_quotes", scope: !2572, file: !549, line: 265, type: !191)
!2594 = !DILocalVariable(name: "encountered_single_quote", scope: !2572, file: !549, line: 266, type: !191)
!2595 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2572, file: !549, line: 267, type: !191)
!2596 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2572, file: !549, line: 309, type: !191)
!2597 = !DILocalVariable(name: "lq", scope: !2598, file: !549, line: 361, type: !143)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !549, line: 361, column: 11)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !549, line: 360, column: 13)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !549, line: 333, column: 7)
!2601 = distinct !DILexicalBlock(scope: !2572, file: !549, line: 312, column: 5)
!2602 = !DILocalVariable(name: "i", scope: !2603, file: !549, line: 395, type: !140)
!2603 = distinct !DILexicalBlock(scope: !2572, file: !549, line: 395, column: 3)
!2604 = !DILocalVariable(name: "is_right_quote", scope: !2605, file: !549, line: 397, type: !191)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !549, line: 396, column: 5)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !549, line: 395, column: 3)
!2607 = !DILocalVariable(name: "escaping", scope: !2605, file: !549, line: 398, type: !191)
!2608 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2605, file: !549, line: 399, type: !191)
!2609 = !DILocalVariable(name: "c", scope: !2605, file: !549, line: 417, type: !145)
!2610 = !DILocalVariable(name: "m", scope: !2611, file: !549, line: 598, type: !140)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 596, column: 11)
!2612 = distinct !DILexicalBlock(scope: !2605, file: !549, line: 419, column: 9)
!2613 = !DILocalVariable(name: "printable", scope: !2611, file: !549, line: 600, type: !191)
!2614 = !DILocalVariable(name: "mbs", scope: !2615, file: !549, line: 609, type: !622)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !549, line: 608, column: 15)
!2616 = distinct !DILexicalBlock(scope: !2611, file: !549, line: 602, column: 17)
!2617 = !DILocalVariable(name: "w", scope: !2618, file: !549, line: 618, type: !529)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !549, line: 617, column: 19)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !549, line: 616, column: 17)
!2620 = distinct !DILexicalBlock(scope: !2615, file: !549, line: 616, column: 17)
!2621 = !DILocalVariable(name: "bytes", scope: !2618, file: !549, line: 619, type: !140)
!2622 = !DILocalVariable(name: "j", scope: !2623, file: !549, line: 648, type: !140)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !549, line: 648, column: 29)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !549, line: 647, column: 27)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !549, line: 645, column: 29)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !549, line: 636, column: 23)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !549, line: 628, column: 30)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !549, line: 623, column: 30)
!2629 = distinct !DILexicalBlock(scope: !2618, file: !549, line: 621, column: 25)
!2630 = !DILocalVariable(name: "ilim", scope: !2631, file: !549, line: 674, type: !140)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !549, line: 671, column: 15)
!2632 = distinct !DILexicalBlock(scope: !2611, file: !549, line: 670, column: 17)
!2633 = !DILabel(scope: !2572, name: "process_input", file: !549, line: 308)
!2634 = !DILabel(scope: !2635, name: "c_and_shell_escape", file: !549, line: 502)
!2635 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 478, column: 9)
!2636 = !DILabel(scope: !2635, name: "c_escape", file: !549, line: 507)
!2637 = !DILabel(scope: !2605, name: "store_escape", file: !549, line: 709)
!2638 = !DILabel(scope: !2605, name: "store_c", file: !549, line: 712)
!2639 = !DILabel(scope: !2572, name: "force_outer_quoting_style", file: !549, line: 753)
!2640 = !DILocation(line: 0, scope: !2572)
!2641 = !DILocation(line: 258, column: 25, scope: !2572)
!2642 = !DILocation(line: 258, column: 36, scope: !2572)
!2643 = !DILocation(line: 267, column: 3, scope: !2572)
!2644 = !DILocation(line: 261, column: 10, scope: !2572)
!2645 = !DILocation(line: 262, column: 15, scope: !2572)
!2646 = !DILocation(line: 263, column: 10, scope: !2572)
!2647 = !DILocation(line: 308, column: 2, scope: !2572)
!2648 = !DILocation(line: 311, column: 3, scope: !2572)
!2649 = !DILocation(line: 318, column: 11, scope: !2601)
!2650 = !DILocation(line: 319, column: 9, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !549, line: 319, column: 9)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !549, line: 319, column: 9)
!2653 = distinct !DILexicalBlock(scope: !2601, file: !549, line: 318, column: 11)
!2654 = !DILocation(line: 319, column: 9, scope: !2652)
!2655 = !DILocation(line: 0, scope: !613, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 357, column: 26, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !549, line: 335, column: 11)
!2658 = distinct !DILexicalBlock(scope: !2600, file: !549, line: 334, column: 13)
!2659 = !DILocation(line: 199, column: 29, scope: !613, inlinedAt: !2656)
!2660 = !DILocation(line: 201, column: 19, scope: !2661, inlinedAt: !2656)
!2661 = distinct !DILexicalBlock(scope: !613, file: !549, line: 201, column: 7)
!2662 = !DILocation(line: 201, column: 7, scope: !613, inlinedAt: !2656)
!2663 = !DILocation(line: 229, column: 3, scope: !613, inlinedAt: !2656)
!2664 = !DILocation(line: 230, column: 3, scope: !613, inlinedAt: !2656)
!2665 = !DILocation(line: 230, column: 13, scope: !613, inlinedAt: !2656)
!2666 = !DILocalVariable(name: "ps", arg: 1, scope: !2667, file: !2419, line: 1135, type: !2670)
!2667 = distinct !DISubprogram(name: "mbszero", scope: !2419, file: !2419, line: 1135, type: !2668, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2671)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!2671 = !{!2666}
!2672 = !DILocation(line: 0, scope: !2667, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 230, column: 18, scope: !613, inlinedAt: !2656)
!2674 = !DILocalVariable(name: "__dest", arg: 1, scope: !2675, file: !2428, line: 57, type: !138)
!2675 = distinct !DISubprogram(name: "memset", scope: !2428, file: !2428, line: 57, type: !2429, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2676)
!2676 = !{!2674, !2677, !2678}
!2677 = !DILocalVariable(name: "__ch", arg: 2, scope: !2675, file: !2428, line: 57, type: !80)
!2678 = !DILocalVariable(name: "__len", arg: 3, scope: !2675, file: !2428, line: 57, type: !140)
!2679 = !DILocation(line: 0, scope: !2675, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1137, column: 3, scope: !2667, inlinedAt: !2673)
!2681 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !2680)
!2682 = !DILocation(line: 231, column: 7, scope: !2683, inlinedAt: !2656)
!2683 = distinct !DILexicalBlock(scope: !613, file: !549, line: 231, column: 7)
!2684 = !DILocation(line: 231, column: 40, scope: !2683, inlinedAt: !2656)
!2685 = !DILocation(line: 231, column: 45, scope: !2683, inlinedAt: !2656)
!2686 = !DILocation(line: 235, column: 1, scope: !613, inlinedAt: !2656)
!2687 = !DILocation(line: 0, scope: !613, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 358, column: 27, scope: !2657)
!2689 = !DILocation(line: 199, column: 29, scope: !613, inlinedAt: !2688)
!2690 = !DILocation(line: 201, column: 19, scope: !2661, inlinedAt: !2688)
!2691 = !DILocation(line: 201, column: 7, scope: !613, inlinedAt: !2688)
!2692 = !DILocation(line: 229, column: 3, scope: !613, inlinedAt: !2688)
!2693 = !DILocation(line: 230, column: 3, scope: !613, inlinedAt: !2688)
!2694 = !DILocation(line: 230, column: 13, scope: !613, inlinedAt: !2688)
!2695 = !DILocation(line: 0, scope: !2667, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 230, column: 18, scope: !613, inlinedAt: !2688)
!2697 = !DILocation(line: 0, scope: !2675, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1137, column: 3, scope: !2667, inlinedAt: !2696)
!2699 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !2698)
!2700 = !DILocation(line: 231, column: 7, scope: !2683, inlinedAt: !2688)
!2701 = !DILocation(line: 231, column: 40, scope: !2683, inlinedAt: !2688)
!2702 = !DILocation(line: 231, column: 45, scope: !2683, inlinedAt: !2688)
!2703 = !DILocation(line: 235, column: 1, scope: !613, inlinedAt: !2688)
!2704 = !DILocation(line: 360, column: 13, scope: !2600)
!2705 = !DILocation(line: 0, scope: !2598)
!2706 = !DILocation(line: 361, column: 45, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2598, file: !549, line: 361, column: 11)
!2708 = !DILocation(line: 361, column: 11, scope: !2598)
!2709 = !DILocation(line: 362, column: 13, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !549, line: 362, column: 13)
!2711 = distinct !DILexicalBlock(scope: !2707, file: !549, line: 362, column: 13)
!2712 = !DILocation(line: 362, column: 13, scope: !2711)
!2713 = !DILocation(line: 361, column: 52, scope: !2707)
!2714 = distinct !{!2714, !2708, !2715, !1087}
!2715 = !DILocation(line: 362, column: 13, scope: !2598)
!2716 = !DILocation(line: 260, column: 10, scope: !2572)
!2717 = !DILocation(line: 365, column: 28, scope: !2600)
!2718 = !DILocation(line: 367, column: 7, scope: !2601)
!2719 = !DILocation(line: 370, column: 7, scope: !2601)
!2720 = !DILocation(line: 376, column: 11, scope: !2601)
!2721 = !DILocation(line: 381, column: 11, scope: !2601)
!2722 = !DILocation(line: 382, column: 9, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !549, line: 382, column: 9)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !549, line: 382, column: 9)
!2725 = distinct !DILexicalBlock(scope: !2601, file: !549, line: 381, column: 11)
!2726 = !DILocation(line: 382, column: 9, scope: !2724)
!2727 = !DILocation(line: 389, column: 7, scope: !2601)
!2728 = !DILocation(line: 392, column: 7, scope: !2601)
!2729 = !DILocation(line: 0, scope: !2603)
!2730 = !DILocation(line: 395, column: 8, scope: !2603)
!2731 = !DILocation(line: 395, scope: !2603)
!2732 = !DILocation(line: 395, column: 34, scope: !2606)
!2733 = !DILocation(line: 395, column: 26, scope: !2606)
!2734 = !DILocation(line: 395, column: 48, scope: !2606)
!2735 = !DILocation(line: 395, column: 55, scope: !2606)
!2736 = !DILocation(line: 395, column: 3, scope: !2603)
!2737 = !DILocation(line: 395, column: 67, scope: !2606)
!2738 = !DILocation(line: 0, scope: !2605)
!2739 = !DILocation(line: 402, column: 11, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2605, file: !549, line: 401, column: 11)
!2741 = !DILocation(line: 404, column: 17, scope: !2740)
!2742 = !DILocation(line: 405, column: 39, scope: !2740)
!2743 = !DILocation(line: 409, column: 32, scope: !2740)
!2744 = !DILocation(line: 405, column: 19, scope: !2740)
!2745 = !DILocation(line: 405, column: 15, scope: !2740)
!2746 = !DILocation(line: 410, column: 11, scope: !2740)
!2747 = !DILocation(line: 410, column: 25, scope: !2740)
!2748 = !DILocalVariable(name: "__s1", arg: 1, scope: !2749, file: !1053, line: 974, type: !1185)
!2749 = distinct !DISubprogram(name: "memeq", scope: !1053, file: !1053, line: 974, type: !2389, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2750)
!2750 = !{!2748, !2751, !2752}
!2751 = !DILocalVariable(name: "__s2", arg: 2, scope: !2749, file: !1053, line: 974, type: !1185)
!2752 = !DILocalVariable(name: "__n", arg: 3, scope: !2749, file: !1053, line: 974, type: !140)
!2753 = !DILocation(line: 0, scope: !2749, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 410, column: 14, scope: !2740)
!2755 = !DILocation(line: 976, column: 11, scope: !2749, inlinedAt: !2754)
!2756 = !DILocation(line: 976, column: 10, scope: !2749, inlinedAt: !2754)
!2757 = !DILocation(line: 401, column: 11, scope: !2605)
!2758 = !DILocation(line: 417, column: 25, scope: !2605)
!2759 = !DILocation(line: 418, column: 7, scope: !2605)
!2760 = !DILocation(line: 421, column: 15, scope: !2612)
!2761 = !DILocation(line: 423, column: 15, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !549, line: 423, column: 15)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !549, line: 422, column: 13)
!2764 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 421, column: 15)
!2765 = !DILocation(line: 423, column: 15, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !549, line: 423, column: 15)
!2767 = !DILocation(line: 423, column: 15, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !549, line: 423, column: 15)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !549, line: 423, column: 15)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !549, line: 423, column: 15)
!2771 = !DILocation(line: 423, column: 15, scope: !2769)
!2772 = !DILocation(line: 423, column: 15, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !549, line: 423, column: 15)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !549, line: 423, column: 15)
!2775 = !DILocation(line: 423, column: 15, scope: !2774)
!2776 = !DILocation(line: 423, column: 15, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !549, line: 423, column: 15)
!2778 = distinct !DILexicalBlock(scope: !2770, file: !549, line: 423, column: 15)
!2779 = !DILocation(line: 423, column: 15, scope: !2778)
!2780 = !DILocation(line: 423, column: 15, scope: !2770)
!2781 = !DILocation(line: 423, column: 15, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !549, line: 423, column: 15)
!2783 = distinct !DILexicalBlock(scope: !2762, file: !549, line: 423, column: 15)
!2784 = !DILocation(line: 423, column: 15, scope: !2783)
!2785 = !DILocation(line: 431, column: 19, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2763, file: !549, line: 430, column: 19)
!2787 = !DILocation(line: 431, column: 24, scope: !2786)
!2788 = !DILocation(line: 431, column: 28, scope: !2786)
!2789 = !DILocation(line: 431, column: 38, scope: !2786)
!2790 = !DILocation(line: 431, column: 48, scope: !2786)
!2791 = !DILocation(line: 431, column: 59, scope: !2786)
!2792 = !DILocation(line: 433, column: 19, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !549, line: 433, column: 19)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !549, line: 433, column: 19)
!2795 = distinct !DILexicalBlock(scope: !2786, file: !549, line: 432, column: 17)
!2796 = !DILocation(line: 433, column: 19, scope: !2794)
!2797 = !DILocation(line: 434, column: 19, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !549, line: 434, column: 19)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !549, line: 434, column: 19)
!2800 = !DILocation(line: 434, column: 19, scope: !2799)
!2801 = !DILocation(line: 435, column: 17, scope: !2795)
!2802 = !DILocation(line: 442, column: 20, scope: !2764)
!2803 = !DILocation(line: 447, column: 11, scope: !2612)
!2804 = !DILocation(line: 450, column: 19, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 448, column: 13)
!2806 = !DILocation(line: 456, column: 19, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2805, file: !549, line: 455, column: 19)
!2808 = !DILocation(line: 456, column: 24, scope: !2807)
!2809 = !DILocation(line: 456, column: 28, scope: !2807)
!2810 = !DILocation(line: 456, column: 38, scope: !2807)
!2811 = !DILocation(line: 456, column: 47, scope: !2807)
!2812 = !DILocation(line: 456, column: 41, scope: !2807)
!2813 = !DILocation(line: 456, column: 52, scope: !2807)
!2814 = !DILocation(line: 455, column: 19, scope: !2805)
!2815 = !DILocation(line: 457, column: 25, scope: !2807)
!2816 = !DILocation(line: 457, column: 17, scope: !2807)
!2817 = !DILocation(line: 464, column: 25, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2807, file: !549, line: 458, column: 19)
!2819 = !DILocation(line: 468, column: 21, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !549, line: 468, column: 21)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !549, line: 468, column: 21)
!2822 = !DILocation(line: 468, column: 21, scope: !2821)
!2823 = !DILocation(line: 469, column: 21, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !549, line: 469, column: 21)
!2825 = distinct !DILexicalBlock(scope: !2818, file: !549, line: 469, column: 21)
!2826 = !DILocation(line: 469, column: 21, scope: !2825)
!2827 = !DILocation(line: 470, column: 21, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !549, line: 470, column: 21)
!2829 = distinct !DILexicalBlock(scope: !2818, file: !549, line: 470, column: 21)
!2830 = !DILocation(line: 470, column: 21, scope: !2829)
!2831 = !DILocation(line: 471, column: 21, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !549, line: 471, column: 21)
!2833 = distinct !DILexicalBlock(scope: !2818, file: !549, line: 471, column: 21)
!2834 = !DILocation(line: 471, column: 21, scope: !2833)
!2835 = !DILocation(line: 472, column: 21, scope: !2818)
!2836 = !DILocation(line: 482, column: 33, scope: !2635)
!2837 = !DILocation(line: 483, column: 33, scope: !2635)
!2838 = !DILocation(line: 485, column: 33, scope: !2635)
!2839 = !DILocation(line: 486, column: 33, scope: !2635)
!2840 = !DILocation(line: 487, column: 33, scope: !2635)
!2841 = !DILocation(line: 490, column: 17, scope: !2635)
!2842 = !DILocation(line: 492, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !549, line: 491, column: 15)
!2844 = distinct !DILexicalBlock(scope: !2635, file: !549, line: 490, column: 17)
!2845 = !DILocation(line: 499, column: 35, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2635, file: !549, line: 499, column: 17)
!2847 = !DILocation(line: 0, scope: !2635)
!2848 = !DILocation(line: 502, column: 11, scope: !2635)
!2849 = !DILocation(line: 504, column: 17, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2635, file: !549, line: 503, column: 17)
!2851 = !DILocation(line: 507, column: 11, scope: !2635)
!2852 = !DILocation(line: 508, column: 17, scope: !2635)
!2853 = !DILocation(line: 517, column: 15, scope: !2612)
!2854 = !DILocation(line: 517, column: 40, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 517, column: 15)
!2856 = !DILocation(line: 517, column: 47, scope: !2855)
!2857 = !DILocation(line: 517, column: 18, scope: !2855)
!2858 = !DILocation(line: 521, column: 17, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 521, column: 15)
!2860 = !DILocation(line: 521, column: 15, scope: !2612)
!2861 = !DILocation(line: 525, column: 11, scope: !2612)
!2862 = !DILocation(line: 537, column: 15, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 536, column: 15)
!2864 = !DILocation(line: 536, column: 15, scope: !2612)
!2865 = !DILocation(line: 544, column: 15, scope: !2612)
!2866 = !DILocation(line: 546, column: 19, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !549, line: 545, column: 13)
!2868 = distinct !DILexicalBlock(scope: !2612, file: !549, line: 544, column: 15)
!2869 = !DILocation(line: 549, column: 19, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !549, line: 549, column: 19)
!2871 = !DILocation(line: 549, column: 30, scope: !2870)
!2872 = !DILocation(line: 558, column: 15, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !549, line: 558, column: 15)
!2874 = distinct !DILexicalBlock(scope: !2867, file: !549, line: 558, column: 15)
!2875 = !DILocation(line: 558, column: 15, scope: !2874)
!2876 = !DILocation(line: 559, column: 15, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !549, line: 559, column: 15)
!2878 = distinct !DILexicalBlock(scope: !2867, file: !549, line: 559, column: 15)
!2879 = !DILocation(line: 559, column: 15, scope: !2878)
!2880 = !DILocation(line: 560, column: 15, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !549, line: 560, column: 15)
!2882 = distinct !DILexicalBlock(scope: !2867, file: !549, line: 560, column: 15)
!2883 = !DILocation(line: 560, column: 15, scope: !2882)
!2884 = !DILocation(line: 562, column: 13, scope: !2867)
!2885 = !DILocation(line: 602, column: 17, scope: !2611)
!2886 = !DILocation(line: 0, scope: !2611)
!2887 = !DILocation(line: 605, column: 29, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2616, file: !549, line: 603, column: 15)
!2889 = !DILocation(line: 605, column: 41, scope: !2888)
!2890 = !DILocation(line: 606, column: 15, scope: !2888)
!2891 = !DILocation(line: 609, column: 17, scope: !2615)
!2892 = !DILocation(line: 609, column: 27, scope: !2615)
!2893 = !DILocation(line: 0, scope: !2667, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 609, column: 32, scope: !2615)
!2895 = !DILocation(line: 0, scope: !2675, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 1137, column: 3, scope: !2667, inlinedAt: !2894)
!2897 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !2896)
!2898 = !DILocation(line: 613, column: 29, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2615, file: !549, line: 613, column: 21)
!2900 = !DILocation(line: 613, column: 21, scope: !2615)
!2901 = !DILocation(line: 614, column: 29, scope: !2899)
!2902 = !DILocation(line: 614, column: 19, scope: !2899)
!2903 = !DILocation(line: 618, column: 21, scope: !2618)
!2904 = !DILocation(line: 620, column: 54, scope: !2618)
!2905 = !DILocation(line: 0, scope: !2618)
!2906 = !DILocation(line: 619, column: 36, scope: !2618)
!2907 = !DILocation(line: 621, column: 25, scope: !2618)
!2908 = !DILocation(line: 631, column: 38, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2627, file: !549, line: 629, column: 23)
!2910 = !DILocation(line: 631, column: 48, scope: !2909)
!2911 = !DILocation(line: 626, column: 25, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2628, file: !549, line: 624, column: 23)
!2913 = !DILocation(line: 631, column: 51, scope: !2909)
!2914 = !DILocation(line: 631, column: 25, scope: !2909)
!2915 = !DILocation(line: 632, column: 28, scope: !2909)
!2916 = !DILocation(line: 631, column: 34, scope: !2909)
!2917 = distinct !{!2917, !2914, !2915, !1087}
!2918 = !DILocation(line: 646, column: 29, scope: !2625)
!2919 = !DILocation(line: 0, scope: !2623)
!2920 = !DILocation(line: 649, column: 49, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2623, file: !549, line: 648, column: 29)
!2922 = !DILocation(line: 649, column: 39, scope: !2921)
!2923 = !DILocation(line: 649, column: 31, scope: !2921)
!2924 = !DILocation(line: 648, column: 60, scope: !2921)
!2925 = !DILocation(line: 648, column: 50, scope: !2921)
!2926 = !DILocation(line: 648, column: 29, scope: !2623)
!2927 = distinct !{!2927, !2926, !2928, !1087}
!2928 = !DILocation(line: 654, column: 33, scope: !2623)
!2929 = !DILocation(line: 657, column: 43, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2626, file: !549, line: 657, column: 29)
!2931 = !DILocalVariable(name: "wc", arg: 1, scope: !2932, file: !2933, line: 865, type: !2936)
!2932 = distinct !DISubprogram(name: "c32isprint", scope: !2933, file: !2933, line: 865, type: !2934, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !2938)
!2933 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!80, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2937, line: 20, baseType: !99)
!2937 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2938 = !{!2931}
!2939 = !DILocation(line: 0, scope: !2932, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 657, column: 31, scope: !2930)
!2941 = !DILocation(line: 871, column: 10, scope: !2932, inlinedAt: !2940)
!2942 = !DILocation(line: 657, column: 31, scope: !2930)
!2943 = !DILocation(line: 664, column: 23, scope: !2618)
!2944 = !DILocation(line: 665, column: 19, scope: !2619)
!2945 = !DILocation(line: 666, column: 15, scope: !2616)
!2946 = !DILocation(line: 753, column: 2, scope: !2572)
!2947 = !DILocation(line: 756, column: 51, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2572, file: !549, line: 756, column: 7)
!2949 = !DILocation(line: 0, scope: !2616)
!2950 = !DILocation(line: 670, column: 19, scope: !2632)
!2951 = !DILocation(line: 670, column: 23, scope: !2632)
!2952 = !DILocation(line: 674, column: 33, scope: !2631)
!2953 = !DILocation(line: 0, scope: !2631)
!2954 = !DILocation(line: 676, column: 17, scope: !2631)
!2955 = !DILocation(line: 398, column: 12, scope: !2605)
!2956 = !DILocation(line: 678, column: 43, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !549, line: 678, column: 25)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !549, line: 677, column: 19)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !549, line: 676, column: 17)
!2960 = distinct !DILexicalBlock(scope: !2631, file: !549, line: 676, column: 17)
!2961 = !DILocation(line: 680, column: 25, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !549, line: 680, column: 25)
!2963 = distinct !DILexicalBlock(scope: !2957, file: !549, line: 679, column: 23)
!2964 = !DILocation(line: 680, column: 25, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !549, line: 680, column: 25)
!2966 = !DILocation(line: 680, column: 25, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !549, line: 680, column: 25)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !549, line: 680, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !549, line: 680, column: 25)
!2970 = !DILocation(line: 680, column: 25, scope: !2968)
!2971 = !DILocation(line: 680, column: 25, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !549, line: 680, column: 25)
!2973 = distinct !DILexicalBlock(scope: !2969, file: !549, line: 680, column: 25)
!2974 = !DILocation(line: 680, column: 25, scope: !2973)
!2975 = !DILocation(line: 680, column: 25, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !549, line: 680, column: 25)
!2977 = distinct !DILexicalBlock(scope: !2969, file: !549, line: 680, column: 25)
!2978 = !DILocation(line: 680, column: 25, scope: !2977)
!2979 = !DILocation(line: 680, column: 25, scope: !2969)
!2980 = !DILocation(line: 680, column: 25, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !549, line: 680, column: 25)
!2982 = distinct !DILexicalBlock(scope: !2962, file: !549, line: 680, column: 25)
!2983 = !DILocation(line: 680, column: 25, scope: !2982)
!2984 = !DILocation(line: 681, column: 25, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !549, line: 681, column: 25)
!2986 = distinct !DILexicalBlock(scope: !2963, file: !549, line: 681, column: 25)
!2987 = !DILocation(line: 681, column: 25, scope: !2986)
!2988 = !DILocation(line: 682, column: 25, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !549, line: 682, column: 25)
!2990 = distinct !DILexicalBlock(scope: !2963, file: !549, line: 682, column: 25)
!2991 = !DILocation(line: 682, column: 25, scope: !2990)
!2992 = !DILocation(line: 683, column: 38, scope: !2963)
!2993 = !DILocation(line: 683, column: 33, scope: !2963)
!2994 = !DILocation(line: 684, column: 23, scope: !2963)
!2995 = !DILocation(line: 685, column: 30, scope: !2957)
!2996 = !DILocation(line: 687, column: 25, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !549, line: 687, column: 25)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !549, line: 687, column: 25)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !549, line: 686, column: 23)
!3000 = distinct !DILexicalBlock(scope: !2957, file: !549, line: 685, column: 30)
!3001 = !DILocation(line: 687, column: 25, scope: !2998)
!3002 = !DILocation(line: 689, column: 23, scope: !2999)
!3003 = !DILocation(line: 690, column: 35, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2958, file: !549, line: 690, column: 25)
!3005 = !DILocation(line: 690, column: 30, scope: !3004)
!3006 = !DILocation(line: 690, column: 25, scope: !2958)
!3007 = !DILocation(line: 692, column: 21, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !549, line: 692, column: 21)
!3009 = distinct !DILexicalBlock(scope: !2958, file: !549, line: 692, column: 21)
!3010 = !DILocation(line: 692, column: 21, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !549, line: 692, column: 21)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !549, line: 692, column: 21)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !549, line: 692, column: 21)
!3014 = !DILocation(line: 692, column: 21, scope: !3012)
!3015 = !DILocation(line: 692, column: 21, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !549, line: 692, column: 21)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !549, line: 692, column: 21)
!3018 = !DILocation(line: 692, column: 21, scope: !3017)
!3019 = !DILocation(line: 692, column: 21, scope: !3013)
!3020 = !DILocation(line: 0, scope: !2958)
!3021 = !DILocation(line: 693, column: 21, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !549, line: 693, column: 21)
!3023 = distinct !DILexicalBlock(scope: !2958, file: !549, line: 693, column: 21)
!3024 = !DILocation(line: 693, column: 21, scope: !3023)
!3025 = !DILocation(line: 694, column: 25, scope: !2958)
!3026 = !DILocation(line: 676, column: 17, scope: !2959)
!3027 = distinct !{!3027, !3028, !3029}
!3028 = !DILocation(line: 676, column: 17, scope: !2960)
!3029 = !DILocation(line: 695, column: 19, scope: !2960)
!3030 = !DILocation(line: 409, column: 30, scope: !2740)
!3031 = !DILocation(line: 702, column: 34, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2605, file: !549, line: 702, column: 11)
!3033 = !DILocation(line: 704, column: 14, scope: !3032)
!3034 = !DILocation(line: 705, column: 14, scope: !3032)
!3035 = !DILocation(line: 705, column: 35, scope: !3032)
!3036 = !DILocation(line: 705, column: 17, scope: !3032)
!3037 = !DILocation(line: 705, column: 47, scope: !3032)
!3038 = !DILocation(line: 705, column: 65, scope: !3032)
!3039 = !DILocation(line: 706, column: 11, scope: !3032)
!3040 = !DILocation(line: 702, column: 11, scope: !2605)
!3041 = !DILocation(line: 395, column: 15, scope: !2603)
!3042 = !DILocation(line: 709, column: 5, scope: !2605)
!3043 = !DILocation(line: 710, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2605, file: !549, line: 710, column: 7)
!3045 = !DILocation(line: 710, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3044, file: !549, line: 710, column: 7)
!3047 = !DILocation(line: 710, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !549, line: 710, column: 7)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !549, line: 710, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !549, line: 710, column: 7)
!3051 = !DILocation(line: 710, column: 7, scope: !3049)
!3052 = !DILocation(line: 710, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !549, line: 710, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !549, line: 710, column: 7)
!3055 = !DILocation(line: 710, column: 7, scope: !3054)
!3056 = !DILocation(line: 710, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !549, line: 710, column: 7)
!3058 = distinct !DILexicalBlock(scope: !3050, file: !549, line: 710, column: 7)
!3059 = !DILocation(line: 710, column: 7, scope: !3058)
!3060 = !DILocation(line: 710, column: 7, scope: !3050)
!3061 = !DILocation(line: 710, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !549, line: 710, column: 7)
!3063 = distinct !DILexicalBlock(scope: !3044, file: !549, line: 710, column: 7)
!3064 = !DILocation(line: 710, column: 7, scope: !3063)
!3065 = !DILocation(line: 712, column: 5, scope: !2605)
!3066 = !DILocation(line: 713, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !549, line: 713, column: 7)
!3068 = distinct !DILexicalBlock(scope: !2605, file: !549, line: 713, column: 7)
!3069 = !DILocation(line: 417, column: 21, scope: !2605)
!3070 = !DILocation(line: 713, column: 7, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !549, line: 713, column: 7)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !549, line: 713, column: 7)
!3073 = distinct !DILexicalBlock(scope: !3067, file: !549, line: 713, column: 7)
!3074 = !DILocation(line: 713, column: 7, scope: !3072)
!3075 = !DILocation(line: 713, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !549, line: 713, column: 7)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !549, line: 713, column: 7)
!3078 = !DILocation(line: 713, column: 7, scope: !3077)
!3079 = !DILocation(line: 713, column: 7, scope: !3073)
!3080 = !DILocation(line: 714, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !549, line: 714, column: 7)
!3082 = distinct !DILexicalBlock(scope: !2605, file: !549, line: 714, column: 7)
!3083 = !DILocation(line: 714, column: 7, scope: !3082)
!3084 = !DILocation(line: 716, column: 11, scope: !2605)
!3085 = !DILocation(line: 718, column: 5, scope: !2606)
!3086 = !DILocation(line: 395, column: 82, scope: !2606)
!3087 = !DILocation(line: 395, column: 3, scope: !2606)
!3088 = distinct !{!3088, !2736, !3089, !1087}
!3089 = !DILocation(line: 718, column: 5, scope: !2603)
!3090 = !DILocation(line: 720, column: 11, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !2572, file: !549, line: 720, column: 7)
!3092 = !DILocation(line: 720, column: 16, scope: !3091)
!3093 = !DILocation(line: 728, column: 51, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2572, file: !549, line: 728, column: 7)
!3095 = !DILocation(line: 731, column: 11, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3094, file: !549, line: 730, column: 5)
!3097 = !DILocation(line: 732, column: 16, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3096, file: !549, line: 731, column: 11)
!3099 = !DILocation(line: 732, column: 9, scope: !3098)
!3100 = !DILocation(line: 736, column: 18, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !549, line: 736, column: 16)
!3102 = !DILocation(line: 736, column: 29, scope: !3101)
!3103 = !DILocation(line: 745, column: 7, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !2572, file: !549, line: 745, column: 7)
!3105 = !DILocation(line: 745, column: 20, scope: !3104)
!3106 = !DILocation(line: 746, column: 12, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !549, line: 746, column: 5)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !549, line: 746, column: 5)
!3109 = !DILocation(line: 746, column: 5, scope: !3108)
!3110 = !DILocation(line: 747, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !549, line: 747, column: 7)
!3112 = distinct !DILexicalBlock(scope: !3107, file: !549, line: 747, column: 7)
!3113 = !DILocation(line: 747, column: 7, scope: !3112)
!3114 = !DILocation(line: 746, column: 39, scope: !3107)
!3115 = distinct !{!3115, !3109, !3116, !1087}
!3116 = !DILocation(line: 747, column: 7, scope: !3108)
!3117 = !DILocation(line: 749, column: 11, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !2572, file: !549, line: 749, column: 7)
!3119 = !DILocation(line: 749, column: 7, scope: !2572)
!3120 = !DILocation(line: 750, column: 5, scope: !3118)
!3121 = !DILocation(line: 750, column: 17, scope: !3118)
!3122 = !DILocation(line: 756, column: 21, scope: !2948)
!3123 = !DILocation(line: 760, column: 42, scope: !2572)
!3124 = !DILocation(line: 758, column: 10, scope: !2572)
!3125 = !DILocation(line: 758, column: 3, scope: !2572)
!3126 = !DILocation(line: 762, column: 1, scope: !2572)
!3127 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1161, file: !1161, line: 98, type: !3128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!140}
!3130 = !DISubprogram(name: "strlen", scope: !1157, file: !1157, line: 407, type: !3131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!142, !143}
!3133 = !DISubprogram(name: "iswprint", scope: !3134, file: !3134, line: 120, type: !2934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3134 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3135 = distinct !DISubprogram(name: "quotearg_alloc", scope: !549, file: !549, line: 788, type: !3136, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!137, !143, !140, !2465}
!3138 = !{!3139, !3140, !3141}
!3139 = !DILocalVariable(name: "arg", arg: 1, scope: !3135, file: !549, line: 788, type: !143)
!3140 = !DILocalVariable(name: "argsize", arg: 2, scope: !3135, file: !549, line: 788, type: !140)
!3141 = !DILocalVariable(name: "o", arg: 3, scope: !3135, file: !549, line: 789, type: !2465)
!3142 = !DILocation(line: 0, scope: !3135)
!3143 = !DILocalVariable(name: "arg", arg: 1, scope: !3144, file: !549, line: 801, type: !143)
!3144 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !549, file: !549, line: 801, type: !3145, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!137, !143, !140, !883, !2465}
!3147 = !{!3143, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155}
!3148 = !DILocalVariable(name: "argsize", arg: 2, scope: !3144, file: !549, line: 801, type: !140)
!3149 = !DILocalVariable(name: "size", arg: 3, scope: !3144, file: !549, line: 801, type: !883)
!3150 = !DILocalVariable(name: "o", arg: 4, scope: !3144, file: !549, line: 802, type: !2465)
!3151 = !DILocalVariable(name: "p", scope: !3144, file: !549, line: 804, type: !2465)
!3152 = !DILocalVariable(name: "saved_errno", scope: !3144, file: !549, line: 805, type: !80)
!3153 = !DILocalVariable(name: "flags", scope: !3144, file: !549, line: 807, type: !80)
!3154 = !DILocalVariable(name: "bufsize", scope: !3144, file: !549, line: 808, type: !140)
!3155 = !DILocalVariable(name: "buf", scope: !3144, file: !549, line: 812, type: !137)
!3156 = !DILocation(line: 0, scope: !3144, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 791, column: 10, scope: !3135)
!3158 = !DILocation(line: 804, column: 37, scope: !3144, inlinedAt: !3157)
!3159 = !DILocation(line: 805, column: 21, scope: !3144, inlinedAt: !3157)
!3160 = !DILocation(line: 807, column: 18, scope: !3144, inlinedAt: !3157)
!3161 = !DILocation(line: 807, column: 24, scope: !3144, inlinedAt: !3157)
!3162 = !DILocation(line: 808, column: 72, scope: !3144, inlinedAt: !3157)
!3163 = !DILocation(line: 809, column: 56, scope: !3144, inlinedAt: !3157)
!3164 = !DILocation(line: 810, column: 49, scope: !3144, inlinedAt: !3157)
!3165 = !DILocation(line: 811, column: 49, scope: !3144, inlinedAt: !3157)
!3166 = !DILocation(line: 808, column: 20, scope: !3144, inlinedAt: !3157)
!3167 = !DILocation(line: 811, column: 62, scope: !3144, inlinedAt: !3157)
!3168 = !DILocation(line: 812, column: 15, scope: !3144, inlinedAt: !3157)
!3169 = !DILocation(line: 813, column: 60, scope: !3144, inlinedAt: !3157)
!3170 = !DILocation(line: 815, column: 32, scope: !3144, inlinedAt: !3157)
!3171 = !DILocation(line: 815, column: 47, scope: !3144, inlinedAt: !3157)
!3172 = !DILocation(line: 813, column: 3, scope: !3144, inlinedAt: !3157)
!3173 = !DILocation(line: 816, column: 9, scope: !3144, inlinedAt: !3157)
!3174 = !DILocation(line: 791, column: 3, scope: !3135)
!3175 = !DILocation(line: 0, scope: !3144)
!3176 = !DILocation(line: 804, column: 37, scope: !3144)
!3177 = !DILocation(line: 805, column: 21, scope: !3144)
!3178 = !DILocation(line: 807, column: 18, scope: !3144)
!3179 = !DILocation(line: 807, column: 27, scope: !3144)
!3180 = !DILocation(line: 807, column: 24, scope: !3144)
!3181 = !DILocation(line: 808, column: 72, scope: !3144)
!3182 = !DILocation(line: 809, column: 56, scope: !3144)
!3183 = !DILocation(line: 810, column: 49, scope: !3144)
!3184 = !DILocation(line: 811, column: 49, scope: !3144)
!3185 = !DILocation(line: 808, column: 20, scope: !3144)
!3186 = !DILocation(line: 811, column: 62, scope: !3144)
!3187 = !DILocation(line: 812, column: 15, scope: !3144)
!3188 = !DILocation(line: 813, column: 60, scope: !3144)
!3189 = !DILocation(line: 815, column: 32, scope: !3144)
!3190 = !DILocation(line: 815, column: 47, scope: !3144)
!3191 = !DILocation(line: 813, column: 3, scope: !3144)
!3192 = !DILocation(line: 816, column: 9, scope: !3144)
!3193 = !DILocation(line: 817, column: 7, scope: !3144)
!3194 = !DILocation(line: 818, column: 11, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3144, file: !549, line: 817, column: 7)
!3196 = !{!1552, !1552, i64 0}
!3197 = !DILocation(line: 818, column: 5, scope: !3195)
!3198 = !DILocation(line: 819, column: 3, scope: !3144)
!3199 = distinct !DISubprogram(name: "quotearg_free", scope: !549, file: !549, line: 837, type: !485, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3200)
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "sv", scope: !3199, file: !549, line: 839, type: !636)
!3202 = !DILocalVariable(name: "i", scope: !3203, file: !549, line: 840, type: !80)
!3203 = distinct !DILexicalBlock(scope: !3199, file: !549, line: 840, column: 3)
!3204 = !DILocation(line: 839, column: 24, scope: !3199)
!3205 = !DILocation(line: 0, scope: !3199)
!3206 = !DILocation(line: 0, scope: !3203)
!3207 = !DILocation(line: 840, column: 21, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3203, file: !549, line: 840, column: 3)
!3209 = !DILocation(line: 840, column: 3, scope: !3203)
!3210 = !DILocation(line: 842, column: 13, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3199, file: !549, line: 842, column: 7)
!3212 = !{!3213, !973, i64 8}
!3213 = !{!"slotvec", !1552, i64 0, !973, i64 8}
!3214 = !DILocation(line: 842, column: 17, scope: !3211)
!3215 = !DILocation(line: 842, column: 7, scope: !3199)
!3216 = !DILocation(line: 841, column: 17, scope: !3208)
!3217 = !DILocation(line: 841, column: 5, scope: !3208)
!3218 = !DILocation(line: 840, column: 32, scope: !3208)
!3219 = distinct !{!3219, !3209, !3220, !1087}
!3220 = !DILocation(line: 841, column: 20, scope: !3203)
!3221 = !DILocation(line: 844, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3211, file: !549, line: 843, column: 5)
!3223 = !DILocation(line: 845, column: 21, scope: !3222)
!3224 = !{!3213, !1552, i64 0}
!3225 = !DILocation(line: 846, column: 20, scope: !3222)
!3226 = !DILocation(line: 847, column: 5, scope: !3222)
!3227 = !DILocation(line: 848, column: 10, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3199, file: !549, line: 848, column: 7)
!3229 = !DILocation(line: 848, column: 7, scope: !3199)
!3230 = !DILocation(line: 850, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !549, line: 849, column: 5)
!3232 = !DILocation(line: 851, column: 15, scope: !3231)
!3233 = !DILocation(line: 852, column: 5, scope: !3231)
!3234 = !DILocation(line: 853, column: 10, scope: !3199)
!3235 = !DILocation(line: 854, column: 1, scope: !3199)
!3236 = distinct !DISubprogram(name: "quotearg_n", scope: !549, file: !549, line: 919, type: !1154, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3237)
!3237 = !{!3238, !3239}
!3238 = !DILocalVariable(name: "n", arg: 1, scope: !3236, file: !549, line: 919, type: !80)
!3239 = !DILocalVariable(name: "arg", arg: 2, scope: !3236, file: !549, line: 919, type: !143)
!3240 = !DILocation(line: 0, scope: !3236)
!3241 = !DILocation(line: 921, column: 10, scope: !3236)
!3242 = !DILocation(line: 921, column: 3, scope: !3236)
!3243 = distinct !DISubprogram(name: "quotearg_n_options", scope: !549, file: !549, line: 866, type: !3244, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!137, !80, !143, !140, !2465}
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3257, !3258, !3260, !3261, !3262}
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !549, line: 866, type: !80)
!3248 = !DILocalVariable(name: "arg", arg: 2, scope: !3243, file: !549, line: 866, type: !143)
!3249 = !DILocalVariable(name: "argsize", arg: 3, scope: !3243, file: !549, line: 866, type: !140)
!3250 = !DILocalVariable(name: "options", arg: 4, scope: !3243, file: !549, line: 867, type: !2465)
!3251 = !DILocalVariable(name: "saved_errno", scope: !3243, file: !549, line: 869, type: !80)
!3252 = !DILocalVariable(name: "sv", scope: !3243, file: !549, line: 871, type: !636)
!3253 = !DILocalVariable(name: "nslots_max", scope: !3243, file: !549, line: 873, type: !80)
!3254 = !DILocalVariable(name: "preallocated", scope: !3255, file: !549, line: 879, type: !191)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !549, line: 878, column: 5)
!3256 = distinct !DILexicalBlock(scope: !3243, file: !549, line: 877, column: 7)
!3257 = !DILocalVariable(name: "new_nslots", scope: !3255, file: !549, line: 880, type: !896)
!3258 = !DILocalVariable(name: "size", scope: !3259, file: !549, line: 891, type: !140)
!3259 = distinct !DILexicalBlock(scope: !3243, file: !549, line: 890, column: 3)
!3260 = !DILocalVariable(name: "val", scope: !3259, file: !549, line: 892, type: !137)
!3261 = !DILocalVariable(name: "flags", scope: !3259, file: !549, line: 894, type: !80)
!3262 = !DILocalVariable(name: "qsize", scope: !3259, file: !549, line: 895, type: !140)
!3263 = !DILocation(line: 0, scope: !3243)
!3264 = !DILocation(line: 869, column: 21, scope: !3243)
!3265 = !DILocation(line: 871, column: 24, scope: !3243)
!3266 = !DILocation(line: 874, column: 17, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3243, file: !549, line: 874, column: 7)
!3268 = !DILocation(line: 875, column: 5, scope: !3267)
!3269 = !DILocation(line: 877, column: 7, scope: !3256)
!3270 = !DILocation(line: 877, column: 14, scope: !3256)
!3271 = !DILocation(line: 877, column: 7, scope: !3243)
!3272 = !DILocation(line: 879, column: 31, scope: !3255)
!3273 = !DILocation(line: 0, scope: !3255)
!3274 = !DILocation(line: 880, column: 7, scope: !3255)
!3275 = !DILocation(line: 880, column: 26, scope: !3255)
!3276 = !DILocation(line: 880, column: 13, scope: !3255)
!3277 = !DILocation(line: 882, column: 31, scope: !3255)
!3278 = !DILocation(line: 883, column: 33, scope: !3255)
!3279 = !DILocation(line: 883, column: 42, scope: !3255)
!3280 = !DILocation(line: 883, column: 31, scope: !3255)
!3281 = !DILocation(line: 882, column: 22, scope: !3255)
!3282 = !DILocation(line: 882, column: 15, scope: !3255)
!3283 = !DILocation(line: 884, column: 11, scope: !3255)
!3284 = !DILocation(line: 885, column: 15, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3255, file: !549, line: 884, column: 11)
!3286 = !{i64 0, i64 8, !3196, i64 8, i64 8, !972}
!3287 = !DILocation(line: 885, column: 9, scope: !3285)
!3288 = !DILocation(line: 886, column: 20, scope: !3255)
!3289 = !DILocation(line: 886, column: 18, scope: !3255)
!3290 = !DILocation(line: 886, column: 32, scope: !3255)
!3291 = !DILocation(line: 886, column: 43, scope: !3255)
!3292 = !DILocation(line: 886, column: 53, scope: !3255)
!3293 = !DILocation(line: 0, scope: !2675, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 886, column: 7, scope: !3255)
!3295 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !3294)
!3296 = !DILocation(line: 887, column: 16, scope: !3255)
!3297 = !DILocation(line: 887, column: 14, scope: !3255)
!3298 = !DILocation(line: 888, column: 5, scope: !3256)
!3299 = !DILocation(line: 888, column: 5, scope: !3255)
!3300 = !DILocation(line: 891, column: 19, scope: !3259)
!3301 = !DILocation(line: 891, column: 25, scope: !3259)
!3302 = !DILocation(line: 0, scope: !3259)
!3303 = !DILocation(line: 892, column: 23, scope: !3259)
!3304 = !DILocation(line: 894, column: 26, scope: !3259)
!3305 = !DILocation(line: 894, column: 32, scope: !3259)
!3306 = !DILocation(line: 896, column: 55, scope: !3259)
!3307 = !DILocation(line: 897, column: 55, scope: !3259)
!3308 = !DILocation(line: 898, column: 55, scope: !3259)
!3309 = !DILocation(line: 899, column: 55, scope: !3259)
!3310 = !DILocation(line: 895, column: 20, scope: !3259)
!3311 = !DILocation(line: 901, column: 14, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3259, file: !549, line: 901, column: 9)
!3313 = !DILocation(line: 901, column: 9, scope: !3259)
!3314 = !DILocation(line: 903, column: 35, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !549, line: 902, column: 7)
!3316 = !DILocation(line: 903, column: 20, scope: !3315)
!3317 = !DILocation(line: 904, column: 17, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !549, line: 904, column: 13)
!3319 = !DILocation(line: 904, column: 13, scope: !3315)
!3320 = !DILocation(line: 905, column: 11, scope: !3318)
!3321 = !DILocation(line: 906, column: 27, scope: !3315)
!3322 = !DILocation(line: 906, column: 19, scope: !3315)
!3323 = !DILocation(line: 907, column: 69, scope: !3315)
!3324 = !DILocation(line: 909, column: 44, scope: !3315)
!3325 = !DILocation(line: 910, column: 44, scope: !3315)
!3326 = !DILocation(line: 907, column: 9, scope: !3315)
!3327 = !DILocation(line: 911, column: 7, scope: !3315)
!3328 = !DILocation(line: 913, column: 11, scope: !3259)
!3329 = !DILocation(line: 914, column: 5, scope: !3259)
!3330 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !549, file: !549, line: 925, type: !3331, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!137, !80, !143, !140}
!3333 = !{!3334, !3335, !3336}
!3334 = !DILocalVariable(name: "n", arg: 1, scope: !3330, file: !549, line: 925, type: !80)
!3335 = !DILocalVariable(name: "arg", arg: 2, scope: !3330, file: !549, line: 925, type: !143)
!3336 = !DILocalVariable(name: "argsize", arg: 3, scope: !3330, file: !549, line: 925, type: !140)
!3337 = !DILocation(line: 0, scope: !3330)
!3338 = !DILocation(line: 927, column: 10, scope: !3330)
!3339 = !DILocation(line: 927, column: 3, scope: !3330)
!3340 = distinct !DISubprogram(name: "quotearg", scope: !549, file: !549, line: 931, type: !1163, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3341)
!3341 = !{!3342}
!3342 = !DILocalVariable(name: "arg", arg: 1, scope: !3340, file: !549, line: 931, type: !143)
!3343 = !DILocation(line: 0, scope: !3340)
!3344 = !DILocation(line: 0, scope: !3236, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 933, column: 10, scope: !3340)
!3346 = !DILocation(line: 921, column: 10, scope: !3236, inlinedAt: !3345)
!3347 = !DILocation(line: 933, column: 3, scope: !3340)
!3348 = distinct !DISubprogram(name: "quotearg_mem", scope: !549, file: !549, line: 937, type: !3349, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!137, !143, !140}
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "arg", arg: 1, scope: !3348, file: !549, line: 937, type: !143)
!3353 = !DILocalVariable(name: "argsize", arg: 2, scope: !3348, file: !549, line: 937, type: !140)
!3354 = !DILocation(line: 0, scope: !3348)
!3355 = !DILocation(line: 0, scope: !3330, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 939, column: 10, scope: !3348)
!3357 = !DILocation(line: 927, column: 10, scope: !3330, inlinedAt: !3356)
!3358 = !DILocation(line: 939, column: 3, scope: !3348)
!3359 = distinct !DISubprogram(name: "quotearg_n_style", scope: !549, file: !549, line: 943, type: !3360, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!137, !80, !122, !143}
!3362 = !{!3363, !3364, !3365, !3366}
!3363 = !DILocalVariable(name: "n", arg: 1, scope: !3359, file: !549, line: 943, type: !80)
!3364 = !DILocalVariable(name: "s", arg: 2, scope: !3359, file: !549, line: 943, type: !122)
!3365 = !DILocalVariable(name: "arg", arg: 3, scope: !3359, file: !549, line: 943, type: !143)
!3366 = !DILocalVariable(name: "o", scope: !3359, file: !549, line: 945, type: !2466)
!3367 = !DILocation(line: 0, scope: !3359)
!3368 = !DILocation(line: 945, column: 3, scope: !3359)
!3369 = !DILocation(line: 945, column: 32, scope: !3359)
!3370 = !{!3371}
!3371 = distinct !{!3371, !3372, !"quoting_options_from_style: argument 0"}
!3372 = distinct !{!3372, !"quoting_options_from_style"}
!3373 = !DILocation(line: 945, column: 36, scope: !3359)
!3374 = !DILocalVariable(name: "style", arg: 1, scope: !3375, file: !549, line: 183, type: !122)
!3375 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !549, file: !549, line: 183, type: !3376, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!588, !122}
!3378 = !{!3374, !3379}
!3379 = !DILocalVariable(name: "o", scope: !3375, file: !549, line: 185, type: !588)
!3380 = !DILocation(line: 0, scope: !3375, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 945, column: 36, scope: !3359)
!3382 = !DILocation(line: 185, column: 26, scope: !3375, inlinedAt: !3381)
!3383 = !DILocation(line: 186, column: 13, scope: !3384, inlinedAt: !3381)
!3384 = distinct !DILexicalBlock(scope: !3375, file: !549, line: 186, column: 7)
!3385 = !DILocation(line: 186, column: 7, scope: !3375, inlinedAt: !3381)
!3386 = !DILocation(line: 187, column: 5, scope: !3384, inlinedAt: !3381)
!3387 = !DILocation(line: 188, column: 11, scope: !3375, inlinedAt: !3381)
!3388 = !DILocation(line: 946, column: 10, scope: !3359)
!3389 = !DILocation(line: 947, column: 1, scope: !3359)
!3390 = !DILocation(line: 946, column: 3, scope: !3359)
!3391 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !549, file: !549, line: 950, type: !3392, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!137, !80, !122, !143, !140}
!3394 = !{!3395, !3396, !3397, !3398, !3399}
!3395 = !DILocalVariable(name: "n", arg: 1, scope: !3391, file: !549, line: 950, type: !80)
!3396 = !DILocalVariable(name: "s", arg: 2, scope: !3391, file: !549, line: 950, type: !122)
!3397 = !DILocalVariable(name: "arg", arg: 3, scope: !3391, file: !549, line: 951, type: !143)
!3398 = !DILocalVariable(name: "argsize", arg: 4, scope: !3391, file: !549, line: 951, type: !140)
!3399 = !DILocalVariable(name: "o", scope: !3391, file: !549, line: 953, type: !2466)
!3400 = !DILocation(line: 0, scope: !3391)
!3401 = !DILocation(line: 953, column: 3, scope: !3391)
!3402 = !DILocation(line: 953, column: 32, scope: !3391)
!3403 = !{!3404}
!3404 = distinct !{!3404, !3405, !"quoting_options_from_style: argument 0"}
!3405 = distinct !{!3405, !"quoting_options_from_style"}
!3406 = !DILocation(line: 953, column: 36, scope: !3391)
!3407 = !DILocation(line: 0, scope: !3375, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 953, column: 36, scope: !3391)
!3409 = !DILocation(line: 185, column: 26, scope: !3375, inlinedAt: !3408)
!3410 = !DILocation(line: 186, column: 13, scope: !3384, inlinedAt: !3408)
!3411 = !DILocation(line: 186, column: 7, scope: !3375, inlinedAt: !3408)
!3412 = !DILocation(line: 187, column: 5, scope: !3384, inlinedAt: !3408)
!3413 = !DILocation(line: 188, column: 11, scope: !3375, inlinedAt: !3408)
!3414 = !DILocation(line: 954, column: 10, scope: !3391)
!3415 = !DILocation(line: 955, column: 1, scope: !3391)
!3416 = !DILocation(line: 954, column: 3, scope: !3391)
!3417 = distinct !DISubprogram(name: "quotearg_style", scope: !549, file: !549, line: 958, type: !3418, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!137, !122, !143}
!3420 = !{!3421, !3422}
!3421 = !DILocalVariable(name: "s", arg: 1, scope: !3417, file: !549, line: 958, type: !122)
!3422 = !DILocalVariable(name: "arg", arg: 2, scope: !3417, file: !549, line: 958, type: !143)
!3423 = !DILocation(line: 0, scope: !3417)
!3424 = !DILocation(line: 0, scope: !3359, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 960, column: 10, scope: !3417)
!3426 = !DILocation(line: 945, column: 3, scope: !3359, inlinedAt: !3425)
!3427 = !DILocation(line: 945, column: 32, scope: !3359, inlinedAt: !3425)
!3428 = !{!3429}
!3429 = distinct !{!3429, !3430, !"quoting_options_from_style: argument 0"}
!3430 = distinct !{!3430, !"quoting_options_from_style"}
!3431 = !DILocation(line: 945, column: 36, scope: !3359, inlinedAt: !3425)
!3432 = !DILocation(line: 0, scope: !3375, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 945, column: 36, scope: !3359, inlinedAt: !3425)
!3434 = !DILocation(line: 185, column: 26, scope: !3375, inlinedAt: !3433)
!3435 = !DILocation(line: 186, column: 13, scope: !3384, inlinedAt: !3433)
!3436 = !DILocation(line: 186, column: 7, scope: !3375, inlinedAt: !3433)
!3437 = !DILocation(line: 187, column: 5, scope: !3384, inlinedAt: !3433)
!3438 = !DILocation(line: 188, column: 11, scope: !3375, inlinedAt: !3433)
!3439 = !DILocation(line: 946, column: 10, scope: !3359, inlinedAt: !3425)
!3440 = !DILocation(line: 947, column: 1, scope: !3359, inlinedAt: !3425)
!3441 = !DILocation(line: 960, column: 3, scope: !3417)
!3442 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !549, file: !549, line: 964, type: !3443, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!137, !122, !143, !140}
!3445 = !{!3446, !3447, !3448}
!3446 = !DILocalVariable(name: "s", arg: 1, scope: !3442, file: !549, line: 964, type: !122)
!3447 = !DILocalVariable(name: "arg", arg: 2, scope: !3442, file: !549, line: 964, type: !143)
!3448 = !DILocalVariable(name: "argsize", arg: 3, scope: !3442, file: !549, line: 964, type: !140)
!3449 = !DILocation(line: 0, scope: !3442)
!3450 = !DILocation(line: 0, scope: !3391, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 966, column: 10, scope: !3442)
!3452 = !DILocation(line: 953, column: 3, scope: !3391, inlinedAt: !3451)
!3453 = !DILocation(line: 953, column: 32, scope: !3391, inlinedAt: !3451)
!3454 = !{!3455}
!3455 = distinct !{!3455, !3456, !"quoting_options_from_style: argument 0"}
!3456 = distinct !{!3456, !"quoting_options_from_style"}
!3457 = !DILocation(line: 953, column: 36, scope: !3391, inlinedAt: !3451)
!3458 = !DILocation(line: 0, scope: !3375, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 953, column: 36, scope: !3391, inlinedAt: !3451)
!3460 = !DILocation(line: 185, column: 26, scope: !3375, inlinedAt: !3459)
!3461 = !DILocation(line: 186, column: 13, scope: !3384, inlinedAt: !3459)
!3462 = !DILocation(line: 186, column: 7, scope: !3375, inlinedAt: !3459)
!3463 = !DILocation(line: 187, column: 5, scope: !3384, inlinedAt: !3459)
!3464 = !DILocation(line: 188, column: 11, scope: !3375, inlinedAt: !3459)
!3465 = !DILocation(line: 954, column: 10, scope: !3391, inlinedAt: !3451)
!3466 = !DILocation(line: 955, column: 1, scope: !3391, inlinedAt: !3451)
!3467 = !DILocation(line: 966, column: 3, scope: !3442)
!3468 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !549, file: !549, line: 970, type: !3469, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!137, !143, !140, !4}
!3471 = !{!3472, !3473, !3474, !3475}
!3472 = !DILocalVariable(name: "arg", arg: 1, scope: !3468, file: !549, line: 970, type: !143)
!3473 = !DILocalVariable(name: "argsize", arg: 2, scope: !3468, file: !549, line: 970, type: !140)
!3474 = !DILocalVariable(name: "ch", arg: 3, scope: !3468, file: !549, line: 970, type: !4)
!3475 = !DILocalVariable(name: "options", scope: !3468, file: !549, line: 972, type: !588)
!3476 = !DILocation(line: 0, scope: !3468)
!3477 = !DILocation(line: 972, column: 3, scope: !3468)
!3478 = !DILocation(line: 972, column: 26, scope: !3468)
!3479 = !DILocation(line: 973, column: 13, scope: !3468)
!3480 = !{i64 0, i64 4, !1049, i64 4, i64 4, !1040, i64 8, i64 32, !1049, i64 40, i64 8, !972, i64 48, i64 8, !972}
!3481 = !DILocation(line: 0, scope: !2485, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 974, column: 3, scope: !3468)
!3483 = !DILocation(line: 147, column: 41, scope: !2485, inlinedAt: !3482)
!3484 = !DILocation(line: 147, column: 62, scope: !2485, inlinedAt: !3482)
!3485 = !DILocation(line: 147, column: 57, scope: !2485, inlinedAt: !3482)
!3486 = !DILocation(line: 148, column: 15, scope: !2485, inlinedAt: !3482)
!3487 = !DILocation(line: 149, column: 21, scope: !2485, inlinedAt: !3482)
!3488 = !DILocation(line: 149, column: 24, scope: !2485, inlinedAt: !3482)
!3489 = !DILocation(line: 150, column: 19, scope: !2485, inlinedAt: !3482)
!3490 = !DILocation(line: 150, column: 24, scope: !2485, inlinedAt: !3482)
!3491 = !DILocation(line: 150, column: 6, scope: !2485, inlinedAt: !3482)
!3492 = !DILocation(line: 975, column: 10, scope: !3468)
!3493 = !DILocation(line: 976, column: 1, scope: !3468)
!3494 = !DILocation(line: 975, column: 3, scope: !3468)
!3495 = distinct !DISubprogram(name: "quotearg_char", scope: !549, file: !549, line: 979, type: !3496, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!137, !143, !4}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "arg", arg: 1, scope: !3495, file: !549, line: 979, type: !143)
!3500 = !DILocalVariable(name: "ch", arg: 2, scope: !3495, file: !549, line: 979, type: !4)
!3501 = !DILocation(line: 0, scope: !3495)
!3502 = !DILocation(line: 0, scope: !3468, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 981, column: 10, scope: !3495)
!3504 = !DILocation(line: 972, column: 3, scope: !3468, inlinedAt: !3503)
!3505 = !DILocation(line: 972, column: 26, scope: !3468, inlinedAt: !3503)
!3506 = !DILocation(line: 973, column: 13, scope: !3468, inlinedAt: !3503)
!3507 = !DILocation(line: 0, scope: !2485, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 974, column: 3, scope: !3468, inlinedAt: !3503)
!3509 = !DILocation(line: 147, column: 41, scope: !2485, inlinedAt: !3508)
!3510 = !DILocation(line: 147, column: 62, scope: !2485, inlinedAt: !3508)
!3511 = !DILocation(line: 147, column: 57, scope: !2485, inlinedAt: !3508)
!3512 = !DILocation(line: 148, column: 15, scope: !2485, inlinedAt: !3508)
!3513 = !DILocation(line: 149, column: 21, scope: !2485, inlinedAt: !3508)
!3514 = !DILocation(line: 149, column: 24, scope: !2485, inlinedAt: !3508)
!3515 = !DILocation(line: 150, column: 19, scope: !2485, inlinedAt: !3508)
!3516 = !DILocation(line: 150, column: 24, scope: !2485, inlinedAt: !3508)
!3517 = !DILocation(line: 150, column: 6, scope: !2485, inlinedAt: !3508)
!3518 = !DILocation(line: 975, column: 10, scope: !3468, inlinedAt: !3503)
!3519 = !DILocation(line: 976, column: 1, scope: !3468, inlinedAt: !3503)
!3520 = !DILocation(line: 981, column: 3, scope: !3495)
!3521 = distinct !DISubprogram(name: "quotearg_colon", scope: !549, file: !549, line: 985, type: !1163, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3522)
!3522 = !{!3523}
!3523 = !DILocalVariable(name: "arg", arg: 1, scope: !3521, file: !549, line: 985, type: !143)
!3524 = !DILocation(line: 0, scope: !3521)
!3525 = !DILocation(line: 0, scope: !3495, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 987, column: 10, scope: !3521)
!3527 = !DILocation(line: 0, scope: !3468, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 981, column: 10, scope: !3495, inlinedAt: !3526)
!3529 = !DILocation(line: 972, column: 3, scope: !3468, inlinedAt: !3528)
!3530 = !DILocation(line: 972, column: 26, scope: !3468, inlinedAt: !3528)
!3531 = !DILocation(line: 973, column: 13, scope: !3468, inlinedAt: !3528)
!3532 = !DILocation(line: 0, scope: !2485, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 974, column: 3, scope: !3468, inlinedAt: !3528)
!3534 = !DILocation(line: 147, column: 57, scope: !2485, inlinedAt: !3533)
!3535 = !DILocation(line: 149, column: 21, scope: !2485, inlinedAt: !3533)
!3536 = !DILocation(line: 150, column: 6, scope: !2485, inlinedAt: !3533)
!3537 = !DILocation(line: 975, column: 10, scope: !3468, inlinedAt: !3528)
!3538 = !DILocation(line: 976, column: 1, scope: !3468, inlinedAt: !3528)
!3539 = !DILocation(line: 987, column: 3, scope: !3521)
!3540 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !549, file: !549, line: 991, type: !3349, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3541)
!3541 = !{!3542, !3543}
!3542 = !DILocalVariable(name: "arg", arg: 1, scope: !3540, file: !549, line: 991, type: !143)
!3543 = !DILocalVariable(name: "argsize", arg: 2, scope: !3540, file: !549, line: 991, type: !140)
!3544 = !DILocation(line: 0, scope: !3540)
!3545 = !DILocation(line: 0, scope: !3468, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 993, column: 10, scope: !3540)
!3547 = !DILocation(line: 972, column: 3, scope: !3468, inlinedAt: !3546)
!3548 = !DILocation(line: 972, column: 26, scope: !3468, inlinedAt: !3546)
!3549 = !DILocation(line: 973, column: 13, scope: !3468, inlinedAt: !3546)
!3550 = !DILocation(line: 0, scope: !2485, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 974, column: 3, scope: !3468, inlinedAt: !3546)
!3552 = !DILocation(line: 147, column: 57, scope: !2485, inlinedAt: !3551)
!3553 = !DILocation(line: 149, column: 21, scope: !2485, inlinedAt: !3551)
!3554 = !DILocation(line: 150, column: 6, scope: !2485, inlinedAt: !3551)
!3555 = !DILocation(line: 975, column: 10, scope: !3468, inlinedAt: !3546)
!3556 = !DILocation(line: 976, column: 1, scope: !3468, inlinedAt: !3546)
!3557 = !DILocation(line: 993, column: 3, scope: !3540)
!3558 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !549, file: !549, line: 997, type: !3360, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3559)
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DILocalVariable(name: "n", arg: 1, scope: !3558, file: !549, line: 997, type: !80)
!3561 = !DILocalVariable(name: "s", arg: 2, scope: !3558, file: !549, line: 997, type: !122)
!3562 = !DILocalVariable(name: "arg", arg: 3, scope: !3558, file: !549, line: 997, type: !143)
!3563 = !DILocalVariable(name: "options", scope: !3558, file: !549, line: 999, type: !588)
!3564 = !DILocation(line: 185, column: 26, scope: !3375, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 1000, column: 13, scope: !3558)
!3566 = !DILocation(line: 0, scope: !3558)
!3567 = !DILocation(line: 999, column: 3, scope: !3558)
!3568 = !DILocation(line: 999, column: 26, scope: !3558)
!3569 = !DILocation(line: 0, scope: !3375, inlinedAt: !3565)
!3570 = !DILocation(line: 186, column: 13, scope: !3384, inlinedAt: !3565)
!3571 = !DILocation(line: 186, column: 7, scope: !3375, inlinedAt: !3565)
!3572 = !DILocation(line: 187, column: 5, scope: !3384, inlinedAt: !3565)
!3573 = !{!3574}
!3574 = distinct !{!3574, !3575, !"quoting_options_from_style: argument 0"}
!3575 = distinct !{!3575, !"quoting_options_from_style"}
!3576 = !DILocation(line: 1000, column: 13, scope: !3558)
!3577 = !DILocation(line: 0, scope: !2485, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 1001, column: 3, scope: !3558)
!3579 = !DILocation(line: 147, column: 57, scope: !2485, inlinedAt: !3578)
!3580 = !DILocation(line: 149, column: 21, scope: !2485, inlinedAt: !3578)
!3581 = !DILocation(line: 150, column: 6, scope: !2485, inlinedAt: !3578)
!3582 = !DILocation(line: 1002, column: 10, scope: !3558)
!3583 = !DILocation(line: 1003, column: 1, scope: !3558)
!3584 = !DILocation(line: 1002, column: 3, scope: !3558)
!3585 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !549, file: !549, line: 1006, type: !3586, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!137, !80, !143, !143, !143}
!3588 = !{!3589, !3590, !3591, !3592}
!3589 = !DILocalVariable(name: "n", arg: 1, scope: !3585, file: !549, line: 1006, type: !80)
!3590 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3585, file: !549, line: 1006, type: !143)
!3591 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3585, file: !549, line: 1007, type: !143)
!3592 = !DILocalVariable(name: "arg", arg: 4, scope: !3585, file: !549, line: 1007, type: !143)
!3593 = !DILocation(line: 0, scope: !3585)
!3594 = !DILocalVariable(name: "n", arg: 1, scope: !3595, file: !549, line: 1014, type: !80)
!3595 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !549, file: !549, line: 1014, type: !3596, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!137, !80, !143, !143, !143, !140}
!3598 = !{!3594, !3599, !3600, !3601, !3602, !3603}
!3599 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3595, file: !549, line: 1014, type: !143)
!3600 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3595, file: !549, line: 1015, type: !143)
!3601 = !DILocalVariable(name: "arg", arg: 4, scope: !3595, file: !549, line: 1016, type: !143)
!3602 = !DILocalVariable(name: "argsize", arg: 5, scope: !3595, file: !549, line: 1016, type: !140)
!3603 = !DILocalVariable(name: "o", scope: !3595, file: !549, line: 1018, type: !588)
!3604 = !DILocation(line: 0, scope: !3595, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1009, column: 10, scope: !3585)
!3606 = !DILocation(line: 1018, column: 3, scope: !3595, inlinedAt: !3605)
!3607 = !DILocation(line: 1018, column: 26, scope: !3595, inlinedAt: !3605)
!3608 = !DILocation(line: 1018, column: 30, scope: !3595, inlinedAt: !3605)
!3609 = !DILocation(line: 0, scope: !2525, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 1019, column: 3, scope: !3595, inlinedAt: !3605)
!3611 = !DILocation(line: 174, column: 12, scope: !2525, inlinedAt: !3610)
!3612 = !DILocation(line: 175, column: 8, scope: !2538, inlinedAt: !3610)
!3613 = !DILocation(line: 175, column: 19, scope: !2538, inlinedAt: !3610)
!3614 = !DILocation(line: 176, column: 5, scope: !2538, inlinedAt: !3610)
!3615 = !DILocation(line: 177, column: 6, scope: !2525, inlinedAt: !3610)
!3616 = !DILocation(line: 177, column: 17, scope: !2525, inlinedAt: !3610)
!3617 = !DILocation(line: 178, column: 6, scope: !2525, inlinedAt: !3610)
!3618 = !DILocation(line: 178, column: 18, scope: !2525, inlinedAt: !3610)
!3619 = !DILocation(line: 1020, column: 10, scope: !3595, inlinedAt: !3605)
!3620 = !DILocation(line: 1021, column: 1, scope: !3595, inlinedAt: !3605)
!3621 = !DILocation(line: 1009, column: 3, scope: !3585)
!3622 = !DILocation(line: 0, scope: !3595)
!3623 = !DILocation(line: 1018, column: 3, scope: !3595)
!3624 = !DILocation(line: 1018, column: 26, scope: !3595)
!3625 = !DILocation(line: 1018, column: 30, scope: !3595)
!3626 = !DILocation(line: 0, scope: !2525, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 1019, column: 3, scope: !3595)
!3628 = !DILocation(line: 174, column: 12, scope: !2525, inlinedAt: !3627)
!3629 = !DILocation(line: 175, column: 8, scope: !2538, inlinedAt: !3627)
!3630 = !DILocation(line: 175, column: 19, scope: !2538, inlinedAt: !3627)
!3631 = !DILocation(line: 176, column: 5, scope: !2538, inlinedAt: !3627)
!3632 = !DILocation(line: 177, column: 6, scope: !2525, inlinedAt: !3627)
!3633 = !DILocation(line: 177, column: 17, scope: !2525, inlinedAt: !3627)
!3634 = !DILocation(line: 178, column: 6, scope: !2525, inlinedAt: !3627)
!3635 = !DILocation(line: 178, column: 18, scope: !2525, inlinedAt: !3627)
!3636 = !DILocation(line: 1020, column: 10, scope: !3595)
!3637 = !DILocation(line: 1021, column: 1, scope: !3595)
!3638 = !DILocation(line: 1020, column: 3, scope: !3595)
!3639 = distinct !DISubprogram(name: "quotearg_custom", scope: !549, file: !549, line: 1024, type: !3640, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!137, !143, !143, !143}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3639, file: !549, line: 1024, type: !143)
!3644 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3639, file: !549, line: 1024, type: !143)
!3645 = !DILocalVariable(name: "arg", arg: 3, scope: !3639, file: !549, line: 1025, type: !143)
!3646 = !DILocation(line: 0, scope: !3639)
!3647 = !DILocation(line: 0, scope: !3585, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 1027, column: 10, scope: !3639)
!3649 = !DILocation(line: 0, scope: !3595, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 1009, column: 10, scope: !3585, inlinedAt: !3648)
!3651 = !DILocation(line: 1018, column: 3, scope: !3595, inlinedAt: !3650)
!3652 = !DILocation(line: 1018, column: 26, scope: !3595, inlinedAt: !3650)
!3653 = !DILocation(line: 1018, column: 30, scope: !3595, inlinedAt: !3650)
!3654 = !DILocation(line: 0, scope: !2525, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 1019, column: 3, scope: !3595, inlinedAt: !3650)
!3656 = !DILocation(line: 174, column: 12, scope: !2525, inlinedAt: !3655)
!3657 = !DILocation(line: 175, column: 8, scope: !2538, inlinedAt: !3655)
!3658 = !DILocation(line: 175, column: 19, scope: !2538, inlinedAt: !3655)
!3659 = !DILocation(line: 176, column: 5, scope: !2538, inlinedAt: !3655)
!3660 = !DILocation(line: 177, column: 6, scope: !2525, inlinedAt: !3655)
!3661 = !DILocation(line: 177, column: 17, scope: !2525, inlinedAt: !3655)
!3662 = !DILocation(line: 178, column: 6, scope: !2525, inlinedAt: !3655)
!3663 = !DILocation(line: 178, column: 18, scope: !2525, inlinedAt: !3655)
!3664 = !DILocation(line: 1020, column: 10, scope: !3595, inlinedAt: !3650)
!3665 = !DILocation(line: 1021, column: 1, scope: !3595, inlinedAt: !3650)
!3666 = !DILocation(line: 1027, column: 3, scope: !3639)
!3667 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !549, file: !549, line: 1031, type: !3668, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!137, !143, !143, !143, !140}
!3670 = !{!3671, !3672, !3673, !3674}
!3671 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3667, file: !549, line: 1031, type: !143)
!3672 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3667, file: !549, line: 1031, type: !143)
!3673 = !DILocalVariable(name: "arg", arg: 3, scope: !3667, file: !549, line: 1032, type: !143)
!3674 = !DILocalVariable(name: "argsize", arg: 4, scope: !3667, file: !549, line: 1032, type: !140)
!3675 = !DILocation(line: 0, scope: !3667)
!3676 = !DILocation(line: 0, scope: !3595, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 1034, column: 10, scope: !3667)
!3678 = !DILocation(line: 1018, column: 3, scope: !3595, inlinedAt: !3677)
!3679 = !DILocation(line: 1018, column: 26, scope: !3595, inlinedAt: !3677)
!3680 = !DILocation(line: 1018, column: 30, scope: !3595, inlinedAt: !3677)
!3681 = !DILocation(line: 0, scope: !2525, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1019, column: 3, scope: !3595, inlinedAt: !3677)
!3683 = !DILocation(line: 174, column: 12, scope: !2525, inlinedAt: !3682)
!3684 = !DILocation(line: 175, column: 8, scope: !2538, inlinedAt: !3682)
!3685 = !DILocation(line: 175, column: 19, scope: !2538, inlinedAt: !3682)
!3686 = !DILocation(line: 176, column: 5, scope: !2538, inlinedAt: !3682)
!3687 = !DILocation(line: 177, column: 6, scope: !2525, inlinedAt: !3682)
!3688 = !DILocation(line: 177, column: 17, scope: !2525, inlinedAt: !3682)
!3689 = !DILocation(line: 178, column: 6, scope: !2525, inlinedAt: !3682)
!3690 = !DILocation(line: 178, column: 18, scope: !2525, inlinedAt: !3682)
!3691 = !DILocation(line: 1020, column: 10, scope: !3595, inlinedAt: !3677)
!3692 = !DILocation(line: 1021, column: 1, scope: !3595, inlinedAt: !3677)
!3693 = !DILocation(line: 1034, column: 3, scope: !3667)
!3694 = distinct !DISubprogram(name: "quote_n_mem", scope: !549, file: !549, line: 1049, type: !3695, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!143, !80, !143, !140}
!3697 = !{!3698, !3699, !3700}
!3698 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !549, line: 1049, type: !80)
!3699 = !DILocalVariable(name: "arg", arg: 2, scope: !3694, file: !549, line: 1049, type: !143)
!3700 = !DILocalVariable(name: "argsize", arg: 3, scope: !3694, file: !549, line: 1049, type: !140)
!3701 = !DILocation(line: 0, scope: !3694)
!3702 = !DILocation(line: 1051, column: 10, scope: !3694)
!3703 = !DILocation(line: 1051, column: 3, scope: !3694)
!3704 = distinct !DISubprogram(name: "quote_mem", scope: !549, file: !549, line: 1055, type: !3705, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!143, !143, !140}
!3707 = !{!3708, !3709}
!3708 = !DILocalVariable(name: "arg", arg: 1, scope: !3704, file: !549, line: 1055, type: !143)
!3709 = !DILocalVariable(name: "argsize", arg: 2, scope: !3704, file: !549, line: 1055, type: !140)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocation(line: 0, scope: !3694, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1057, column: 10, scope: !3704)
!3713 = !DILocation(line: 1051, column: 10, scope: !3694, inlinedAt: !3712)
!3714 = !DILocation(line: 1057, column: 3, scope: !3704)
!3715 = distinct !DISubprogram(name: "quote_n", scope: !549, file: !549, line: 1061, type: !3716, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!143, !80, !143}
!3718 = !{!3719, !3720}
!3719 = !DILocalVariable(name: "n", arg: 1, scope: !3715, file: !549, line: 1061, type: !80)
!3720 = !DILocalVariable(name: "arg", arg: 2, scope: !3715, file: !549, line: 1061, type: !143)
!3721 = !DILocation(line: 0, scope: !3715)
!3722 = !DILocation(line: 0, scope: !3694, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1063, column: 10, scope: !3715)
!3724 = !DILocation(line: 1051, column: 10, scope: !3694, inlinedAt: !3723)
!3725 = !DILocation(line: 1063, column: 3, scope: !3715)
!3726 = distinct !DISubprogram(name: "quote", scope: !549, file: !549, line: 1067, type: !3727, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!143, !143}
!3729 = !{!3730}
!3730 = !DILocalVariable(name: "arg", arg: 1, scope: !3726, file: !549, line: 1067, type: !143)
!3731 = !DILocation(line: 0, scope: !3726)
!3732 = !DILocation(line: 0, scope: !3715, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 1069, column: 10, scope: !3726)
!3734 = !DILocation(line: 0, scope: !3694, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1063, column: 10, scope: !3715, inlinedAt: !3733)
!3736 = !DILocation(line: 1051, column: 10, scope: !3694, inlinedAt: !3735)
!3737 = !DILocation(line: 1069, column: 3, scope: !3726)
!3738 = distinct !DISubprogram(name: "savewd_init", scope: !85, file: !85, line: 86, type: !3739, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3742)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!3742 = !{!3743}
!3743 = !DILocalVariable(name: "wd", arg: 1, scope: !3738, file: !85, line: 86, type: !3741)
!3744 = !DILocation(line: 0, scope: !3738)
!3745 = !DILocation(line: 88, column: 13, scope: !3738)
!3746 = !DILocation(line: 89, column: 1, scope: !3738)
!3747 = distinct !DISubprogram(name: "savewd_errno", scope: !85, file: !85, line: 131, type: !3748, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3752)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!80, !3750}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!3752 = !{!3753}
!3753 = !DILocalVariable(name: "wd", arg: 1, scope: !3747, file: !85, line: 131, type: !3750)
!3754 = !DILocation(line: 0, scope: !3747)
!3755 = !DILocation(line: 133, column: 14, scope: !3747)
!3756 = !DILocation(line: 133, column: 20, scope: !3747)
!3757 = !DILocation(line: 133, column: 10, scope: !3747)
!3758 = !DILocation(line: 133, column: 44, scope: !3747)
!3759 = !DILocation(line: 133, column: 48, scope: !3747)
!3760 = !DILocation(line: 133, column: 3, scope: !3747)
!3761 = distinct !DISubprogram(name: "savewd_chdir", scope: !651, file: !651, line: 113, type: !3762, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!80, !3741, !143, !80, !406}
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770, !3771}
!3765 = !DILocalVariable(name: "wd", arg: 1, scope: !3761, file: !651, line: 113, type: !3741)
!3766 = !DILocalVariable(name: "dir", arg: 2, scope: !3761, file: !651, line: 113, type: !143)
!3767 = !DILocalVariable(name: "options", arg: 3, scope: !3761, file: !651, line: 113, type: !80)
!3768 = !DILocalVariable(name: "open_result", arg: 4, scope: !3761, file: !651, line: 114, type: !406)
!3769 = !DILocalVariable(name: "fd", scope: !3761, file: !651, line: 116, type: !80)
!3770 = !DILocalVariable(name: "result", scope: !3761, file: !651, line: 117, type: !80)
!3771 = !DILocalVariable(name: "saved_errno", scope: !3772, file: !651, line: 173, type: !80)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !651, line: 172, column: 5)
!3773 = distinct !DILexicalBlock(scope: !3761, file: !651, line: 171, column: 7)
!3774 = !DILocation(line: 0, scope: !3761)
!3775 = !DILocation(line: 121, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3761, file: !651, line: 121, column: 7)
!3777 = !DILocation(line: 122, column: 7, scope: !3776)
!3778 = !DILocation(line: 126, column: 22, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3776, file: !651, line: 123, column: 5)
!3780 = !DILocation(line: 126, column: 19, scope: !3779)
!3781 = !DILocation(line: 124, column: 12, scope: !3779)
!3782 = !DILocation(line: 128, column: 11, scope: !3779)
!3783 = !DILocation(line: 130, column: 26, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !651, line: 129, column: 9)
!3785 = distinct !DILexicalBlock(scope: !3779, file: !651, line: 128, column: 11)
!3786 = !DILocation(line: 131, column: 28, scope: !3784)
!3787 = !DILocation(line: 131, column: 11, scope: !3784)
!3788 = !DILocation(line: 131, column: 26, scope: !3784)
!3789 = !DILocation(line: 132, column: 9, scope: !3784)
!3790 = !DILocation(line: 134, column: 14, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3779, file: !651, line: 134, column: 11)
!3792 = !DILocation(line: 134, column: 18, scope: !3791)
!3793 = !DILocation(line: 134, column: 21, scope: !3791)
!3794 = !DILocation(line: 134, column: 27, scope: !3791)
!3795 = !DILocation(line: 138, column: 19, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3761, file: !651, line: 138, column: 7)
!3797 = !DILocation(line: 138, column: 33, scope: !3796)
!3798 = !DILocalVariable(name: "wd", arg: 1, scope: !3799, file: !651, line: 48, type: !3741)
!3799 = distinct !DISubprogram(name: "savewd_save", scope: !651, file: !651, line: 48, type: !3800, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!191, !3741}
!3802 = !{!3798, !3803, !3806}
!3803 = !DILocalVariable(name: "fd", scope: !3804, file: !651, line: 55, type: !80)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !651, line: 54, column: 7)
!3805 = distinct !DILexicalBlock(scope: !3799, file: !651, line: 51, column: 5)
!3806 = !DILocalVariable(name: "try_fork", scope: !3804, file: !651, line: 70, type: !191)
!3807 = !DILocation(line: 0, scope: !3799, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 140, column: 11, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !651, line: 140, column: 11)
!3810 = distinct !DILexicalBlock(scope: !3796, file: !651, line: 139, column: 5)
!3811 = !DILocation(line: 50, column: 15, scope: !3799, inlinedAt: !3808)
!3812 = !DILocation(line: 50, column: 3, scope: !3799, inlinedAt: !3808)
!3813 = !DILocation(line: 55, column: 18, scope: !3804, inlinedAt: !3808)
!3814 = !DILocation(line: 0, scope: !3804, inlinedAt: !3808)
!3815 = !DILocation(line: 56, column: 15, scope: !3816, inlinedAt: !3808)
!3816 = distinct !DILexicalBlock(scope: !3804, file: !651, line: 56, column: 13)
!3817 = !DILocation(line: 56, column: 13, scope: !3804, inlinedAt: !3808)
!3818 = !DILocation(line: 58, column: 23, scope: !3819, inlinedAt: !3808)
!3819 = distinct !DILexicalBlock(scope: !3816, file: !651, line: 57, column: 11)
!3820 = !DILocation(line: 59, column: 17, scope: !3819, inlinedAt: !3808)
!3821 = !DILocation(line: 59, column: 24, scope: !3819, inlinedAt: !3808)
!3822 = !DILocation(line: 60, column: 13, scope: !3819, inlinedAt: !3808)
!3823 = !DILocation(line: 70, column: 25, scope: !3804, inlinedAt: !3808)
!3824 = !DILocation(line: 72, column: 13, scope: !3804, inlinedAt: !3808)
!3825 = !DILocation(line: 74, column: 23, scope: !3826, inlinedAt: !3808)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !651, line: 73, column: 11)
!3827 = distinct !DILexicalBlock(scope: !3804, file: !651, line: 72, column: 13)
!3828 = !DILocation(line: 75, column: 17, scope: !3826, inlinedAt: !3808)
!3829 = !DILocation(line: 75, column: 28, scope: !3826, inlinedAt: !3808)
!3830 = !DILocation(line: 76, column: 13, scope: !3826, inlinedAt: !3808)
!3831 = !DILocation(line: 79, column: 17, scope: !3805, inlinedAt: !3808)
!3832 = !DILocation(line: 83, column: 11, scope: !3805, inlinedAt: !3808)
!3833 = !DILocation(line: 83, column: 19, scope: !3834, inlinedAt: !3808)
!3834 = distinct !DILexicalBlock(scope: !3805, file: !651, line: 83, column: 11)
!3835 = !DILocation(line: 83, column: 25, scope: !3834, inlinedAt: !3808)
!3836 = !DILocation(line: 83, column: 15, scope: !3834, inlinedAt: !3808)
!3837 = !DILocation(line: 88, column: 27, scope: !3838, inlinedAt: !3808)
!3838 = distinct !DILexicalBlock(scope: !3834, file: !651, line: 84, column: 9)
!3839 = !DILocation(line: 88, column: 25, scope: !3838, inlinedAt: !3808)
!3840 = !DILocation(line: 89, column: 29, scope: !3841, inlinedAt: !3808)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !651, line: 89, column: 15)
!3842 = !DILocation(line: 89, column: 15, scope: !3838, inlinedAt: !3808)
!3843 = !DILocation(line: 91, column: 21, scope: !3844, inlinedAt: !3808)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !651, line: 91, column: 19)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !651, line: 90, column: 13)
!3846 = !DILocation(line: 91, column: 19, scope: !3845, inlinedAt: !3808)
!3847 = !DILocation(line: 93, column: 25, scope: !3845, inlinedAt: !3808)
!3848 = !DILocation(line: 94, column: 32, scope: !3845, inlinedAt: !3808)
!3849 = !DILocation(line: 94, column: 30, scope: !3845, inlinedAt: !3808)
!3850 = !DILocation(line: 95, column: 13, scope: !3845, inlinedAt: !3808)
!3851 = !DILocation(line: 106, column: 7, scope: !3852, inlinedAt: !3808)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !651, line: 106, column: 7)
!3853 = distinct !DILexicalBlock(scope: !3805, file: !651, line: 106, column: 7)
!3854 = !DILocation(line: 147, column: 24, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3809, file: !651, line: 146, column: 9)
!3856 = !DILocation(line: 147, column: 21, scope: !3855)
!3857 = !DILocation(line: 147, column: 30, scope: !3855)
!3858 = !DILocation(line: 147, column: 44, scope: !3855)
!3859 = !DILocation(line: 149, column: 22, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3855, file: !651, line: 149, column: 15)
!3861 = !DILocation(line: 149, column: 15, scope: !3855)
!3862 = !DILocation(line: 150, column: 25, scope: !3860)
!3863 = !DILocation(line: 150, column: 13, scope: !3860)
!3864 = !DILocation(line: 153, column: 27, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3860, file: !651, line: 151, column: 15)
!3866 = !DILocation(line: 154, column: 17, scope: !3865)
!3867 = !DILocation(line: 162, column: 17, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !651, line: 162, column: 17)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !651, line: 162, column: 17)
!3870 = !DILocation(line: 162, column: 17, scope: !3869)
!3871 = !DILocation(line: 166, column: 17, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !651, line: 166, column: 17)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !651, line: 166, column: 17)
!3874 = !DILocation(line: 171, column: 9, scope: !3773)
!3875 = !DILocation(line: 171, column: 15, scope: !3773)
!3876 = !DILocation(line: 173, column: 25, scope: !3772)
!3877 = !DILocation(line: 0, scope: !3772)
!3878 = !DILocation(line: 174, column: 7, scope: !3772)
!3879 = !DILocation(line: 175, column: 13, scope: !3772)
!3880 = !DILocation(line: 176, column: 5, scope: !3772)
!3881 = !DILocation(line: 178, column: 3, scope: !3761)
!3882 = !DISubprogram(name: "fork", scope: !1612, file: !1612, line: 778, type: !3883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!97}
!3885 = !DISubprogram(name: "__assert_fail", scope: !3886, file: !3886, line: 69, type: !3887, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3886 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !143, !143, !99, !143}
!3889 = !DISubprogram(name: "chdir", scope: !1612, file: !1612, line: 517, type: !3890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!80, !143}
!3892 = !DISubprogram(name: "fchdir", scope: !1612, file: !1612, line: 521, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3893 = distinct !DISubprogram(name: "savewd_restore", scope: !651, file: !651, line: 182, type: !3894, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!80, !3741, !80}
!3896 = !{!3897, !3898, !3899, !3903, !3905}
!3897 = !DILocalVariable(name: "wd", arg: 1, scope: !3893, file: !651, line: 182, type: !3741)
!3898 = !DILocalVariable(name: "status", arg: 2, scope: !3893, file: !651, line: 182, type: !80)
!3899 = !DILocalVariable(name: "chdir_errno", scope: !3900, file: !651, line: 201, type: !80)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !651, line: 200, column: 9)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !651, line: 194, column: 11)
!3902 = distinct !DILexicalBlock(scope: !3893, file: !651, line: 185, column: 5)
!3903 = !DILocalVariable(name: "child", scope: !3904, file: !651, line: 216, type: !95)
!3904 = distinct !DILexicalBlock(scope: !3902, file: !651, line: 215, column: 7)
!3905 = !DILocalVariable(name: "child_status", scope: !3906, file: !651, line: 221, type: !80)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !651, line: 220, column: 11)
!3907 = distinct !DILexicalBlock(scope: !3904, file: !651, line: 219, column: 13)
!3908 = !DILocation(line: 0, scope: !3893)
!3909 = !DILocation(line: 184, column: 15, scope: !3893)
!3910 = !DILocation(line: 184, column: 3, scope: !3893)
!3911 = !DILocation(line: 209, column: 23, scope: !3902)
!3912 = !DILocation(line: 209, column: 7, scope: !3902)
!3913 = !DILocation(line: 194, column: 23, scope: !3901)
!3914 = !DILocation(line: 194, column: 27, scope: !3901)
!3915 = !DILocation(line: 194, column: 11, scope: !3901)
!3916 = !DILocation(line: 194, column: 31, scope: !3901)
!3917 = !DILocation(line: 194, column: 11, scope: !3902)
!3918 = !DILocation(line: 196, column: 21, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3901, file: !651, line: 195, column: 9)
!3920 = !DILocation(line: 197, column: 11, scope: !3919)
!3921 = !DILocation(line: 201, column: 29, scope: !3900)
!3922 = !DILocation(line: 0, scope: !3900)
!3923 = !DILocation(line: 202, column: 26, scope: !3900)
!3924 = !DILocation(line: 202, column: 11, scope: !3900)
!3925 = !DILocation(line: 203, column: 21, scope: !3900)
!3926 = !DILocation(line: 204, column: 26, scope: !3900)
!3927 = !DILocation(line: 194, column: 34, scope: !3901)
!3928 = !DILocation(line: 209, column: 13, scope: !3902)
!3929 = !DILocation(line: 210, column: 7, scope: !3902)
!3930 = !DILocation(line: 216, column: 27, scope: !3904)
!3931 = !DILocation(line: 216, column: 31, scope: !3904)
!3932 = !DILocation(line: 0, scope: !3904)
!3933 = !DILocation(line: 217, column: 19, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3904, file: !651, line: 217, column: 13)
!3935 = !DILocation(line: 217, column: 13, scope: !3904)
!3936 = !DILocation(line: 218, column: 11, scope: !3934)
!3937 = !DILocation(line: 219, column: 15, scope: !3907)
!3938 = !DILocation(line: 219, column: 13, scope: !3904)
!3939 = !DILocation(line: 221, column: 13, scope: !3906)
!3940 = !DILocation(line: 222, column: 13, scope: !3906)
!3941 = !DILocation(line: 0, scope: !3906)
!3942 = !DILocation(line: 222, column: 20, scope: !3906)
!3943 = !DILocation(line: 222, column: 54, scope: !3906)
!3944 = !DILocation(line: 223, column: 15, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !651, line: 223, column: 15)
!3946 = distinct !DILexicalBlock(scope: !3906, file: !651, line: 223, column: 15)
!3947 = !DILocation(line: 223, column: 15, scope: !3946)
!3948 = distinct !{!3948, !3940, !3949, !1087}
!3949 = !DILocation(line: 223, column: 15, scope: !3906)
!3950 = !DILocation(line: 224, column: 27, scope: !3906)
!3951 = !DILocation(line: 225, column: 19, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3906, file: !651, line: 225, column: 17)
!3953 = !DILocation(line: 225, column: 17, scope: !3906)
!3954 = !DILocation(line: 226, column: 15, scope: !3952)
!3955 = !DILocation(line: 227, column: 20, scope: !3906)
!3956 = !DILocation(line: 228, column: 11, scope: !3907)
!3957 = !DILocation(line: 233, column: 7, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !651, line: 233, column: 7)
!3959 = distinct !DILexicalBlock(scope: !3902, file: !651, line: 233, column: 7)
!3960 = !DILocation(line: 237, column: 1, scope: !3893)
!3961 = !DISubprogram(name: "waitpid", scope: !3962, file: !3962, line: 111, type: !3963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3962 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!97, !97, !406, !80}
!3965 = !DISubprogram(name: "raise", scope: !3966, file: !3966, line: 123, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!3966 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3967 = distinct !DISubprogram(name: "savewd_finish", scope: !651, file: !651, line: 240, type: !3739, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3968)
!3968 = !{!3969}
!3969 = !DILocalVariable(name: "wd", arg: 1, scope: !3967, file: !651, line: 240, type: !3741)
!3970 = !DILocation(line: 0, scope: !3967)
!3971 = !DILocation(line: 242, column: 15, scope: !3967)
!3972 = !DILocation(line: 242, column: 3, scope: !3967)
!3973 = !DILocation(line: 249, column: 18, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3967, file: !651, line: 243, column: 5)
!3975 = !DILocation(line: 249, column: 22, scope: !3974)
!3976 = !DILocation(line: 249, column: 7, scope: !3974)
!3977 = !DILocation(line: 252, column: 11, scope: !3974)
!3978 = !DILocation(line: 253, column: 7, scope: !3974)
!3979 = !DILocation(line: 256, column: 7, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !651, line: 256, column: 7)
!3981 = distinct !DILexicalBlock(scope: !3974, file: !651, line: 256, column: 7)
!3982 = !DILocation(line: 256, column: 7, scope: !3981)
!3983 = !DILocation(line: 261, column: 7, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !651, line: 261, column: 7)
!3985 = distinct !DILexicalBlock(scope: !3974, file: !651, line: 261, column: 7)
!3986 = !DILocation(line: 0, scope: !3974)
!3987 = !DILocation(line: 264, column: 13, scope: !3967)
!3988 = !DILocation(line: 265, column: 1, scope: !3967)
!3989 = distinct !DISubprogram(name: "savewd_process_files", scope: !651, file: !651, line: 284, type: !3990, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3995)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!80, !80, !1190, !3992, !138}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!80, !137, !3741, !138}
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4010, !4013}
!3996 = !DILocalVariable(name: "n_files", arg: 1, scope: !3989, file: !651, line: 284, type: !80)
!3997 = !DILocalVariable(name: "file", arg: 2, scope: !3989, file: !651, line: 284, type: !1190)
!3998 = !DILocalVariable(name: "act", arg: 3, scope: !3989, file: !651, line: 285, type: !3992)
!3999 = !DILocalVariable(name: "options", arg: 4, scope: !3989, file: !651, line: 286, type: !138)
!4000 = !DILocalVariable(name: "i", scope: !3989, file: !651, line: 288, type: !80)
!4001 = !DILocalVariable(name: "last_relative", scope: !3989, file: !651, line: 289, type: !80)
!4002 = !DILocalVariable(name: "exit_status", scope: !3989, file: !651, line: 290, type: !80)
!4003 = !DILocalVariable(name: "wd", scope: !3989, file: !651, line: 291, type: !859)
!4004 = !DILocalVariable(name: "s", scope: !4005, file: !651, line: 302, type: !80)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !651, line: 301, column: 9)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !651, line: 300, column: 11)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !651, line: 299, column: 5)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !651, line: 298, column: 3)
!4009 = distinct !DILexicalBlock(scope: !3989, file: !651, line: 298, column: 3)
!4010 = !DILocalVariable(name: "r", scope: !4011, file: !651, line: 309, type: !80)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !651, line: 308, column: 9)
!4012 = distinct !DILexicalBlock(scope: !4007, file: !651, line: 307, column: 11)
!4013 = !DILocalVariable(name: "s", scope: !4014, file: !651, line: 319, type: !80)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !651, line: 318, column: 5)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !651, line: 317, column: 3)
!4016 = distinct !DILexicalBlock(scope: !3989, file: !651, line: 317, column: 3)
!4017 = !DILocation(line: 0, scope: !3989)
!4018 = !DILocation(line: 291, column: 3, scope: !3989)
!4019 = !DILocation(line: 291, column: 17, scope: !3989)
!4020 = !DILocation(line: 0, scope: !3738, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 292, column: 3, scope: !3989)
!4022 = !DILocation(line: 88, column: 13, scope: !3738, inlinedAt: !4021)
!4023 = !DILocation(line: 294, column: 8, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3989, file: !651, line: 294, column: 3)
!4025 = !DILocation(line: 294, column: 39, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4024, file: !651, line: 294, column: 3)
!4027 = !DILocation(line: 294, column: 3, scope: !4024)
!4028 = !DILocation(line: 294, scope: !4024)
!4029 = !DILocation(line: 295, column: 11, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4026, file: !651, line: 295, column: 9)
!4031 = !DILocation(line: 295, column: 9, scope: !4026)
!4032 = distinct !{!4032, !4027, !4033, !1087}
!4033 = !DILocation(line: 296, column: 7, scope: !4024)
!4034 = !DILocation(line: 298, column: 12, scope: !4008)
!4035 = !DILocation(line: 298, column: 3, scope: !4009)
!4036 = !DILocalVariable(name: "wd", arg: 1, scope: !4037, file: !651, line: 278, type: !3750)
!4037 = distinct !DISubprogram(name: "savewd_delegating", scope: !651, file: !651, line: 278, type: !4038, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !4040)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!191, !3750}
!4040 = !{!4036}
!4041 = !DILocation(line: 0, scope: !4037, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 300, column: 13, scope: !4006)
!4043 = !DILocation(line: 280, column: 14, scope: !4037, inlinedAt: !4042)
!4044 = !DILocation(line: 280, column: 20, scope: !4037, inlinedAt: !4042)
!4045 = !DILocation(line: 280, column: 37, scope: !4037, inlinedAt: !4042)
!4046 = !DILocation(line: 302, column: 24, scope: !4005)
!4047 = !DILocation(line: 302, column: 19, scope: !4005)
!4048 = !DILocation(line: 0, scope: !4005)
!4049 = !DILocation(line: 303, column: 15, scope: !4005)
!4050 = !DILocation(line: 305, column: 9, scope: !4005)
!4051 = !DILocation(line: 307, column: 13, scope: !4012)
!4052 = !DILocation(line: 307, column: 11, scope: !4007)
!4053 = !DILocation(line: 309, column: 19, scope: !4011)
!4054 = !DILocation(line: 0, scope: !4011)
!4055 = !DILocation(line: 310, column: 15, scope: !4011)
!4056 = !DILocation(line: 312, column: 9, scope: !4011)
!4057 = distinct !{!4057, !4035, !4058, !1087}
!4058 = !DILocation(line: 313, column: 5, scope: !4009)
!4059 = !DILocation(line: 242, column: 15, scope: !3967, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 315, column: 3, scope: !3989)
!4061 = !DILocation(line: 0, scope: !3967, inlinedAt: !4060)
!4062 = !DILocation(line: 242, column: 3, scope: !3967, inlinedAt: !4060)
!4063 = !DILocation(line: 249, column: 18, scope: !3974, inlinedAt: !4060)
!4064 = !DILocation(line: 249, column: 22, scope: !3974, inlinedAt: !4060)
!4065 = !DILocation(line: 249, column: 7, scope: !3974, inlinedAt: !4060)
!4066 = !DILocation(line: 252, column: 11, scope: !3974, inlinedAt: !4060)
!4067 = !DILocation(line: 253, column: 7, scope: !3974, inlinedAt: !4060)
!4068 = !DILocation(line: 256, column: 7, scope: !3980, inlinedAt: !4060)
!4069 = !DILocation(line: 256, column: 7, scope: !3981, inlinedAt: !4060)
!4070 = !DILocation(line: 261, column: 7, scope: !3984, inlinedAt: !4060)
!4071 = !DILocation(line: 0, scope: !3974, inlinedAt: !4060)
!4072 = !DILocation(line: 264, column: 13, scope: !3967, inlinedAt: !4060)
!4073 = !DILocation(line: 317, column: 12, scope: !4015)
!4074 = !DILocation(line: 317, column: 3, scope: !4016)
!4075 = !DILocation(line: 319, column: 20, scope: !4014)
!4076 = !DILocation(line: 319, column: 15, scope: !4014)
!4077 = !DILocation(line: 0, scope: !4014)
!4078 = !DILocation(line: 320, column: 11, scope: !4014)
!4079 = !DILocation(line: 317, column: 24, scope: !4015)
!4080 = distinct !{!4080, !4074, !4081, !1087}
!4081 = !DILocation(line: 322, column: 5, scope: !4016)
!4082 = !DILocation(line: 325, column: 1, scope: !3989)
!4083 = !DILocation(line: 324, column: 3, scope: !3989)
!4084 = distinct !DISubprogram(name: "version_etc_arn", scope: !691, file: !691, line: 61, type: !4085, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4122)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !4087, !143, !143, !143, !4121, !140}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4089)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4089, file: !208, line: 51, baseType: !80, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4089, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4089, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4089, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4089, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4089, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4089, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4089, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4089, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4089, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4089, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4089, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4089, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4089, file: !208, line: 70, baseType: !4105, size: 64, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4089, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4089, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4089, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4089, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4089, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4089, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4089, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4089, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4089, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4089, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4089, file: !208, line: 93, baseType: !4105, size: 64, offset: 1344)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4089, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4089, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4089, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4089, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128}
!4123 = !DILocalVariable(name: "stream", arg: 1, scope: !4084, file: !691, line: 61, type: !4087)
!4124 = !DILocalVariable(name: "command_name", arg: 2, scope: !4084, file: !691, line: 62, type: !143)
!4125 = !DILocalVariable(name: "package", arg: 3, scope: !4084, file: !691, line: 62, type: !143)
!4126 = !DILocalVariable(name: "version", arg: 4, scope: !4084, file: !691, line: 63, type: !143)
!4127 = !DILocalVariable(name: "authors", arg: 5, scope: !4084, file: !691, line: 64, type: !4121)
!4128 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4084, file: !691, line: 64, type: !140)
!4129 = !DILocation(line: 0, scope: !4084)
!4130 = !DILocation(line: 66, column: 7, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4084, file: !691, line: 66, column: 7)
!4132 = !DILocation(line: 66, column: 7, scope: !4084)
!4133 = !DILocation(line: 67, column: 5, scope: !4131)
!4134 = !DILocation(line: 69, column: 5, scope: !4131)
!4135 = !DILocation(line: 83, column: 3, scope: !4084)
!4136 = !DILocation(line: 85, column: 3, scope: !4084)
!4137 = !DILocation(line: 88, column: 3, scope: !4084)
!4138 = !DILocation(line: 95, column: 3, scope: !4084)
!4139 = !DILocation(line: 97, column: 3, scope: !4084)
!4140 = !DILocation(line: 105, column: 7, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4084, file: !691, line: 98, column: 5)
!4142 = !DILocation(line: 106, column: 7, scope: !4141)
!4143 = !DILocation(line: 109, column: 7, scope: !4141)
!4144 = !DILocation(line: 110, column: 7, scope: !4141)
!4145 = !DILocation(line: 113, column: 7, scope: !4141)
!4146 = !DILocation(line: 115, column: 7, scope: !4141)
!4147 = !DILocation(line: 120, column: 7, scope: !4141)
!4148 = !DILocation(line: 122, column: 7, scope: !4141)
!4149 = !DILocation(line: 127, column: 7, scope: !4141)
!4150 = !DILocation(line: 129, column: 7, scope: !4141)
!4151 = !DILocation(line: 134, column: 7, scope: !4141)
!4152 = !DILocation(line: 137, column: 7, scope: !4141)
!4153 = !DILocation(line: 142, column: 7, scope: !4141)
!4154 = !DILocation(line: 145, column: 7, scope: !4141)
!4155 = !DILocation(line: 150, column: 7, scope: !4141)
!4156 = !DILocation(line: 154, column: 7, scope: !4141)
!4157 = !DILocation(line: 159, column: 7, scope: !4141)
!4158 = !DILocation(line: 163, column: 7, scope: !4141)
!4159 = !DILocation(line: 170, column: 7, scope: !4141)
!4160 = !DILocation(line: 174, column: 7, scope: !4141)
!4161 = !DILocation(line: 176, column: 1, scope: !4084)
!4162 = distinct !DISubprogram(name: "version_etc_ar", scope: !691, file: !691, line: 183, type: !4163, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !4087, !143, !143, !143, !4121}
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4171}
!4166 = !DILocalVariable(name: "stream", arg: 1, scope: !4162, file: !691, line: 183, type: !4087)
!4167 = !DILocalVariable(name: "command_name", arg: 2, scope: !4162, file: !691, line: 184, type: !143)
!4168 = !DILocalVariable(name: "package", arg: 3, scope: !4162, file: !691, line: 184, type: !143)
!4169 = !DILocalVariable(name: "version", arg: 4, scope: !4162, file: !691, line: 185, type: !143)
!4170 = !DILocalVariable(name: "authors", arg: 5, scope: !4162, file: !691, line: 185, type: !4121)
!4171 = !DILocalVariable(name: "n_authors", scope: !4162, file: !691, line: 187, type: !140)
!4172 = !DILocation(line: 0, scope: !4162)
!4173 = !DILocation(line: 189, column: 8, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4162, file: !691, line: 189, column: 3)
!4175 = !DILocation(line: 189, scope: !4174)
!4176 = !DILocation(line: 189, column: 23, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !691, line: 189, column: 3)
!4178 = !DILocation(line: 189, column: 3, scope: !4174)
!4179 = !DILocation(line: 189, column: 52, scope: !4177)
!4180 = distinct !{!4180, !4178, !4181, !1087}
!4181 = !DILocation(line: 190, column: 5, scope: !4174)
!4182 = !DILocation(line: 191, column: 3, scope: !4162)
!4183 = !DILocation(line: 192, column: 1, scope: !4162)
!4184 = distinct !DISubprogram(name: "version_etc_va", scope: !691, file: !691, line: 199, type: !4185, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4198)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{null, !4087, !143, !143, !143, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !447, line: 52, baseType: !4188)
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !449, line: 14, baseType: !4189)
!4189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4190, baseType: !4191)
!4190 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4196, !4197}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4191, file: !4190, line: 192, baseType: !138, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4191, file: !4190, line: 192, baseType: !138, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4191, file: !4190, line: 192, baseType: !138, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4191, file: !4190, line: 192, baseType: !80, size: 32, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4191, file: !4190, line: 192, baseType: !80, size: 32, offset: 224)
!4198 = !{!4199, !4200, !4201, !4202, !4203, !4204, !4205}
!4199 = !DILocalVariable(name: "stream", arg: 1, scope: !4184, file: !691, line: 199, type: !4087)
!4200 = !DILocalVariable(name: "command_name", arg: 2, scope: !4184, file: !691, line: 200, type: !143)
!4201 = !DILocalVariable(name: "package", arg: 3, scope: !4184, file: !691, line: 200, type: !143)
!4202 = !DILocalVariable(name: "version", arg: 4, scope: !4184, file: !691, line: 201, type: !143)
!4203 = !DILocalVariable(name: "authors", arg: 5, scope: !4184, file: !691, line: 201, type: !4187)
!4204 = !DILocalVariable(name: "n_authors", scope: !4184, file: !691, line: 203, type: !140)
!4205 = !DILocalVariable(name: "authtab", scope: !4184, file: !691, line: 204, type: !4206)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !65)
!4207 = !DILocation(line: 0, scope: !4184)
!4208 = !DILocation(line: 201, column: 46, scope: !4184)
!4209 = !DILocation(line: 204, column: 3, scope: !4184)
!4210 = !DILocation(line: 204, column: 15, scope: !4184)
!4211 = !DILocation(line: 208, column: 35, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !691, line: 206, column: 3)
!4213 = distinct !DILexicalBlock(scope: !4184, file: !691, line: 206, column: 3)
!4214 = !DILocation(line: 208, column: 33, scope: !4212)
!4215 = !DILocation(line: 208, column: 67, scope: !4212)
!4216 = !DILocation(line: 206, column: 3, scope: !4213)
!4217 = !DILocation(line: 208, column: 14, scope: !4212)
!4218 = !DILocation(line: 0, scope: !4213)
!4219 = !DILocation(line: 211, column: 3, scope: !4184)
!4220 = !DILocation(line: 213, column: 1, scope: !4184)
!4221 = distinct !DISubprogram(name: "version_etc", scope: !691, file: !691, line: 230, type: !4222, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !4087, !143, !143, !143, null}
!4224 = !{!4225, !4226, !4227, !4228, !4229}
!4225 = !DILocalVariable(name: "stream", arg: 1, scope: !4221, file: !691, line: 230, type: !4087)
!4226 = !DILocalVariable(name: "command_name", arg: 2, scope: !4221, file: !691, line: 231, type: !143)
!4227 = !DILocalVariable(name: "package", arg: 3, scope: !4221, file: !691, line: 231, type: !143)
!4228 = !DILocalVariable(name: "version", arg: 4, scope: !4221, file: !691, line: 232, type: !143)
!4229 = !DILocalVariable(name: "authors", scope: !4221, file: !691, line: 234, type: !4187)
!4230 = !DILocation(line: 0, scope: !4221)
!4231 = !DILocation(line: 234, column: 3, scope: !4221)
!4232 = !DILocation(line: 234, column: 11, scope: !4221)
!4233 = !DILocation(line: 235, column: 3, scope: !4221)
!4234 = !DILocation(line: 236, column: 3, scope: !4221)
!4235 = !DILocation(line: 237, column: 3, scope: !4221)
!4236 = !DILocation(line: 238, column: 1, scope: !4221)
!4237 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !691, file: !691, line: 241, type: !485, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !981)
!4238 = !DILocation(line: 243, column: 3, scope: !4237)
!4239 = !DILocation(line: 248, column: 3, scope: !4237)
!4240 = !DILocation(line: 254, column: 3, scope: !4237)
!4241 = !DILocation(line: 259, column: 3, scope: !4237)
!4242 = !DILocation(line: 261, column: 1, scope: !4237)
!4243 = distinct !DISubprogram(name: "xnrealloc", scope: !4244, file: !4244, line: 147, type: !4245, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4247)
!4244 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!138, !138, !140, !140}
!4247 = !{!4248, !4249, !4250}
!4248 = !DILocalVariable(name: "p", arg: 1, scope: !4243, file: !4244, line: 147, type: !138)
!4249 = !DILocalVariable(name: "n", arg: 2, scope: !4243, file: !4244, line: 147, type: !140)
!4250 = !DILocalVariable(name: "s", arg: 3, scope: !4243, file: !4244, line: 147, type: !140)
!4251 = !DILocation(line: 0, scope: !4243)
!4252 = !DILocalVariable(name: "p", arg: 1, scope: !4253, file: !877, line: 83, type: !138)
!4253 = distinct !DISubprogram(name: "xreallocarray", scope: !877, file: !877, line: 83, type: !4245, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4254)
!4254 = !{!4252, !4255, !4256}
!4255 = !DILocalVariable(name: "n", arg: 2, scope: !4253, file: !877, line: 83, type: !140)
!4256 = !DILocalVariable(name: "s", arg: 3, scope: !4253, file: !877, line: 83, type: !140)
!4257 = !DILocation(line: 0, scope: !4253, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 149, column: 10, scope: !4243)
!4259 = !DILocation(line: 85, column: 25, scope: !4253, inlinedAt: !4258)
!4260 = !DILocalVariable(name: "p", arg: 1, scope: !4261, file: !877, line: 37, type: !138)
!4261 = distinct !DISubprogram(name: "check_nonnull", scope: !877, file: !877, line: 37, type: !4262, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4264)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!138, !138}
!4264 = !{!4260}
!4265 = !DILocation(line: 0, scope: !4261, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 85, column: 10, scope: !4253, inlinedAt: !4258)
!4267 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4266)
!4268 = distinct !DILexicalBlock(scope: !4261, file: !877, line: 39, column: 7)
!4269 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4266)
!4270 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4266)
!4271 = !DILocation(line: 149, column: 3, scope: !4243)
!4272 = !DILocation(line: 0, scope: !4253)
!4273 = !DILocation(line: 85, column: 25, scope: !4253)
!4274 = !DILocation(line: 0, scope: !4261, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 85, column: 10, scope: !4253)
!4276 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4275)
!4277 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4275)
!4278 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4275)
!4279 = !DILocation(line: 85, column: 3, scope: !4253)
!4280 = distinct !DISubprogram(name: "xmalloc", scope: !877, file: !877, line: 47, type: !4281, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4283)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!138, !140}
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "s", arg: 1, scope: !4280, file: !877, line: 47, type: !140)
!4285 = !DILocation(line: 0, scope: !4280)
!4286 = !DILocation(line: 49, column: 25, scope: !4280)
!4287 = !DILocation(line: 0, scope: !4261, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 49, column: 10, scope: !4280)
!4289 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4288)
!4290 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4288)
!4291 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4288)
!4292 = !DILocation(line: 49, column: 3, scope: !4280)
!4293 = !DISubprogram(name: "malloc", scope: !1161, file: !1161, line: 540, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4294 = distinct !DISubprogram(name: "ximalloc", scope: !877, file: !877, line: 53, type: !4295, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!138, !896}
!4297 = !{!4298}
!4298 = !DILocalVariable(name: "s", arg: 1, scope: !4294, file: !877, line: 53, type: !896)
!4299 = !DILocation(line: 0, scope: !4294)
!4300 = !DILocalVariable(name: "s", arg: 1, scope: !4301, file: !4302, line: 55, type: !896)
!4301 = distinct !DISubprogram(name: "imalloc", scope: !4302, file: !4302, line: 55, type: !4295, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4303)
!4302 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4303 = !{!4300}
!4304 = !DILocation(line: 0, scope: !4301, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 55, column: 25, scope: !4294)
!4306 = !DILocation(line: 57, column: 26, scope: !4301, inlinedAt: !4305)
!4307 = !DILocation(line: 0, scope: !4261, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 55, column: 10, scope: !4294)
!4309 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4308)
!4310 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4308)
!4311 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4308)
!4312 = !DILocation(line: 55, column: 3, scope: !4294)
!4313 = distinct !DISubprogram(name: "xcharalloc", scope: !877, file: !877, line: 59, type: !4314, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!137, !140}
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "n", arg: 1, scope: !4313, file: !877, line: 59, type: !140)
!4318 = !DILocation(line: 0, scope: !4313)
!4319 = !DILocation(line: 0, scope: !4280, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 61, column: 10, scope: !4313)
!4321 = !DILocation(line: 49, column: 25, scope: !4280, inlinedAt: !4320)
!4322 = !DILocation(line: 0, scope: !4261, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 49, column: 10, scope: !4280, inlinedAt: !4320)
!4324 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4323)
!4325 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4323)
!4326 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4323)
!4327 = !DILocation(line: 61, column: 3, scope: !4313)
!4328 = distinct !DISubprogram(name: "xrealloc", scope: !877, file: !877, line: 68, type: !4329, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!138, !138, !140}
!4331 = !{!4332, !4333}
!4332 = !DILocalVariable(name: "p", arg: 1, scope: !4328, file: !877, line: 68, type: !138)
!4333 = !DILocalVariable(name: "s", arg: 2, scope: !4328, file: !877, line: 68, type: !140)
!4334 = !DILocation(line: 0, scope: !4328)
!4335 = !DILocalVariable(name: "ptr", arg: 1, scope: !4336, file: !4337, line: 2057, type: !138)
!4336 = distinct !DISubprogram(name: "rpl_realloc", scope: !4337, file: !4337, line: 2057, type: !4329, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4338)
!4337 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4338 = !{!4335, !4339}
!4339 = !DILocalVariable(name: "size", arg: 2, scope: !4336, file: !4337, line: 2057, type: !140)
!4340 = !DILocation(line: 0, scope: !4336, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 70, column: 25, scope: !4328)
!4342 = !DILocation(line: 2059, column: 24, scope: !4336, inlinedAt: !4341)
!4343 = !DILocation(line: 2059, column: 10, scope: !4336, inlinedAt: !4341)
!4344 = !DILocation(line: 0, scope: !4261, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 70, column: 10, scope: !4328)
!4346 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4345)
!4347 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4345)
!4348 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4345)
!4349 = !DILocation(line: 70, column: 3, scope: !4328)
!4350 = !DISubprogram(name: "realloc", scope: !1161, file: !1161, line: 551, type: !4329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4351 = distinct !DISubprogram(name: "xirealloc", scope: !877, file: !877, line: 74, type: !4352, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!138, !138, !896}
!4354 = !{!4355, !4356}
!4355 = !DILocalVariable(name: "p", arg: 1, scope: !4351, file: !877, line: 74, type: !138)
!4356 = !DILocalVariable(name: "s", arg: 2, scope: !4351, file: !877, line: 74, type: !896)
!4357 = !DILocation(line: 0, scope: !4351)
!4358 = !DILocalVariable(name: "p", arg: 1, scope: !4359, file: !4302, line: 66, type: !138)
!4359 = distinct !DISubprogram(name: "irealloc", scope: !4302, file: !4302, line: 66, type: !4352, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4360)
!4360 = !{!4358, !4361}
!4361 = !DILocalVariable(name: "s", arg: 2, scope: !4359, file: !4302, line: 66, type: !896)
!4362 = !DILocation(line: 0, scope: !4359, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 76, column: 25, scope: !4351)
!4364 = !DILocation(line: 0, scope: !4336, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 68, column: 26, scope: !4359, inlinedAt: !4363)
!4366 = !DILocation(line: 2059, column: 24, scope: !4336, inlinedAt: !4365)
!4367 = !DILocation(line: 2059, column: 10, scope: !4336, inlinedAt: !4365)
!4368 = !DILocation(line: 0, scope: !4261, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 76, column: 10, scope: !4351)
!4370 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4369)
!4371 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4369)
!4372 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4369)
!4373 = !DILocation(line: 76, column: 3, scope: !4351)
!4374 = distinct !DISubprogram(name: "xireallocarray", scope: !877, file: !877, line: 89, type: !4375, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4377)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!138, !138, !896, !896}
!4377 = !{!4378, !4379, !4380}
!4378 = !DILocalVariable(name: "p", arg: 1, scope: !4374, file: !877, line: 89, type: !138)
!4379 = !DILocalVariable(name: "n", arg: 2, scope: !4374, file: !877, line: 89, type: !896)
!4380 = !DILocalVariable(name: "s", arg: 3, scope: !4374, file: !877, line: 89, type: !896)
!4381 = !DILocation(line: 0, scope: !4374)
!4382 = !DILocalVariable(name: "p", arg: 1, scope: !4383, file: !4302, line: 98, type: !138)
!4383 = distinct !DISubprogram(name: "ireallocarray", scope: !4302, file: !4302, line: 98, type: !4375, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4384)
!4384 = !{!4382, !4385, !4386}
!4385 = !DILocalVariable(name: "n", arg: 2, scope: !4383, file: !4302, line: 98, type: !896)
!4386 = !DILocalVariable(name: "s", arg: 3, scope: !4383, file: !4302, line: 98, type: !896)
!4387 = !DILocation(line: 0, scope: !4383, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 91, column: 25, scope: !4374)
!4389 = !DILocation(line: 101, column: 13, scope: !4383, inlinedAt: !4388)
!4390 = !DILocation(line: 0, scope: !4261, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 91, column: 10, scope: !4374)
!4392 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4391)
!4393 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4391)
!4394 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4391)
!4395 = !DILocation(line: 91, column: 3, scope: !4374)
!4396 = distinct !DISubprogram(name: "xnmalloc", scope: !877, file: !877, line: 98, type: !4397, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4399)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!138, !140, !140}
!4399 = !{!4400, !4401}
!4400 = !DILocalVariable(name: "n", arg: 1, scope: !4396, file: !877, line: 98, type: !140)
!4401 = !DILocalVariable(name: "s", arg: 2, scope: !4396, file: !877, line: 98, type: !140)
!4402 = !DILocation(line: 0, scope: !4396)
!4403 = !DILocation(line: 0, scope: !4253, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 100, column: 10, scope: !4396)
!4405 = !DILocation(line: 85, column: 25, scope: !4253, inlinedAt: !4404)
!4406 = !DILocation(line: 0, scope: !4261, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 85, column: 10, scope: !4253, inlinedAt: !4404)
!4408 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4407)
!4409 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4407)
!4410 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4407)
!4411 = !DILocation(line: 100, column: 3, scope: !4396)
!4412 = distinct !DISubprogram(name: "xinmalloc", scope: !877, file: !877, line: 104, type: !4413, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!138, !896, !896}
!4415 = !{!4416, !4417}
!4416 = !DILocalVariable(name: "n", arg: 1, scope: !4412, file: !877, line: 104, type: !896)
!4417 = !DILocalVariable(name: "s", arg: 2, scope: !4412, file: !877, line: 104, type: !896)
!4418 = !DILocation(line: 0, scope: !4412)
!4419 = !DILocation(line: 0, scope: !4374, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 106, column: 10, scope: !4412)
!4421 = !DILocation(line: 0, scope: !4383, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 91, column: 25, scope: !4374, inlinedAt: !4420)
!4423 = !DILocation(line: 101, column: 13, scope: !4383, inlinedAt: !4422)
!4424 = !DILocation(line: 0, scope: !4261, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 91, column: 10, scope: !4374, inlinedAt: !4420)
!4426 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4425)
!4427 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4425)
!4428 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4425)
!4429 = !DILocation(line: 106, column: 3, scope: !4412)
!4430 = distinct !DISubprogram(name: "x2realloc", scope: !877, file: !877, line: 116, type: !4431, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!138, !138, !883}
!4433 = !{!4434, !4435}
!4434 = !DILocalVariable(name: "p", arg: 1, scope: !4430, file: !877, line: 116, type: !138)
!4435 = !DILocalVariable(name: "ps", arg: 2, scope: !4430, file: !877, line: 116, type: !883)
!4436 = !DILocation(line: 0, scope: !4430)
!4437 = !DILocation(line: 0, scope: !880, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 118, column: 10, scope: !4430)
!4439 = !DILocation(line: 178, column: 14, scope: !880, inlinedAt: !4438)
!4440 = !DILocation(line: 180, column: 9, scope: !4441, inlinedAt: !4438)
!4441 = distinct !DILexicalBlock(scope: !880, file: !877, line: 180, column: 7)
!4442 = !DILocation(line: 180, column: 7, scope: !880, inlinedAt: !4438)
!4443 = !DILocation(line: 182, column: 13, scope: !4444, inlinedAt: !4438)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !877, line: 182, column: 11)
!4445 = distinct !DILexicalBlock(scope: !4441, file: !877, line: 181, column: 5)
!4446 = !DILocation(line: 182, column: 11, scope: !4445, inlinedAt: !4438)
!4447 = !DILocation(line: 197, column: 11, scope: !4448, inlinedAt: !4438)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !877, line: 197, column: 11)
!4449 = distinct !DILexicalBlock(scope: !4441, file: !877, line: 195, column: 5)
!4450 = !DILocation(line: 197, column: 11, scope: !4449, inlinedAt: !4438)
!4451 = !DILocation(line: 198, column: 9, scope: !4448, inlinedAt: !4438)
!4452 = !DILocation(line: 0, scope: !4253, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 201, column: 7, scope: !880, inlinedAt: !4438)
!4454 = !DILocation(line: 85, column: 25, scope: !4253, inlinedAt: !4453)
!4455 = !DILocation(line: 0, scope: !4261, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 85, column: 10, scope: !4253, inlinedAt: !4453)
!4457 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4456)
!4458 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4456)
!4459 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4456)
!4460 = !DILocation(line: 202, column: 7, scope: !880, inlinedAt: !4438)
!4461 = !DILocation(line: 118, column: 3, scope: !4430)
!4462 = !DILocation(line: 0, scope: !880)
!4463 = !DILocation(line: 178, column: 14, scope: !880)
!4464 = !DILocation(line: 180, column: 9, scope: !4441)
!4465 = !DILocation(line: 180, column: 7, scope: !880)
!4466 = !DILocation(line: 182, column: 13, scope: !4444)
!4467 = !DILocation(line: 182, column: 11, scope: !4445)
!4468 = !DILocation(line: 190, column: 30, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4444, file: !877, line: 183, column: 9)
!4470 = !DILocation(line: 191, column: 16, scope: !4469)
!4471 = !DILocation(line: 191, column: 13, scope: !4469)
!4472 = !DILocation(line: 192, column: 9, scope: !4469)
!4473 = !DILocation(line: 197, column: 11, scope: !4448)
!4474 = !DILocation(line: 197, column: 11, scope: !4449)
!4475 = !DILocation(line: 198, column: 9, scope: !4448)
!4476 = !DILocation(line: 0, scope: !4253, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 201, column: 7, scope: !880)
!4478 = !DILocation(line: 85, column: 25, scope: !4253, inlinedAt: !4477)
!4479 = !DILocation(line: 0, scope: !4261, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 85, column: 10, scope: !4253, inlinedAt: !4477)
!4481 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4480)
!4482 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4480)
!4483 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4480)
!4484 = !DILocation(line: 202, column: 7, scope: !880)
!4485 = !DILocation(line: 203, column: 3, scope: !880)
!4486 = !DILocation(line: 0, scope: !892)
!4487 = !DILocation(line: 230, column: 14, scope: !892)
!4488 = !DILocation(line: 238, column: 7, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !892, file: !877, line: 238, column: 7)
!4490 = !DILocation(line: 238, column: 7, scope: !892)
!4491 = !DILocation(line: 240, column: 9, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !892, file: !877, line: 240, column: 7)
!4493 = !DILocation(line: 240, column: 18, scope: !4492)
!4494 = !DILocation(line: 253, column: 8, scope: !892)
!4495 = !DILocation(line: 258, column: 27, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !877, line: 257, column: 5)
!4497 = distinct !DILexicalBlock(scope: !892, file: !877, line: 256, column: 7)
!4498 = !DILocation(line: 259, column: 32, scope: !4496)
!4499 = !DILocation(line: 260, column: 5, scope: !4496)
!4500 = !DILocation(line: 262, column: 9, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !892, file: !877, line: 262, column: 7)
!4502 = !DILocation(line: 262, column: 7, scope: !892)
!4503 = !DILocation(line: 263, column: 9, scope: !4501)
!4504 = !DILocation(line: 263, column: 5, scope: !4501)
!4505 = !DILocation(line: 264, column: 9, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !892, file: !877, line: 264, column: 7)
!4507 = !DILocation(line: 264, column: 14, scope: !4506)
!4508 = !DILocation(line: 265, column: 7, scope: !4506)
!4509 = !DILocation(line: 265, column: 11, scope: !4506)
!4510 = !DILocation(line: 266, column: 11, scope: !4506)
!4511 = !DILocation(line: 267, column: 14, scope: !4506)
!4512 = !DILocation(line: 264, column: 7, scope: !892)
!4513 = !DILocation(line: 268, column: 5, scope: !4506)
!4514 = !DILocation(line: 0, scope: !4328, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 269, column: 8, scope: !892)
!4516 = !DILocation(line: 0, scope: !4336, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 70, column: 25, scope: !4328, inlinedAt: !4515)
!4518 = !DILocation(line: 2059, column: 24, scope: !4336, inlinedAt: !4517)
!4519 = !DILocation(line: 2059, column: 10, scope: !4336, inlinedAt: !4517)
!4520 = !DILocation(line: 0, scope: !4261, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 70, column: 10, scope: !4328, inlinedAt: !4515)
!4522 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4521)
!4523 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4521)
!4524 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4521)
!4525 = !DILocation(line: 270, column: 7, scope: !892)
!4526 = !DILocation(line: 271, column: 3, scope: !892)
!4527 = distinct !DISubprogram(name: "xzalloc", scope: !877, file: !877, line: 279, type: !4281, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4528)
!4528 = !{!4529}
!4529 = !DILocalVariable(name: "s", arg: 1, scope: !4527, file: !877, line: 279, type: !140)
!4530 = !DILocation(line: 0, scope: !4527)
!4531 = !DILocalVariable(name: "n", arg: 1, scope: !4532, file: !877, line: 294, type: !140)
!4532 = distinct !DISubprogram(name: "xcalloc", scope: !877, file: !877, line: 294, type: !4397, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4533)
!4533 = !{!4531, !4534}
!4534 = !DILocalVariable(name: "s", arg: 2, scope: !4532, file: !877, line: 294, type: !140)
!4535 = !DILocation(line: 0, scope: !4532, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 281, column: 10, scope: !4527)
!4537 = !DILocation(line: 296, column: 25, scope: !4532, inlinedAt: !4536)
!4538 = !DILocation(line: 0, scope: !4261, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 296, column: 10, scope: !4532, inlinedAt: !4536)
!4540 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4539)
!4541 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4539)
!4542 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4539)
!4543 = !DILocation(line: 281, column: 3, scope: !4527)
!4544 = !DISubprogram(name: "calloc", scope: !1161, file: !1161, line: 543, type: !4397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4545 = !DILocation(line: 0, scope: !4532)
!4546 = !DILocation(line: 296, column: 25, scope: !4532)
!4547 = !DILocation(line: 0, scope: !4261, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 296, column: 10, scope: !4532)
!4549 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4548)
!4550 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4548)
!4551 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4548)
!4552 = !DILocation(line: 296, column: 3, scope: !4532)
!4553 = distinct !DISubprogram(name: "xizalloc", scope: !877, file: !877, line: 285, type: !4295, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4554)
!4554 = !{!4555}
!4555 = !DILocalVariable(name: "s", arg: 1, scope: !4553, file: !877, line: 285, type: !896)
!4556 = !DILocation(line: 0, scope: !4553)
!4557 = !DILocalVariable(name: "n", arg: 1, scope: !4558, file: !877, line: 300, type: !896)
!4558 = distinct !DISubprogram(name: "xicalloc", scope: !877, file: !877, line: 300, type: !4413, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4559)
!4559 = !{!4557, !4560}
!4560 = !DILocalVariable(name: "s", arg: 2, scope: !4558, file: !877, line: 300, type: !896)
!4561 = !DILocation(line: 0, scope: !4558, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 287, column: 10, scope: !4553)
!4563 = !DILocalVariable(name: "n", arg: 1, scope: !4564, file: !4302, line: 77, type: !896)
!4564 = distinct !DISubprogram(name: "icalloc", scope: !4302, file: !4302, line: 77, type: !4413, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4565)
!4565 = !{!4563, !4566}
!4566 = !DILocalVariable(name: "s", arg: 2, scope: !4564, file: !4302, line: 77, type: !896)
!4567 = !DILocation(line: 0, scope: !4564, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 302, column: 25, scope: !4558, inlinedAt: !4562)
!4569 = !DILocation(line: 91, column: 10, scope: !4564, inlinedAt: !4568)
!4570 = !DILocation(line: 0, scope: !4261, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 302, column: 10, scope: !4558, inlinedAt: !4562)
!4572 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4571)
!4573 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4571)
!4574 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4571)
!4575 = !DILocation(line: 287, column: 3, scope: !4553)
!4576 = !DILocation(line: 0, scope: !4558)
!4577 = !DILocation(line: 0, scope: !4564, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 302, column: 25, scope: !4558)
!4579 = !DILocation(line: 91, column: 10, scope: !4564, inlinedAt: !4578)
!4580 = !DILocation(line: 0, scope: !4261, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 302, column: 10, scope: !4558)
!4582 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4581)
!4583 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4581)
!4584 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4581)
!4585 = !DILocation(line: 302, column: 3, scope: !4558)
!4586 = distinct !DISubprogram(name: "xmemdup", scope: !877, file: !877, line: 310, type: !4587, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4589)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!138, !1185, !140}
!4589 = !{!4590, !4591}
!4590 = !DILocalVariable(name: "p", arg: 1, scope: !4586, file: !877, line: 310, type: !1185)
!4591 = !DILocalVariable(name: "s", arg: 2, scope: !4586, file: !877, line: 310, type: !140)
!4592 = !DILocation(line: 0, scope: !4586)
!4593 = !DILocation(line: 0, scope: !4280, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 312, column: 18, scope: !4586)
!4595 = !DILocation(line: 49, column: 25, scope: !4280, inlinedAt: !4594)
!4596 = !DILocation(line: 0, scope: !4261, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 49, column: 10, scope: !4280, inlinedAt: !4594)
!4598 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4597)
!4599 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4597)
!4600 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4597)
!4601 = !DILocalVariable(name: "__dest", arg: 1, scope: !4602, file: !2428, line: 26, type: !4605)
!4602 = distinct !DISubprogram(name: "memcpy", scope: !2428, file: !2428, line: 26, type: !4603, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4606)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!138, !4605, !1184, !140}
!4605 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!4606 = !{!4601, !4607, !4608}
!4607 = !DILocalVariable(name: "__src", arg: 2, scope: !4602, file: !2428, line: 26, type: !1184)
!4608 = !DILocalVariable(name: "__len", arg: 3, scope: !4602, file: !2428, line: 26, type: !140)
!4609 = !DILocation(line: 0, scope: !4602, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 312, column: 10, scope: !4586)
!4611 = !DILocation(line: 29, column: 10, scope: !4602, inlinedAt: !4610)
!4612 = !DILocation(line: 312, column: 3, scope: !4586)
!4613 = distinct !DISubprogram(name: "ximemdup", scope: !877, file: !877, line: 316, type: !4614, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!138, !1185, !896}
!4616 = !{!4617, !4618}
!4617 = !DILocalVariable(name: "p", arg: 1, scope: !4613, file: !877, line: 316, type: !1185)
!4618 = !DILocalVariable(name: "s", arg: 2, scope: !4613, file: !877, line: 316, type: !896)
!4619 = !DILocation(line: 0, scope: !4613)
!4620 = !DILocation(line: 0, scope: !4294, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 318, column: 18, scope: !4613)
!4622 = !DILocation(line: 0, scope: !4301, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 55, column: 25, scope: !4294, inlinedAt: !4621)
!4624 = !DILocation(line: 57, column: 26, scope: !4301, inlinedAt: !4623)
!4625 = !DILocation(line: 0, scope: !4261, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 55, column: 10, scope: !4294, inlinedAt: !4621)
!4627 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4626)
!4628 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4626)
!4629 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4626)
!4630 = !DILocation(line: 0, scope: !4602, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 318, column: 10, scope: !4613)
!4632 = !DILocation(line: 29, column: 10, scope: !4602, inlinedAt: !4631)
!4633 = !DILocation(line: 318, column: 3, scope: !4613)
!4634 = distinct !DISubprogram(name: "ximemdup0", scope: !877, file: !877, line: 325, type: !4635, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4637)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!137, !1185, !896}
!4637 = !{!4638, !4639, !4640}
!4638 = !DILocalVariable(name: "p", arg: 1, scope: !4634, file: !877, line: 325, type: !1185)
!4639 = !DILocalVariable(name: "s", arg: 2, scope: !4634, file: !877, line: 325, type: !896)
!4640 = !DILocalVariable(name: "result", scope: !4634, file: !877, line: 327, type: !137)
!4641 = !DILocation(line: 0, scope: !4634)
!4642 = !DILocation(line: 327, column: 30, scope: !4634)
!4643 = !DILocation(line: 0, scope: !4294, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 327, column: 18, scope: !4634)
!4645 = !DILocation(line: 0, scope: !4301, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 55, column: 25, scope: !4294, inlinedAt: !4644)
!4647 = !DILocation(line: 57, column: 26, scope: !4301, inlinedAt: !4646)
!4648 = !DILocation(line: 0, scope: !4261, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 55, column: 10, scope: !4294, inlinedAt: !4644)
!4650 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4649)
!4651 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4649)
!4652 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4649)
!4653 = !DILocation(line: 328, column: 3, scope: !4634)
!4654 = !DILocation(line: 328, column: 13, scope: !4634)
!4655 = !DILocation(line: 0, scope: !4602, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 329, column: 10, scope: !4634)
!4657 = !DILocation(line: 29, column: 10, scope: !4602, inlinedAt: !4656)
!4658 = !DILocation(line: 329, column: 3, scope: !4634)
!4659 = distinct !DISubprogram(name: "xstrdup", scope: !877, file: !877, line: 335, type: !1163, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4660)
!4660 = !{!4661}
!4661 = !DILocalVariable(name: "string", arg: 1, scope: !4659, file: !877, line: 335, type: !143)
!4662 = !DILocation(line: 0, scope: !4659)
!4663 = !DILocation(line: 337, column: 27, scope: !4659)
!4664 = !DILocation(line: 337, column: 43, scope: !4659)
!4665 = !DILocation(line: 0, scope: !4586, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 337, column: 10, scope: !4659)
!4667 = !DILocation(line: 0, scope: !4280, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 312, column: 18, scope: !4586, inlinedAt: !4666)
!4669 = !DILocation(line: 49, column: 25, scope: !4280, inlinedAt: !4668)
!4670 = !DILocation(line: 0, scope: !4261, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 49, column: 10, scope: !4280, inlinedAt: !4668)
!4672 = !DILocation(line: 39, column: 8, scope: !4268, inlinedAt: !4671)
!4673 = !DILocation(line: 39, column: 7, scope: !4261, inlinedAt: !4671)
!4674 = !DILocation(line: 40, column: 5, scope: !4268, inlinedAt: !4671)
!4675 = !DILocation(line: 0, scope: !4602, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 312, column: 10, scope: !4586, inlinedAt: !4666)
!4677 = !DILocation(line: 29, column: 10, scope: !4602, inlinedAt: !4676)
!4678 = !DILocation(line: 337, column: 3, scope: !4659)
!4679 = distinct !DISubprogram(name: "xalloc_die", scope: !776, file: !776, line: 32, type: !485, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4680)
!4680 = !{!4681}
!4681 = !DILocalVariable(name: "__errstatus", scope: !4682, file: !776, line: 34, type: !4683)
!4682 = distinct !DILexicalBlock(scope: !4679, file: !776, line: 34, column: 3)
!4683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4684 = !DILocation(line: 34, column: 3, scope: !4682)
!4685 = !DILocation(line: 0, scope: !4682)
!4686 = !DILocation(line: 40, column: 3, scope: !4679)
!4687 = distinct !DISubprogram(name: "close_stream", scope: !913, file: !913, line: 55, type: !4688, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4724)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!80, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4692)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4692, file: !208, line: 51, baseType: !80, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4692, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4692, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4692, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4692, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4692, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4692, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4692, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4692, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4692, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4692, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4692, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4692, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4692, file: !208, line: 70, baseType: !4708, size: 64, offset: 832)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4692, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4692, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4692, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4692, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4692, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4692, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4692, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4692, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4692, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4692, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4692, file: !208, line: 93, baseType: !4708, size: 64, offset: 1344)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4692, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4692, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4692, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4692, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4724 = !{!4725, !4726, !4728, !4729}
!4725 = !DILocalVariable(name: "stream", arg: 1, scope: !4687, file: !913, line: 55, type: !4690)
!4726 = !DILocalVariable(name: "some_pending", scope: !4687, file: !913, line: 57, type: !4727)
!4727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4728 = !DILocalVariable(name: "prev_fail", scope: !4687, file: !913, line: 58, type: !4727)
!4729 = !DILocalVariable(name: "fclose_fail", scope: !4687, file: !913, line: 59, type: !4727)
!4730 = !DILocation(line: 0, scope: !4687)
!4731 = !DILocation(line: 57, column: 30, scope: !4687)
!4732 = !DILocalVariable(name: "__stream", arg: 1, scope: !4733, file: !1542, line: 135, type: !4690)
!4733 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1542, file: !1542, line: 135, type: !4688, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4734)
!4734 = !{!4732}
!4735 = !DILocation(line: 0, scope: !4733, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 58, column: 27, scope: !4687)
!4737 = !DILocation(line: 137, column: 10, scope: !4733, inlinedAt: !4736)
!4738 = !{!1551, !1041, i64 0}
!4739 = !DILocation(line: 58, column: 43, scope: !4687)
!4740 = !DILocation(line: 59, column: 29, scope: !4687)
!4741 = !DILocation(line: 59, column: 45, scope: !4687)
!4742 = !DILocation(line: 69, column: 17, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4687, file: !913, line: 69, column: 7)
!4744 = !DILocation(line: 57, column: 50, scope: !4687)
!4745 = !DILocation(line: 69, column: 33, scope: !4743)
!4746 = !DILocation(line: 69, column: 53, scope: !4743)
!4747 = !DILocation(line: 69, column: 59, scope: !4743)
!4748 = !DILocation(line: 69, column: 7, scope: !4687)
!4749 = !DILocation(line: 71, column: 11, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4743, file: !913, line: 70, column: 5)
!4751 = !DILocation(line: 72, column: 9, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4750, file: !913, line: 71, column: 11)
!4753 = !DILocation(line: 72, column: 15, scope: !4752)
!4754 = !DILocation(line: 77, column: 1, scope: !4687)
!4755 = !DISubprogram(name: "__fpending", scope: !4756, file: !4756, line: 75, type: !4757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4756 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!140, !4690}
!4759 = distinct !DISubprogram(name: "rpl_fclose", scope: !915, file: !915, line: 58, type: !4760, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4796)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!80, !4762}
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4764)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4765)
!4765 = !{!4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4764, file: !208, line: 51, baseType: !80, size: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4764, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4764, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4764, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4764, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4764, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4764, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4764, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4764, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4764, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4764, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4764, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4764, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4764, file: !208, line: 70, baseType: !4780, size: 64, offset: 832)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4764, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4764, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4764, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4764, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4764, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4764, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4764, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4764, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4764, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4764, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4764, file: !208, line: 93, baseType: !4780, size: 64, offset: 1344)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4764, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4764, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4764, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4764, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4796 = !{!4797, !4798, !4799, !4800}
!4797 = !DILocalVariable(name: "fp", arg: 1, scope: !4759, file: !915, line: 58, type: !4762)
!4798 = !DILocalVariable(name: "saved_errno", scope: !4759, file: !915, line: 60, type: !80)
!4799 = !DILocalVariable(name: "fd", scope: !4759, file: !915, line: 63, type: !80)
!4800 = !DILocalVariable(name: "result", scope: !4759, file: !915, line: 74, type: !80)
!4801 = !DILocation(line: 0, scope: !4759)
!4802 = !DILocation(line: 63, column: 12, scope: !4759)
!4803 = !DILocation(line: 64, column: 10, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4759, file: !915, line: 64, column: 7)
!4805 = !DILocation(line: 64, column: 7, scope: !4759)
!4806 = !DILocation(line: 65, column: 12, scope: !4804)
!4807 = !DILocation(line: 65, column: 5, scope: !4804)
!4808 = !DILocation(line: 70, column: 9, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4759, file: !915, line: 70, column: 7)
!4810 = !DILocation(line: 70, column: 23, scope: !4809)
!4811 = !DILocation(line: 70, column: 33, scope: !4809)
!4812 = !DILocation(line: 70, column: 26, scope: !4809)
!4813 = !DILocation(line: 70, column: 59, scope: !4809)
!4814 = !DILocation(line: 71, column: 7, scope: !4809)
!4815 = !DILocation(line: 71, column: 10, scope: !4809)
!4816 = !DILocation(line: 70, column: 7, scope: !4759)
!4817 = !DILocation(line: 100, column: 12, scope: !4759)
!4818 = !DILocation(line: 105, column: 7, scope: !4759)
!4819 = !DILocation(line: 72, column: 19, scope: !4809)
!4820 = !DILocation(line: 105, column: 19, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4759, file: !915, line: 105, column: 7)
!4822 = !DILocation(line: 107, column: 13, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4821, file: !915, line: 106, column: 5)
!4824 = !DILocation(line: 109, column: 5, scope: !4823)
!4825 = !DILocation(line: 112, column: 1, scope: !4759)
!4826 = !DISubprogram(name: "fileno", scope: !447, file: !447, line: 809, type: !4760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4827 = !DISubprogram(name: "fclose", scope: !447, file: !447, line: 178, type: !4760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4828 = !DISubprogram(name: "__freading", scope: !4756, file: !4756, line: 51, type: !4760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4829 = !DISubprogram(name: "lseek", scope: !1612, file: !1612, line: 339, type: !4830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!230, !80, !230, !80}
!4832 = distinct !DISubprogram(name: "open_safer", scope: !917, file: !917, line: 29, type: !4833, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4835)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!80, !143, !80, null}
!4835 = !{!4836, !4837, !4838, !4839}
!4836 = !DILocalVariable(name: "file", arg: 1, scope: !4832, file: !917, line: 29, type: !143)
!4837 = !DILocalVariable(name: "flags", arg: 2, scope: !4832, file: !917, line: 29, type: !80)
!4838 = !DILocalVariable(name: "mode", scope: !4832, file: !917, line: 31, type: !938)
!4839 = !DILocalVariable(name: "ap", scope: !4840, file: !917, line: 35, type: !4842)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !917, line: 34, column: 5)
!4841 = distinct !DILexicalBlock(scope: !4832, file: !917, line: 33, column: 7)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !449, line: 22, baseType: !4843)
!4843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4844, baseType: !4845)
!4844 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4846)
!4846 = !{!4847, !4848, !4849, !4850, !4851}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4845, file: !4844, line: 35, baseType: !138, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4845, file: !4844, line: 35, baseType: !138, size: 64, offset: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4845, file: !4844, line: 35, baseType: !138, size: 64, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4845, file: !4844, line: 35, baseType: !80, size: 32, offset: 192)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4845, file: !4844, line: 35, baseType: !80, size: 32, offset: 224)
!4852 = !DILocation(line: 0, scope: !4832)
!4853 = !DILocation(line: 33, column: 13, scope: !4841)
!4854 = !DILocation(line: 33, column: 7, scope: !4832)
!4855 = !DILocation(line: 35, column: 7, scope: !4840)
!4856 = !DILocation(line: 35, column: 15, scope: !4840)
!4857 = !DILocation(line: 36, column: 7, scope: !4840)
!4858 = !DILocation(line: 40, column: 14, scope: !4840)
!4859 = !DILocation(line: 42, column: 7, scope: !4840)
!4860 = !DILocation(line: 43, column: 5, scope: !4841)
!4861 = !DILocation(line: 43, column: 5, scope: !4840)
!4862 = !DILocation(line: 45, column: 20, scope: !4832)
!4863 = !DILocation(line: 45, column: 10, scope: !4832)
!4864 = !DILocation(line: 45, column: 3, scope: !4832)
!4865 = !DISubprogram(name: "open", scope: !1758, file: !1758, line: 181, type: !4833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4866 = distinct !DISubprogram(name: "rpl_fflush", scope: !919, file: !919, line: 130, type: !4867, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4903)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!80, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4871)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4872)
!4872 = !{!4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4871, file: !208, line: 51, baseType: !80, size: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4871, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4871, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4871, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4871, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4871, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4871, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4871, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4871, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4871, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4871, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4871, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4871, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4871, file: !208, line: 70, baseType: !4887, size: 64, offset: 832)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4871, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4871, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4871, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4871, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4871, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4871, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4871, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4871, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4871, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4871, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4871, file: !208, line: 93, baseType: !4887, size: 64, offset: 1344)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4871, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4871, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4871, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4871, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4903 = !{!4904}
!4904 = !DILocalVariable(name: "stream", arg: 1, scope: !4866, file: !919, line: 130, type: !4869)
!4905 = !DILocation(line: 0, scope: !4866)
!4906 = !DILocation(line: 151, column: 14, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4866, file: !919, line: 151, column: 7)
!4908 = !DILocation(line: 151, column: 22, scope: !4907)
!4909 = !DILocation(line: 151, column: 27, scope: !4907)
!4910 = !DILocation(line: 151, column: 7, scope: !4866)
!4911 = !DILocation(line: 152, column: 12, scope: !4907)
!4912 = !DILocation(line: 152, column: 5, scope: !4907)
!4913 = !DILocalVariable(name: "fp", arg: 1, scope: !4914, file: !919, line: 42, type: !4869)
!4914 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !919, file: !919, line: 42, type: !4915, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4917)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{null, !4869}
!4917 = !{!4913}
!4918 = !DILocation(line: 0, scope: !4914, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 157, column: 3, scope: !4866)
!4920 = !DILocation(line: 44, column: 12, scope: !4921, inlinedAt: !4919)
!4921 = distinct !DILexicalBlock(scope: !4914, file: !919, line: 44, column: 7)
!4922 = !DILocation(line: 44, column: 19, scope: !4921, inlinedAt: !4919)
!4923 = !DILocation(line: 44, column: 7, scope: !4914, inlinedAt: !4919)
!4924 = !DILocation(line: 46, column: 5, scope: !4921, inlinedAt: !4919)
!4925 = !DILocation(line: 159, column: 10, scope: !4866)
!4926 = !DILocation(line: 159, column: 3, scope: !4866)
!4927 = !DILocation(line: 236, column: 1, scope: !4866)
!4928 = !DISubprogram(name: "fflush", scope: !447, file: !447, line: 230, type: !4867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!4929 = distinct !DISubprogram(name: "rpl_fseeko", scope: !921, file: !921, line: 28, type: !4930, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4967)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!80, !4932, !4966, !80}
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4934)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4935)
!4935 = !{!4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4934, file: !208, line: 51, baseType: !80, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4934, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4934, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4934, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4934, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4934, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4934, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4934, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4934, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4934, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4934, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4934, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4934, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4934, file: !208, line: 70, baseType: !4950, size: 64, offset: 832)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4934, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4934, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4934, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4934, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4934, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4934, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4934, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4934, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4934, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4934, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4934, file: !208, line: 93, baseType: !4950, size: 64, offset: 1344)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4934, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4934, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4934, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4934, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4966 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !447, line: 63, baseType: !230)
!4967 = !{!4968, !4969, !4970, !4971}
!4968 = !DILocalVariable(name: "fp", arg: 1, scope: !4929, file: !921, line: 28, type: !4932)
!4969 = !DILocalVariable(name: "offset", arg: 2, scope: !4929, file: !921, line: 28, type: !4966)
!4970 = !DILocalVariable(name: "whence", arg: 3, scope: !4929, file: !921, line: 28, type: !80)
!4971 = !DILocalVariable(name: "pos", scope: !4972, file: !921, line: 123, type: !4966)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !921, line: 119, column: 5)
!4973 = distinct !DILexicalBlock(scope: !4929, file: !921, line: 55, column: 7)
!4974 = !DILocation(line: 0, scope: !4929)
!4975 = !DILocation(line: 55, column: 12, scope: !4973)
!4976 = !{!1551, !973, i64 16}
!4977 = !DILocation(line: 55, column: 33, scope: !4973)
!4978 = !{!1551, !973, i64 8}
!4979 = !DILocation(line: 55, column: 25, scope: !4973)
!4980 = !DILocation(line: 56, column: 7, scope: !4973)
!4981 = !DILocation(line: 56, column: 15, scope: !4973)
!4982 = !DILocation(line: 56, column: 37, scope: !4973)
!4983 = !{!1551, !973, i64 32}
!4984 = !DILocation(line: 56, column: 29, scope: !4973)
!4985 = !DILocation(line: 57, column: 7, scope: !4973)
!4986 = !DILocation(line: 57, column: 15, scope: !4973)
!4987 = !{!1551, !973, i64 72}
!4988 = !DILocation(line: 57, column: 29, scope: !4973)
!4989 = !DILocation(line: 55, column: 7, scope: !4929)
!4990 = !DILocation(line: 123, column: 26, scope: !4972)
!4991 = !DILocation(line: 123, column: 19, scope: !4972)
!4992 = !DILocation(line: 0, scope: !4972)
!4993 = !DILocation(line: 124, column: 15, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4972, file: !921, line: 124, column: 11)
!4995 = !DILocation(line: 124, column: 11, scope: !4972)
!4996 = !DILocation(line: 135, column: 19, scope: !4972)
!4997 = !DILocation(line: 136, column: 12, scope: !4972)
!4998 = !DILocation(line: 136, column: 20, scope: !4972)
!4999 = !{!1551, !1552, i64 144}
!5000 = !DILocation(line: 167, column: 7, scope: !4972)
!5001 = !DILocation(line: 169, column: 10, scope: !4929)
!5002 = !DILocation(line: 169, column: 3, scope: !4929)
!5003 = !DILocation(line: 170, column: 1, scope: !4929)
!5004 = !DISubprogram(name: "fseeko", scope: !447, file: !447, line: 736, type: !5005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!80, !4932, !230, !80}
!5007 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !783, file: !783, line: 100, type: !5008, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5011)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!140, !2446, !143, !140, !5010}
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!5011 = !{!5012, !5013, !5014, !5015, !5016}
!5012 = !DILocalVariable(name: "pwc", arg: 1, scope: !5007, file: !783, line: 100, type: !2446)
!5013 = !DILocalVariable(name: "s", arg: 2, scope: !5007, file: !783, line: 100, type: !143)
!5014 = !DILocalVariable(name: "n", arg: 3, scope: !5007, file: !783, line: 100, type: !140)
!5015 = !DILocalVariable(name: "ps", arg: 4, scope: !5007, file: !783, line: 100, type: !5010)
!5016 = !DILocalVariable(name: "ret", scope: !5007, file: !783, line: 130, type: !140)
!5017 = !DILocation(line: 0, scope: !5007)
!5018 = !DILocation(line: 105, column: 9, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5007, file: !783, line: 105, column: 7)
!5020 = !DILocation(line: 105, column: 7, scope: !5007)
!5021 = !DILocation(line: 117, column: 10, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5007, file: !783, line: 117, column: 7)
!5023 = !DILocation(line: 117, column: 7, scope: !5007)
!5024 = !DILocation(line: 130, column: 16, scope: !5007)
!5025 = !DILocation(line: 135, column: 11, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5007, file: !783, line: 135, column: 7)
!5027 = !DILocation(line: 135, column: 25, scope: !5026)
!5028 = !DILocation(line: 135, column: 30, scope: !5026)
!5029 = !DILocation(line: 135, column: 7, scope: !5007)
!5030 = !DILocalVariable(name: "ps", arg: 1, scope: !5031, file: !2419, line: 1135, type: !5010)
!5031 = distinct !DISubprogram(name: "mbszero", scope: !2419, file: !2419, line: 1135, type: !5032, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5034)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{null, !5010}
!5034 = !{!5030}
!5035 = !DILocation(line: 0, scope: !5031, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 137, column: 5, scope: !5026)
!5037 = !DILocalVariable(name: "__dest", arg: 1, scope: !5038, file: !2428, line: 57, type: !138)
!5038 = distinct !DISubprogram(name: "memset", scope: !2428, file: !2428, line: 57, type: !2429, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5039)
!5039 = !{!5037, !5040, !5041}
!5040 = !DILocalVariable(name: "__ch", arg: 2, scope: !5038, file: !2428, line: 57, type: !80)
!5041 = !DILocalVariable(name: "__len", arg: 3, scope: !5038, file: !2428, line: 57, type: !140)
!5042 = !DILocation(line: 0, scope: !5038, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 1137, column: 3, scope: !5031, inlinedAt: !5036)
!5044 = !DILocation(line: 59, column: 10, scope: !5038, inlinedAt: !5043)
!5045 = !DILocation(line: 137, column: 5, scope: !5026)
!5046 = !DILocation(line: 138, column: 11, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5007, file: !783, line: 138, column: 7)
!5048 = !DILocation(line: 138, column: 7, scope: !5007)
!5049 = !DILocation(line: 139, column: 5, scope: !5047)
!5050 = !DILocation(line: 143, column: 26, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5007, file: !783, line: 143, column: 7)
!5052 = !DILocation(line: 143, column: 41, scope: !5051)
!5053 = !DILocation(line: 143, column: 7, scope: !5007)
!5054 = !DILocation(line: 145, column: 15, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !783, line: 145, column: 11)
!5056 = distinct !DILexicalBlock(scope: !5051, file: !783, line: 144, column: 5)
!5057 = !DILocation(line: 145, column: 11, scope: !5056)
!5058 = !DILocation(line: 146, column: 32, scope: !5055)
!5059 = !DILocation(line: 146, column: 16, scope: !5055)
!5060 = !DILocation(line: 146, column: 14, scope: !5055)
!5061 = !DILocation(line: 146, column: 9, scope: !5055)
!5062 = !DILocation(line: 286, column: 1, scope: !5007)
!5063 = !DISubprogram(name: "mbsinit", scope: !5064, file: !5064, line: 293, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5064 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!80, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!5069 = distinct !DISubprogram(name: "mkancesdirs", scope: !923, file: !923, line: 65, type: !5070, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !5073)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!898, !137, !5072, !1201, !138}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!5073 = !{!5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5089, !5090}
!5074 = !DILocalVariable(name: "file", arg: 1, scope: !5069, file: !923, line: 65, type: !137)
!5075 = !DILocalVariable(name: "wd", arg: 2, scope: !5069, file: !923, line: 65, type: !5072)
!5076 = !DILocalVariable(name: "make_dir", arg: 3, scope: !5069, file: !923, line: 66, type: !1201)
!5077 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !5069, file: !923, line: 67, type: !138)
!5078 = !DILocalVariable(name: "sep", scope: !5069, file: !923, line: 72, type: !137)
!5079 = !DILocalVariable(name: "component", scope: !5069, file: !923, line: 76, type: !137)
!5080 = !DILocalVariable(name: "p", scope: !5069, file: !923, line: 78, type: !137)
!5081 = !DILocalVariable(name: "c", scope: !5069, file: !923, line: 79, type: !4)
!5082 = !DILocalVariable(name: "made_dir", scope: !5069, file: !923, line: 80, type: !191)
!5083 = !DILocalVariable(name: "make_dir_errno", scope: !5084, file: !923, line: 106, type: !80)
!5084 = distinct !DILexicalBlock(scope: !5085, file: !923, line: 99, column: 11)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !923, line: 98, column: 13)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !923, line: 95, column: 7)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !923, line: 94, column: 14)
!5088 = distinct !DILexicalBlock(scope: !5069, file: !923, line: 89, column: 9)
!5089 = !DILocalVariable(name: "savewd_chdir_options", scope: !5084, file: !923, line: 115, type: !80)
!5090 = !DILocalVariable(name: "chdir_result", scope: !5084, file: !923, line: 119, type: !80)
!5091 = !DILocation(line: 0, scope: !5069)
!5092 = !DILocation(line: 88, column: 15, scope: !5069)
!5093 = !DILocation(line: 88, column: 3, scope: !5069)
!5094 = !DILocation(line: 88, column: 17, scope: !5069)
!5095 = !DILocation(line: 89, column: 9, scope: !5088)
!5096 = !DILocation(line: 0, scope: !5088)
!5097 = !DILocation(line: 89, column: 9, scope: !5069)
!5098 = !DILocation(line: 91, column: 13, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5088, file: !923, line: 90, column: 7)
!5100 = !DILocation(line: 94, column: 26, scope: !5087)
!5101 = !DILocation(line: 94, column: 29, scope: !5087)
!5102 = !DILocation(line: 94, column: 32, scope: !5087)
!5103 = !DILocation(line: 98, column: 20, scope: !5085)
!5104 = !DILocation(line: 98, column: 32, scope: !5085)
!5105 = !DILocation(line: 98, column: 37, scope: !5085)
!5106 = !DILocation(line: 98, column: 40, scope: !5085)
!5107 = !DILocation(line: 98, column: 53, scope: !5085)
!5108 = !DILocation(line: 98, column: 13, scope: !5086)
!5109 = !DILocation(line: 102, column: 18, scope: !5084)
!5110 = !DILocation(line: 0, scope: !5084)
!5111 = !DILocation(line: 108, column: 17, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5084, file: !923, line: 107, column: 17)
!5113 = !DILocation(line: 107, column: 33, scope: !5112)
!5114 = !DILocation(line: 108, column: 20, scope: !5112)
!5115 = !DILocation(line: 108, column: 33, scope: !5112)
!5116 = !DILocation(line: 108, column: 40, scope: !5112)
!5117 = !DILocation(line: 108, column: 43, scope: !5112)
!5118 = !DILocation(line: 108, column: 56, scope: !5112)
!5119 = !DILocation(line: 107, column: 17, scope: !5084)
!5120 = !DILocation(line: 110, column: 22, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5112, file: !923, line: 110, column: 22)
!5122 = !DILocation(line: 110, column: 63, scope: !5121)
!5123 = !DILocation(line: 110, column: 22, scope: !5112)
!5124 = !DILocation(line: 111, column: 32, scope: !5121)
!5125 = !DILocation(line: 116, column: 17, scope: !5084)
!5126 = !DILocation(line: 120, column: 15, scope: !5084)
!5127 = !DILocation(line: 124, column: 30, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5084, file: !923, line: 124, column: 17)
!5129 = !DILocation(line: 124, column: 17, scope: !5084)
!5130 = !DILocation(line: 125, column: 20, scope: !5128)
!5131 = !DILocation(line: 127, column: 30, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5084, file: !923, line: 127, column: 17)
!5133 = !DILocation(line: 127, column: 17, scope: !5084)
!5134 = !DILocation(line: 129, column: 36, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5136, file: !923, line: 129, column: 21)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !923, line: 128, column: 15)
!5137 = !DILocation(line: 129, column: 41, scope: !5135)
!5138 = !DILocation(line: 129, column: 44, scope: !5135)
!5139 = !DILocation(line: 129, column: 50, scope: !5135)
!5140 = !DILocation(line: 129, column: 21, scope: !5136)
!5141 = !DILocation(line: 130, column: 25, scope: !5135)
!5142 = !DILocation(line: 130, column: 19, scope: !5135)
!5143 = !DILocation(line: 131, column: 24, scope: !5136)
!5144 = distinct !{!5144, !5093, !5145, !1087}
!5145 = !DILocation(line: 136, column: 7, scope: !5069)
!5146 = !DILocation(line: 76, column: 9, scope: !5069)
!5147 = !DILocation(line: 138, column: 20, scope: !5069)
!5148 = !DILocation(line: 138, column: 3, scope: !5069)
!5149 = !DILocation(line: 139, column: 1, scope: !5069)
!5150 = distinct !DISubprogram(name: "dirchownmod", scope: !936, file: !936, line: 67, type: !5151, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5153)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!80, !80, !143, !938, !146, !148, !938, !938}
!5153 = !{!5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5184, !5185, !5188, !5191, !5194}
!5154 = !DILocalVariable(name: "fd", arg: 1, scope: !5150, file: !936, line: 67, type: !80)
!5155 = !DILocalVariable(name: "dir", arg: 2, scope: !5150, file: !936, line: 67, type: !143)
!5156 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !5150, file: !936, line: 67, type: !938)
!5157 = !DILocalVariable(name: "owner", arg: 4, scope: !5150, file: !936, line: 68, type: !146)
!5158 = !DILocalVariable(name: "group", arg: 5, scope: !5150, file: !936, line: 68, type: !148)
!5159 = !DILocalVariable(name: "mode", arg: 6, scope: !5150, file: !936, line: 69, type: !938)
!5160 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !5150, file: !936, line: 69, type: !938)
!5161 = !DILocalVariable(name: "st", scope: !5150, file: !936, line: 71, type: !5162)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1865, line: 44, size: 1024, elements: !5163)
!5163 = !{!5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5181, !5182, !5183}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5162, file: !1865, line: 46, baseType: !1868, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5162, file: !1865, line: 47, baseType: !1870, size: 64, offset: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5162, file: !1865, line: 48, baseType: !939, size: 32, offset: 128)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5162, file: !1865, line: 49, baseType: !1873, size: 32, offset: 160)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5162, file: !1865, line: 50, baseType: !147, size: 32, offset: 192)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5162, file: !1865, line: 51, baseType: !149, size: 32, offset: 224)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5162, file: !1865, line: 52, baseType: !1868, size: 64, offset: 256)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5162, file: !1865, line: 53, baseType: !1868, size: 64, offset: 320)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5162, file: !1865, line: 54, baseType: !230, size: 64, offset: 384)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5162, file: !1865, line: 55, baseType: !1880, size: 32, offset: 448)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5162, file: !1865, line: 56, baseType: !80, size: 32, offset: 480)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5162, file: !1865, line: 57, baseType: !1883, size: 64, offset: 512)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5162, file: !1865, line: 65, baseType: !5177, size: 128, offset: 576)
!5177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1886, line: 11, size: 128, elements: !5178)
!5178 = !{!5179, !5180}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5177, file: !1886, line: 16, baseType: !1889, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5177, file: !1886, line: 21, baseType: !1891, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5162, file: !1865, line: 66, baseType: !5177, size: 128, offset: 704)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5162, file: !1865, line: 67, baseType: !5177, size: 128, offset: 832)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5162, file: !1865, line: 79, baseType: !1895, size: 64, offset: 960)
!5184 = !DILocalVariable(name: "result", scope: !5150, file: !936, line: 72, type: !80)
!5185 = !DILocalVariable(name: "dir_mode", scope: !5186, file: !936, line: 76, type: !938)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !936, line: 75, column: 5)
!5187 = distinct !DILexicalBlock(scope: !5150, file: !936, line: 74, column: 7)
!5188 = !DILocalVariable(name: "indeterminate", scope: !5189, file: !936, line: 93, type: !938)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !936, line: 88, column: 9)
!5190 = distinct !DILexicalBlock(scope: !5186, file: !936, line: 82, column: 11)
!5191 = !DILocalVariable(name: "chmod_mode", scope: !5192, file: !936, line: 123, type: !938)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !936, line: 122, column: 13)
!5193 = distinct !DILexicalBlock(scope: !5189, file: !936, line: 121, column: 15)
!5194 = !DILocalVariable(name: "saved_errno", scope: !5195, file: !936, line: 140, type: !80)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !936, line: 139, column: 9)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !936, line: 136, column: 11)
!5197 = distinct !DILexicalBlock(scope: !5198, file: !936, line: 135, column: 5)
!5198 = distinct !DILexicalBlock(scope: !5150, file: !936, line: 134, column: 7)
!5199 = !DILocation(line: 0, scope: !5150)
!5200 = !DILocation(line: 71, column: 3, scope: !5150)
!5201 = !DILocation(line: 71, column: 15, scope: !5150)
!5202 = !DILocation(line: 72, column: 20, scope: !5150)
!5203 = !DILocation(line: 72, column: 17, scope: !5150)
!5204 = !DILocation(line: 72, column: 26, scope: !5150)
!5205 = !DILocation(line: 72, column: 44, scope: !5150)
!5206 = !DILocation(line: 74, column: 14, scope: !5187)
!5207 = !DILocation(line: 74, column: 7, scope: !5150)
!5208 = !DILocation(line: 76, column: 28, scope: !5186)
!5209 = !DILocation(line: 0, scope: !5186)
!5210 = !DILocation(line: 82, column: 13, scope: !5190)
!5211 = !DILocation(line: 82, column: 11, scope: !5186)
!5212 = !DILocation(line: 84, column: 11, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5190, file: !936, line: 83, column: 9)
!5214 = !DILocation(line: 84, column: 17, scope: !5213)
!5215 = !DILocation(line: 86, column: 9, scope: !5213)
!5216 = !DILocation(line: 0, scope: !5189)
!5217 = !DILocation(line: 100, column: 22, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5189, file: !936, line: 100, column: 15)
!5219 = !DILocation(line: 100, column: 36, scope: !5218)
!5220 = !DILocation(line: 101, column: 25, scope: !5218)
!5221 = !DILocation(line: 101, column: 39, scope: !5218)
!5222 = !DILocation(line: 103, column: 42, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5218, file: !936, line: 102, column: 13)
!5224 = !DILocation(line: 103, column: 25, scope: !5223)
!5225 = !DILocation(line: 104, column: 27, scope: !5223)
!5226 = !DILocation(line: 105, column: 38, scope: !5223)
!5227 = !DILocation(line: 105, column: 27, scope: !5223)
!5228 = !DILocation(line: 106, column: 27, scope: !5223)
!5229 = !DILocation(line: 107, column: 27, scope: !5223)
!5230 = !DILocation(line: 114, column: 26, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5223, file: !936, line: 114, column: 19)
!5232 = !DILocation(line: 114, column: 31, scope: !5231)
!5233 = !DILocation(line: 114, column: 44, scope: !5231)
!5234 = !DILocation(line: 114, column: 19, scope: !5223)
!5235 = !DILocation(line: 121, column: 42, scope: !5193)
!5236 = !DILocation(line: 121, column: 50, scope: !5193)
!5237 = !DILocation(line: 121, column: 67, scope: !5193)
!5238 = !DILocation(line: 121, column: 15, scope: !5189)
!5239 = !DILocation(line: 124, column: 34, scope: !5192)
!5240 = !DILocation(line: 124, column: 52, scope: !5192)
!5241 = !DILocation(line: 124, column: 22, scope: !5192)
!5242 = !DILocation(line: 0, scope: !5192)
!5243 = !DILocation(line: 125, column: 42, scope: !5192)
!5244 = !DILocation(line: 125, column: 25, scope: !5192)
!5245 = !DILocation(line: 126, column: 27, scope: !5192)
!5246 = !DILocation(line: 134, column: 7, scope: !5150)
!5247 = !DILocation(line: 127, column: 38, scope: !5192)
!5248 = !DILocation(line: 127, column: 27, scope: !5192)
!5249 = !DILocation(line: 128, column: 27, scope: !5192)
!5250 = !DILocation(line: 129, column: 27, scope: !5192)
!5251 = !DILocation(line: 134, column: 9, scope: !5198)
!5252 = !DILocation(line: 136, column: 18, scope: !5196)
!5253 = !DILocation(line: 136, column: 11, scope: !5197)
!5254 = !DILocation(line: 137, column: 18, scope: !5196)
!5255 = !DILocation(line: 137, column: 9, scope: !5196)
!5256 = !DILocation(line: 140, column: 29, scope: !5195)
!5257 = !DILocation(line: 0, scope: !5195)
!5258 = !DILocation(line: 141, column: 11, scope: !5195)
!5259 = !DILocation(line: 142, column: 17, scope: !5195)
!5260 = !DILocation(line: 147, column: 1, scope: !5150)
!5261 = !DILocation(line: 146, column: 3, scope: !5150)
!5262 = !DISubprogram(name: "fstat", scope: !1393, file: !1393, line: 210, type: !5263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!80, !80, !5265}
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5266 = !DISubprogram(name: "fchown", scope: !1612, file: !1612, line: 498, type: !5267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!80, !80, !147, !149}
!5269 = !DISubprogram(name: "lchown", scope: !1612, file: !1612, line: 503, type: !5270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!80, !143, !147, !149}
!5272 = !DISubprogram(name: "chown", scope: !1612, file: !1612, line: 493, type: !5270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5273 = !DISubprogram(name: "fchmod", scope: !1393, file: !1393, line: 365, type: !5274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!80, !80, !939}
!5276 = !DISubprogram(name: "lchmod", scope: !1393, file: !1393, line: 359, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5277 = !DISubprogram(name: "chmod", scope: !1393, file: !1393, line: 352, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !981)
!5278 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !941, file: !941, line: 27, type: !4245, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !5279)
!5279 = !{!5280, !5281, !5282, !5283}
!5280 = !DILocalVariable(name: "ptr", arg: 1, scope: !5278, file: !941, line: 27, type: !138)
!5281 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5278, file: !941, line: 27, type: !140)
!5282 = !DILocalVariable(name: "size", arg: 3, scope: !5278, file: !941, line: 27, type: !140)
!5283 = !DILocalVariable(name: "nbytes", scope: !5278, file: !941, line: 29, type: !140)
!5284 = !DILocation(line: 0, scope: !5278)
!5285 = !DILocation(line: 30, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5278, file: !941, line: 30, column: 7)
!5287 = !DILocalVariable(name: "ptr", arg: 1, scope: !5288, file: !4337, line: 2057, type: !138)
!5288 = distinct !DISubprogram(name: "rpl_realloc", scope: !4337, file: !4337, line: 2057, type: !4329, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !5289)
!5289 = !{!5287, !5290}
!5290 = !DILocalVariable(name: "size", arg: 2, scope: !5288, file: !4337, line: 2057, type: !140)
!5291 = !DILocation(line: 0, scope: !5288, inlinedAt: !5292)
!5292 = distinct !DILocation(line: 37, column: 10, scope: !5278)
!5293 = !DILocation(line: 2059, column: 24, scope: !5288, inlinedAt: !5292)
!5294 = !DILocation(line: 2059, column: 10, scope: !5288, inlinedAt: !5292)
!5295 = !DILocation(line: 37, column: 3, scope: !5278)
!5296 = !DILocation(line: 32, column: 7, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5286, file: !941, line: 31, column: 5)
!5298 = !DILocation(line: 32, column: 13, scope: !5297)
!5299 = !DILocation(line: 33, column: 7, scope: !5297)
!5300 = !DILocation(line: 38, column: 1, scope: !5278)
!5301 = distinct !DISubprogram(name: "fd_safer", scope: !944, file: !944, line: 37, type: !1639, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !5302)
!5302 = !{!5303, !5304, !5307}
!5303 = !DILocalVariable(name: "fd", arg: 1, scope: !5301, file: !944, line: 37, type: !80)
!5304 = !DILocalVariable(name: "f", scope: !5305, file: !944, line: 41, type: !80)
!5305 = distinct !DILexicalBlock(scope: !5306, file: !944, line: 40, column: 5)
!5306 = distinct !DILexicalBlock(scope: !5301, file: !944, line: 39, column: 7)
!5307 = !DILocalVariable(name: "saved_errno", scope: !5305, file: !944, line: 42, type: !80)
!5308 = !DILocation(line: 0, scope: !5301)
!5309 = !DILocation(line: 39, column: 26, scope: !5306)
!5310 = !DILocation(line: 41, column: 15, scope: !5305)
!5311 = !DILocation(line: 0, scope: !5305)
!5312 = !DILocation(line: 42, column: 25, scope: !5305)
!5313 = !DILocation(line: 43, column: 7, scope: !5305)
!5314 = !DILocation(line: 44, column: 13, scope: !5305)
!5315 = !DILocation(line: 46, column: 5, scope: !5305)
!5316 = !DILocation(line: 48, column: 3, scope: !5301)
!5317 = distinct !DISubprogram(name: "hard_locale", scope: !801, file: !801, line: 28, type: !5318, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !5320)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!191, !80}
!5320 = !{!5321, !5322}
!5321 = !DILocalVariable(name: "category", arg: 1, scope: !5317, file: !801, line: 28, type: !80)
!5322 = !DILocalVariable(name: "locale", scope: !5317, file: !801, line: 30, type: !5323)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5324)
!5324 = !{!5325}
!5325 = !DISubrange(count: 257)
!5326 = !DILocation(line: 0, scope: !5317)
!5327 = !DILocation(line: 30, column: 3, scope: !5317)
!5328 = !DILocation(line: 30, column: 8, scope: !5317)
!5329 = !DILocation(line: 32, column: 7, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5317, file: !801, line: 32, column: 7)
!5331 = !DILocation(line: 32, column: 7, scope: !5317)
!5332 = !DILocalVariable(name: "__s1", arg: 1, scope: !5333, file: !1053, line: 1359, type: !143)
!5333 = distinct !DISubprogram(name: "streq", scope: !1053, file: !1053, line: 1359, type: !1054, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !5334)
!5334 = !{!5332, !5335}
!5335 = !DILocalVariable(name: "__s2", arg: 2, scope: !5333, file: !1053, line: 1359, type: !143)
!5336 = !DILocation(line: 0, scope: !5333, inlinedAt: !5337)
!5337 = distinct !DILocation(line: 35, column: 9, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5317, file: !801, line: 35, column: 7)
!5339 = !DILocation(line: 1361, column: 11, scope: !5333, inlinedAt: !5337)
!5340 = !DILocation(line: 1361, column: 10, scope: !5333, inlinedAt: !5337)
!5341 = !DILocation(line: 35, column: 29, scope: !5338)
!5342 = !DILocation(line: 0, scope: !5333, inlinedAt: !5343)
!5343 = distinct !DILocation(line: 35, column: 32, scope: !5338)
!5344 = !DILocation(line: 1361, column: 11, scope: !5333, inlinedAt: !5343)
!5345 = !DILocation(line: 1361, column: 10, scope: !5333, inlinedAt: !5343)
!5346 = !DILocation(line: 35, column: 7, scope: !5317)
!5347 = !DILocation(line: 46, column: 3, scope: !5317)
!5348 = !DILocation(line: 47, column: 1, scope: !5317)
!5349 = distinct !DISubprogram(name: "setlocale_null_r", scope: !948, file: !948, line: 154, type: !5350, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !947, retainedNodes: !5352)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!80, !80, !137, !140}
!5352 = !{!5353, !5354, !5355}
!5353 = !DILocalVariable(name: "category", arg: 1, scope: !5349, file: !948, line: 154, type: !80)
!5354 = !DILocalVariable(name: "buf", arg: 2, scope: !5349, file: !948, line: 154, type: !137)
!5355 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5349, file: !948, line: 154, type: !140)
!5356 = !DILocation(line: 0, scope: !5349)
!5357 = !DILocation(line: 159, column: 10, scope: !5349)
!5358 = !DILocation(line: 159, column: 3, scope: !5349)
!5359 = distinct !DISubprogram(name: "setlocale_null", scope: !948, file: !948, line: 186, type: !5360, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !947, retainedNodes: !5362)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!143, !80}
!5362 = !{!5363}
!5363 = !DILocalVariable(name: "category", arg: 1, scope: !5359, file: !948, line: 186, type: !80)
!5364 = !DILocation(line: 0, scope: !5359)
!5365 = !DILocation(line: 189, column: 10, scope: !5359)
!5366 = !DILocation(line: 189, column: 3, scope: !5359)
!5367 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !950, file: !950, line: 35, type: !5360, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !949, retainedNodes: !5368)
!5368 = !{!5369, !5370}
!5369 = !DILocalVariable(name: "category", arg: 1, scope: !5367, file: !950, line: 35, type: !80)
!5370 = !DILocalVariable(name: "result", scope: !5367, file: !950, line: 37, type: !143)
!5371 = !DILocation(line: 0, scope: !5367)
!5372 = !DILocation(line: 37, column: 24, scope: !5367)
!5373 = !DILocation(line: 62, column: 3, scope: !5367)
!5374 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !950, file: !950, line: 66, type: !5350, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !949, retainedNodes: !5375)
!5375 = !{!5376, !5377, !5378, !5379, !5380}
!5376 = !DILocalVariable(name: "category", arg: 1, scope: !5374, file: !950, line: 66, type: !80)
!5377 = !DILocalVariable(name: "buf", arg: 2, scope: !5374, file: !950, line: 66, type: !137)
!5378 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5374, file: !950, line: 66, type: !140)
!5379 = !DILocalVariable(name: "result", scope: !5374, file: !950, line: 111, type: !143)
!5380 = !DILocalVariable(name: "length", scope: !5381, file: !950, line: 125, type: !140)
!5381 = distinct !DILexicalBlock(scope: !5382, file: !950, line: 124, column: 5)
!5382 = distinct !DILexicalBlock(scope: !5374, file: !950, line: 113, column: 7)
!5383 = !DILocation(line: 0, scope: !5374)
!5384 = !DILocation(line: 0, scope: !5367, inlinedAt: !5385)
!5385 = distinct !DILocation(line: 111, column: 24, scope: !5374)
!5386 = !DILocation(line: 37, column: 24, scope: !5367, inlinedAt: !5385)
!5387 = !DILocation(line: 113, column: 14, scope: !5382)
!5388 = !DILocation(line: 113, column: 7, scope: !5374)
!5389 = !DILocation(line: 116, column: 19, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !950, line: 116, column: 11)
!5391 = distinct !DILexicalBlock(scope: !5382, file: !950, line: 114, column: 5)
!5392 = !DILocation(line: 116, column: 11, scope: !5391)
!5393 = !DILocation(line: 120, column: 16, scope: !5390)
!5394 = !DILocation(line: 120, column: 9, scope: !5390)
!5395 = !DILocation(line: 125, column: 23, scope: !5381)
!5396 = !DILocation(line: 0, scope: !5381)
!5397 = !DILocation(line: 126, column: 18, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5381, file: !950, line: 126, column: 11)
!5399 = !DILocation(line: 126, column: 11, scope: !5381)
!5400 = !DILocation(line: 128, column: 39, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5398, file: !950, line: 127, column: 9)
!5402 = !DILocalVariable(name: "__dest", arg: 1, scope: !5403, file: !2428, line: 26, type: !4605)
!5403 = distinct !DISubprogram(name: "memcpy", scope: !2428, file: !2428, line: 26, type: !4603, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !949, retainedNodes: !5404)
!5404 = !{!5402, !5405, !5406}
!5405 = !DILocalVariable(name: "__src", arg: 2, scope: !5403, file: !2428, line: 26, type: !1184)
!5406 = !DILocalVariable(name: "__len", arg: 3, scope: !5403, file: !2428, line: 26, type: !140)
!5407 = !DILocation(line: 0, scope: !5403, inlinedAt: !5408)
!5408 = distinct !DILocation(line: 128, column: 11, scope: !5401)
!5409 = !DILocation(line: 29, column: 10, scope: !5403, inlinedAt: !5408)
!5410 = !DILocation(line: 129, column: 11, scope: !5401)
!5411 = !DILocation(line: 133, column: 23, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !950, line: 133, column: 15)
!5413 = distinct !DILexicalBlock(scope: !5398, file: !950, line: 132, column: 9)
!5414 = !DILocation(line: 133, column: 15, scope: !5413)
!5415 = !DILocation(line: 138, column: 44, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5412, file: !950, line: 134, column: 13)
!5417 = !DILocation(line: 0, scope: !5403, inlinedAt: !5418)
!5418 = distinct !DILocation(line: 138, column: 15, scope: !5416)
!5419 = !DILocation(line: 29, column: 10, scope: !5403, inlinedAt: !5418)
!5420 = !DILocation(line: 139, column: 15, scope: !5416)
!5421 = !DILocation(line: 139, column: 32, scope: !5416)
!5422 = !DILocation(line: 140, column: 13, scope: !5416)
!5423 = !DILocation(line: 0, scope: !5382)
!5424 = !DILocation(line: 145, column: 1, scope: !5374)
!5425 = distinct !DISubprogram(name: "dup_safer", scope: !952, file: !952, line: 31, type: !1639, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !5426)
!5426 = !{!5427}
!5427 = !DILocalVariable(name: "fd", arg: 1, scope: !5425, file: !952, line: 31, type: !80)
!5428 = !DILocation(line: 0, scope: !5425)
!5429 = !DILocation(line: 33, column: 10, scope: !5425)
!5430 = !DILocation(line: 33, column: 3, scope: !5425)
!5431 = distinct !DISubprogram(name: "rpl_fcntl", scope: !807, file: !807, line: 202, type: !1759, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !5432)
!5432 = !{!5433, !5434, !5435, !5446, !5447, !5450, !5452, !5456}
!5433 = !DILocalVariable(name: "fd", arg: 1, scope: !5431, file: !807, line: 202, type: !80)
!5434 = !DILocalVariable(name: "action", arg: 2, scope: !5431, file: !807, line: 202, type: !80)
!5435 = !DILocalVariable(name: "arg", scope: !5431, file: !807, line: 208, type: !5436)
!5436 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !449, line: 22, baseType: !5437)
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !5438, baseType: !5439)
!5438 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !5440)
!5440 = !{!5441, !5442, !5443, !5444, !5445}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !5439, file: !5438, line: 208, baseType: !138, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !5439, file: !5438, line: 208, baseType: !138, size: 64, offset: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !5439, file: !5438, line: 208, baseType: !138, size: 64, offset: 128)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !5439, file: !5438, line: 208, baseType: !80, size: 32, offset: 192)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !5439, file: !5438, line: 208, baseType: !80, size: 32, offset: 224)
!5446 = !DILocalVariable(name: "result", scope: !5431, file: !807, line: 211, type: !80)
!5447 = !DILocalVariable(name: "target", scope: !5448, file: !807, line: 216, type: !80)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !807, line: 215, column: 7)
!5449 = distinct !DILexicalBlock(scope: !5431, file: !807, line: 213, column: 5)
!5450 = !DILocalVariable(name: "target", scope: !5451, file: !807, line: 223, type: !80)
!5451 = distinct !DILexicalBlock(scope: !5449, file: !807, line: 222, column: 7)
!5452 = !DILocalVariable(name: "x", scope: !5453, file: !807, line: 418, type: !80)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !807, line: 417, column: 13)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !807, line: 261, column: 11)
!5455 = distinct !DILexicalBlock(scope: !5449, file: !807, line: 258, column: 7)
!5456 = !DILocalVariable(name: "p", scope: !5457, file: !807, line: 426, type: !138)
!5457 = distinct !DILexicalBlock(scope: !5454, file: !807, line: 425, column: 13)
!5458 = !DILocation(line: 0, scope: !5431)
!5459 = !DILocation(line: 208, column: 3, scope: !5431)
!5460 = !DILocation(line: 208, column: 11, scope: !5431)
!5461 = !DILocation(line: 209, column: 3, scope: !5431)
!5462 = !DILocation(line: 212, column: 3, scope: !5431)
!5463 = !DILocation(line: 216, column: 22, scope: !5448)
!5464 = !DILocation(line: 0, scope: !5448)
!5465 = !DILocalVariable(name: "fd", arg: 1, scope: !5466, file: !807, line: 444, type: !80)
!5466 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !807, file: !807, line: 444, type: !808, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !5467)
!5467 = !{!5465, !5468, !5469}
!5468 = !DILocalVariable(name: "target", arg: 2, scope: !5466, file: !807, line: 444, type: !80)
!5469 = !DILocalVariable(name: "result", scope: !5466, file: !807, line: 446, type: !80)
!5470 = !DILocation(line: 0, scope: !5466, inlinedAt: !5471)
!5471 = distinct !DILocation(line: 217, column: 18, scope: !5448)
!5472 = !DILocation(line: 479, column: 12, scope: !5466, inlinedAt: !5471)
!5473 = !DILocation(line: 223, column: 22, scope: !5451)
!5474 = !DILocation(line: 0, scope: !5451)
!5475 = !DILocation(line: 0, scope: !806, inlinedAt: !5476)
!5476 = distinct !DILocation(line: 224, column: 18, scope: !5451)
!5477 = !DILocation(line: 507, column: 12, scope: !5478, inlinedAt: !5476)
!5478 = distinct !DILexicalBlock(scope: !806, file: !807, line: 507, column: 7)
!5479 = !DILocation(line: 507, column: 9, scope: !5478, inlinedAt: !5476)
!5480 = !DILocation(line: 507, column: 7, scope: !806, inlinedAt: !5476)
!5481 = !DILocation(line: 509, column: 16, scope: !5482, inlinedAt: !5476)
!5482 = distinct !DILexicalBlock(scope: !5478, file: !807, line: 508, column: 5)
!5483 = !DILocation(line: 510, column: 13, scope: !5484, inlinedAt: !5476)
!5484 = distinct !DILexicalBlock(scope: !5482, file: !807, line: 510, column: 11)
!5485 = !DILocation(line: 510, column: 23, scope: !5484, inlinedAt: !5476)
!5486 = !DILocation(line: 510, column: 26, scope: !5484, inlinedAt: !5476)
!5487 = !DILocation(line: 510, column: 32, scope: !5484, inlinedAt: !5476)
!5488 = !DILocation(line: 510, column: 11, scope: !5482, inlinedAt: !5476)
!5489 = !DILocation(line: 512, column: 30, scope: !5490, inlinedAt: !5476)
!5490 = distinct !DILexicalBlock(scope: !5484, file: !807, line: 511, column: 9)
!5491 = !DILocation(line: 528, column: 19, scope: !818, inlinedAt: !5476)
!5492 = !DILocation(line: 0, scope: !5466, inlinedAt: !5493)
!5493 = distinct !DILocation(line: 520, column: 20, scope: !5494, inlinedAt: !5476)
!5494 = distinct !DILexicalBlock(scope: !5484, file: !807, line: 519, column: 9)
!5495 = !DILocation(line: 479, column: 12, scope: !5466, inlinedAt: !5493)
!5496 = !DILocation(line: 521, column: 22, scope: !5497, inlinedAt: !5476)
!5497 = distinct !DILexicalBlock(scope: !5494, file: !807, line: 521, column: 15)
!5498 = !DILocation(line: 521, column: 15, scope: !5494, inlinedAt: !5476)
!5499 = !DILocation(line: 522, column: 32, scope: !5497, inlinedAt: !5476)
!5500 = !DILocation(line: 522, column: 13, scope: !5497, inlinedAt: !5476)
!5501 = !DILocation(line: 0, scope: !5466, inlinedAt: !5502)
!5502 = distinct !DILocation(line: 527, column: 14, scope: !5478, inlinedAt: !5476)
!5503 = !DILocation(line: 479, column: 12, scope: !5466, inlinedAt: !5502)
!5504 = !DILocation(line: 0, scope: !5478, inlinedAt: !5476)
!5505 = !DILocation(line: 528, column: 9, scope: !818, inlinedAt: !5476)
!5506 = !DILocation(line: 530, column: 19, scope: !817, inlinedAt: !5476)
!5507 = !DILocation(line: 0, scope: !817, inlinedAt: !5476)
!5508 = !DILocation(line: 531, column: 17, scope: !821, inlinedAt: !5476)
!5509 = !DILocation(line: 531, column: 21, scope: !821, inlinedAt: !5476)
!5510 = !DILocation(line: 531, column: 54, scope: !821, inlinedAt: !5476)
!5511 = !DILocation(line: 531, column: 24, scope: !821, inlinedAt: !5476)
!5512 = !DILocation(line: 531, column: 68, scope: !821, inlinedAt: !5476)
!5513 = !DILocation(line: 531, column: 11, scope: !817, inlinedAt: !5476)
!5514 = !DILocation(line: 533, column: 29, scope: !820, inlinedAt: !5476)
!5515 = !DILocation(line: 0, scope: !820, inlinedAt: !5476)
!5516 = !DILocation(line: 534, column: 11, scope: !820, inlinedAt: !5476)
!5517 = !DILocation(line: 535, column: 17, scope: !820, inlinedAt: !5476)
!5518 = !DILocation(line: 537, column: 9, scope: !820, inlinedAt: !5476)
!5519 = !DILocation(line: 329, column: 22, scope: !5454)
!5520 = !DILocation(line: 330, column: 13, scope: !5454)
!5521 = !DILocation(line: 418, column: 23, scope: !5453)
!5522 = !DILocation(line: 0, scope: !5453)
!5523 = !DILocation(line: 419, column: 24, scope: !5453)
!5524 = !DILocation(line: 421, column: 13, scope: !5454)
!5525 = !DILocation(line: 426, column: 25, scope: !5457)
!5526 = !DILocation(line: 0, scope: !5457)
!5527 = !DILocation(line: 427, column: 24, scope: !5457)
!5528 = !DILocation(line: 429, column: 13, scope: !5454)
!5529 = !DILocation(line: 0, scope: !5449)
!5530 = !DILocation(line: 438, column: 3, scope: !5431)
!5531 = !DILocation(line: 441, column: 1, scope: !5431)
!5532 = !DILocation(line: 440, column: 3, scope: !5431)
