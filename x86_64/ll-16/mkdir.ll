; ModuleID = 'src/mkdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !471
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !441
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !461
@.str.1.40 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !463
@.str.2.42 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !465
@.str.3.41 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !467
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !469
@.str.4.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !473
@.str.5.36 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !475
@.str.6.37 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !477
@.str.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !482
@.str.1.51 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1, !dbg !485
@.str.2.52 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !487
@.str.3.53 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1, !dbg !489
@.str.4.54 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1, !dbg !494
@.str.5.55 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1, !dbg !499
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !501
@.str.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !507
@.str.1.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !509
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !511
@.str.68 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !542
@.str.1.69 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !545
@.str.2.70 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !547
@.str.3.71 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !552
@.str.4.72 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !554
@.str.5.73 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !556
@.str.6.74 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !558
@.str.7.75 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !560
@.str.8.76 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !562
@.str.9.77 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !564
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.68, ptr @.str.1.69, ptr @.str.2.70, ptr @.str.3.71, ptr @.str.4.72, ptr @.str.5.73, ptr @.str.6.74, ptr @.str.7.75, ptr @.str.8.76, ptr @.str.9.77, ptr null], align 16, !dbg !566
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !577
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !591
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !629
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !636
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !593
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !638
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !581
@.str.10.80 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !598
@.str.11.78 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !600
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !602
@.str.13.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !604
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !606
@.str.93 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1, !dbg !644
@.str.1.92 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1, !dbg !650
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1, !dbg !652
@.str.2.91 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !657
@.str.3.94 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1, !dbg !659
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1, !dbg !664
@.str.4.95 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1, !dbg !669
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1, !dbg !674
@.str.5.90 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !677
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1, !dbg !679
@.str.98 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !684
@.str.1.99 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !687
@.str.2.100 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !689
@.str.3.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !691
@.str.4.102 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !693
@.str.5.103 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !695
@.str.6.104 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !700
@.str.7.105 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !705
@.str.8.106 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !707
@.str.9.107 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !712
@.str.10.108 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !714
@.str.11.109 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !716
@.str.12.110 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !718
@.str.13.111 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !720
@.str.14.112 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !725
@.str.15.113 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !730
@.str.16.114 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !735
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !738
@.str.18.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !740
@.str.19.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !742
@.str.20.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !744
@.str.21.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !746
@.str.22.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !748
@.str.23.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !750
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !755
@exit_failure = dso_local global i32 1, align 4, !dbg !763
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !769
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !772
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !774
@.str.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !776
@internal_state = internal global %struct.savewd zeroinitializer, align 4, !dbg !779
@.str.1.166 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !794
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !797

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !955 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !959, metadata !DIExpression()), !dbg !960
  %2 = icmp eq i32 %0, 0, !dbg !961
  br i1 %2, label %8, label %3, !dbg !963

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !964, !tbaa !966
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !964
  %6 = load ptr, ptr @program_name, align 8, !dbg !964, !tbaa !966
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !964
  br label %39, !dbg !964

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !970
  %10 = load ptr, ptr @program_name, align 8, !dbg !970, !tbaa !966
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !970
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !972
  %13 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !966
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !972
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !973
  %16 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !966
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !973
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !977
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !977
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !978
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !978
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !979
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !979
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !980
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !980
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !981
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !981
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !982
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !982
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !983
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !984, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !996, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr poison, metadata !996, metadata !DIExpression()), !dbg !1001
  tail call void @emit_bug_reporting_address() #39, !dbg !1003
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1004
  call void @llvm.dbg.value(metadata ptr %25, metadata !999, metadata !DIExpression()), !dbg !1001
  %26 = icmp eq ptr %25, null, !dbg !1005
  br i1 %26, label %34, label %27, !dbg !1007

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.53, i64 noundef 3) #40, !dbg !1008
  %29 = icmp eq i32 %28, 0, !dbg !1008
  br i1 %29, label %34, label %30, !dbg !1009

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !1010
  %32 = load ptr, ptr @stdout, align 8, !dbg !1010, !tbaa !966
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1010
  br label %34, !dbg !1012

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !996, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1000, metadata !DIExpression()), !dbg !1001
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #39, !dbg !1013
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #39, !dbg !1013
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #39, !dbg !1014
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.57) #39, !dbg !1014
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1015
  unreachable, !dbg !1015
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1016 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1020 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1026 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1029 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !181 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !185, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %0, metadata !186, metadata !DIExpression()), !dbg !1033
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1034, !tbaa !1035
  %3 = icmp eq i32 %2, -1, !dbg !1037
  br i1 %3, label %4, label %16, !dbg !1038

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.23) #39, !dbg !1039
  call void @llvm.dbg.value(metadata ptr %5, metadata !187, metadata !DIExpression()), !dbg !1040
  %6 = icmp eq ptr %5, null, !dbg !1041
  br i1 %6, label %14, label %7, !dbg !1042

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1043, !tbaa !1044
  %9 = icmp eq i8 %8, 0, !dbg !1043
  br i1 %9, label %14, label %10, !dbg !1045

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1046, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr @.str.24, metadata !1052, metadata !DIExpression()), !dbg !1053
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.24) #40, !dbg !1055
  %12 = icmp eq i32 %11, 0, !dbg !1056
  %13 = zext i1 %12 to i32, !dbg !1045
  br label %14, !dbg !1045

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1057, !tbaa !1035
  br label %16, !dbg !1058

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1059
  %18 = icmp eq i32 %17, 0, !dbg !1059
  br i1 %18, label %22, label %19, !dbg !1061

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1062, !tbaa !966
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1062
  br label %128, !dbg !1064

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !190, metadata !DIExpression()), !dbg !1033
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.25) #40, !dbg !1065
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1066
  call void @llvm.dbg.value(metadata ptr %24, metadata !192, metadata !DIExpression()), !dbg !1033
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1067
  call void @llvm.dbg.value(metadata ptr %25, metadata !193, metadata !DIExpression()), !dbg !1033
  %26 = icmp eq ptr %25, null, !dbg !1068
  br i1 %26, label %58, label %27, !dbg !1069

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1070
  br i1 %28, label %58, label %29, !dbg !1071

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !194, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !1072
  %30 = icmp ult ptr %24, %25, !dbg !1073
  br i1 %30, label %31, label %52, !dbg !1074

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1033
  %33 = load ptr, ptr %32, align 8, !tbaa !966
  br label %34, !dbg !1074

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !194, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %36, metadata !198, metadata !DIExpression()), !dbg !1072
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1075
  call void @llvm.dbg.value(metadata ptr %37, metadata !194, metadata !DIExpression()), !dbg !1072
  %38 = load i8, ptr %35, align 1, !dbg !1075, !tbaa !1044
  %39 = sext i8 %38 to i64, !dbg !1075
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1075
  %41 = load i16, ptr %40, align 2, !dbg !1075, !tbaa !1076
  %42 = freeze i16 %41, !dbg !1078
  %43 = lshr i16 %42, 13, !dbg !1078
  %44 = and i16 %43, 1, !dbg !1078
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %46, metadata !198, metadata !DIExpression()), !dbg !1072
  %47 = icmp ult ptr %37, %25, !dbg !1073
  %48 = icmp ult i64 %46, 2, !dbg !1080
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1080
  br i1 %49, label %34, label %50, !dbg !1074, !llvm.loop !1081

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1083
  br i1 %51, label %52, label %54, !dbg !1085

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1085

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1085
  call void @llvm.dbg.value(metadata i8 %57, metadata !190, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %56, metadata !193, metadata !DIExpression()), !dbg !1033
  br label %58, !dbg !1086

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1033
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %60, metadata !190, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %59, metadata !193, metadata !DIExpression()), !dbg !1033
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.26) #40, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %61, metadata !199, metadata !DIExpression()), !dbg !1033
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1088
  call void @llvm.dbg.value(metadata ptr %62, metadata !200, metadata !DIExpression()), !dbg !1033
  br label %63, !dbg !1089

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1033
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %65, metadata !190, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %64, metadata !200, metadata !DIExpression()), !dbg !1033
  %66 = load i8, ptr %64, align 1, !dbg !1090, !tbaa !1044
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1091

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1092
  %69 = load i8, ptr %68, align 1, !dbg !1095, !tbaa !1044
  %70 = icmp eq i8 %69, 45, !dbg !1096
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1097
  br label %72, !dbg !1097

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1033
  call void @llvm.dbg.value(metadata i8 %73, metadata !190, metadata !DIExpression()), !dbg !1033
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !1098
  %75 = load ptr, ptr %74, align 8, !dbg !1098, !tbaa !966
  %76 = sext i8 %66 to i64, !dbg !1098
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1098
  %78 = load i16, ptr %77, align 2, !dbg !1098, !tbaa !1076
  %79 = and i16 %78, 8192, !dbg !1098
  %80 = icmp eq i16 %79, 0, !dbg !1098
  br i1 %80, label %96, label %81, !dbg !1100

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1101
  br i1 %82, label %98, label %83, !dbg !1104

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1105
  %85 = load i8, ptr %84, align 1, !dbg !1105, !tbaa !1044
  %86 = sext i8 %85 to i64, !dbg !1105
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1105
  %88 = load i16, ptr %87, align 2, !dbg !1105, !tbaa !1076
  %89 = and i16 %88, 8192, !dbg !1105
  %90 = icmp eq i16 %89, 0, !dbg !1105
  br i1 %90, label %91, label %98, !dbg !1106

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1107
  %93 = icmp ne i8 %92, 0, !dbg !1107
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1109
  br i1 %95, label %96, label %98, !dbg !1109

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1110
  call void @llvm.dbg.value(metadata ptr %97, metadata !200, metadata !DIExpression()), !dbg !1033
  br label %63, !dbg !1089, !llvm.loop !1111

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1113
  %100 = load ptr, ptr @stdout, align 8, !dbg !1113, !tbaa !966
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1113
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !256, metadata !DIExpression()), !dbg !1033
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.40, i64 noundef 6) #40, !dbg !1134
  %103 = icmp eq i32 %102, 0, !dbg !1134
  br i1 %103, label %107, label %104, !dbg !1136

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.41, i64 noundef 9) #40, !dbg !1137
  %106 = icmp eq i32 %105, 0, !dbg !1137
  br i1 %106, label %107, label %110, !dbg !1138

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1139
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !1139
  br label %113, !dbg !1141

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1142
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !1142
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !966
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %114), !dbg !1144
  %116 = load ptr, ptr @stdout, align 8, !dbg !1145, !tbaa !966
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %116), !dbg !1145
  %118 = ptrtoint ptr %64 to i64, !dbg !1146
  %119 = sub i64 %118, %99, !dbg !1146
  %120 = load ptr, ptr @stdout, align 8, !dbg !1146, !tbaa !966
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1146
  %122 = load ptr, ptr @stdout, align 8, !dbg !1147, !tbaa !966
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %122), !dbg !1147
  %124 = load ptr, ptr @stdout, align 8, !dbg !1148, !tbaa !966
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.49, ptr noundef %124), !dbg !1148
  %126 = load ptr, ptr @stdout, align 8, !dbg !1149, !tbaa !966
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1149
  br label %128, !dbg !1150

128:                                              ; preds = %113, %19
  ret void, !dbg !1150
}

; Function Attrs: nounwind
declare !dbg !1151 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1155 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1159 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1161 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1164 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1167 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1170 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1173 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1179 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1180 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1186 {
  %3 = alloca %struct.mkdir_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1191, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr %1, metadata !1192, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr null, metadata !1193, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr null, metadata !1195, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #39, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1196, metadata !DIExpression()), !dbg !1226
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 3, !dbg !1227
  store i32 511, ptr %4, align 8, !dbg !1228, !tbaa !1229
  %5 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 4, !dbg !1231
  %6 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 6, !dbg !1232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false), !dbg !1233
  %7 = load ptr, ptr %1, align 8, !dbg !1234, !tbaa !966
  tail call void @set_program_name(ptr noundef %7) #39, !dbg !1235
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #39, !dbg !1236
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #39, !dbg !1237
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #39, !dbg !1238
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1239
  br label %12, !dbg !1240

12:                                               ; preds = %22, %2
  %13 = phi i1 [ false, %2 ], [ true, %22 ]
  %14 = phi ptr [ null, %2 ], [ @make_ancestor, %22 ]
  %15 = phi ptr [ null, %2 ], [ %18, %22 ]
  %16 = phi ptr [ null, %2 ], [ %21, %22 ]
  br label %17, !dbg !1240

17:                                               ; preds = %12, %26
  %18 = phi ptr [ %15, %12 ], [ %27, %26 ]
  %19 = phi ptr [ %16, %12 ], [ %21, %26 ]
  br label %20, !dbg !1240

20:                                               ; preds = %17, %24
  %21 = phi ptr [ %19, %17 ], [ %25, %24 ]
  br label %22, !dbg !1240

22:                                               ; preds = %33, %20
  call void @llvm.dbg.value(metadata ptr %21, metadata !1193, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr null, metadata !1195, metadata !DIExpression()), !dbg !1224
  %23 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %23, metadata !1194, metadata !DIExpression()), !dbg !1224
  switch i32 %23, label %39 [
    i32 -1, label %40
    i32 112, label %12
    i32 109, label %24
    i32 118, label %26
    i32 90, label %28
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !1240, !llvm.loop !1242

24:                                               ; preds = %22
  %25 = load ptr, ptr @optarg, align 8, !dbg !1244, !tbaa !966
  call void @llvm.dbg.value(metadata ptr %25, metadata !1193, metadata !DIExpression()), !dbg !1224
  br label %20, !dbg !1247, !llvm.loop !1242

26:                                               ; preds = %22
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1248
  br label %17, !dbg !1249, !llvm.loop !1242

28:                                               ; preds = %22
  %29 = load ptr, ptr @optarg, align 8, !dbg !1250, !tbaa !966
  %30 = icmp eq ptr %29, null, !dbg !1250
  br i1 %30, label %33, label %31, !dbg !1254

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1255
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #39, !dbg !1255
  br label %33, !dbg !1257

33:                                               ; preds = %31, %28
  br label %22, !dbg !1224, !llvm.loop !1242

34:                                               ; preds = %22
  tail call void @usage(i32 noundef 0) #43, !dbg !1258
  unreachable, !dbg !1258

35:                                               ; preds = %22
  %36 = load ptr, ptr @stdout, align 8, !dbg !1259, !tbaa !966
  %37 = load ptr, ptr @Version, align 8, !dbg !1259, !tbaa !966
  %38 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #39, !dbg !1259
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %37, ptr noundef %38, ptr noundef null) #39, !dbg !1259
  tail call void @exit(i32 noundef 0) #41, !dbg !1259
  unreachable, !dbg !1259

39:                                               ; preds = %22
  tail call void @usage(i32 noundef 1) #43, !dbg !1260
  unreachable, !dbg !1260

40:                                               ; preds = %22
  store ptr %18, ptr %6, align 8, !dbg !1261, !tbaa !1262
  store ptr %14, ptr %3, align 8, !dbg !1263, !tbaa !1264
  %41 = load i32, ptr @optind, align 4, !dbg !1265, !tbaa !1035
  %42 = icmp eq i32 %41, %0, !dbg !1267
  br i1 %42, label %43, label %45, !dbg !1268

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1269
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %44) #39, !dbg !1269
  tail call void @usage(i32 noundef 1) #43, !dbg !1271
  unreachable, !dbg !1271

45:                                               ; preds = %40
  %46 = icmp ne ptr %21, null
  %47 = select i1 %13, i1 true, i1 %46, !dbg !1272
  br i1 %47, label %48, label %69, !dbg !1272

48:                                               ; preds = %45
  %49 = tail call i32 @umask(i32 noundef 0) #39, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %49, metadata !1215, metadata !DIExpression()), !dbg !1274
  %50 = and i32 %49, -193, !dbg !1275
  %51 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 1, !dbg !1276
  store i32 %50, ptr %51, align 8, !dbg !1277, !tbaa !1278
  br i1 %46, label %52, label %63, !dbg !1279

52:                                               ; preds = %48
  %53 = tail call noalias ptr @mode_compile(ptr noundef nonnull %21) #39, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %53, metadata !1218, metadata !DIExpression()), !dbg !1281
  %54 = icmp eq ptr %53, null, !dbg !1282
  br i1 %54, label %55, label %58, !dbg !1284

55:                                               ; preds = %52
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1285
  %57 = tail call ptr @quote(ptr noundef nonnull %21) #39, !dbg !1285
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %56, ptr noundef %57) #39, !dbg !1285
  unreachable, !dbg !1285

58:                                               ; preds = %52
  %59 = call i32 @mode_adjust(i32 noundef 511, i1 noundef zeroext true, i32 noundef %49, ptr noundef nonnull %53, ptr noundef nonnull %5) #40, !dbg !1286
  store i32 %59, ptr %4, align 8, !dbg !1287, !tbaa !1229
  %60 = xor i32 %59, -1, !dbg !1288
  %61 = and i32 %49, %60, !dbg !1289
  %62 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1290
  store i32 %61, ptr %62, align 4, !dbg !1291, !tbaa !1292
  call void @free(ptr noundef nonnull %53) #39, !dbg !1293
  br label %65, !dbg !1294

63:                                               ; preds = %48
  store i32 511, ptr %4, align 8, !dbg !1295, !tbaa !1229
  %64 = getelementptr inbounds %struct.mkdir_options, ptr %3, i64 0, i32 2, !dbg !1297
  store i32 %49, ptr %64, align 4, !dbg !1298, !tbaa !1292
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %49, %63 ], [ %61, %58 ], !dbg !1299
  %67 = call i32 @umask(i32 noundef %66) #39, !dbg !1300
  %68 = load i32, ptr @optind, align 4, !dbg !1301, !tbaa !1035
  br label %69, !dbg !1302

69:                                               ; preds = %45, %65
  %70 = phi i32 [ %41, %45 ], [ %68, %65 ], !dbg !1301
  %71 = sub nsw i32 %0, %70, !dbg !1303
  %72 = sext i32 %70 to i64, !dbg !1304
  %73 = getelementptr inbounds ptr, ptr %1, i64 %72, !dbg !1304
  %74 = call i32 @savewd_process_files(i32 noundef %71, ptr noundef nonnull %73, ptr noundef nonnull @process_dir, ptr noundef nonnull %3) #39, !dbg !1305
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #39, !dbg !1306
  ret i32 %74, !dbg !1307
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !1308 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1311 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1312 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @make_ancestor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 !dbg !1315 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1317, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %1, metadata !1318, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %2, metadata !1319, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %2, metadata !1320, metadata !DIExpression()), !dbg !1327
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1328
  %5 = load ptr, ptr %4, align 8, !dbg !1328, !tbaa !1330
  %6 = icmp eq ptr %5, null, !dbg !1331
  br i1 %6, label %9, label %7, !dbg !1332

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1333, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %1, metadata !1339, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 16384, metadata !1340, metadata !DIExpression()), !dbg !1341
  %8 = tail call ptr @__errno_location() #42, !dbg !1343
  store i32 95, ptr %8, align 4, !dbg !1344, !tbaa !1035
  br label %9, !dbg !1345

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 1, !dbg !1346
  %11 = load i32, ptr %10, align 8, !dbg !1346, !tbaa !1278
  %12 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 2, !dbg !1348
  %13 = load i32, ptr %12, align 4, !dbg !1348, !tbaa !1292
  %14 = icmp eq i32 %11, %13, !dbg !1349
  br i1 %14, label %17, label %15, !dbg !1350

15:                                               ; preds = %9
  %16 = tail call i32 @umask(i32 noundef %11) #39, !dbg !1351
  br label %17, !dbg !1351

17:                                               ; preds = %15, %9
  %18 = tail call i32 @mkdir(ptr noundef %1, i32 noundef 511) #39, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %18, metadata !1323, metadata !DIExpression()), !dbg !1327
  %19 = load i32, ptr %10, align 8, !dbg !1353, !tbaa !1278
  %20 = load i32, ptr %12, align 4, !dbg !1354, !tbaa !1292
  %21 = icmp eq i32 %19, %20, !dbg !1355
  br i1 %21, label %26, label %22, !dbg !1356

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #42, !dbg !1357
  %24 = load i32, ptr %23, align 4, !dbg !1357, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %24, metadata !1324, metadata !DIExpression()), !dbg !1358
  %25 = tail call i32 @umask(i32 noundef %20) #39, !dbg !1359
  store i32 %24, ptr %23, align 4, !dbg !1360, !tbaa !1035
  br label %26, !dbg !1361

26:                                               ; preds = %22, %17
  %27 = icmp eq i32 %18, 0, !dbg !1362
  br i1 %27, label %28, label %38, !dbg !1364

28:                                               ; preds = %26
  %29 = load i32, ptr %10, align 8, !dbg !1365, !tbaa !1278
  %30 = lshr i32 %29, 8, !dbg !1367
  %31 = and i32 %30, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %31, metadata !1323, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %0, metadata !1368, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata ptr %2, metadata !1373, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata ptr %2, metadata !1374, metadata !DIExpression()), !dbg !1375
  %32 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 6, !dbg !1377
  %33 = load ptr, ptr %32, align 8, !dbg !1377, !tbaa !1262
  %34 = icmp eq ptr %33, null, !dbg !1379
  br i1 %34, label %38, label %35, !dbg !1380

35:                                               ; preds = %28
  %36 = load ptr, ptr @stdout, align 8, !dbg !1381, !tbaa !966
  %37 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #39, !dbg !1382
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %36, ptr noundef nonnull %33, ptr noundef %37) #39, !dbg !1383
  br label %38, !dbg !1383

38:                                               ; preds = %35, %28, %26
  %39 = phi i32 [ %18, %26 ], [ %31, %28 ], [ %31, %35 ], !dbg !1327
  call void @llvm.dbg.value(metadata i32 %39, metadata !1323, metadata !DIExpression()), !dbg !1327
  ret i32 %39, !dbg !1384
}

; Function Attrs: nounwind
declare !dbg !1385 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1391 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1395 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal i32 @process_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10 !dbg !1398 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %1, metadata !1404, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %2, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %2, metadata !1406, metadata !DIExpression()), !dbg !1408
  %4 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 5, !dbg !1409
  %5 = load ptr, ptr %4, align 8, !dbg !1409, !tbaa !1330
  %6 = icmp ne ptr %5, null, !dbg !1411
  %7 = load ptr, ptr %2, align 8, !dbg !1408, !tbaa !1264
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false, !dbg !1412
  br i1 %9, label %10, label %12, !dbg !1412

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata ptr %5, metadata !1333, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata ptr %0, metadata !1339, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i32 16384, metadata !1340, metadata !DIExpression()), !dbg !1413
  %11 = tail call ptr @__errno_location() #42, !dbg !1417
  store i32 95, ptr %11, align 4, !dbg !1418, !tbaa !1035
  br label %12, !dbg !1419

12:                                               ; preds = %3, %10
  %13 = phi ptr [ null, %10 ], [ %7, %3 ], !dbg !1420
  %14 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 3, !dbg !1421
  %15 = load i32, ptr %14, align 8, !dbg !1421, !tbaa !1229
  %16 = getelementptr inbounds %struct.mkdir_options, ptr %2, i64 0, i32 4, !dbg !1422
  %17 = load i32, ptr %16, align 4, !dbg !1422, !tbaa !1423
  %18 = tail call zeroext i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef nonnull %2, i32 noundef %15, ptr noundef nonnull @announce_mkdir, i32 noundef %17, i32 noundef -1, i32 noundef -1, i1 noundef zeroext true) #39, !dbg !1424
  call void @llvm.dbg.value(metadata i32 poison, metadata !1407, metadata !DIExpression()), !dbg !1408
  br i1 %18, label %19, label %27, !dbg !1425

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 8, !dbg !1427, !tbaa !1330
  %21 = icmp eq ptr %20, null, !dbg !1428
  br i1 %21, label %27, label %22, !dbg !1429

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !dbg !1430, !tbaa !1264
  %24 = icmp eq ptr %23, null, !dbg !1431
  br i1 %24, label %27, label %25, !dbg !1432

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %20, metadata !1433, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr poison, metadata !1438, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i1 false, metadata !1439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1440
  %26 = tail call ptr @__errno_location() #42, !dbg !1444
  store i32 95, ptr %26, align 4, !dbg !1445, !tbaa !1035
  br label %27, !dbg !1446

27:                                               ; preds = %25, %22, %19, %12
  %28 = xor i1 %18, true, !dbg !1424
  %29 = zext i1 %28 to i32, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %29, metadata !1407, metadata !DIExpression()), !dbg !1408
  ret i32 %29, !dbg !1447
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1448 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @announce_mkdir(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !dbg !1369 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1368, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata ptr %1, metadata !1373, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata ptr %1, metadata !1374, metadata !DIExpression()), !dbg !1452
  %3 = getelementptr inbounds %struct.mkdir_options, ptr %1, i64 0, i32 6, !dbg !1453
  %4 = load ptr, ptr %3, align 8, !dbg !1453, !tbaa !1262
  %5 = icmp eq ptr %4, null, !dbg !1454
  br i1 %5, label %9, label %6, !dbg !1455

6:                                                ; preds = %2
  %7 = load ptr, ptr @stdout, align 8, !dbg !1456, !tbaa !966
  %8 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %0) #39, !dbg !1457
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %7, ptr noundef nonnull %4, ptr noundef %8) #39, !dbg !1458
  br label %9, !dbg !1458

9:                                                ; preds = %6, %2
  ret void, !dbg !1459
}

; Function Attrs: nofree nounwind
declare !dbg !1460 noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1463 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1501, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata ptr %1, metadata !1502, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39, !dbg !1517
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !1518
  %4 = load ptr, ptr @program_name, align 8, !dbg !1519, !tbaa !966
  %5 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef nonnull %0), !dbg !1519
  %6 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.20, ptr noundef nonnull %0), !dbg !1520
  call void @llvm.va_start(ptr nonnull %3), !dbg !1521
  call void @llvm.dbg.value(metadata ptr %0, metadata !1522, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %1, metadata !1529, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata ptr %3, metadata !1530, metadata !DIExpression()), !dbg !1531
  %7 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #39, !dbg !1533
  call void @llvm.va_end(ptr nonnull %3), !dbg !1534
  call void @llvm.dbg.value(metadata i32 10, metadata !1535, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %0, metadata !1541, metadata !DIExpression()), !dbg !1542
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1544
  %9 = load ptr, ptr %8, align 8, !dbg !1544, !tbaa !1545
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1544
  %11 = load ptr, ptr %10, align 8, !dbg !1544, !tbaa !1548
  %12 = icmp ult ptr %9, %11, !dbg !1544
  br i1 %12, label %15, label %13, !dbg !1544, !prof !1549

13:                                               ; preds = %2
  %14 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #39, !dbg !1544
  br label %17, !dbg !1544

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !1544
  store ptr %16, ptr %8, align 8, !dbg !1544, !tbaa !1545
  store i8 10, ptr %9, align 1, !dbg !1544, !tbaa !1044
  br label %17, !dbg !1544

17:                                               ; preds = %13, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39, !dbg !1550
  ret void, !dbg !1550
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

declare !dbg !1551 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

declare !dbg !1554 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1557 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1559, metadata !DIExpression()), !dbg !1560
  store ptr %0, ptr @file_name, align 8, !dbg !1561, !tbaa !966
  ret void, !dbg !1562
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !1563 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1569, !tbaa !1570
  ret void, !dbg !1572
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1573 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1578, !tbaa !966
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1579
  %3 = icmp eq i32 %2, 0, !dbg !1580
  br i1 %3, label %22, label %4, !dbg !1581

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1582, !tbaa !1570, !range !1583, !noundef !975
  %6 = icmp eq i8 %5, 0, !dbg !1582
  br i1 %6, label %11, label %7, !dbg !1584

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1585
  %9 = load i32, ptr %8, align 4, !dbg !1585, !tbaa !1035
  %10 = icmp eq i32 %9, 32, !dbg !1586
  br i1 %10, label %22, label %11, !dbg !1587

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1.31, i32 noundef 5) #39, !dbg !1588
  call void @llvm.dbg.value(metadata ptr %12, metadata !1575, metadata !DIExpression()), !dbg !1589
  %13 = load ptr, ptr @file_name, align 8, !dbg !1590, !tbaa !966
  %14 = icmp eq ptr %13, null, !dbg !1590
  %15 = tail call ptr @__errno_location() #42, !dbg !1592
  %16 = load i32, ptr %15, align 4, !dbg !1592, !tbaa !1035
  br i1 %14, label %19, label %17, !dbg !1593

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1594
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.32, ptr noundef %18, ptr noundef %12) #39, !dbg !1594
  br label %20, !dbg !1594

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.33, ptr noundef %12) #39, !dbg !1595
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1596, !tbaa !1035
  tail call void @_exit(i32 noundef %21) #41, !dbg !1597
  unreachable, !dbg !1597

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1598, !tbaa !966
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1600
  %25 = icmp eq i32 %24, 0, !dbg !1601
  br i1 %25, label %28, label %26, !dbg !1602

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1603, !tbaa !1035
  tail call void @_exit(i32 noundef %27) #41, !dbg !1604
  unreachable, !dbg !1604

28:                                               ; preds = %22
  ret void, !dbg !1605
}

; Function Attrs: noreturn
declare !dbg !1606 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1608 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1612, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i32 %1, metadata !1613, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata ptr %2, metadata !1614, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata ptr %3, metadata !1615, metadata !DIExpression()), !dbg !1616
  tail call fastcc void @flush_stdout(), !dbg !1617
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1618, !tbaa !966
  %6 = icmp eq ptr %5, null, !dbg !1618
  br i1 %6, label %8, label %7, !dbg !1620

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1621
  br label %12, !dbg !1621

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1622, !tbaa !966
  %10 = tail call ptr @getprogname() #40, !dbg !1622
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef %10) #39, !dbg !1622
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1624
  ret void, !dbg !1625
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1626 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1628, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 1, metadata !1630, metadata !DIExpression()), !dbg !1635
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1638
  %2 = icmp slt i32 %1, 0, !dbg !1639
  br i1 %2, label %6, label %3, !dbg !1640

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1641, !tbaa !966
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1641
  br label %6, !dbg !1641

6:                                                ; preds = %3, %0
  ret void, !dbg !1642
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1643 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1645, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %1, metadata !1646, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %2, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %3, metadata !1648, metadata !DIExpression()), !dbg !1649
  %6 = load ptr, ptr @stderr, align 8, !dbg !1650, !tbaa !966
  call void @llvm.dbg.value(metadata ptr %6, metadata !1651, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata ptr %2, metadata !1691, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata ptr %3, metadata !1692, metadata !DIExpression()), !dbg !1693
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1695
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1696, !tbaa !1035
  %9 = add i32 %8, 1, !dbg !1696
  store i32 %9, ptr @error_message_count, align 4, !dbg !1696, !tbaa !1035
  %10 = icmp eq i32 %1, 0, !dbg !1697
  br i1 %10, label %20, label %11, !dbg !1699

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1700, metadata !DIExpression()), !dbg !1708
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !1711
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %12, metadata !1703, metadata !DIExpression()), !dbg !1708
  %13 = icmp eq ptr %12, null, !dbg !1713
  br i1 %13, label %14, label %16, !dbg !1715

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.35, ptr noundef nonnull @.str.5.36, i32 noundef 5) #39, !dbg !1716
  call void @llvm.dbg.value(metadata ptr %15, metadata !1703, metadata !DIExpression()), !dbg !1708
  br label %16, !dbg !1717

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1708
  call void @llvm.dbg.value(metadata ptr %17, metadata !1703, metadata !DIExpression()), !dbg !1708
  %18 = load ptr, ptr @stderr, align 8, !dbg !1718, !tbaa !966
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.37, ptr noundef %17) #39, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1719
  br label %20, !dbg !1720

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1721, !tbaa !966
  call void @llvm.dbg.value(metadata i32 10, metadata !1722, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr %21, metadata !1727, metadata !DIExpression()), !dbg !1728
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1730
  %23 = load ptr, ptr %22, align 8, !dbg !1730, !tbaa !1545
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1730
  %25 = load ptr, ptr %24, align 8, !dbg !1730, !tbaa !1548
  %26 = icmp ult ptr %23, %25, !dbg !1730
  br i1 %26, label %29, label %27, !dbg !1730, !prof !1549

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1730
  br label %31, !dbg !1730

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1730
  store ptr %30, ptr %22, align 8, !dbg !1730, !tbaa !1545
  store i8 10, ptr %23, align 1, !dbg !1730, !tbaa !1044
  br label %31, !dbg !1730

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1731, !tbaa !966
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1731
  %34 = icmp eq i32 %0, 0, !dbg !1732
  br i1 %34, label %36, label %35, !dbg !1734

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1735
  unreachable, !dbg !1735

36:                                               ; preds = %31
  ret void, !dbg !1736
}

; Function Attrs: nounwind
declare !dbg !1737 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1740 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1743 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1747 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1751, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32 %1, metadata !1752, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata ptr %2, metadata !1753, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1760
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1754, metadata !DIExpression()), !dbg !1761
  call void @llvm.va_start(ptr nonnull %4), !dbg !1762
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1763
  call void @llvm.va_end(ptr nonnull %4), !dbg !1764
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1765
  ret void, !dbg !1765
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !455, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %1, metadata !456, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %3, metadata !458, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata ptr %4, metadata !459, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata ptr %5, metadata !460, metadata !DIExpression()), !dbg !1766
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1767, !tbaa !1035
  %8 = icmp eq i32 %7, 0, !dbg !1767
  br i1 %8, label %23, label %9, !dbg !1769

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1770, !tbaa !1035
  %11 = icmp eq i32 %10, %3, !dbg !1773
  br i1 %11, label %12, label %22, !dbg !1774

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1775, !tbaa !966
  %14 = icmp eq ptr %13, %2, !dbg !1776
  br i1 %14, label %36, label %15, !dbg !1777

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1778
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1779
  br i1 %18, label %19, label %22, !dbg !1779

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1780
  %21 = icmp eq i32 %20, 0, !dbg !1781
  br i1 %21, label %36, label %22, !dbg !1782

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1783, !tbaa !966
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1784, !tbaa !1035
  br label %23, !dbg !1785

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1786
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1787, !tbaa !966
  %25 = icmp eq ptr %24, null, !dbg !1787
  br i1 %25, label %27, label %26, !dbg !1789

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1790
  br label %31, !dbg !1790

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1791, !tbaa !966
  %29 = tail call ptr @getprogname() #40, !dbg !1791
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.40, ptr noundef %29) #39, !dbg !1791
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1793, !tbaa !966
  %33 = icmp eq ptr %2, null, !dbg !1793
  %34 = select i1 %33, ptr @.str.3.41, ptr @.str.2.42, !dbg !1793
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1793
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1794
  br label %36, !dbg !1795

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1795
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1796 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1800, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %1, metadata !1801, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %2, metadata !1802, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %3, metadata !1803, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %4, metadata !1804, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.va_start(ptr nonnull %6), !dbg !1809
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1810
  call void @llvm.va_end(ptr nonnull %6), !dbg !1811
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1812
  ret void, !dbg !1812
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1813 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1816, !tbaa !966
  ret ptr %1, !dbg !1817
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @make_dir_parents(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #10 !dbg !1818 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1824, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr %1, metadata !1825, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr %2, metadata !1826, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr %3, metadata !1827, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %4, metadata !1828, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr %5, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %6, metadata !1830, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %7, metadata !1831, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %8, metadata !1832, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i1 %9, metadata !1833, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1893
  %13 = load i8, ptr %0, align 1, !dbg !1894, !tbaa !1044
  %14 = icmp eq i8 %13, 47, !dbg !1894
  br i1 %14, label %22, label %15, !dbg !1894

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %1, metadata !1895, metadata !DIExpression()), !dbg !1902
  %16 = load i32, ptr %1, align 4, !dbg !1904, !tbaa !1905
  %17 = icmp ult i32 %16, 4, !dbg !1907
  br i1 %17, label %22, label %18, !dbg !1908

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.savewd, ptr %1, i64 0, i32 1, !dbg !1909
  %20 = load i32, ptr %19, align 4, !dbg !1910, !tbaa !1044
  call void @llvm.dbg.value(metadata i32 %20, metadata !1834, metadata !DIExpression()), !dbg !1893
  %21 = icmp eq i32 %20, 0, !dbg !1911
  br i1 %21, label %22, label %119, !dbg !1912

22:                                               ; preds = %15, %10, %18
  call void @llvm.dbg.value(metadata i32 2, metadata !1835, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression()), !dbg !1913
  %23 = icmp eq ptr %2, null, !dbg !1914
  br i1 %23, label %32, label %24, !dbg !1916

24:                                               ; preds = %22
  %25 = tail call i64 @mkancesdirs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %25, metadata !1838, metadata !DIExpression()), !dbg !1913
  %26 = icmp slt i64 %25, 0, !dbg !1919
  br i1 %26, label %27, label %32, !dbg !1921

27:                                               ; preds = %24
  %28 = icmp eq i64 %25, -1, !dbg !1922
  br i1 %28, label %29, label %123, !dbg !1925

29:                                               ; preds = %27
  %30 = tail call ptr @__errno_location() #42, !dbg !1926
  %31 = load i32, ptr %30, align 4, !dbg !1926, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %31, metadata !1834, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 -1, metadata !1838, metadata !DIExpression()), !dbg !1913
  br label %119, !dbg !1927

32:                                               ; preds = %24, %22
  %33 = phi i64 [ 0, %22 ], [ %25, %24 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1834, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %33, metadata !1838, metadata !DIExpression()), !dbg !1913
  %34 = and i32 %8, %7, !dbg !1928
  %35 = icmp eq i32 %34, -1, !dbg !1928
  call void @llvm.dbg.value(metadata i1 %35, metadata !1839, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1929
  %36 = and i32 %6, 3072, !dbg !1930
  %37 = and i32 %4, 512, !dbg !1931
  %38 = or i32 %36, %37, !dbg !1932
  call void @llvm.dbg.value(metadata i1 poison, metadata !1842, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1929
  call void @llvm.dbg.value(metadata i32 %4, metadata !1843, metadata !DIExpression()), !dbg !1929
  %39 = and i32 %4, -64, !dbg !1933
  %40 = icmp eq i32 %38, 0, !dbg !1933
  %41 = and i32 %4, -19, !dbg !1933
  %42 = select i1 %40, i32 %4, i32 %41, !dbg !1933
  %43 = select i1 %35, i32 %42, i32 %39, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %43, metadata !1843, metadata !DIExpression()), !dbg !1929
  %44 = getelementptr inbounds i8, ptr %0, i64 %33, !dbg !1934
  %45 = tail call i32 @mkdir(ptr noundef nonnull %44, i32 noundef %43) #39, !dbg !1935
  %46 = icmp eq i32 %45, 0, !dbg !1936
  br i1 %46, label %47, label %53, !dbg !1937

47:                                               ; preds = %32
  %48 = and i32 %4, 511, !dbg !1938
  %49 = and i32 %48, %6, !dbg !1939
  call void @llvm.dbg.value(metadata i1 poison, metadata !1844, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1940
  tail call void %5(ptr noundef nonnull %0, ptr noundef %3) #39, !dbg !1941
  %50 = or i32 %38, %49, !dbg !1942
  %51 = icmp eq i32 %50, 0, !dbg !1942
  %52 = and i1 %35, %51, !dbg !1942
  call void @llvm.dbg.value(metadata i32 0, metadata !1834, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 3, metadata !1835, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32 %43, metadata !1843, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i1 %9, metadata !1833, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1893
  br i1 %52, label %123, label %77, !dbg !1943

53:                                               ; preds = %32
  %54 = tail call ptr @__errno_location() #42, !dbg !1944
  %55 = load i32, ptr %54, align 4, !dbg !1944, !tbaa !1035
  call void @llvm.dbg.value(metadata i1 %9, metadata !1833, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %55, metadata !1834, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 2, metadata !1835, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32 -1, metadata !1843, metadata !DIExpression()), !dbg !1929
  switch i32 %55, label %56 [
    i32 20, label %119
    i32 2, label %119
  ], !dbg !1946

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i1 %9, metadata !1833, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1893
  br i1 %9, label %57, label %77, !dbg !1943

57:                                               ; preds = %56
  %58 = icmp eq i32 %55, 0, !dbg !1947
  br i1 %58, label %123, label %59, !dbg !1949

59:                                               ; preds = %57
  br i1 %23, label %119, label %60, !dbg !1950

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #39, !dbg !1951
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1847, metadata !DIExpression()), !dbg !1952
  %61 = call i32 @stat(ptr noundef nonnull %44, ptr noundef nonnull %11) #39, !dbg !1953
  %62 = icmp eq i32 %61, 0, !dbg !1955
  br i1 %62, label %63, label %68, !dbg !1956

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.stat, ptr %11, i64 0, i32 3, !dbg !1957
  %65 = load i32, ptr %64, align 8, !dbg !1957, !tbaa !1960
  %66 = and i32 %65, 61440, !dbg !1957
  %67 = icmp eq i32 %66, 16384, !dbg !1957
  br i1 %67, label %75, label %76, !dbg !1963

68:                                               ; preds = %60
  %69 = icmp eq i32 %55, 17, !dbg !1964
  br i1 %69, label %70, label %76, !dbg !1966

70:                                               ; preds = %68
  %71 = load i32, ptr %54, align 4, !dbg !1967, !tbaa !1035
  switch i32 %71, label %72 [
    i32 2, label %76
    i32 20, label %76
  ], !dbg !1968

72:                                               ; preds = %70
  %73 = tail call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1.51, i32 noundef 5) #39, !dbg !1969
  %74 = tail call ptr @quote(ptr noundef nonnull %0) #39, !dbg !1969
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %73, ptr noundef %74) #39, !dbg !1969
  br label %75, !dbg !1971

75:                                               ; preds = %72, %63
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #39, !dbg !1972
  br label %123

76:                                               ; preds = %63, %68, %70, %70
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #39, !dbg !1972
  br label %119

77:                                               ; preds = %47, %56
  %78 = phi i32 [ %43, %47 ], [ -1, %56 ]
  %79 = phi i32 [ 3, %47 ], [ 2, %56 ]
  %80 = phi i32 [ 0, %47 ], [ %55, %56 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #39, !dbg !1973
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1884, metadata !DIExpression()), !dbg !1974
  %81 = call i32 @savewd_chdir(ptr noundef %1, ptr noundef nonnull %44, i32 noundef %79, ptr noundef nonnull %12) #39, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %81, metadata !1887, metadata !DIExpression()), !dbg !1976
  %82 = icmp slt i32 %81, -1, !dbg !1977
  br i1 %82, label %117, label %83, !dbg !1978

83:                                               ; preds = %77
  %84 = icmp eq i32 %81, 0, !dbg !1979
  br i1 %84, label %89, label %85, !dbg !1980

85:                                               ; preds = %83
  %86 = tail call ptr @__errno_location() #42, !dbg !1981
  %87 = load i32, ptr %86, align 4, !dbg !1981, !tbaa !1035
  %88 = icmp eq i32 %87, 13, !dbg !1982
  br i1 %88, label %89, label %108, !dbg !1983

89:                                               ; preds = %85, %83
  %90 = phi ptr [ %44, %85 ], [ @.str.2.52, %83 ], !dbg !1984
  call void @llvm.dbg.value(metadata i1 %84, metadata !1888, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %90, metadata !1892, metadata !DIExpression()), !dbg !1984
  %91 = load i32, ptr %12, align 4, !dbg !1985, !tbaa !1035
  %92 = call i32 @dirchownmod(i32 noundef %91, ptr noundef %90, i32 noundef %78, i32 noundef %7, i32 noundef %8, i32 noundef %4, i32 noundef %6) #39, !dbg !1987
  %93 = icmp eq i32 %92, 0, !dbg !1988
  br i1 %93, label %117, label %94, !dbg !1989

94:                                               ; preds = %89
  %95 = icmp eq i32 %80, 0, !dbg !1990
  br i1 %95, label %96, label %98, !dbg !1992

96:                                               ; preds = %94
  %97 = tail call ptr @__errno_location() #42, !dbg !1993
  br label %102, !dbg !1992

98:                                               ; preds = %94
  br i1 %23, label %115, label %99, !dbg !1995

99:                                               ; preds = %98
  %100 = tail call ptr @__errno_location() #42, !dbg !1996
  %101 = load i32, ptr %100, align 4, !dbg !1996, !tbaa !1035
  switch i32 %101, label %102 [
    i32 2, label %115
    i32 20, label %115
  ], !dbg !1997

102:                                              ; preds = %96, %99
  %103 = phi ptr [ %97, %96 ], [ %100, %99 ], !dbg !1993
  %104 = load i32, ptr %103, align 4, !dbg !1993, !tbaa !1035
  %105 = select i1 %35, ptr @.str.3.53, ptr @.str.4.54, !dbg !1993
  %106 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull %105, i32 noundef 5) #39, !dbg !1993
  %107 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !1993
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %104, ptr noundef %106, ptr noundef %107) #39, !dbg !1993
  br label %117, !dbg !1998

108:                                              ; preds = %85
  %109 = icmp eq i32 %80, 0, !dbg !1999
  %110 = select i1 %109, i32 %87, i32 %80, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %110, metadata !1834, metadata !DIExpression()), !dbg !1893
  %111 = load i32, ptr %12, align 4, !dbg !2003, !tbaa !1035
  %112 = icmp sgt i32 %111, -1, !dbg !2005
  br i1 %112, label %113, label %115, !dbg !2006

113:                                              ; preds = %108
  %114 = call i32 @close(i32 noundef %111) #39, !dbg !2007
  br label %115, !dbg !2007

115:                                              ; preds = %113, %108, %99, %99, %98
  %116 = phi i32 [ %110, %108 ], [ %110, %113 ], [ %80, %99 ], [ %80, %99 ], [ %80, %98 ]
  call void @llvm.dbg.value(metadata i32 %116, metadata !1834, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #39, !dbg !2008
  br label %119

117:                                              ; preds = %102, %89, %77
  %118 = phi i1 [ true, %77 ], [ false, %102 ], [ true, %89 ], !dbg !2009
  call void @llvm.dbg.value(metadata i32 poison, metadata !1834, metadata !DIExpression()), !dbg !1893
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #39, !dbg !2008
  br label %123

119:                                              ; preds = %59, %53, %53, %76, %115, %29, %18
  %120 = phi i32 [ %20, %18 ], [ %31, %29 ], [ %116, %115 ], [ %55, %53 ], [ %55, %59 ], [ %55, %76 ], [ %55, %53 ], !dbg !2010
  call void @llvm.dbg.value(metadata i32 %120, metadata !1834, metadata !DIExpression()), !dbg !1893
  %121 = call ptr @dcgettext(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.5.55, i32 noundef 5) #39, !dbg !2011
  %122 = call ptr @quote(ptr noundef nonnull %0) #39, !dbg !2011
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %120, ptr noundef %121, ptr noundef %122) #39, !dbg !2011
  br label %123, !dbg !2012

123:                                              ; preds = %47, %57, %75, %117, %27, %119
  %124 = phi i1 [ false, %119 ], [ %62, %75 ], [ true, %57 ], [ %118, %117 ], [ true, %27 ], [ true, %47 ], !dbg !1893
  ret i1 %124, !dbg !2013
}

; Function Attrs: nofree nounwind
declare !dbg !2014 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !2019 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !2020 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2032, metadata !DIExpression()), !dbg !2062
  %2 = load i8, ptr %0, align 1, !dbg !2063, !tbaa !1044
  %3 = and i8 %2, -8, !dbg !2064
  %4 = icmp eq i8 %3, 48, !dbg !2064
  br i1 %4, label %5, label %34, !dbg !2064

5:                                                ; preds = %1, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %1 ], !dbg !2065
  %7 = phi i32 [ %12, %14 ], [ 0, %1 ], !dbg !2067
  %8 = phi ptr [ %15, %14 ], [ %0, %1 ], !dbg !2067
  call void @llvm.dbg.value(metadata ptr %8, metadata !2033, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %7, metadata !2036, metadata !DIExpression()), !dbg !2067
  %9 = shl i32 %7, 3, !dbg !2068
  call void @llvm.dbg.value(metadata ptr %8, metadata !2033, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2067
  %10 = zext i8 %6 to i32, !dbg !2065
  %11 = add i32 %9, -48, !dbg !2069
  %12 = add i32 %11, %10, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %12, metadata !2036, metadata !DIExpression()), !dbg !2067
  %13 = icmp ugt i32 %12, 4095, !dbg !2071
  br i1 %13, label %142, label %14, !dbg !2073

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %15, metadata !2033, metadata !DIExpression()), !dbg !2067
  %16 = load i8, ptr %15, align 1, !dbg !2075, !tbaa !1044
  %17 = and i8 %16, -8, !dbg !2076
  %18 = icmp eq i8 %17, 48, !dbg !2076
  br i1 %18, label %5, label %19, !dbg !2076, !llvm.loop !2077

19:                                               ; preds = %14
  %20 = icmp eq i8 %16, 0, !dbg !2080
  br i1 %20, label %21, label %142, !dbg !2082

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %12, metadata !2037, metadata !DIExpression()), !dbg !2067
  %22 = ptrtoint ptr %15 to i64, !dbg !2083
  %23 = ptrtoint ptr %0 to i64, !dbg !2083
  %24 = sub i64 %22, %23, !dbg !2083
  %25 = icmp slt i64 %24, 5, !dbg !2084
  %26 = or i32 %12, 1023, !dbg !2085
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %27, metadata !2038, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %12, metadata !2086, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %27, metadata !2091, metadata !DIExpression()), !dbg !2093
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #45, !dbg !2095
  call void @llvm.dbg.value(metadata ptr %28, metadata !2092, metadata !DIExpression()), !dbg !2093
  store i8 61, ptr %28, align 4, !dbg !2096, !tbaa !2097
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !2099
  store i8 1, ptr %29, align 1, !dbg !2100, !tbaa !2101
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !2102
  store i32 4095, ptr %30, align 4, !dbg !2103, !tbaa !2104
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !2105
  store i32 %12, ptr %31, align 4, !dbg !2106, !tbaa !2107
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !2108
  store i32 %27, ptr %32, align 4, !dbg !2109, !tbaa !2110
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !2111
  store i8 0, ptr %33, align 1, !dbg !2112, !tbaa !2101
  br label %142, !dbg !2113

34:                                               ; preds = %1, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %1 ], !dbg !2114
  %36 = phi i64 [ %43, %41 ], [ 1, %1 ], !dbg !2116
  %37 = phi ptr [ %44, %41 ], [ %0, %1 ], !dbg !2117
  call void @llvm.dbg.value(metadata ptr %37, metadata !2042, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %36, metadata !2040, metadata !DIExpression()), !dbg !2116
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !2119

38:                                               ; preds = %34
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %36, i64 noundef 16) #46, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %39, metadata !2039, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 0, metadata !2044, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %0, metadata !2045, metadata !DIExpression()), !dbg !2062
  br label %46, !dbg !2121

40:                                               ; preds = %34
  br label %41, !dbg !2122

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %43, metadata !2040, metadata !DIExpression()), !dbg !2116
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2124
  call void @llvm.dbg.value(metadata ptr %44, metadata !2042, metadata !DIExpression()), !dbg !2118
  %45 = load i8, ptr %44, align 1, !dbg !2114, !tbaa !1044
  br label %34, !dbg !2125, !llvm.loop !2126

46:                                               ; preds = %137, %38
  %47 = phi i64 [ 0, %38 ], [ %125, %137 ], !dbg !2128
  %48 = phi ptr [ %0, %38 ], [ %138, %137 ], !dbg !2129
  call void @llvm.dbg.value(metadata i32 poison, metadata !2052, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata ptr %48, metadata !2045, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %47, metadata !2044, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 0, metadata !2046, metadata !DIExpression()), !dbg !2131
  br label %49, !dbg !2132

49:                                               ; preds = %61, %46
  %50 = phi ptr [ %48, %46 ], [ %63, %61 ], !dbg !2133
  %51 = phi i32 [ 0, %46 ], [ %62, %61 ], !dbg !2131
  call void @llvm.dbg.value(metadata i32 %51, metadata !2046, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr %50, metadata !2045, metadata !DIExpression()), !dbg !2062
  %52 = load i8, ptr %50, align 1, !dbg !2134, !tbaa !1044
  %53 = sext i8 %52 to i32, !dbg !2134
  switch i32 %53, label %141 [
    i32 117, label %55
    i32 103, label %57
    i32 111, label %59
    i32 97, label %61
    i32 61, label %54
    i32 43, label %54
    i32 45, label %54
  ], !dbg !2137

54:                                               ; preds = %49, %49, %49
  br label %64, !dbg !2138

55:                                               ; preds = %49
  %56 = or i32 %51, 2496, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %56, metadata !2046, metadata !DIExpression()), !dbg !2131
  br label %61, !dbg !2141

57:                                               ; preds = %49
  %58 = or i32 %51, 1080, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %58, metadata !2046, metadata !DIExpression()), !dbg !2131
  br label %61, !dbg !2143

59:                                               ; preds = %49
  %60 = or i32 %51, 519, !dbg !2144
  call void @llvm.dbg.value(metadata i32 %60, metadata !2046, metadata !DIExpression()), !dbg !2131
  br label %61, !dbg !2145

61:                                               ; preds = %49, %55, %57, %59
  %62 = phi i32 [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], [ 4095, %49 ], !dbg !2146
  call void @llvm.dbg.value(metadata i32 %62, metadata !2046, metadata !DIExpression()), !dbg !2131
  %63 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %63, metadata !2045, metadata !DIExpression()), !dbg !2062
  br label %49, !dbg !2148, !llvm.loop !2149

64:                                               ; preds = %136, %54
  %65 = phi i8 [ %52, %54 ], [ %135, %136 ], !dbg !2152
  %66 = phi i64 [ %47, %54 ], [ %125, %136 ], !dbg !2062
  %67 = phi ptr [ %50, %54 ], [ %118, %136 ], !dbg !2133
  %68 = phi i32 [ %51, %54 ], [ %124, %136 ], !dbg !2153
  call void @llvm.dbg.value(metadata i32 poison, metadata !2052, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %68, metadata !2046, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr %67, metadata !2045, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %66, metadata !2044, metadata !DIExpression()), !dbg !2062
  %69 = getelementptr inbounds i8, ptr %67, i64 1, !dbg !2154
  call void @llvm.dbg.value(metadata ptr %69, metadata !2045, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 %65, metadata !2050, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 3, metadata !2054, metadata !DIExpression()), !dbg !2130
  %70 = load i8, ptr %69, align 1, !dbg !2155, !tbaa !1044
  %71 = sext i8 %70 to i32, !dbg !2155
  switch i32 %71, label %96 [
    i32 48, label %72
    i32 49, label %72
    i32 50, label %72
    i32 51, label %72
    i32 52, label %72
    i32 53, label %72
    i32 54, label %72
    i32 55, label %72
    i32 117, label %90
    i32 103, label %92
    i32 111, label %94
  ], !dbg !2138

72:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64
  br label %73, !dbg !2156

73:                                               ; preds = %72, %82
  %74 = phi i8 [ %84, %82 ], [ %70, %72 ], !dbg !2157
  %75 = phi ptr [ %83, %82 ], [ %69, %72 ], !dbg !2130
  %76 = phi i32 [ %80, %82 ], [ 0, %72 ], !dbg !2159
  call void @llvm.dbg.value(metadata i32 %76, metadata !2055, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata ptr %75, metadata !2045, metadata !DIExpression()), !dbg !2062
  %77 = shl i32 %76, 3, !dbg !2160
  call void @llvm.dbg.value(metadata ptr %75, metadata !2045, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2062
  %78 = sext i8 %74 to i32, !dbg !2157
  %79 = add i32 %77, -48, !dbg !2161
  %80 = add i32 %79, %78, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %80, metadata !2055, metadata !DIExpression()), !dbg !2159
  %81 = icmp ugt i32 %80, 4095, !dbg !2163
  br i1 %81, label %141, label %82, !dbg !2165

82:                                               ; preds = %73
  %83 = getelementptr inbounds i8, ptr %75, i64 1, !dbg !2166
  call void @llvm.dbg.value(metadata ptr %83, metadata !2045, metadata !DIExpression()), !dbg !2062
  %84 = load i8, ptr %83, align 1, !dbg !2167, !tbaa !1044
  %85 = and i8 %84, -8, !dbg !2168
  %86 = icmp eq i8 %85, 48, !dbg !2168
  br i1 %86, label %73, label %87, !dbg !2168, !llvm.loop !2169

87:                                               ; preds = %82
  %88 = icmp eq i32 %68, 0, !dbg !2171
  br i1 %88, label %89, label %141, !dbg !2173

89:                                               ; preds = %87
  switch i8 %84, label %141 [
    i8 0, label %117
    i8 44, label %117
  ], !dbg !2174

90:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 448, metadata !2052, metadata !DIExpression()), !dbg !2130
  %91 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !2175
  call void @llvm.dbg.value(metadata ptr %91, metadata !2045, metadata !DIExpression()), !dbg !2062
  br label %117, !dbg !2176

92:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 56, metadata !2052, metadata !DIExpression()), !dbg !2130
  %93 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !2177
  call void @llvm.dbg.value(metadata ptr %93, metadata !2045, metadata !DIExpression()), !dbg !2062
  br label %117, !dbg !2178

94:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 7, metadata !2052, metadata !DIExpression()), !dbg !2130
  %95 = getelementptr inbounds i8, ptr %67, i64 2, !dbg !2179
  call void @llvm.dbg.value(metadata ptr %95, metadata !2045, metadata !DIExpression()), !dbg !2062
  br label %117, !dbg !2180

96:                                               ; preds = %64, %112
  %97 = phi i8 [ %116, %112 ], [ %70, %64 ], !dbg !2181
  %98 = phi ptr [ %115, %112 ], [ %69, %64 ], !dbg !2130
  %99 = phi i32 [ %113, %112 ], [ 0, %64 ], !dbg !2184
  %100 = phi i8 [ %114, %112 ], [ 1, %64 ], !dbg !2185
  call void @llvm.dbg.value(metadata i8 %100, metadata !2054, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %99, metadata !2052, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata ptr %98, metadata !2045, metadata !DIExpression()), !dbg !2062
  %101 = sext i8 %97 to i32, !dbg !2181
  switch i32 %101, label %117 [
    i32 114, label %102
    i32 119, label %104
    i32 120, label %106
    i32 88, label %112
    i32 115, label %108
    i32 116, label %110
  ], !dbg !2186

102:                                              ; preds = %96
  %103 = or i32 %99, 292, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %103, metadata !2052, metadata !DIExpression()), !dbg !2130
  br label %112, !dbg !2189

104:                                              ; preds = %96
  %105 = or i32 %99, 146, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %105, metadata !2052, metadata !DIExpression()), !dbg !2130
  br label %112, !dbg !2191

106:                                              ; preds = %96
  %107 = or i32 %99, 73, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %107, metadata !2052, metadata !DIExpression()), !dbg !2130
  br label %112, !dbg !2193

108:                                              ; preds = %96
  %109 = or i32 %99, 3072, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %109, metadata !2052, metadata !DIExpression()), !dbg !2130
  br label %112, !dbg !2195

110:                                              ; preds = %96
  %111 = or i32 %99, 512, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %111, metadata !2052, metadata !DIExpression()), !dbg !2130
  br label %112, !dbg !2197

112:                                              ; preds = %96, %102, %104, %106, %108, %110
  %113 = phi i32 [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %99, %96 ], !dbg !2184
  %114 = phi i8 [ %100, %110 ], [ %100, %108 ], [ %100, %106 ], [ %100, %104 ], [ %100, %102 ], [ 2, %96 ], !dbg !2184
  call void @llvm.dbg.value(metadata i8 %114, metadata !2054, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %113, metadata !2052, metadata !DIExpression()), !dbg !2130
  %115 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !2198
  call void @llvm.dbg.value(metadata ptr %115, metadata !2045, metadata !DIExpression()), !dbg !2062
  %116 = load i8, ptr %115, align 1, !dbg !2181, !tbaa !1044
  br label %96, !dbg !2199, !llvm.loop !2200

117:                                              ; preds = %96, %89, %89, %94, %92, %90
  %118 = phi ptr [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %83, %89 ], [ %83, %89 ], [ %98, %96 ], !dbg !2130
  %119 = phi i32 [ %68, %94 ], [ %68, %92 ], [ %68, %90 ], [ 4095, %89 ], [ 4095, %89 ], [ %68, %96 ], !dbg !2153
  %120 = phi i32 [ 7, %94 ], [ 56, %92 ], [ 448, %90 ], [ %80, %89 ], [ %80, %89 ], [ %99, %96 ]
  %121 = phi i1 [ true, %94 ], [ true, %92 ], [ true, %90 ], [ false, %89 ], [ false, %89 ], [ true, %96 ], !dbg !2203
  %122 = phi i32 [ 0, %94 ], [ 0, %92 ], [ 0, %90 ], [ 4095, %89 ], [ 4095, %89 ], [ 0, %96 ], !dbg !2203
  %123 = phi i8 [ 3, %94 ], [ 3, %92 ], [ 3, %90 ], [ 1, %89 ], [ 1, %89 ], [ %100, %96 ], !dbg !2130
  %124 = freeze i32 %119, !dbg !2204
  call void @llvm.dbg.value(metadata i8 %123, metadata !2054, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %122, metadata !2053, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %120, metadata !2052, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %119, metadata !2046, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr %118, metadata !2045, metadata !DIExpression()), !dbg !2062
  %125 = add i64 %66, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %125, metadata !2044, metadata !DIExpression()), !dbg !2062
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, !dbg !2206
  call void @llvm.dbg.value(metadata ptr %126, metadata !2058, metadata !DIExpression()), !dbg !2130
  store i8 %65, ptr %126, align 4, !dbg !2207, !tbaa !2097
  %127 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 1, !dbg !2208
  store i8 %123, ptr %127, align 1, !dbg !2209, !tbaa !2101
  %128 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 2, !dbg !2210
  store i32 %124, ptr %128, align 4, !dbg !2211, !tbaa !2104
  %129 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 3, !dbg !2212
  store i32 %120, ptr %129, align 4, !dbg !2213, !tbaa !2107
  %130 = icmp eq i32 %124, 0, !dbg !2204
  %131 = select i1 %130, i32 -1, i32 %124, !dbg !2204
  %132 = and i32 %131, %120, !dbg !2204
  %133 = select i1 %121, i32 %132, i32 %122, !dbg !2204
  %134 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %66, i32 4, !dbg !2214
  store i32 %133, ptr %134, align 4, !dbg !2215, !tbaa !2110
  %135 = load i8, ptr %118, align 1, !dbg !2216, !tbaa !1044
  switch i8 %135, label %141 [
    i8 61, label %136
    i8 43, label %136
    i8 45, label %136
    i8 44, label %137
    i8 0, label %139
  ], !dbg !2217

136:                                              ; preds = %117, %117, %117
  br label %64, !dbg !2130

137:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 poison, metadata !2052, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata ptr %118, metadata !2045, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i64 %125, metadata !2044, metadata !DIExpression()), !dbg !2062
  %138 = getelementptr inbounds i8, ptr %118, i64 1, !dbg !2218
  call void @llvm.dbg.value(metadata ptr %138, metadata !2045, metadata !DIExpression()), !dbg !2062
  br label %46, !dbg !2219, !llvm.loop !2220

139:                                              ; preds = %117
  %140 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %125, i32 1, !dbg !2223
  store i8 0, ptr %140, align 1, !dbg !2226, !tbaa !2101
  br label %142, !dbg !2227

141:                                              ; preds = %49, %87, %89, %117, %73
  call void @llvm.dbg.label(metadata !2061), !dbg !2228
  tail call void @free(ptr noundef nonnull %39) #39, !dbg !2229
  br label %142, !dbg !2230

142:                                              ; preds = %5, %139, %141, %21, %19
  %143 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %141 ], [ %39, %139 ], [ null, %5 ]
  ret ptr %143, !dbg !2231
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !2232 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2234, metadata !DIExpression()), !dbg !2257
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #39, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2235, metadata !DIExpression()), !dbg !2259
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #39, !dbg !2260
  %4 = icmp eq i32 %3, 0, !dbg !2262
  br i1 %4, label %5, label %14, !dbg !2263

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !2264
  %7 = load i32, ptr %6, align 8, !dbg !2264, !tbaa !1960
  call void @llvm.dbg.value(metadata i32 %7, metadata !2086, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 4095, metadata !2091, metadata !DIExpression()), !dbg !2265
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #45, !dbg !2267
  call void @llvm.dbg.value(metadata ptr %8, metadata !2092, metadata !DIExpression()), !dbg !2265
  store i8 61, ptr %8, align 4, !dbg !2268, !tbaa !2097
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !2269
  store i8 1, ptr %9, align 1, !dbg !2270, !tbaa !2101
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !2271
  store i32 4095, ptr %10, align 4, !dbg !2272, !tbaa !2104
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !2273
  store i32 %7, ptr %11, align 4, !dbg !2274, !tbaa !2107
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !2275
  store i32 4095, ptr %12, align 4, !dbg !2276, !tbaa !2110
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !2277
  store i8 0, ptr %13, align 1, !dbg !2278, !tbaa !2101
  br label %14, !dbg !2279

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !2257
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #39, !dbg !2280
  ret ptr %15, !dbg !2280
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !2281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2288, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i1 %1, metadata !2289, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %2, metadata !2290, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %3, metadata !2291, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %4, metadata !2292, metadata !DIExpression()), !dbg !2304
  %6 = and i32 %0, 4095, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %6, metadata !2293, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 0, metadata !2294, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr %3, metadata !2291, metadata !DIExpression()), !dbg !2304
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !2306
  %8 = load i8, ptr %7, align 1, !dbg !2306, !tbaa !2101
  %9 = icmp eq i8 %8, 0, !dbg !2307
  br i1 %9, label %80, label %10, !dbg !2308

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !2308

14:                                               ; preds = %10, %73
  %15 = phi i8 [ %8, %10 ], [ %78, %73 ]
  %16 = phi ptr [ %3, %10 ], [ %76, %73 ]
  %17 = phi i32 [ %6, %10 ], [ %75, %73 ]
  %18 = phi i32 [ 0, %10 ], [ %74, %73 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !2291, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %17, metadata !2293, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %18, metadata !2294, metadata !DIExpression()), !dbg !2304
  %19 = sext i8 %15 to i32, !dbg !2309
  %20 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !2310
  %21 = load i32, ptr %20, align 4, !dbg !2310, !tbaa !2104
  call void @llvm.dbg.value(metadata i32 %21, metadata !2295, metadata !DIExpression()), !dbg !2311
  %22 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !2312
  %23 = load i32, ptr %22, align 4, !dbg !2312, !tbaa !2110
  %24 = xor i32 %23, -1, !dbg !2313
  %25 = and i32 %11, %24, !dbg !2314
  call void @llvm.dbg.value(metadata i32 %25, metadata !2299, metadata !DIExpression()), !dbg !2311
  %26 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !2315
  %27 = load i32, ptr %26, align 4, !dbg !2315, !tbaa !2107
  call void @llvm.dbg.value(metadata i32 %27, metadata !2300, metadata !DIExpression()), !dbg !2311
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !2316

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %29, metadata !2300, metadata !DIExpression()), !dbg !2311
  %30 = and i32 %29, 292, !dbg !2319
  %31 = icmp eq i32 %30, 0, !dbg !2320
  %32 = select i1 %31, i32 0, i32 292, !dbg !2320
  %33 = and i32 %29, 146, !dbg !2321
  %34 = icmp eq i32 %33, 0, !dbg !2322
  %35 = select i1 %34, i32 0, i32 146, !dbg !2322
  %36 = and i32 %29, 73, !dbg !2323
  %37 = icmp eq i32 %36, 0, !dbg !2324
  %38 = select i1 %37, i32 0, i32 73, !dbg !2324
  %39 = or i32 %35, %32, !dbg !2325
  %40 = or i32 %39, %38, !dbg !2326
  %41 = or i32 %40, %29, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %41, metadata !2300, metadata !DIExpression()), !dbg !2311
  br label %48, !dbg !2327

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !2328
  %44 = or i32 %43, %12, !dbg !2330
  %45 = icmp eq i32 %44, 0, !dbg !2330
  %46 = or i32 %27, 73
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !2331
  br label %48, !dbg !2331

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !2311
  call void @llvm.dbg.value(metadata i32 %49, metadata !2300, metadata !DIExpression()), !dbg !2311
  %50 = icmp eq i32 %21, 0, !dbg !2332
  %51 = select i1 %50, i32 %13, i32 %21, !dbg !2332
  %52 = xor i32 %25, -1, !dbg !2333
  %53 = and i32 %51, %52, !dbg !2334
  %54 = and i32 %53, %49, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %54, metadata !2300, metadata !DIExpression()), !dbg !2311
  %55 = load i8, ptr %16, align 4, !dbg !2336, !tbaa !2097
  %56 = sext i8 %55 to i32, !dbg !2337
  switch i32 %56, label %73 [
    i32 61, label %57
    i32 43, label %66
    i32 45, label %69
  ], !dbg !2338

57:                                               ; preds = %48
  %58 = xor i32 %21, -1, !dbg !2339
  %59 = select i1 %50, i32 0, i32 %58, !dbg !2339
  %60 = or i32 %59, %25, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %60, metadata !2301, metadata !DIExpression()), !dbg !2341
  %61 = and i32 %60, 4095, !dbg !2342
  %62 = xor i32 %61, 4095, !dbg !2342
  %63 = or i32 %62, %18, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %63, metadata !2294, metadata !DIExpression()), !dbg !2304
  %64 = and i32 %60, %17, !dbg !2344
  %65 = or i32 %54, %64, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %65, metadata !2293, metadata !DIExpression()), !dbg !2304
  br label %73

66:                                               ; preds = %48
  %67 = or i32 %54, %18, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %67, metadata !2294, metadata !DIExpression()), !dbg !2304
  %68 = or i32 %54, %17, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %68, metadata !2293, metadata !DIExpression()), !dbg !2304
  br label %73, !dbg !2348

69:                                               ; preds = %48
  %70 = or i32 %54, %18, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %70, metadata !2294, metadata !DIExpression()), !dbg !2304
  %71 = xor i32 %54, -1, !dbg !2350
  %72 = and i32 %17, %71, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %72, metadata !2293, metadata !DIExpression()), !dbg !2304
  br label %73, !dbg !2352

73:                                               ; preds = %48, %69, %66, %57
  %74 = phi i32 [ %18, %48 ], [ %70, %69 ], [ %67, %66 ], [ %63, %57 ], !dbg !2304
  %75 = phi i32 [ %17, %48 ], [ %72, %69 ], [ %68, %66 ], [ %65, %57 ], !dbg !2304
  call void @llvm.dbg.value(metadata i32 %75, metadata !2293, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %74, metadata !2294, metadata !DIExpression()), !dbg !2304
  %76 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !2353
  call void @llvm.dbg.value(metadata ptr %76, metadata !2291, metadata !DIExpression()), !dbg !2304
  %77 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !2306
  %78 = load i8, ptr %77, align 1, !dbg !2306, !tbaa !2101
  %79 = icmp eq i8 %78, 0, !dbg !2307
  br i1 %79, label %80, label %14, !dbg !2308, !llvm.loop !2354

80:                                               ; preds = %73, %5
  %81 = phi i32 [ 0, %5 ], [ %74, %73 ], !dbg !2356
  %82 = phi i32 [ %6, %5 ], [ %75, %73 ], !dbg !2357
  %83 = icmp eq ptr %4, null, !dbg !2358
  br i1 %83, label %85, label %84, !dbg !2360

84:                                               ; preds = %80
  store i32 %81, ptr %4, align 4, !dbg !2361, !tbaa !1035
  br label %85, !dbg !2362

85:                                               ; preds = %84, %80
  ret i32 %82, !dbg !2363
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2364 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2366, metadata !DIExpression()), !dbg !2369
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2370
  call void @llvm.dbg.value(metadata ptr %2, metadata !2367, metadata !DIExpression()), !dbg !2369
  %3 = icmp eq ptr %2, null, !dbg !2371
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2371
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2371
  call void @llvm.dbg.value(metadata ptr %5, metadata !2368, metadata !DIExpression()), !dbg !2369
  %6 = ptrtoint ptr %5 to i64, !dbg !2372
  %7 = ptrtoint ptr %0 to i64, !dbg !2372
  %8 = sub i64 %6, %7, !dbg !2372
  %9 = icmp sgt i64 %8, 6, !dbg !2374
  br i1 %9, label %10, label %19, !dbg !2375

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2376
  call void @llvm.dbg.value(metadata ptr %11, metadata !2377, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !2382, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 7, metadata !2383, metadata !DIExpression()), !dbg !2384
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.64, i64 7), !dbg !2386
  %13 = icmp eq i32 %12, 0, !dbg !2387
  br i1 %13, label %14, label %19, !dbg !2388

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2366, metadata !DIExpression()), !dbg !2369
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.65, i64 noundef 3) #40, !dbg !2389
  %16 = icmp eq i32 %15, 0, !dbg !2392
  %17 = select i1 %16, i64 3, i64 0, !dbg !2393
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2393
  br label %19, !dbg !2393

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2369
  call void @llvm.dbg.value(metadata ptr %21, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %20, metadata !2366, metadata !DIExpression()), !dbg !2369
  store ptr %20, ptr @program_name, align 8, !dbg !2394, !tbaa !966
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2395, !tbaa !966
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2396, !tbaa !966
  ret void, !dbg !2397
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2398 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !513 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.savewd, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !520, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata ptr %1, metadata !521, metadata !DIExpression()), !dbg !2399
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %5, metadata !522, metadata !DIExpression()), !dbg !2399
  %6 = icmp eq ptr %5, %0, !dbg !2401
  br i1 %6, label %7, label %14, !dbg !2403

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2404
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %4, metadata !528, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata ptr %4, metadata !2407, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %4, metadata !2416, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 8, metadata !2423, metadata !DIExpression()), !dbg !2424
  store i64 0, ptr %4, align 8, !dbg !2426
  call void @llvm.dbg.value(metadata ptr %3, metadata !523, metadata !DIExpression(DW_OP_deref)), !dbg !2399
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2427
  %9 = icmp eq i64 %8, 2, !dbg !2429
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !523, metadata !DIExpression()), !dbg !2399
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2430
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2431
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2431
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2399
  ret ptr %15, !dbg !2431
}

; Function Attrs: nounwind
declare !dbg !2432 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2443, metadata !DIExpression()), !dbg !2446
  %2 = tail call ptr @__errno_location() #42, !dbg !2447
  %3 = load i32, ptr %2, align 4, !dbg !2447, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %3, metadata !2444, metadata !DIExpression()), !dbg !2446
  %4 = icmp eq ptr %0, null, !dbg !2448
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2448
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2449
  call void @llvm.dbg.value(metadata ptr %6, metadata !2445, metadata !DIExpression()), !dbg !2446
  store i32 %3, ptr %2, align 4, !dbg !2450, !tbaa !1035
  ret ptr %6, !dbg !2451
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !2452 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2458, metadata !DIExpression()), !dbg !2459
  %2 = icmp eq ptr %0, null, !dbg !2460
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2460
  %4 = load i32, ptr %3, align 8, !dbg !2461, !tbaa !2462
  ret i32 %4, !dbg !2464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2465 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %1, metadata !2470, metadata !DIExpression()), !dbg !2471
  %3 = icmp eq ptr %0, null, !dbg !2472
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2472
  store i32 %1, ptr %4, align 8, !dbg !2473, !tbaa !2462
  ret void, !dbg !2474
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2475 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2479, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %1, metadata !2480, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %2, metadata !2481, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %1, metadata !2482, metadata !DIExpression()), !dbg !2487
  %4 = icmp eq ptr %0, null, !dbg !2488
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2488
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2489
  %7 = lshr i8 %1, 5, !dbg !2490
  %8 = zext i8 %7 to i64, !dbg !2490
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %9, metadata !2483, metadata !DIExpression()), !dbg !2487
  %10 = and i8 %1, 31, !dbg !2492
  %11 = zext i8 %10 to i32, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %11, metadata !2485, metadata !DIExpression()), !dbg !2487
  %12 = load i32, ptr %9, align 4, !dbg !2493, !tbaa !1035
  %13 = lshr i32 %12, %11, !dbg !2494
  %14 = and i32 %13, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %14, metadata !2486, metadata !DIExpression()), !dbg !2487
  %15 = xor i32 %13, %2, !dbg !2496
  %16 = and i32 %15, 1, !dbg !2496
  %17 = shl nuw i32 %16, %11, !dbg !2497
  %18 = xor i32 %17, %12, !dbg !2498
  store i32 %18, ptr %9, align 4, !dbg !2498, !tbaa !1035
  ret i32 %14, !dbg !2499
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2500 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %1, metadata !2505, metadata !DIExpression()), !dbg !2507
  %3 = icmp eq ptr %0, null, !dbg !2508
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %4, metadata !2504, metadata !DIExpression()), !dbg !2507
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2511
  %6 = load i32, ptr %5, align 4, !dbg !2511, !tbaa !2512
  call void @llvm.dbg.value(metadata i32 %6, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i32 %1, ptr %5, align 4, !dbg !2513, !tbaa !2512
  ret i32 %6, !dbg !2514
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2515 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %1, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %2, metadata !2521, metadata !DIExpression()), !dbg !2522
  %4 = icmp eq ptr %0, null, !dbg !2523
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2525
  call void @llvm.dbg.value(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !2522
  store i32 10, ptr %5, align 8, !dbg !2526, !tbaa !2462
  %6 = icmp ne ptr %1, null, !dbg !2527
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2529
  br i1 %8, label %10, label %9, !dbg !2529

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2530
  unreachable, !dbg !2530

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2531
  store ptr %1, ptr %11, align 8, !dbg !2532, !tbaa !2533
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2534
  store ptr %2, ptr %12, align 8, !dbg !2535, !tbaa !2536
  ret void, !dbg !2537
}

; Function Attrs: noreturn nounwind
declare !dbg !2538 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2539 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2543, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %1, metadata !2544, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %2, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %3, metadata !2546, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %4, metadata !2547, metadata !DIExpression()), !dbg !2551
  %6 = icmp eq ptr %4, null, !dbg !2552
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2552
  call void @llvm.dbg.value(metadata ptr %7, metadata !2548, metadata !DIExpression()), !dbg !2551
  %8 = tail call ptr @__errno_location() #42, !dbg !2553
  %9 = load i32, ptr %8, align 4, !dbg !2553, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %9, metadata !2549, metadata !DIExpression()), !dbg !2551
  %10 = load i32, ptr %7, align 8, !dbg !2554, !tbaa !2462
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2555
  %12 = load i32, ptr %11, align 4, !dbg !2555, !tbaa !2512
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2556
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2557
  %15 = load ptr, ptr %14, align 8, !dbg !2557, !tbaa !2533
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2558
  %17 = load ptr, ptr %16, align 8, !dbg !2558, !tbaa !2536
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2559
  call void @llvm.dbg.value(metadata i64 %18, metadata !2550, metadata !DIExpression()), !dbg !2551
  store i32 %9, ptr %8, align 4, !dbg !2560, !tbaa !1035
  ret i64 %18, !dbg !2561
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2562 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.savewd, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.savewd, align 8
  %14 = alloca %struct.savewd, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2568, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %2, metadata !2570, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %3, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 %4, metadata !2572, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 %5, metadata !2573, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %6, metadata !2574, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %7, metadata !2575, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %8, metadata !2576, metadata !DIExpression()), !dbg !2630
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2631
  %17 = icmp eq i64 %16, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i1 %17, metadata !2577, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  call void @llvm.dbg.value(metadata i64 0, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 0, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr null, metadata !2580, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 0, metadata !2581, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2630
  %18 = trunc i32 %5 to i8, !dbg !2633
  %19 = lshr i8 %18, 1, !dbg !2633
  %20 = and i8 %19, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i8 %20, metadata !2583, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 1, metadata !2585, metadata !DIExpression()), !dbg !2630
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2634

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2635
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2636
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2637
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2638
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2630
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2639
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2640
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %39, metadata !2585, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %38, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %37, metadata !2583, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %36, metadata !2582, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %35, metadata !2581, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %34, metadata !2580, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %33, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 0, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %32, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %31, metadata !2576, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %30, metadata !2575, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 %29, metadata !2572, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.label(metadata !2623), !dbg !2641
  call void @llvm.dbg.value(metadata i8 0, metadata !2586, metadata !DIExpression()), !dbg !2630
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
  ], !dbg !2642

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 5, metadata !2572, metadata !DIExpression()), !dbg !2630
  br label %115, !dbg !2643

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2583, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 5, metadata !2572, metadata !DIExpression()), !dbg !2630
  %43 = and i8 %37, 1, !dbg !2644
  %44 = icmp eq i8 %43, 0, !dbg !2644
  br i1 %44, label %45, label %115, !dbg !2643

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2646
  br i1 %46, label %115, label %47, !dbg !2649

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2646, !tbaa !1044
  br label %115, !dbg !2646

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.78, metadata !612, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 %29, metadata !613, metadata !DIExpression()), !dbg !2650
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.11.78, i32 noundef 5) #39, !dbg !2654
  call void @llvm.dbg.value(metadata ptr %49, metadata !614, metadata !DIExpression()), !dbg !2650
  %50 = icmp eq ptr %49, @.str.11.78, !dbg !2655
  br i1 %50, label %51, label %60, !dbg !2657

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2658
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %13, metadata !616, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %13, metadata !2661, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %13, metadata !2669, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 8, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i64 0, ptr %13, align 8, !dbg !2676
  call void @llvm.dbg.value(metadata ptr %12, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2677
  %53 = icmp eq i64 %52, 3, !dbg !2679
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !615, metadata !DIExpression()), !dbg !2650
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2680
  %57 = icmp eq i32 %29, 9, !dbg !2680
  %58 = select i1 %57, ptr @.str.10.80, ptr @.str.12.81, !dbg !2680
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2680
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2681
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2681
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2650
  call void @llvm.dbg.value(metadata ptr %61, metadata !2575, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr @.str.12.81, metadata !612, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %29, metadata !613, metadata !DIExpression()), !dbg !2682
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.79, ptr noundef nonnull @.str.12.81, i32 noundef 5) #39, !dbg !2684
  call void @llvm.dbg.value(metadata ptr %62, metadata !614, metadata !DIExpression()), !dbg !2682
  %63 = icmp eq ptr %62, @.str.12.81, !dbg !2685
  br i1 %63, label %64, label %73, !dbg !2686

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2687
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2688
  call void @llvm.dbg.declare(metadata ptr %11, metadata !616, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %11, metadata !2661, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %11, metadata !2669, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 8, metadata !2673, metadata !DIExpression()), !dbg !2692
  store i64 0, ptr %11, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata ptr %10, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !2682
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2695
  %66 = icmp eq i64 %65, 3, !dbg !2696
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !615, metadata !DIExpression()), !dbg !2682
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2697
  %70 = icmp eq i32 %29, 9, !dbg !2697
  %71 = select i1 %70, ptr @.str.10.80, ptr @.str.12.81, !dbg !2697
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2697
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2698
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2698
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2576, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %74, metadata !2575, metadata !DIExpression()), !dbg !2630
  %76 = and i8 %37, 1, !dbg !2699
  %77 = icmp eq i8 %76, 0, !dbg !2699
  br i1 %77, label %78, label %93, !dbg !2700

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2587, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 0, metadata !2578, metadata !DIExpression()), !dbg !2630
  %79 = load i8, ptr %74, align 1, !dbg !2702, !tbaa !1044
  %80 = icmp eq i8 %79, 0, !dbg !2704
  br i1 %80, label %93, label %81, !dbg !2704

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2587, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %84, metadata !2578, metadata !DIExpression()), !dbg !2630
  %85 = icmp ult i64 %84, %40, !dbg !2705
  br i1 %85, label %86, label %88, !dbg !2708

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2705
  store i8 %82, ptr %87, align 1, !dbg !2705, !tbaa !1044
  br label %88, !dbg !2705

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %89, metadata !2578, metadata !DIExpression()), !dbg !2630
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2709
  call void @llvm.dbg.value(metadata ptr %90, metadata !2587, metadata !DIExpression()), !dbg !2701
  %91 = load i8, ptr %90, align 1, !dbg !2702, !tbaa !1044
  %92 = icmp eq i8 %91, 0, !dbg !2704
  br i1 %92, label %93, label %81, !dbg !2704, !llvm.loop !2710

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2712
  call void @llvm.dbg.value(metadata i64 %94, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %75, metadata !2580, metadata !DIExpression()), !dbg !2630
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %95, metadata !2581, metadata !DIExpression()), !dbg !2630
  br label %115, !dbg !2714

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2630
  br label %97, !dbg !2715

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %98, metadata !2582, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2630
  br label %99, !dbg !2716

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2638
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %101, metadata !2583, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %100, metadata !2582, metadata !DIExpression()), !dbg !2630
  %102 = and i8 %101, 1, !dbg !2717
  %103 = icmp eq i8 %102, 0, !dbg !2717
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2719
  br label %105, !dbg !2719

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2630
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2633
  call void @llvm.dbg.value(metadata i8 %107, metadata !2583, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %106, metadata !2582, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 2, metadata !2572, metadata !DIExpression()), !dbg !2630
  %108 = and i8 %107, 1, !dbg !2720
  %109 = icmp eq i8 %108, 0, !dbg !2720
  br i1 %109, label %110, label %115, !dbg !2722

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2723
  br i1 %111, label %115, label %112, !dbg !2726

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2723, !tbaa !1044
  br label %115, !dbg !2723

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2630
  br label %115, !dbg !2727

114:                                              ; preds = %28
  call void @abort() #41, !dbg !2728
  unreachable, !dbg !2728

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2712
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.80, %45 ], [ @.str.10.80, %47 ], [ @.str.10.80, %42 ], [ %34, %28 ], [ @.str.12.81, %110 ], [ @.str.12.81, %112 ], [ @.str.12.81, %105 ], [ @.str.10.80, %41 ], !dbg !2630
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2630
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2630
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %123, metadata !2583, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %122, metadata !2582, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %121, metadata !2581, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %120, metadata !2580, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %119, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %118, metadata !2576, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %117, metadata !2575, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 %116, metadata !2572, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 0, metadata !2592, metadata !DIExpression()), !dbg !2729
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
  br label %138, !dbg !2730

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2712
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2635
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2639
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2640
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2731
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2732
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %145, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %144, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %143, metadata !2585, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %142, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %141, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %140, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %139, metadata !2571, metadata !DIExpression()), !dbg !2630
  %147 = icmp eq i64 %139, -1, !dbg !2733
  br i1 %147, label %148, label %152, !dbg !2734

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2735
  %150 = load i8, ptr %149, align 1, !dbg !2735, !tbaa !1044
  %151 = icmp eq i8 %150, 0, !dbg !2736
  br i1 %151, label %627, label %154, !dbg !2737

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2738
  br i1 %153, label %627, label %154, !dbg !2737

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2739
  br i1 %129, label %155, label %170, !dbg !2740

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2742
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2743
  br i1 %157, label %158, label %160, !dbg !2743

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %159, metadata !2571, metadata !DIExpression()), !dbg !2630
  br label %160, !dbg !2745

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2745
  call void @llvm.dbg.value(metadata i64 %161, metadata !2571, metadata !DIExpression()), !dbg !2630
  %162 = icmp ugt i64 %156, %161, !dbg !2746
  br i1 %162, label %170, label %163, !dbg !2747

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %164, metadata !2749, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %120, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %121, metadata !2753, metadata !DIExpression()), !dbg !2754
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2756
  %166 = icmp ne i32 %165, 0, !dbg !2757
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2758
  %168 = xor i1 %166, true, !dbg !2758
  %169 = zext i1 %168 to i8, !dbg !2758
  br i1 %167, label %170, label %688, !dbg !2758

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2739
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2739
  call void @llvm.dbg.value(metadata i8 %173, metadata !2594, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %171, metadata !2571, metadata !DIExpression()), !dbg !2630
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2759
  %175 = load i8, ptr %174, align 1, !dbg !2759, !tbaa !1044
  call void @llvm.dbg.value(metadata i8 %175, metadata !2599, metadata !DIExpression()), !dbg !2739
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
  ], !dbg !2760

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2761

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2762

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2739
  %179 = and i8 %144, 1, !dbg !2766
  %180 = icmp eq i8 %179, 0, !dbg !2766
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2766
  br i1 %181, label %182, label %198, !dbg !2766

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2768
  br i1 %183, label %184, label %186, !dbg !2772

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2768
  store i8 39, ptr %185, align 1, !dbg !2768, !tbaa !1044
  br label %186, !dbg !2768

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %187, metadata !2578, metadata !DIExpression()), !dbg !2630
  %188 = icmp ult i64 %187, %146, !dbg !2773
  br i1 %188, label %189, label %191, !dbg !2776

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2773
  store i8 36, ptr %190, align 1, !dbg !2773, !tbaa !1044
  br label %191, !dbg !2773

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %192, metadata !2578, metadata !DIExpression()), !dbg !2630
  %193 = icmp ult i64 %192, %146, !dbg !2777
  br i1 %193, label %194, label %196, !dbg !2780

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2777
  store i8 39, ptr %195, align 1, !dbg !2777, !tbaa !1044
  br label %196, !dbg !2777

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %197, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 1, metadata !2586, metadata !DIExpression()), !dbg !2630
  br label %198, !dbg !2781

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2630
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %200, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %199, metadata !2578, metadata !DIExpression()), !dbg !2630
  %201 = icmp ult i64 %199, %146, !dbg !2782
  br i1 %201, label %202, label %204, !dbg !2785

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2782
  store i8 92, ptr %203, align 1, !dbg !2782, !tbaa !1044
  br label %204, !dbg !2782

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %205, metadata !2578, metadata !DIExpression()), !dbg !2630
  br i1 %126, label %206, label %491, !dbg !2786

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2788
  %208 = icmp ult i64 %207, %171, !dbg !2789
  br i1 %208, label %209, label %480, !dbg !2790

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2791
  %211 = load i8, ptr %210, align 1, !dbg !2791, !tbaa !1044
  %212 = add i8 %211, -48, !dbg !2792
  %213 = icmp ult i8 %212, 10, !dbg !2792
  br i1 %213, label %214, label %480, !dbg !2792

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2793
  br i1 %215, label %216, label %218, !dbg !2797

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2793
  store i8 48, ptr %217, align 1, !dbg !2793, !tbaa !1044
  br label %218, !dbg !2793

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %219, metadata !2578, metadata !DIExpression()), !dbg !2630
  %220 = icmp ult i64 %219, %146, !dbg !2798
  br i1 %220, label %221, label %223, !dbg !2801

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2798
  store i8 48, ptr %222, align 1, !dbg !2798, !tbaa !1044
  br label %223, !dbg !2798

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %224, metadata !2578, metadata !DIExpression()), !dbg !2630
  br label %480, !dbg !2802

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2803

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2804

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2805

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2807

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2809
  %231 = icmp ult i64 %230, %171, !dbg !2810
  br i1 %231, label %232, label %480, !dbg !2811

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2812
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2813
  %235 = load i8, ptr %234, align 1, !dbg !2813, !tbaa !1044
  %236 = icmp eq i8 %235, 63, !dbg !2814
  br i1 %236, label %237, label %480, !dbg !2815

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2816
  %239 = load i8, ptr %238, align 1, !dbg !2816, !tbaa !1044
  %240 = sext i8 %239 to i32, !dbg !2816
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
  ], !dbg !2817

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2818

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %230, metadata !2592, metadata !DIExpression()), !dbg !2729
  %243 = icmp ult i64 %140, %146, !dbg !2820
  br i1 %243, label %244, label %246, !dbg !2823

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2820
  store i8 63, ptr %245, align 1, !dbg !2820, !tbaa !1044
  br label %246, !dbg !2820

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %247, metadata !2578, metadata !DIExpression()), !dbg !2630
  %248 = icmp ult i64 %247, %146, !dbg !2824
  br i1 %248, label %249, label %251, !dbg !2827

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2824
  store i8 34, ptr %250, align 1, !dbg !2824, !tbaa !1044
  br label %251, !dbg !2824

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %252, metadata !2578, metadata !DIExpression()), !dbg !2630
  %253 = icmp ult i64 %252, %146, !dbg !2828
  br i1 %253, label %254, label %256, !dbg !2831

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2828
  store i8 34, ptr %255, align 1, !dbg !2828, !tbaa !1044
  br label %256, !dbg !2828

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %257, metadata !2578, metadata !DIExpression()), !dbg !2630
  %258 = icmp ult i64 %257, %146, !dbg !2832
  br i1 %258, label %259, label %261, !dbg !2835

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2832
  store i8 63, ptr %260, align 1, !dbg !2832, !tbaa !1044
  br label %261, !dbg !2832

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %262, metadata !2578, metadata !DIExpression()), !dbg !2630
  br label %480, !dbg !2836

263:                                              ; preds = %170
  br label %274, !dbg !2837

264:                                              ; preds = %170
  br label %274, !dbg !2838

265:                                              ; preds = %170
  br label %272, !dbg !2839

266:                                              ; preds = %170
  br label %272, !dbg !2840

267:                                              ; preds = %170
  br label %274, !dbg !2841

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2842

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2843

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2846

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2848

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2849
  call void @llvm.dbg.label(metadata !2624), !dbg !2850
  br i1 %134, label %274, label %670, !dbg !2851

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2849
  call void @llvm.dbg.label(metadata !2626), !dbg !2853
  br i1 %125, label %535, label %491, !dbg !2854

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2855

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2856, !tbaa !1044
  %279 = icmp eq i8 %278, 0, !dbg !2858
  br i1 %279, label %280, label %480, !dbg !2859

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2860
  br i1 %281, label %282, label %480, !dbg !2862

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2598, metadata !DIExpression()), !dbg !2739
  br label %283, !dbg !2863

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2739
  call void @llvm.dbg.value(metadata i8 %284, metadata !2598, metadata !DIExpression()), !dbg !2739
  br i1 %134, label %480, label %670, !dbg !2864

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 1, metadata !2598, metadata !DIExpression()), !dbg !2739
  br i1 %133, label %286, label %480, !dbg !2866

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2867

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2870
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2872
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2872
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %292, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %291, metadata !2579, metadata !DIExpression()), !dbg !2630
  %293 = icmp ult i64 %140, %292, !dbg !2873
  br i1 %293, label %294, label %296, !dbg !2876

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2873
  store i8 39, ptr %295, align 1, !dbg !2873, !tbaa !1044
  br label %296, !dbg !2873

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %297, metadata !2578, metadata !DIExpression()), !dbg !2630
  %298 = icmp ult i64 %297, %292, !dbg !2877
  br i1 %298, label %299, label %301, !dbg !2880

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2877
  store i8 92, ptr %300, align 1, !dbg !2877, !tbaa !1044
  br label %301, !dbg !2877

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %302, metadata !2578, metadata !DIExpression()), !dbg !2630
  %303 = icmp ult i64 %302, %292, !dbg !2881
  br i1 %303, label %304, label %306, !dbg !2884

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2881
  store i8 39, ptr %305, align 1, !dbg !2881, !tbaa !1044
  br label %306, !dbg !2881

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %307, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2586, metadata !DIExpression()), !dbg !2630
  br label %480, !dbg !2885

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2886

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2600, metadata !DIExpression()), !dbg !2887
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !2888
  %311 = load ptr, ptr %310, align 8, !dbg !2888, !tbaa !966
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2888
  %314 = load i16, ptr %313, align 2, !dbg !2888, !tbaa !1076
  %315 = lshr i16 %314, 14, !dbg !2890
  %316 = trunc i16 %315 to i8, !dbg !2890
  %317 = and i8 %316, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i8 %317, metadata !2603, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %171, metadata !2571, metadata !DIExpression()), !dbg !2630
  %318 = icmp eq i8 %317, 0, !dbg !2891
  call void @llvm.dbg.value(metadata i1 %318, metadata !2598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  br label %368, !dbg !2892

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2604, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata ptr %14, metadata !2661, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata ptr %14, metadata !2669, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 8, metadata !2673, metadata !DIExpression()), !dbg !2897
  store i64 0, ptr %14, align 8, !dbg !2899
  call void @llvm.dbg.value(metadata i64 0, metadata !2600, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 1, metadata !2603, metadata !DIExpression()), !dbg !2887
  %320 = icmp eq i64 %171, -1, !dbg !2900
  br i1 %320, label %321, label %323, !dbg !2902

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %322, metadata !2571, metadata !DIExpression()), !dbg !2630
  br label %323, !dbg !2904

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2739
  call void @llvm.dbg.value(metadata i64 %324, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2905
  %325 = sub i64 %324, %145, !dbg !2906
  call void @llvm.dbg.value(metadata ptr %15, metadata !2607, metadata !DIExpression(DW_OP_deref)), !dbg !2907
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %326, metadata !2611, metadata !DIExpression()), !dbg !2907
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2909

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2600, metadata !DIExpression()), !dbg !2887
  %328 = icmp ugt i64 %324, %145, !dbg !2910
  br i1 %328, label %331, label %329, !dbg !2912

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2600, metadata !DIExpression()), !dbg !2887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %324, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i1 true, metadata !2598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  br label %368, !dbg !2892

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2887
  br label %360, !dbg !2915

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2600, metadata !DIExpression()), !dbg !2887
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2917
  %335 = load i8, ptr %334, align 1, !dbg !2917, !tbaa !1044
  %336 = icmp eq i8 %335, 0, !dbg !2912
  br i1 %336, label %363, label %337, !dbg !2918

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %338, metadata !2600, metadata !DIExpression()), !dbg !2887
  %339 = add i64 %338, %145, !dbg !2920
  %340 = icmp eq i64 %338, %325, !dbg !2910
  br i1 %340, label %363, label %331, !dbg !2912, !llvm.loop !2921

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2922
  %344 = and i1 %343, %133, !dbg !2922
  call void @llvm.dbg.value(metadata i64 1, metadata !2612, metadata !DIExpression()), !dbg !2923
  br i1 %344, label %345, label %354, !dbg !2922

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2612, metadata !DIExpression()), !dbg !2923
  %347 = add i64 %346, %145, !dbg !2924
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2926
  %349 = load i8, ptr %348, align 1, !dbg !2926, !tbaa !1044
  %350 = sext i8 %349 to i32, !dbg !2926
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2927

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %352, metadata !2612, metadata !DIExpression()), !dbg !2923
  %353 = icmp eq i64 %352, %326, !dbg !2929
  br i1 %353, label %354, label %345, !dbg !2930, !llvm.loop !2931

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2933, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %355, metadata !2607, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %355, metadata !2935, metadata !DIExpression()), !dbg !2943
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !2945
  %357 = icmp ne i32 %356, 0, !dbg !2946
  %358 = zext i1 %357 to i8, !dbg !2947
  call void @llvm.dbg.value(metadata i8 %358, metadata !2603, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %326, metadata !2600, metadata !DIExpression()), !dbg !2887
  br label %363, !dbg !2948

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2603, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2600, metadata !DIExpression()), !dbg !2887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2914
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2603, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2600, metadata !DIExpression()), !dbg !2887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %324, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i1 %361, metadata !2598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  br label %368, !dbg !2892

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2603, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %364, metadata !2600, metadata !DIExpression()), !dbg !2887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %324, metadata !2571, metadata !DIExpression()), !dbg !2630
  %366 = icmp eq i8 %365, 0, !dbg !2891
  call void @llvm.dbg.value(metadata i1 %366, metadata !2598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  %367 = icmp ugt i64 %364, 1, !dbg !2949
  br i1 %367, label %374, label %368, !dbg !2892

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2950
  br i1 %373, label %374, label %480, !dbg !2950

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %379, metadata !2620, metadata !DIExpression()), !dbg !2952
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2953

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2630
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2731
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2729
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2739
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2954
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2739
  call void @llvm.dbg.value(metadata i8 %387, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %386, metadata !2597, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %385, metadata !2594, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %384, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %383, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %382, metadata !2578, metadata !DIExpression()), !dbg !2630
  br i1 %380, label %388, label %434, !dbg !2955

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2960

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2739
  %390 = and i8 %383, 1, !dbg !2963
  %391 = icmp eq i8 %390, 0, !dbg !2963
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2963
  br i1 %392, label %393, label %409, !dbg !2963

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2965
  br i1 %394, label %395, label %397, !dbg !2969

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2965
  store i8 39, ptr %396, align 1, !dbg !2965, !tbaa !1044
  br label %397, !dbg !2965

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %398, metadata !2578, metadata !DIExpression()), !dbg !2630
  %399 = icmp ult i64 %398, %146, !dbg !2970
  br i1 %399, label %400, label %402, !dbg !2973

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2970
  store i8 36, ptr %401, align 1, !dbg !2970, !tbaa !1044
  br label %402, !dbg !2970

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %403, metadata !2578, metadata !DIExpression()), !dbg !2630
  %404 = icmp ult i64 %403, %146, !dbg !2974
  br i1 %404, label %405, label %407, !dbg !2977

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2974
  store i8 39, ptr %406, align 1, !dbg !2974, !tbaa !1044
  br label %407, !dbg !2974

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %408, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 1, metadata !2586, metadata !DIExpression()), !dbg !2630
  br label %409, !dbg !2978

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2630
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %411, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %410, metadata !2578, metadata !DIExpression()), !dbg !2630
  %412 = icmp ult i64 %410, %146, !dbg !2979
  br i1 %412, label %413, label %415, !dbg !2982

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2979
  store i8 92, ptr %414, align 1, !dbg !2979, !tbaa !1044
  br label %415, !dbg !2979

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %416, metadata !2578, metadata !DIExpression()), !dbg !2630
  %417 = icmp ult i64 %416, %146, !dbg !2983
  br i1 %417, label %418, label %422, !dbg !2986

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2983
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2983
  store i8 %420, ptr %421, align 1, !dbg !2983, !tbaa !1044
  br label %422, !dbg !2983

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %423, metadata !2578, metadata !DIExpression()), !dbg !2630
  %424 = icmp ult i64 %423, %146, !dbg !2987
  br i1 %424, label %425, label %430, !dbg !2990

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2987
  %428 = or i8 %427, 48, !dbg !2987
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2987
  store i8 %428, ptr %429, align 1, !dbg !2987, !tbaa !1044
  br label %430, !dbg !2987

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %431, metadata !2578, metadata !DIExpression()), !dbg !2630
  %432 = and i8 %387, 7, !dbg !2991
  %433 = or i8 %432, 48, !dbg !2992
  call void @llvm.dbg.value(metadata i8 %433, metadata !2599, metadata !DIExpression()), !dbg !2739
  br label %443, !dbg !2993

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2994
  %436 = icmp eq i8 %435, 0, !dbg !2994
  br i1 %436, label %443, label %437, !dbg !2996

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2997
  br i1 %438, label %439, label %441, !dbg !3001

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2997
  store i8 92, ptr %440, align 1, !dbg !2997, !tbaa !1044
  br label %441, !dbg !2997

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %442, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2594, metadata !DIExpression()), !dbg !2739
  br label %443, !dbg !3002

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2630
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2731
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2739
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2739
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2739
  call void @llvm.dbg.value(metadata i8 %448, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %447, metadata !2597, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %446, metadata !2594, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %445, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %444, metadata !2578, metadata !DIExpression()), !dbg !2630
  %449 = add i64 %384, 1, !dbg !3003
  %450 = icmp ugt i64 %379, %449, !dbg !3005
  br i1 %450, label %451, label %478, !dbg !3006

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3007
  %453 = icmp ne i8 %452, 0, !dbg !3007
  %454 = and i8 %447, 1, !dbg !3007
  %455 = icmp eq i8 %454, 0, !dbg !3007
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3007
  br i1 %456, label %457, label %468, !dbg !3007

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3010
  br i1 %458, label %459, label %461, !dbg !3014

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3010
  store i8 39, ptr %460, align 1, !dbg !3010, !tbaa !1044
  br label %461, !dbg !3010

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %462, metadata !2578, metadata !DIExpression()), !dbg !2630
  %463 = icmp ult i64 %462, %146, !dbg !3015
  br i1 %463, label %464, label %466, !dbg !3018

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3015
  store i8 39, ptr %465, align 1, !dbg !3015, !tbaa !1044
  br label %466, !dbg !3015

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %467, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2586, metadata !DIExpression()), !dbg !2630
  br label %468, !dbg !3019

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3020
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %470, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %469, metadata !2578, metadata !DIExpression()), !dbg !2630
  %471 = icmp ult i64 %469, %146, !dbg !3021
  br i1 %471, label %472, label %474, !dbg !3024

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3021
  store i8 %448, ptr %473, align 1, !dbg !3021, !tbaa !1044
  br label %474, !dbg !3021

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %475, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %449, metadata !2592, metadata !DIExpression()), !dbg !2729
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3025
  %477 = load i8, ptr %476, align 1, !dbg !3025, !tbaa !1044
  call void @llvm.dbg.value(metadata i8 %477, metadata !2599, metadata !DIExpression()), !dbg !2739
  br label %381, !dbg !3026, !llvm.loop !3027

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2739
  call void @llvm.dbg.value(metadata i8 %448, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %479, metadata !2598, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %447, metadata !2597, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %446, metadata !2594, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %384, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %445, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %444, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %378, metadata !2571, metadata !DIExpression()), !dbg !2630
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3030
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2630
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2635
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2630
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2630
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2729
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2739
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2739
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2739
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %489, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %488, metadata !2598, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %487, metadata !2597, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %173, metadata !2594, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %486, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %485, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %484, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %483, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %482, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %481, metadata !2571, metadata !DIExpression()), !dbg !2630
  br i1 %127, label %502, label %491, !dbg !3031

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
  br i1 %137, label %503, label %524, !dbg !3033

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3034

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
  %514 = lshr i8 %505, 5, !dbg !3035
  %515 = zext i8 %514 to i64, !dbg !3035
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3036
  %517 = load i32, ptr %516, align 4, !dbg !3036, !tbaa !1035
  %518 = and i8 %505, 31, !dbg !3037
  %519 = zext i8 %518 to i32, !dbg !3037
  %520 = shl nuw i32 1, %519, !dbg !3038
  %521 = and i32 %517, %520, !dbg !3038
  %522 = icmp eq i32 %521, 0, !dbg !3038
  %523 = and i1 %172, %522, !dbg !3039
  br i1 %523, label %573, label %535, !dbg !3039

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
  br i1 %172, label %573, label %535, !dbg !3040

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3030
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2630
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2635
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2639
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2731
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3041
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2739
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2739
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %543, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %542, metadata !2598, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %541, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %540, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %539, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %538, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %537, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %536, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.label(metadata !2627), !dbg !3042
  br i1 %132, label %545, label %674, !dbg !3043

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2739
  %546 = and i8 %540, 1, !dbg !3045
  %547 = icmp eq i8 %546, 0, !dbg !3045
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3045
  br i1 %548, label %549, label %565, !dbg !3045

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3047
  br i1 %550, label %551, label %553, !dbg !3051

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3047
  store i8 39, ptr %552, align 1, !dbg !3047, !tbaa !1044
  br label %553, !dbg !3047

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %554, metadata !2578, metadata !DIExpression()), !dbg !2630
  %555 = icmp ult i64 %554, %544, !dbg !3052
  br i1 %555, label %556, label %558, !dbg !3055

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3052
  store i8 36, ptr %557, align 1, !dbg !3052, !tbaa !1044
  br label %558, !dbg !3052

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %559, metadata !2578, metadata !DIExpression()), !dbg !2630
  %560 = icmp ult i64 %559, %544, !dbg !3056
  br i1 %560, label %561, label %563, !dbg !3059

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3056
  store i8 39, ptr %562, align 1, !dbg !3056, !tbaa !1044
  br label %563, !dbg !3056

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %564, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 1, metadata !2586, metadata !DIExpression()), !dbg !2630
  br label %565, !dbg !3060

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2739
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %567, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %566, metadata !2578, metadata !DIExpression()), !dbg !2630
  %568 = icmp ult i64 %566, %544, !dbg !3061
  br i1 %568, label %569, label %571, !dbg !3064

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3061
  store i8 92, ptr %570, align 1, !dbg !3061, !tbaa !1044
  br label %571, !dbg !3061

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %544, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %543, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %542, metadata !2598, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %541, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %567, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %539, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %538, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %572, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %536, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.label(metadata !2628), !dbg !3065
  br label %600, !dbg !3066

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3030
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2630
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2635
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2639
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2731
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3041
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2739
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2739
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3069
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %582, metadata !2599, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %581, metadata !2598, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 %580, metadata !2597, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %579, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %578, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %577, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %576, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %575, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %574, metadata !2571, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.label(metadata !2628), !dbg !3065
  %584 = and i8 %578, 1, !dbg !3066
  %585 = icmp ne i8 %584, 0, !dbg !3066
  %586 = and i8 %580, 1, !dbg !3066
  %587 = icmp eq i8 %586, 0, !dbg !3066
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3066
  br i1 %588, label %589, label %600, !dbg !3066

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3070
  br i1 %590, label %591, label %593, !dbg !3074

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3070
  store i8 39, ptr %592, align 1, !dbg !3070, !tbaa !1044
  br label %593, !dbg !3070

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %594, metadata !2578, metadata !DIExpression()), !dbg !2630
  %595 = icmp ult i64 %594, %583, !dbg !3075
  br i1 %595, label %596, label %598, !dbg !3078

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3075
  store i8 39, ptr %597, align 1, !dbg !3075, !tbaa !1044
  br label %598, !dbg !3075

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %599, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2586, metadata !DIExpression()), !dbg !2630
  br label %600, !dbg !3079

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2739
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %609, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %608, metadata !2578, metadata !DIExpression()), !dbg !2630
  %610 = icmp ult i64 %608, %601, !dbg !3080
  br i1 %610, label %611, label %613, !dbg !3083

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3080
  store i8 %602, ptr %612, align 1, !dbg !3080, !tbaa !1044
  br label %613, !dbg !3080

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %614, metadata !2578, metadata !DIExpression()), !dbg !2630
  %615 = icmp eq i8 %603, 0, !dbg !3084
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3086
  call void @llvm.dbg.value(metadata i8 %616, metadata !2585, metadata !DIExpression()), !dbg !2630
  br label %617, !dbg !3087

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3030
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2630
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2635
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2639
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2640
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2731
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3041
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %624, metadata !2592, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %623, metadata !2586, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %622, metadata !2585, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %621, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %620, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %619, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %618, metadata !2571, metadata !DIExpression()), !dbg !2630
  %626 = add i64 %624, 1, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %626, metadata !2592, metadata !DIExpression()), !dbg !2729
  br label %138, !dbg !3089, !llvm.loop !3090

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2569, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %143, metadata !2585, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 %142, metadata !2584, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %141, metadata !2579, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %140, metadata !2578, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %139, metadata !2571, metadata !DIExpression()), !dbg !2630
  %628 = icmp eq i64 %140, 0, !dbg !3092
  %629 = and i1 %133, %628, !dbg !3094
  %630 = xor i1 %629, true, !dbg !3094
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3094
  br i1 %631, label %632, label %670, !dbg !3094

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3095
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3095
  br i1 %636, label %637, label %646, !dbg !3095

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3097
  %639 = icmp eq i8 %638, 0, !dbg !3097
  br i1 %639, label %642, label %640, !dbg !3100

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3101
  br label %694, !dbg !3102

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3103
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3105
  br i1 %645, label %28, label %646, !dbg !3105

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3106
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3108
  br i1 %649, label %650, label %665, !dbg !3108

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2580, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %140, metadata !2578, metadata !DIExpression()), !dbg !2630
  %651 = load i8, ptr %120, align 1, !dbg !3109, !tbaa !1044
  %652 = icmp eq i8 %651, 0, !dbg !3112
  br i1 %652, label %665, label %653, !dbg !3112

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2580, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %656, metadata !2578, metadata !DIExpression()), !dbg !2630
  %657 = icmp ult i64 %656, %146, !dbg !3113
  br i1 %657, label %658, label %660, !dbg !3116

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3113
  store i8 %654, ptr %659, align 1, !dbg !3113, !tbaa !1044
  br label %660, !dbg !3113

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %661, metadata !2578, metadata !DIExpression()), !dbg !2630
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3117
  call void @llvm.dbg.value(metadata ptr %662, metadata !2580, metadata !DIExpression()), !dbg !2630
  %663 = load i8, ptr %662, align 1, !dbg !3109, !tbaa !1044
  %664 = icmp eq i8 %663, 0, !dbg !3112
  br i1 %664, label %665, label %653, !dbg !3112, !llvm.loop !3118

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2712
  call void @llvm.dbg.value(metadata i64 %666, metadata !2578, metadata !DIExpression()), !dbg !2630
  %667 = icmp ult i64 %666, %146, !dbg !3120
  br i1 %667, label %668, label %694, !dbg !3122

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3123
  store i8 0, ptr %669, align 1, !dbg !3124, !tbaa !1044
  br label %694, !dbg !3123

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2629), !dbg !3125
  %672 = icmp eq i8 %124, 0, !dbg !3126
  %673 = select i1 %672, i32 2, i32 4, !dbg !3126
  br label %684, !dbg !3126

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3126
  %678 = select i1 %677, i32 2, i32 4, !dbg !3126
  br label %679, !dbg !3128

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2629), !dbg !3125
  %683 = icmp eq i32 %116, 2, !dbg !3128
  br i1 %683, label %684, label %688, !dbg !3126

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3126

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2572, metadata !DIExpression()), !dbg !2630
  %692 = and i32 %5, -3, !dbg !3129
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3130
  br label %694, !dbg !3131

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3132
}

; Function Attrs: nounwind
declare !dbg !3133 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3136 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3139 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3141 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %2, metadata !3147, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %0, metadata !3149, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %1, metadata !3154, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr null, metadata !3155, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %2, metadata !3156, metadata !DIExpression()), !dbg !3162
  %4 = icmp eq ptr %2, null, !dbg !3164
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3164
  call void @llvm.dbg.value(metadata ptr %5, metadata !3157, metadata !DIExpression()), !dbg !3162
  %6 = tail call ptr @__errno_location() #42, !dbg !3165
  %7 = load i32, ptr %6, align 4, !dbg !3165, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %7, metadata !3158, metadata !DIExpression()), !dbg !3162
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3166
  %9 = load i32, ptr %8, align 4, !dbg !3166, !tbaa !2512
  %10 = or i32 %9, 1, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %10, metadata !3159, metadata !DIExpression()), !dbg !3162
  %11 = load i32, ptr %5, align 8, !dbg !3168, !tbaa !2462
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3169
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3170
  %14 = load ptr, ptr %13, align 8, !dbg !3170, !tbaa !2533
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3171
  %16 = load ptr, ptr %15, align 8, !dbg !3171, !tbaa !2536
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3172
  %18 = add i64 %17, 1, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %18, metadata !3160, metadata !DIExpression()), !dbg !3162
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %19, metadata !3161, metadata !DIExpression()), !dbg !3162
  %20 = load i32, ptr %5, align 8, !dbg !3175, !tbaa !2462
  %21 = load ptr, ptr %13, align 8, !dbg !3176, !tbaa !2533
  %22 = load ptr, ptr %15, align 8, !dbg !3177, !tbaa !2536
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3178
  store i32 %7, ptr %6, align 4, !dbg !3179, !tbaa !1035
  ret ptr %19, !dbg !3180
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3150 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3149, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %1, metadata !3154, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %2, metadata !3155, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %3, metadata !3156, metadata !DIExpression()), !dbg !3181
  %5 = icmp eq ptr %3, null, !dbg !3182
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3182
  call void @llvm.dbg.value(metadata ptr %6, metadata !3157, metadata !DIExpression()), !dbg !3181
  %7 = tail call ptr @__errno_location() #42, !dbg !3183
  %8 = load i32, ptr %7, align 4, !dbg !3183, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %8, metadata !3158, metadata !DIExpression()), !dbg !3181
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3184
  %10 = load i32, ptr %9, align 4, !dbg !3184, !tbaa !2512
  %11 = icmp eq ptr %2, null, !dbg !3185
  %12 = zext i1 %11 to i32, !dbg !3185
  %13 = or i32 %10, %12, !dbg !3186
  call void @llvm.dbg.value(metadata i32 %13, metadata !3159, metadata !DIExpression()), !dbg !3181
  %14 = load i32, ptr %6, align 8, !dbg !3187, !tbaa !2462
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3188
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3189
  %17 = load ptr, ptr %16, align 8, !dbg !3189, !tbaa !2533
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3190
  %19 = load ptr, ptr %18, align 8, !dbg !3190, !tbaa !2536
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3191
  %21 = add i64 %20, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %21, metadata !3160, metadata !DIExpression()), !dbg !3181
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3193
  call void @llvm.dbg.value(metadata ptr %22, metadata !3161, metadata !DIExpression()), !dbg !3181
  %23 = load i32, ptr %6, align 8, !dbg !3194, !tbaa !2462
  %24 = load ptr, ptr %16, align 8, !dbg !3195, !tbaa !2533
  %25 = load ptr, ptr %18, align 8, !dbg !3196, !tbaa !2536
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3197
  store i32 %8, ptr %7, align 4, !dbg !3198, !tbaa !1035
  br i1 %11, label %28, label %27, !dbg !3199

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3200, !tbaa !3202
  br label %28, !dbg !3203

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3204
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3205 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3210, !tbaa !966
  call void @llvm.dbg.value(metadata ptr %1, metadata !3207, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 1, metadata !3208, metadata !DIExpression()), !dbg !3212
  %2 = load i32, ptr @nslots, align 4, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 1, metadata !3208, metadata !DIExpression()), !dbg !3212
  %3 = icmp sgt i32 %2, 1, !dbg !3213
  br i1 %3, label %4, label %6, !dbg !3215

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3213
  br label %10, !dbg !3215

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3216
  %8 = load ptr, ptr %7, align 8, !dbg !3216, !tbaa !3218
  %9 = icmp eq ptr %8, @slot0, !dbg !3220
  br i1 %9, label %17, label %16, !dbg !3221

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3208, metadata !DIExpression()), !dbg !3212
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3222
  %13 = load ptr, ptr %12, align 8, !dbg !3222, !tbaa !3218
  tail call void @free(ptr noundef %13) #39, !dbg !3223
  %14 = add nuw nsw i64 %11, 1, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %14, metadata !3208, metadata !DIExpression()), !dbg !3212
  %15 = icmp eq i64 %14, %5, !dbg !3213
  br i1 %15, label %6, label %10, !dbg !3215, !llvm.loop !3225

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3227
  store i64 256, ptr @slotvec0, align 8, !dbg !3229, !tbaa !3230
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3231, !tbaa !3218
  br label %17, !dbg !3232

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3233
  br i1 %18, label %20, label %19, !dbg !3235

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3236
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3238, !tbaa !966
  br label %20, !dbg !3239

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3240, !tbaa !1035
  ret void, !dbg !3241
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %1, metadata !3245, metadata !DIExpression()), !dbg !3246
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3247
  ret ptr %3, !dbg !3248
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3249 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3253, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata ptr %1, metadata !3254, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %2, metadata !3255, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata ptr %3, metadata !3256, metadata !DIExpression()), !dbg !3269
  %6 = tail call ptr @__errno_location() #42, !dbg !3270
  %7 = load i32, ptr %6, align 4, !dbg !3270, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %7, metadata !3257, metadata !DIExpression()), !dbg !3269
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3271, !tbaa !966
  call void @llvm.dbg.value(metadata ptr %8, metadata !3258, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3259, metadata !DIExpression()), !dbg !3269
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3272
  br i1 %9, label %10, label %11, !dbg !3272

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3274
  unreachable, !dbg !3274

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3275, !tbaa !1035
  %13 = icmp sgt i32 %12, %0, !dbg !3276
  br i1 %13, label %32, label %14, !dbg !3277

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3278
  call void @llvm.dbg.value(metadata i1 %15, metadata !3260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3279
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3280
  %16 = sext i32 %12 to i64, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %16, metadata !3263, metadata !DIExpression()), !dbg !3279
  store i64 %16, ptr %5, align 8, !dbg !3282, !tbaa !3202
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3283
  %18 = add nuw nsw i32 %0, 1, !dbg !3284
  %19 = sub i32 %18, %12, !dbg !3285
  %20 = sext i32 %19 to i64, !dbg !3286
  call void @llvm.dbg.value(metadata ptr %5, metadata !3263, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3287
  call void @llvm.dbg.value(metadata ptr %21, metadata !3258, metadata !DIExpression()), !dbg !3269
  store ptr %21, ptr @slotvec, align 8, !dbg !3288, !tbaa !966
  br i1 %15, label %22, label %23, !dbg !3289

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3290, !tbaa.struct !3292
  br label %23, !dbg !3293

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3294, !tbaa !1035
  %25 = sext i32 %24 to i64, !dbg !3295
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3295
  %27 = load i64, ptr %5, align 8, !dbg !3296, !tbaa !3202
  call void @llvm.dbg.value(metadata i64 %27, metadata !3263, metadata !DIExpression()), !dbg !3279
  %28 = sub nsw i64 %27, %25, !dbg !3297
  %29 = shl i64 %28, 4, !dbg !3298
  call void @llvm.dbg.value(metadata ptr %26, metadata !2669, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %29, metadata !2673, metadata !DIExpression()), !dbg !3299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3301
  %30 = load i64, ptr %5, align 8, !dbg !3302, !tbaa !3202
  call void @llvm.dbg.value(metadata i64 %30, metadata !3263, metadata !DIExpression()), !dbg !3279
  %31 = trunc i64 %30 to i32, !dbg !3302
  store i32 %31, ptr @nslots, align 4, !dbg !3303, !tbaa !1035
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3304
  br label %32, !dbg !3305

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3269
  call void @llvm.dbg.value(metadata ptr %33, metadata !3258, metadata !DIExpression()), !dbg !3269
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3306
  %36 = load i64, ptr %35, align 8, !dbg !3307, !tbaa !3230
  call void @llvm.dbg.value(metadata i64 %36, metadata !3264, metadata !DIExpression()), !dbg !3308
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3309
  %38 = load ptr, ptr %37, align 8, !dbg !3309, !tbaa !3218
  call void @llvm.dbg.value(metadata ptr %38, metadata !3266, metadata !DIExpression()), !dbg !3308
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3310
  %40 = load i32, ptr %39, align 4, !dbg !3310, !tbaa !2512
  %41 = or i32 %40, 1, !dbg !3311
  call void @llvm.dbg.value(metadata i32 %41, metadata !3267, metadata !DIExpression()), !dbg !3308
  %42 = load i32, ptr %3, align 8, !dbg !3312, !tbaa !2462
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3313
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3314
  %45 = load ptr, ptr %44, align 8, !dbg !3314, !tbaa !2533
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3315
  %47 = load ptr, ptr %46, align 8, !dbg !3315, !tbaa !2536
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %48, metadata !3268, metadata !DIExpression()), !dbg !3308
  %49 = icmp ugt i64 %36, %48, !dbg !3317
  br i1 %49, label %60, label %50, !dbg !3319

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %51, metadata !3264, metadata !DIExpression()), !dbg !3308
  store i64 %51, ptr %35, align 8, !dbg !3322, !tbaa !3230
  %52 = icmp eq ptr %38, @slot0, !dbg !3323
  br i1 %52, label %54, label %53, !dbg !3325

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3326
  br label %54, !dbg !3326

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3327
  call void @llvm.dbg.value(metadata ptr %55, metadata !3266, metadata !DIExpression()), !dbg !3308
  store ptr %55, ptr %37, align 8, !dbg !3328, !tbaa !3218
  %56 = load i32, ptr %3, align 8, !dbg !3329, !tbaa !2462
  %57 = load ptr, ptr %44, align 8, !dbg !3330, !tbaa !2533
  %58 = load ptr, ptr %46, align 8, !dbg !3331, !tbaa !2536
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3332
  br label %60, !dbg !3333

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3308
  call void @llvm.dbg.value(metadata ptr %61, metadata !3266, metadata !DIExpression()), !dbg !3308
  store i32 %7, ptr %6, align 4, !dbg !3334, !tbaa !1035
  ret ptr %61, !dbg !3335
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3336 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3340, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %1, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %2, metadata !3342, metadata !DIExpression()), !dbg !3343
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3344
  ret ptr %4, !dbg !3345
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3346 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3348, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 0, metadata !3244, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3350
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3352
  ret ptr %2, !dbg !3353
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3354 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3358, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 0, metadata !3340, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata ptr %0, metadata !3341, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3361
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3363
  ret ptr %3, !dbg !3364
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3365 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3369, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %1, metadata !3370, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %2, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3374
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3376), !dbg !3379
  call void @llvm.dbg.value(metadata i32 %1, metadata !3380, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3385, metadata !DIExpression()), !dbg !3388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3388, !alias.scope !3376
  %5 = icmp eq i32 %1, 10, !dbg !3389
  br i1 %5, label %6, label %7, !dbg !3391

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3392, !noalias !3376
  unreachable, !dbg !3392

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3393, !tbaa !2462, !alias.scope !3376
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3394
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3395
  ret ptr %8, !dbg !3396
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3397 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3401, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %1, metadata !3402, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %2, metadata !3403, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %3, metadata !3404, metadata !DIExpression()), !dbg !3406
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3407
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3405, metadata !DIExpression()), !dbg !3408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3409), !dbg !3412
  call void @llvm.dbg.value(metadata i32 %1, metadata !3380, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3385, metadata !DIExpression()), !dbg !3415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3415, !alias.scope !3409
  %6 = icmp eq i32 %1, 10, !dbg !3416
  br i1 %6, label %7, label %8, !dbg !3417

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3418, !noalias !3409
  unreachable, !dbg !3418

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3419, !tbaa !2462, !alias.scope !3409
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3420
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3421
  ret ptr %9, !dbg !3422
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3423 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3427, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata ptr %1, metadata !3428, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 0, metadata !3369, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 %0, metadata !3370, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata ptr %1, metadata !3371, metadata !DIExpression()), !dbg !3430
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3432
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3372, metadata !DIExpression()), !dbg !3433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3434), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3385, metadata !DIExpression()), !dbg !3440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3440, !alias.scope !3434
  %4 = icmp eq i32 %0, 10, !dbg !3441
  br i1 %4, label %5, label %6, !dbg !3442

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3443, !noalias !3434
  unreachable, !dbg !3443

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3444, !tbaa !2462, !alias.scope !3434
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3445
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3446
  ret ptr %7, !dbg !3447
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3448 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3452, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata ptr %1, metadata !3453, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %2, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i32 0, metadata !3401, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %0, metadata !3402, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata ptr %1, metadata !3403, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression()), !dbg !3456
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3458
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3405, metadata !DIExpression()), !dbg !3459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3385, metadata !DIExpression()), !dbg !3466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3466, !alias.scope !3460
  %5 = icmp eq i32 %0, 10, !dbg !3467
  br i1 %5, label %6, label %7, !dbg !3468

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3469, !noalias !3460
  unreachable, !dbg !3469

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3470, !tbaa !2462, !alias.scope !3460
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3471
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3472
  ret ptr %8, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3474 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %2, metadata !3480, metadata !DIExpression()), !dbg !3482
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3483
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3481, metadata !DIExpression()), !dbg !3484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3485, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %4, metadata !2479, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 %2, metadata !2480, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 %2, metadata !2482, metadata !DIExpression()), !dbg !3487
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3489
  %6 = lshr i8 %2, 5, !dbg !3490
  %7 = zext i8 %6 to i64, !dbg !3490
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3491
  call void @llvm.dbg.value(metadata ptr %8, metadata !2483, metadata !DIExpression()), !dbg !3487
  %9 = and i8 %2, 31, !dbg !3492
  %10 = zext i8 %9 to i32, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %10, metadata !2485, metadata !DIExpression()), !dbg !3487
  %11 = load i32, ptr %8, align 4, !dbg !3493, !tbaa !1035
  %12 = lshr i32 %11, %10, !dbg !3494
  call void @llvm.dbg.value(metadata i32 %12, metadata !2486, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3487
  %13 = and i32 %12, 1, !dbg !3495
  %14 = xor i32 %13, 1, !dbg !3495
  %15 = shl nuw i32 %14, %10, !dbg !3496
  %16 = xor i32 %15, %11, !dbg !3497
  store i32 %16, ptr %8, align 4, !dbg !3497, !tbaa !1035
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3498
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3499
  ret ptr %17, !dbg !3500
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3501 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3505, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8 %1, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 -1, metadata !3479, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8 %1, metadata !3480, metadata !DIExpression()), !dbg !3508
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3510
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3481, metadata !DIExpression()), !dbg !3511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3512, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %3, metadata !2479, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8 %1, metadata !2480, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8 %1, metadata !2482, metadata !DIExpression()), !dbg !3513
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3515
  %5 = lshr i8 %1, 5, !dbg !3516
  %6 = zext i8 %5 to i64, !dbg !3516
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3517
  call void @llvm.dbg.value(metadata ptr %7, metadata !2483, metadata !DIExpression()), !dbg !3513
  %8 = and i8 %1, 31, !dbg !3518
  %9 = zext i8 %8 to i32, !dbg !3518
  call void @llvm.dbg.value(metadata i32 %9, metadata !2485, metadata !DIExpression()), !dbg !3513
  %10 = load i32, ptr %7, align 4, !dbg !3519, !tbaa !1035
  %11 = lshr i32 %10, %9, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %11, metadata !2486, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3513
  %12 = and i32 %11, 1, !dbg !3521
  %13 = xor i32 %12, 1, !dbg !3521
  %14 = shl nuw i32 %13, %9, !dbg !3522
  %15 = xor i32 %14, %10, !dbg !3523
  store i32 %15, ptr %7, align 4, !dbg !3523, !tbaa !1035
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3524
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3525
  ret ptr %16, !dbg !3526
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3527 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %0, metadata !3505, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8 58, metadata !3506, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 -1, metadata !3479, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8 58, metadata !3480, metadata !DIExpression()), !dbg !3533
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3535
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3481, metadata !DIExpression()), !dbg !3536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3537, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %2, metadata !2479, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()), !dbg !3538
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3540
  call void @llvm.dbg.value(metadata ptr %3, metadata !2483, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 26, metadata !2485, metadata !DIExpression()), !dbg !3538
  %4 = load i32, ptr %3, align 4, !dbg !3541, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %4, metadata !2486, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3538
  %5 = or i32 %4, 67108864, !dbg !3542
  store i32 %5, ptr %3, align 4, !dbg !3542, !tbaa !1035
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3543
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3544
  ret ptr %6, !dbg !3545
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3546 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3548, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %1, metadata !3549, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i8 58, metadata !3480, metadata !DIExpression()), !dbg !3551
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3553
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3481, metadata !DIExpression()), !dbg !3554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3555, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %3, metadata !2479, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()), !dbg !3556
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3558
  call void @llvm.dbg.value(metadata ptr %4, metadata !2483, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 26, metadata !2485, metadata !DIExpression()), !dbg !3556
  %5 = load i32, ptr %4, align 4, !dbg !3559, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %5, metadata !2486, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3556
  %6 = or i32 %5, 67108864, !dbg !3560
  store i32 %6, ptr %4, align 4, !dbg !3560, !tbaa !1035
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3561
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3562
  ret ptr %7, !dbg !3563
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3564 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3385, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3570
  call void @llvm.dbg.value(metadata i32 %0, metadata !3566, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i32 %1, metadata !3567, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata ptr %2, metadata !3568, metadata !DIExpression()), !dbg !3572
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3573
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3569, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i32 %1, metadata !3380, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i32 0, metadata !3385, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3575
  %5 = icmp eq i32 %1, 10, !dbg !3576
  br i1 %5, label %6, label %7, !dbg !3577

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3578, !noalias !3579
  unreachable, !dbg !3578

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3385, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3575
  store i32 %1, ptr %4, align 8, !dbg !3582, !tbaa.struct !3486
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3582
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %4, metadata !2479, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()), !dbg !3583
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3585
  call void @llvm.dbg.value(metadata ptr %9, metadata !2483, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 26, metadata !2485, metadata !DIExpression()), !dbg !3583
  %10 = load i32, ptr %9, align 4, !dbg !3586, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %10, metadata !2486, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3583
  %11 = or i32 %10, 67108864, !dbg !3587
  store i32 %11, ptr %9, align 4, !dbg !3587, !tbaa !1035
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3588
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3589
  ret ptr %12, !dbg !3590
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3591 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3595, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %1, metadata !3596, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %2, metadata !3597, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %3, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 %0, metadata !3600, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata ptr %1, metadata !3605, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata ptr %2, metadata !3606, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata ptr %3, metadata !3607, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 -1, metadata !3608, metadata !DIExpression()), !dbg !3610
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3609, metadata !DIExpression()), !dbg !3613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3614, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr %1, metadata !2520, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr %2, metadata !2521, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !3615
  store i32 10, ptr %5, align 8, !dbg !3617, !tbaa !2462
  %6 = icmp ne ptr %1, null, !dbg !3618
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3619
  br i1 %8, label %10, label %9, !dbg !3619

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3620
  unreachable, !dbg !3620

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3621
  store ptr %1, ptr %11, align 8, !dbg !3622, !tbaa !2533
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3623
  store ptr %2, ptr %12, align 8, !dbg !3624, !tbaa !2536
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3625
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3626
  ret ptr %13, !dbg !3627
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3601 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3600, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr %1, metadata !3605, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr %2, metadata !3606, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr %3, metadata !3607, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 %4, metadata !3608, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3629
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3609, metadata !DIExpression()), !dbg !3630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3631, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %6, metadata !2519, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %1, metadata !2520, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %2, metadata !2521, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %6, metadata !2519, metadata !DIExpression()), !dbg !3632
  store i32 10, ptr %6, align 8, !dbg !3634, !tbaa !2462
  %7 = icmp ne ptr %1, null, !dbg !3635
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3636
  br i1 %9, label %11, label %10, !dbg !3636

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3637
  unreachable, !dbg !3637

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3638
  store ptr %1, ptr %12, align 8, !dbg !3639, !tbaa !2533
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3640
  store ptr %2, ptr %13, align 8, !dbg !3641, !tbaa !2536
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3642
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3643
  ret ptr %14, !dbg !3644
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3645 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %1, metadata !3650, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %2, metadata !3651, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %1, metadata !3597, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %2, metadata !3598, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %0, metadata !3605, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %1, metadata !3606, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %2, metadata !3607, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 -1, metadata !3608, metadata !DIExpression()), !dbg !3655
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3657
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3609, metadata !DIExpression()), !dbg !3658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3659, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %4, metadata !2519, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %1, metadata !2521, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %4, metadata !2519, metadata !DIExpression()), !dbg !3660
  store i32 10, ptr %4, align 8, !dbg !3662, !tbaa !2462
  %5 = icmp ne ptr %0, null, !dbg !3663
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3664
  br i1 %7, label %9, label %8, !dbg !3664

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3665
  unreachable, !dbg !3665

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3666
  store ptr %0, ptr %10, align 8, !dbg !3667, !tbaa !2533
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3668
  store ptr %1, ptr %11, align 8, !dbg !3669, !tbaa !2536
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3670
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3671
  ret ptr %12, !dbg !3672
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3673 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %1, metadata !3678, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %2, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %3, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %0, metadata !3605, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %1, metadata !3606, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %2, metadata !3607, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %3, metadata !3608, metadata !DIExpression()), !dbg !3682
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3684
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3609, metadata !DIExpression()), !dbg !3685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3686, !tbaa.struct !3486
  call void @llvm.dbg.value(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %1, metadata !2521, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr %5, metadata !2519, metadata !DIExpression()), !dbg !3687
  store i32 10, ptr %5, align 8, !dbg !3689, !tbaa !2462
  %6 = icmp ne ptr %0, null, !dbg !3690
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3691
  br i1 %8, label %10, label %9, !dbg !3691

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3692
  unreachable, !dbg !3692

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3693
  store ptr %0, ptr %11, align 8, !dbg !3694, !tbaa !2533
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3695
  store ptr %1, ptr %12, align 8, !dbg !3696, !tbaa !2536
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3697
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3698
  ret ptr %13, !dbg !3699
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata ptr %1, metadata !3705, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %2, metadata !3706, metadata !DIExpression()), !dbg !3707
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3708
  ret ptr %4, !dbg !3709
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3710 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3714, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i32 0, metadata !3704, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %0, metadata !3705, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %1, metadata !3706, metadata !DIExpression()), !dbg !3717
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3719
  ret ptr %3, !dbg !3720
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3725, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata ptr %1, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata ptr %1, metadata !3705, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i64 -1, metadata !3706, metadata !DIExpression()), !dbg !3728
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3730
  ret ptr %3, !dbg !3731
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3732 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3736, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 0, metadata !3725, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 0, metadata !3704, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %0, metadata !3705, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 -1, metadata !3706, metadata !DIExpression()), !dbg !3740
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3742
  ret ptr %2, !dbg !3743
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @savewd_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #26 !dbg !3744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i32 0, ptr %0, align 4, !dbg !3751, !tbaa !1905
  ret void, !dbg !3752
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @savewd_errno(ptr nocapture noundef readonly %0) local_unnamed_addr #27 !dbg !3753 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3759, metadata !DIExpression()), !dbg !3760
  %2 = load i32, ptr %0, align 4, !dbg !3761, !tbaa !1905
  %3 = icmp ult i32 %2, 4, !dbg !3762
  br i1 %3, label %7, label %4, !dbg !3763

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3764
  %6 = load i32, ptr %5, align 4, !dbg !3765, !tbaa !1044
  br label %7, !dbg !3763

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ], !dbg !3763
  ret i32 %8, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_chdir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #10 !dbg !3767 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3771, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %1, metadata !3772, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %2, metadata !3773, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %3, metadata !3774, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 -1, metadata !3775, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3776, metadata !DIExpression()), !dbg !3780
  %5 = icmp eq ptr %3, null, !dbg !3781
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7, !dbg !3783
  br i1 %8, label %27, label %9, !dbg !3783

9:                                                ; preds = %4
  %10 = shl i32 %2, 17, !dbg !3784
  %11 = and i32 %10, 131072, !dbg !3784
  %12 = or i32 %11, 67840, !dbg !3786
  %13 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %1, i32 noundef %12) #39, !dbg !3787
  call void @llvm.dbg.value(metadata i32 %13, metadata !3775, metadata !DIExpression()), !dbg !3780
  br i1 %5, label %18, label %14, !dbg !3788

14:                                               ; preds = %9
  store i32 %13, ptr %3, align 4, !dbg !3789, !tbaa !1035
  %15 = tail call ptr @__errno_location() #42, !dbg !3792
  %16 = load i32, ptr %15, align 4, !dbg !3792, !tbaa !1035
  %17 = getelementptr inbounds i32, ptr %3, i64 1, !dbg !3793
  store i32 %16, ptr %17, align 4, !dbg !3794, !tbaa !1035
  br label %18, !dbg !3795

18:                                               ; preds = %14, %9
  %19 = icmp slt i32 %13, 0, !dbg !3796
  br i1 %19, label %20, label %24, !dbg !3798

20:                                               ; preds = %18
  %21 = tail call ptr @__errno_location() #42, !dbg !3799
  %22 = load i32, ptr %21, align 4, !dbg !3799, !tbaa !1035
  %23 = icmp eq i32 %22, 13, !dbg !3800
  call void @llvm.dbg.value(metadata i32 poison, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %13, metadata !3775, metadata !DIExpression()), !dbg !3780
  br i1 %23, label %27, label %85, !dbg !3801

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 poison, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %13, metadata !3775, metadata !DIExpression()), !dbg !3780
  %25 = and i32 %2, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %74, !dbg !3803

27:                                               ; preds = %20, %4, %24
  %28 = phi i32 [ %13, %24 ], [ -1, %4 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !3804, metadata !DIExpression()), !dbg !3813
  %29 = load i32, ptr %0, align 4, !dbg !3817, !tbaa !1905
  switch i32 %29, label %55 [
    i32 0, label %30
    i32 3, label %42
    i32 1, label %56
    i32 2, label %56
    i32 4, label %56
    i32 5, label %56
  ], !dbg !3818

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef nonnull @.str.5.90, i32 noundef 0) #39, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %31, metadata !3809, metadata !DIExpression()), !dbg !3820
  %32 = icmp sgt i32 %31, -1, !dbg !3821
  br i1 %32, label %33, label %35, !dbg !3823

33:                                               ; preds = %30
  store i32 1, ptr %0, align 4, !dbg !3824, !tbaa !1905
  %34 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3826
  store i32 %31, ptr %34, align 4, !dbg !3827, !tbaa !1044
  br label %56, !dbg !3828

35:                                               ; preds = %30
  %36 = tail call ptr @__errno_location() #42, !dbg !3829
  %37 = load i32, ptr %36, align 4, !dbg !3829, !tbaa !1035
  call void @llvm.dbg.value(metadata i1 poison, metadata !3812, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3820
  switch i32 %37, label %38 [
    i32 116, label %40
    i32 13, label %40
  ], !dbg !3830

38:                                               ; preds = %35
  store i32 4, ptr %0, align 4, !dbg !3831, !tbaa !1905
  %39 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3834
  store i32 %37, ptr %39, align 4, !dbg !3835, !tbaa !1044
  br label %56, !dbg !3836

40:                                               ; preds = %35, %35
  store i32 3, ptr %0, align 4, !dbg !3837, !tbaa !1905
  %41 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3838
  store i32 -1, ptr %41, align 4, !dbg !3839, !tbaa !1044
  br label %46, !dbg !3840

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !dbg !3841, !tbaa !1044
  %45 = icmp slt i32 %44, 0, !dbg !3843
  br i1 %45, label %46, label %56, !dbg !3840

46:                                               ; preds = %42, %40
  %47 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3844
  %48 = tail call i32 @fork() #39, !dbg !3845
  store i32 %48, ptr %47, align 4, !dbg !3847, !tbaa !1044
  %49 = icmp eq i32 %48, 0, !dbg !3848
  br i1 %49, label %56, label %50, !dbg !3850

50:                                               ; preds = %46
  %51 = icmp sgt i32 %48, 0, !dbg !3851
  br i1 %51, label %74, label %52, !dbg !3854

52:                                               ; preds = %50
  store i32 4, ptr %0, align 4, !dbg !3855, !tbaa !1905
  %53 = tail call ptr @__errno_location() #42, !dbg !3856
  %54 = load i32, ptr %53, align 4, !dbg !3856, !tbaa !1035
  store i32 %54, ptr %47, align 4, !dbg !3857, !tbaa !1044
  br label %56, !dbg !3858

55:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_save) #41, !dbg !3859
  unreachable, !dbg !3859

56:                                               ; preds = %27, %27, %27, %27, %42, %52, %46, %33, %38
  %57 = icmp slt i32 %28, 0, !dbg !3862
  br i1 %57, label %58, label %60, !dbg !3864

58:                                               ; preds = %56
  %59 = tail call i32 @chdir(ptr noundef %1) #39, !dbg !3865
  br label %62, !dbg !3864

60:                                               ; preds = %56
  %61 = tail call i32 @fchdir(i32 noundef %28) #39, !dbg !3866
  br label %62, !dbg !3864

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ], !dbg !3864
  call void @llvm.dbg.value(metadata i32 %63, metadata !3776, metadata !DIExpression()), !dbg !3780
  %64 = icmp eq i32 %63, 0, !dbg !3867
  br i1 %64, label %65, label %74, !dbg !3869

65:                                               ; preds = %62
  %66 = load i32, ptr %0, align 4, !dbg !3870, !tbaa !1905
  switch i32 %66, label %73 [
    i32 1, label %67
    i32 4, label %74
    i32 2, label %74
    i32 5, label %74
    i32 3, label %68
  ], !dbg !3871

67:                                               ; preds = %65
  store i32 2, ptr %0, align 4, !dbg !3872, !tbaa !1905
  br label %74, !dbg !3874

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3875
  %70 = load i32, ptr %69, align 4, !dbg !3875, !tbaa !1044
  %71 = icmp eq i32 %70, 0, !dbg !3875
  br i1 %71, label %74, label %72, !dbg !3878

72:                                               ; preds = %68
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1.92, i32 noundef 162, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #41, !dbg !3875
  unreachable, !dbg !3875

73:                                               ; preds = %65
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_chdir) #41, !dbg !3879
  unreachable, !dbg !3879

74:                                               ; preds = %50, %24, %67, %65, %65, %65, %68, %62
  %75 = phi i32 [ %28, %68 ], [ %28, %65 ], [ %28, %65 ], [ %28, %65 ], [ %28, %67 ], [ %28, %62 ], [ %13, %24 ], [ %28, %50 ]
  %76 = phi i32 [ 0, %68 ], [ 0, %65 ], [ 0, %65 ], [ 0, %65 ], [ 0, %67 ], [ %63, %62 ], [ 0, %24 ], [ -2, %50 ], !dbg !3780
  %77 = phi ptr [ %3, %68 ], [ %3, %65 ], [ %3, %65 ], [ %3, %65 ], [ %3, %67 ], [ %3, %62 ], [ %3, %24 ], [ null, %50 ]
  call void @llvm.dbg.value(metadata ptr %77, metadata !3774, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %76, metadata !3776, metadata !DIExpression()), !dbg !3780
  %78 = icmp slt i32 %75, 0, !dbg !3882
  %79 = icmp ne ptr %77, null
  %80 = or i1 %78, %79, !dbg !3883
  br i1 %80, label %85, label %81, !dbg !3883

81:                                               ; preds = %74
  %82 = tail call ptr @__errno_location() #42, !dbg !3884
  %83 = load i32, ptr %82, align 4, !dbg !3884, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %83, metadata !3777, metadata !DIExpression()), !dbg !3885
  %84 = tail call i32 @close(i32 noundef %75) #39, !dbg !3886
  store i32 %83, ptr %82, align 4, !dbg !3887, !tbaa !1035
  br label %85, !dbg !3888

85:                                               ; preds = %20, %81, %74
  %86 = phi i32 [ %76, %81 ], [ %76, %74 ], [ -1, %20 ]
  ret i32 %86, !dbg !3889
}

; Function Attrs: nofree nounwind
declare !dbg !3890 i32 @fork() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !3893 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3897 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3900 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_restore(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3901 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i32 %1, metadata !3906, metadata !DIExpression()), !dbg !3916
  %4 = load i32, ptr %0, align 4, !dbg !3917, !tbaa !1905
  switch i32 %4, label %50 [
    i32 0, label %51
    i32 1, label %51
    i32 2, label %9
    i32 4, label %5
    i32 3, label %23
  ], !dbg !3918

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !dbg !3919, !tbaa !1044
  %8 = tail call ptr @__errno_location() #42, !dbg !3920
  br label %20, !dbg !3918

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3921
  %11 = load i32, ptr %10, align 4, !dbg !3922, !tbaa !1044
  %12 = tail call i32 @fchdir(i32 noundef %11) #39, !dbg !3923
  %13 = icmp eq i32 %12, 0, !dbg !3924
  br i1 %13, label %14, label %15, !dbg !3925

14:                                               ; preds = %9
  store i32 1, ptr %0, align 4, !dbg !3926, !tbaa !1905
  br label %51, !dbg !3928

15:                                               ; preds = %9
  %16 = tail call ptr @__errno_location() #42, !dbg !3929
  %17 = load i32, ptr %16, align 4, !dbg !3929, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %17, metadata !3907, metadata !DIExpression()), !dbg !3930
  %18 = load i32, ptr %10, align 4, !dbg !3931, !tbaa !1044
  %19 = tail call i32 @close(i32 noundef %18) #39, !dbg !3932
  store i32 4, ptr %0, align 4, !dbg !3933, !tbaa !1905
  store i32 %17, ptr %10, align 4, !dbg !3934, !tbaa !1044
  br label %20, !dbg !3935

20:                                               ; preds = %5, %15
  %21 = phi ptr [ %8, %5 ], [ %16, %15 ], !dbg !3920
  %22 = phi i32 [ %7, %5 ], [ %17, %15 ], !dbg !3919
  store i32 %22, ptr %21, align 4, !dbg !3936, !tbaa !1035
  br label %51, !dbg !3937

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3938
  %25 = load i32, ptr %24, align 4, !dbg !3939, !tbaa !1044
  call void @llvm.dbg.value(metadata i32 %25, metadata !3911, metadata !DIExpression()), !dbg !3940
  %26 = icmp eq i32 %25, 0, !dbg !3941
  br i1 %26, label %27, label %28, !dbg !3943

27:                                               ; preds = %23
  tail call void @_exit(i32 noundef %1) #41, !dbg !3944
  unreachable, !dbg !3944

28:                                               ; preds = %23
  %29 = icmp slt i32 %25, 1, !dbg !3945
  br i1 %29, label %51, label %30, !dbg !3946

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !3947
  br label %31, !dbg !3948

31:                                               ; preds = %34, %30
  call void @llvm.dbg.value(metadata ptr %3, metadata !3913, metadata !DIExpression(DW_OP_deref)), !dbg !3949
  %32 = call i32 @waitpid(i32 noundef %25, ptr noundef nonnull %3, i32 noundef 0) #39, !dbg !3950
  %33 = icmp slt i32 %32, 0, !dbg !3951
  br i1 %33, label %34, label %39, !dbg !3948

34:                                               ; preds = %31
  %35 = tail call ptr @__errno_location() #42, !dbg !3952
  %36 = load i32, ptr %35, align 4, !dbg !3952, !tbaa !1035
  %37 = icmp eq i32 %36, 4, !dbg !3952
  br i1 %37, label %31, label %38, !dbg !3955, !llvm.loop !3956

38:                                               ; preds = %34
  call void @__assert_fail(ptr noundef nonnull @.str.3.94, ptr noundef nonnull @.str.1.92, i32 noundef 223, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #41, !dbg !3952
  unreachable, !dbg !3952

39:                                               ; preds = %31
  store i32 -1, ptr %24, align 4, !dbg !3958, !tbaa !1044
  %40 = load i32, ptr %3, align 4, !dbg !3959, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %40, metadata !3913, metadata !DIExpression()), !dbg !3949
  %41 = and i32 %40, 127, !dbg !3959
  %42 = icmp eq i32 %41, 0, !dbg !3959
  br i1 %42, label %46, label %43, !dbg !3961

43:                                               ; preds = %39
  %44 = call i32 @raise(i32 noundef %41) #39, !dbg !3962
  %45 = load i32, ptr %3, align 4, !dbg !3963, !tbaa !1035
  br label %46, !dbg !3962

46:                                               ; preds = %39, %43
  %47 = phi i32 [ %40, %39 ], [ %45, %43 ], !dbg !3963
  call void @llvm.dbg.value(metadata i32 %47, metadata !3913, metadata !DIExpression()), !dbg !3949
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !3964
  br label %51

50:                                               ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 233, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_restore) #41, !dbg !3965
  unreachable, !dbg !3965

51:                                               ; preds = %14, %2, %2, %28, %46, %20
  %52 = phi i32 [ %49, %46 ], [ -1, %20 ], [ 0, %28 ], [ 0, %2 ], [ 0, %2 ], [ 0, %14 ], !dbg !3916
  ret i32 %52, !dbg !3968
}

declare !dbg !3969 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3973 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @savewd_finish(ptr nocapture noundef %0) local_unnamed_addr #10 !dbg !3975 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !3978
  %2 = load i32, ptr %0, align 4, !dbg !3979, !tbaa !1905
  switch i32 %2, label %14 [
    i32 4, label %17
    i32 1, label %3
    i32 2, label %3
    i32 0, label %7
    i32 3, label %9
  ], !dbg !3980

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3981
  %5 = load i32, ptr %4, align 4, !dbg !3983, !tbaa !1044
  %6 = tail call i32 @close(i32 noundef %5) #39, !dbg !3984
  br label %7, !dbg !3984

7:                                                ; preds = %1, %3
  %8 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3985
  br label %15, !dbg !3986

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.savewd, ptr %0, i64 0, i32 1, !dbg !3987
  %11 = load i32, ptr %10, align 4, !dbg !3987, !tbaa !1044
  %12 = icmp slt i32 %11, 0, !dbg !3987
  br i1 %12, label %15, label %13, !dbg !3990

13:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !3987
  unreachable, !dbg !3987

14:                                               ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !3991
  unreachable, !dbg !3991

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %8, %7 ], [ %10, %9 ]
  store i32 0, ptr %16, align 4, !dbg !3994, !tbaa !1044
  br label %17, !dbg !3995

17:                                               ; preds = %15, %1
  store i32 5, ptr %0, align 4, !dbg !3995, !tbaa !1905
  ret void, !dbg !3996
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_process_files(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3997 {
  %5 = alloca %struct.savewd, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4004, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %1, metadata !4005, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %2, metadata !4006, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %3, metadata !4007, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !4008, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4025
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !4026
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4011, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata ptr %5, metadata !3749, metadata !DIExpression()), !dbg !4028
  store i32 0, ptr %5, align 4, !dbg !4030, !tbaa !1905
  call void @llvm.dbg.value(metadata i32 %0, metadata !4009, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4025
  %6 = zext i32 %0 to i64, !dbg !4031
  br label %7, !dbg !4031

7:                                                ; preds = %11, %4
  %8 = phi i64 [ %12, %11 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !4009, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4025
  %9 = trunc i64 %8 to i32, !dbg !4033
  %10 = icmp sgt i32 %9, 0, !dbg !4033
  br i1 %10, label %11, label %58, !dbg !4035

11:                                               ; preds = %7
  %12 = add nsw i64 %8, -1, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %12, metadata !4009, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %12, metadata !4009, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4025
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !4037
  %15 = load ptr, ptr %14, align 8, !dbg !4037, !tbaa !966
  %16 = load i8, ptr %15, align 1, !dbg !4037, !tbaa !1044
  %17 = icmp eq i8 %16, 47, !dbg !4037
  br i1 %17, label %7, label %18, !dbg !4039, !llvm.loop !4040

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !4008, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4025
  %19 = and i64 %8, 4294967294, !dbg !4042
  %20 = icmp eq i64 %19, 0, !dbg !4042
  br i1 %20, label %58, label %21, !dbg !4043

21:                                               ; preds = %18
  %22 = trunc i64 %12 to i32, !dbg !4036
  %23 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1
  %24 = tail call i32 @llvm.smax.i32(i32 %22, i32 1), !dbg !4043
  %25 = zext i32 %24 to i64, !dbg !4042
  br label %26, !dbg !4043

26:                                               ; preds = %21, %49
  %27 = phi i64 [ 0, %21 ], [ %41, %49 ]
  %28 = phi i32 [ 0, %21 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !4008, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %28, metadata !4010, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %5, metadata !4044, metadata !DIExpression()), !dbg !4049
  %29 = load i32, ptr %5, align 4, !dbg !4051, !tbaa !1905
  %30 = icmp eq i32 %29, 3, !dbg !4052
  %31 = load i32, ptr %23, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false, !dbg !4053
  br i1 %33, label %39, label %34, !dbg !4053

34:                                               ; preds = %26
  %35 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !4054
  %36 = load ptr, ptr %35, align 8, !dbg !4054, !tbaa !966
  %37 = call i32 %2(ptr noundef %36, ptr noundef nonnull %5, ptr noundef %3) #39, !dbg !4055
  call void @llvm.dbg.value(metadata i32 %37, metadata !4012, metadata !DIExpression()), !dbg !4056
  %38 = call i32 @llvm.smax.i32(i32 %28, i32 %37), !dbg !4057
  call void @llvm.dbg.value(metadata i32 %38, metadata !4010, metadata !DIExpression()), !dbg !4025
  br label %39, !dbg !4058

39:                                               ; preds = %26, %34
  %40 = phi i32 [ %38, %34 ], [ %28, %26 ], !dbg !4025
  call void @llvm.dbg.value(metadata i32 %40, metadata !4010, metadata !DIExpression()), !dbg !4025
  %41 = add nuw nsw i64 %27, 1, !dbg !4059
  %42 = getelementptr inbounds ptr, ptr %1, i64 %41, !dbg !4059
  %43 = load ptr, ptr %42, align 8, !dbg !4059, !tbaa !966
  %44 = load i8, ptr %43, align 1, !dbg !4059, !tbaa !1044
  %45 = icmp eq i8 %44, 47, !dbg !4059
  br i1 %45, label %49, label %46, !dbg !4060

46:                                               ; preds = %39
  %47 = call i32 @savewd_restore(ptr noundef nonnull %5, i32 noundef %40), !dbg !4061
  call void @llvm.dbg.value(metadata i32 %47, metadata !4018, metadata !DIExpression()), !dbg !4062
  %48 = call i32 @llvm.smax.i32(i32 %40, i32 %47), !dbg !4063
  call void @llvm.dbg.value(metadata i32 %48, metadata !4010, metadata !DIExpression()), !dbg !4025
  br label %49, !dbg !4064

49:                                               ; preds = %39, %46
  %50 = phi i32 [ %40, %39 ], [ %48, %46 ], !dbg !4025
  call void @llvm.dbg.value(metadata i64 %41, metadata !4008, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %50, metadata !4010, metadata !DIExpression()), !dbg !4025
  %51 = icmp eq i64 %41, %25, !dbg !4042
  br i1 %51, label %52, label %26, !dbg !4043, !llvm.loop !4065

52:                                               ; preds = %49
  %53 = load i32, ptr %5, align 4, !dbg !4067, !tbaa !1905
  call void @llvm.dbg.value(metadata ptr %5, metadata !3977, metadata !DIExpression()), !dbg !4069
  switch i32 %53, label %67 [
    i32 4, label %72
    i32 1, label %54
    i32 2, label %54
    i32 0, label %58
    i32 3, label %62
  ], !dbg !4070

54:                                               ; preds = %52, %52
  %55 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4071
  %56 = load i32, ptr %55, align 4, !dbg !4072, !tbaa !1044
  %57 = call i32 @close(i32 noundef %56) #39, !dbg !4073
  br label %58, !dbg !4073

58:                                               ; preds = %7, %18, %54, %52
  %59 = phi i32 [ %24, %54 ], [ %24, %52 ], [ 0, %18 ], [ 0, %7 ]
  %60 = phi i32 [ %50, %54 ], [ %50, %52 ], [ 0, %18 ], [ 0, %7 ]
  %61 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4074
  br label %68, !dbg !4075

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.savewd, ptr %5, i64 0, i32 1, !dbg !4076
  %64 = load i32, ptr %63, align 4, !dbg !4076, !tbaa !1044
  %65 = icmp slt i32 %64, 0, !dbg !4076
  br i1 %65, label %68, label %66, !dbg !4077

66:                                               ; preds = %62
  call void @__assert_fail(ptr noundef nonnull @.str.4.95, ptr noundef nonnull @.str.1.92, i32 noundef 256, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !4076
  unreachable, !dbg !4076

67:                                               ; preds = %52
  call void @__assert_fail(ptr noundef nonnull @.str.2.91, ptr noundef nonnull @.str.1.92, i32 noundef 261, ptr noundef nonnull @__PRETTY_FUNCTION__.savewd_finish) #41, !dbg !4078
  unreachable, !dbg !4078

68:                                               ; preds = %62, %58
  %69 = phi i32 [ %59, %58 ], [ %24, %62 ]
  %70 = phi i32 [ %60, %58 ], [ %50, %62 ]
  %71 = phi ptr [ %61, %58 ], [ %63, %62 ]
  store i32 0, ptr %71, align 4, !dbg !4079, !tbaa !1044
  br label %72, !dbg !4080

72:                                               ; preds = %52, %68
  %73 = phi i32 [ %24, %52 ], [ %69, %68 ]
  %74 = phi i32 [ %50, %52 ], [ %70, %68 ]
  store i32 5, ptr %5, align 4, !dbg !4080, !tbaa !1905
  call void @llvm.dbg.value(metadata i32 %24, metadata !4008, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %50, metadata !4010, metadata !DIExpression()), !dbg !4025
  %75 = icmp slt i32 %73, %0, !dbg !4081
  br i1 %75, label %76, label %87, !dbg !4082

76:                                               ; preds = %72
  %77 = zext i32 %73 to i64, !dbg !4082
  br label %78, !dbg !4082

78:                                               ; preds = %76, %78
  %79 = phi i64 [ %77, %76 ], [ %85, %78 ]
  %80 = phi i32 [ %74, %76 ], [ %84, %78 ]
  call void @llvm.dbg.value(metadata i64 %79, metadata !4008, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %80, metadata !4010, metadata !DIExpression()), !dbg !4025
  %81 = getelementptr inbounds ptr, ptr %1, i64 %79, !dbg !4083
  %82 = load ptr, ptr %81, align 8, !dbg !4083, !tbaa !966
  %83 = call i32 %2(ptr noundef %82, ptr noundef nonnull %5, ptr noundef %3) #39, !dbg !4084
  call void @llvm.dbg.value(metadata i32 %83, metadata !4021, metadata !DIExpression()), !dbg !4085
  %84 = call i32 @llvm.smax.i32(i32 %80, i32 %83), !dbg !4086
  call void @llvm.dbg.value(metadata i32 %84, metadata !4010, metadata !DIExpression()), !dbg !4025
  %85 = add nuw nsw i64 %79, 1, !dbg !4087
  call void @llvm.dbg.value(metadata i64 %85, metadata !4008, metadata !DIExpression()), !dbg !4025
  %86 = icmp eq i64 %85, %6
  br i1 %86, label %87, label %78, !dbg !4082, !llvm.loop !4088

87:                                               ; preds = %78, %72
  %88 = phi i32 [ %74, %72 ], [ %84, %78 ], !dbg !4025
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !4090
  ret i32 %88, !dbg !4091
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4092 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4131, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %1, metadata !4132, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %2, metadata !4133, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %3, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %4, metadata !4135, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %5, metadata !4136, metadata !DIExpression()), !dbg !4137
  %7 = icmp eq ptr %1, null, !dbg !4138
  br i1 %7, label %10, label %8, !dbg !4140

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4141
  br label %12, !dbg !4141

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.99, ptr noundef %2, ptr noundef %3) #39, !dbg !4142
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.3.101, i32 noundef 5) #39, !dbg !4143
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4143
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4144
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.5.103, i32 noundef 5) #39, !dbg !4145
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.104) #39, !dbg !4145
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %0), !dbg !4146
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
  ], !dbg !4147

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.7.105, i32 noundef 5) #39, !dbg !4148
  %21 = load ptr, ptr %4, align 8, !dbg !4148, !tbaa !966
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4148
  br label %147, !dbg !4150

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.8.106, i32 noundef 5) #39, !dbg !4151
  %25 = load ptr, ptr %4, align 8, !dbg !4151, !tbaa !966
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4151
  %27 = load ptr, ptr %26, align 8, !dbg !4151, !tbaa !966
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4151
  br label %147, !dbg !4152

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.9.107, i32 noundef 5) #39, !dbg !4153
  %31 = load ptr, ptr %4, align 8, !dbg !4153, !tbaa !966
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4153
  %33 = load ptr, ptr %32, align 8, !dbg !4153, !tbaa !966
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4153
  %35 = load ptr, ptr %34, align 8, !dbg !4153, !tbaa !966
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4153
  br label %147, !dbg !4154

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.10.108, i32 noundef 5) #39, !dbg !4155
  %39 = load ptr, ptr %4, align 8, !dbg !4155, !tbaa !966
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4155
  %41 = load ptr, ptr %40, align 8, !dbg !4155, !tbaa !966
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4155
  %43 = load ptr, ptr %42, align 8, !dbg !4155, !tbaa !966
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4155
  %45 = load ptr, ptr %44, align 8, !dbg !4155, !tbaa !966
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4155
  br label %147, !dbg !4156

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.11.109, i32 noundef 5) #39, !dbg !4157
  %49 = load ptr, ptr %4, align 8, !dbg !4157, !tbaa !966
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4157
  %51 = load ptr, ptr %50, align 8, !dbg !4157, !tbaa !966
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4157
  %53 = load ptr, ptr %52, align 8, !dbg !4157, !tbaa !966
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4157
  %55 = load ptr, ptr %54, align 8, !dbg !4157, !tbaa !966
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4157
  %57 = load ptr, ptr %56, align 8, !dbg !4157, !tbaa !966
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4157
  br label %147, !dbg !4158

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.12.110, i32 noundef 5) #39, !dbg !4159
  %61 = load ptr, ptr %4, align 8, !dbg !4159, !tbaa !966
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4159
  %63 = load ptr, ptr %62, align 8, !dbg !4159, !tbaa !966
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4159
  %65 = load ptr, ptr %64, align 8, !dbg !4159, !tbaa !966
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4159
  %67 = load ptr, ptr %66, align 8, !dbg !4159, !tbaa !966
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4159
  %69 = load ptr, ptr %68, align 8, !dbg !4159, !tbaa !966
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4159
  %71 = load ptr, ptr %70, align 8, !dbg !4159, !tbaa !966
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4159
  br label %147, !dbg !4160

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.13.111, i32 noundef 5) #39, !dbg !4161
  %75 = load ptr, ptr %4, align 8, !dbg !4161, !tbaa !966
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4161
  %77 = load ptr, ptr %76, align 8, !dbg !4161, !tbaa !966
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4161
  %79 = load ptr, ptr %78, align 8, !dbg !4161, !tbaa !966
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4161
  %81 = load ptr, ptr %80, align 8, !dbg !4161, !tbaa !966
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4161
  %83 = load ptr, ptr %82, align 8, !dbg !4161, !tbaa !966
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4161
  %85 = load ptr, ptr %84, align 8, !dbg !4161, !tbaa !966
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4161
  %87 = load ptr, ptr %86, align 8, !dbg !4161, !tbaa !966
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4161
  br label %147, !dbg !4162

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.14.112, i32 noundef 5) #39, !dbg !4163
  %91 = load ptr, ptr %4, align 8, !dbg !4163, !tbaa !966
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4163
  %93 = load ptr, ptr %92, align 8, !dbg !4163, !tbaa !966
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4163
  %95 = load ptr, ptr %94, align 8, !dbg !4163, !tbaa !966
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4163
  %97 = load ptr, ptr %96, align 8, !dbg !4163, !tbaa !966
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4163
  %99 = load ptr, ptr %98, align 8, !dbg !4163, !tbaa !966
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4163
  %101 = load ptr, ptr %100, align 8, !dbg !4163, !tbaa !966
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4163
  %103 = load ptr, ptr %102, align 8, !dbg !4163, !tbaa !966
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4163
  %105 = load ptr, ptr %104, align 8, !dbg !4163, !tbaa !966
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4163
  br label %147, !dbg !4164

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.15.113, i32 noundef 5) #39, !dbg !4165
  %109 = load ptr, ptr %4, align 8, !dbg !4165, !tbaa !966
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4165
  %111 = load ptr, ptr %110, align 8, !dbg !4165, !tbaa !966
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4165
  %113 = load ptr, ptr %112, align 8, !dbg !4165, !tbaa !966
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4165
  %115 = load ptr, ptr %114, align 8, !dbg !4165, !tbaa !966
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4165
  %117 = load ptr, ptr %116, align 8, !dbg !4165, !tbaa !966
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4165
  %119 = load ptr, ptr %118, align 8, !dbg !4165, !tbaa !966
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4165
  %121 = load ptr, ptr %120, align 8, !dbg !4165, !tbaa !966
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4165
  %123 = load ptr, ptr %122, align 8, !dbg !4165, !tbaa !966
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4165
  %125 = load ptr, ptr %124, align 8, !dbg !4165, !tbaa !966
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4165
  br label %147, !dbg !4166

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.16.114, i32 noundef 5) #39, !dbg !4167
  %129 = load ptr, ptr %4, align 8, !dbg !4167, !tbaa !966
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4167
  %131 = load ptr, ptr %130, align 8, !dbg !4167, !tbaa !966
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4167
  %133 = load ptr, ptr %132, align 8, !dbg !4167, !tbaa !966
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4167
  %135 = load ptr, ptr %134, align 8, !dbg !4167, !tbaa !966
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4167
  %137 = load ptr, ptr %136, align 8, !dbg !4167, !tbaa !966
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4167
  %139 = load ptr, ptr %138, align 8, !dbg !4167, !tbaa !966
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4167
  %141 = load ptr, ptr %140, align 8, !dbg !4167, !tbaa !966
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4167
  %143 = load ptr, ptr %142, align 8, !dbg !4167, !tbaa !966
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4167
  %145 = load ptr, ptr %144, align 8, !dbg !4167, !tbaa !966
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4167
  br label %147, !dbg !4168

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4169
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4170 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %1, metadata !4175, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %3, metadata !4177, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %4, metadata !4178, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i64 0, metadata !4179, metadata !DIExpression()), !dbg !4180
  br label %6, !dbg !4181

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4183
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4180
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4184
  %9 = load ptr, ptr %8, align 8, !dbg !4184, !tbaa !966
  %10 = icmp eq ptr %9, null, !dbg !4186
  %11 = add i64 %7, 1, !dbg !4187
  call void @llvm.dbg.value(metadata i64 %11, metadata !4179, metadata !DIExpression()), !dbg !4180
  br i1 %10, label %12, label %6, !dbg !4186, !llvm.loop !4188

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4190
  ret void, !dbg !4191
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4192 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4204, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %1, metadata !4205, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %2, metadata !4206, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %3, metadata !4207, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata ptr %4, metadata !4208, metadata !DIExpression()), !dbg !4212
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4210, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i64 0, metadata !4209, metadata !DIExpression()), !dbg !4212
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4209, metadata !DIExpression()), !dbg !4212
  %10 = icmp ult i32 %9, 41, !dbg !4215
  br i1 %10, label %11, label %16, !dbg !4215

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4215
  %13 = zext i32 %9 to i64, !dbg !4215
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4215
  %15 = add nuw nsw i32 %9, 8, !dbg !4215
  store i32 %15, ptr %4, align 8, !dbg !4215
  br label %19, !dbg !4215

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4215
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4215
  store ptr %18, ptr %7, align 8, !dbg !4215
  br label %19, !dbg !4215

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4215
  %22 = load ptr, ptr %21, align 8, !dbg !4215
  store ptr %22, ptr %6, align 16, !dbg !4218, !tbaa !966
  %23 = icmp eq ptr %22, null, !dbg !4219
  br i1 %23, label %128, label %24, !dbg !4220

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 1, metadata !4209, metadata !DIExpression()), !dbg !4212
  %25 = icmp ult i32 %20, 41, !dbg !4215
  br i1 %25, label %29, label %26, !dbg !4215

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4215
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4215
  store ptr %28, ptr %7, align 8, !dbg !4215
  br label %34, !dbg !4215

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4215
  %31 = zext i32 %20 to i64, !dbg !4215
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4215
  %33 = add nuw nsw i32 %20, 8, !dbg !4215
  store i32 %33, ptr %4, align 8, !dbg !4215
  br label %34, !dbg !4215

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4215
  %37 = load ptr, ptr %36, align 8, !dbg !4215
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4221
  store ptr %37, ptr %38, align 8, !dbg !4218, !tbaa !966
  %39 = icmp eq ptr %37, null, !dbg !4219
  br i1 %39, label %128, label %40, !dbg !4220

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 2, metadata !4209, metadata !DIExpression()), !dbg !4212
  %41 = icmp ult i32 %35, 41, !dbg !4215
  br i1 %41, label %45, label %42, !dbg !4215

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4215
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4215
  store ptr %44, ptr %7, align 8, !dbg !4215
  br label %50, !dbg !4215

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4215
  %47 = zext i32 %35 to i64, !dbg !4215
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4215
  %49 = add nuw nsw i32 %35, 8, !dbg !4215
  store i32 %49, ptr %4, align 8, !dbg !4215
  br label %50, !dbg !4215

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4215
  %53 = load ptr, ptr %52, align 8, !dbg !4215
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4221
  store ptr %53, ptr %54, align 16, !dbg !4218, !tbaa !966
  %55 = icmp eq ptr %53, null, !dbg !4219
  br i1 %55, label %128, label %56, !dbg !4220

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 3, metadata !4209, metadata !DIExpression()), !dbg !4212
  %57 = icmp ult i32 %51, 41, !dbg !4215
  br i1 %57, label %61, label %58, !dbg !4215

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4215
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4215
  store ptr %60, ptr %7, align 8, !dbg !4215
  br label %66, !dbg !4215

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4215
  %63 = zext i32 %51 to i64, !dbg !4215
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4215
  %65 = add nuw nsw i32 %51, 8, !dbg !4215
  store i32 %65, ptr %4, align 8, !dbg !4215
  br label %66, !dbg !4215

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4215
  %69 = load ptr, ptr %68, align 8, !dbg !4215
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4221
  store ptr %69, ptr %70, align 8, !dbg !4218, !tbaa !966
  %71 = icmp eq ptr %69, null, !dbg !4219
  br i1 %71, label %128, label %72, !dbg !4220

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 4, metadata !4209, metadata !DIExpression()), !dbg !4212
  %73 = icmp ult i32 %67, 41, !dbg !4215
  br i1 %73, label %77, label %74, !dbg !4215

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4215
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4215
  store ptr %76, ptr %7, align 8, !dbg !4215
  br label %82, !dbg !4215

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4215
  %79 = zext i32 %67 to i64, !dbg !4215
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4215
  %81 = add nuw nsw i32 %67, 8, !dbg !4215
  store i32 %81, ptr %4, align 8, !dbg !4215
  br label %82, !dbg !4215

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4215
  %85 = load ptr, ptr %84, align 8, !dbg !4215
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4221
  store ptr %85, ptr %86, align 16, !dbg !4218, !tbaa !966
  %87 = icmp eq ptr %85, null, !dbg !4219
  br i1 %87, label %128, label %88, !dbg !4220

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4209, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 5, metadata !4209, metadata !DIExpression()), !dbg !4212
  %89 = icmp ult i32 %83, 41, !dbg !4215
  br i1 %89, label %93, label %90, !dbg !4215

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4215
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4215
  store ptr %92, ptr %7, align 8, !dbg !4215
  br label %98, !dbg !4215

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4215
  %95 = zext i32 %83 to i64, !dbg !4215
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4215
  %97 = add nuw nsw i32 %83, 8, !dbg !4215
  store i32 %97, ptr %4, align 8, !dbg !4215
  br label %98, !dbg !4215

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4215
  %100 = load ptr, ptr %99, align 8, !dbg !4215
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4221
  store ptr %100, ptr %101, align 8, !dbg !4218, !tbaa !966
  %102 = icmp eq ptr %100, null, !dbg !4219
  br i1 %102, label %128, label %103, !dbg !4220

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4209, metadata !DIExpression()), !dbg !4212
  %104 = load ptr, ptr %7, align 8, !dbg !4215
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4215
  store ptr %105, ptr %7, align 8, !dbg !4215
  %106 = load ptr, ptr %104, align 8, !dbg !4215
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4221
  store ptr %106, ptr %107, align 16, !dbg !4218, !tbaa !966
  %108 = icmp eq ptr %106, null, !dbg !4219
  br i1 %108, label %128, label %109, !dbg !4220

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4209, metadata !DIExpression()), !dbg !4212
  %110 = load ptr, ptr %7, align 8, !dbg !4215
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4215
  store ptr %111, ptr %7, align 8, !dbg !4215
  %112 = load ptr, ptr %110, align 8, !dbg !4215
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4221
  store ptr %112, ptr %113, align 8, !dbg !4218, !tbaa !966
  %114 = icmp eq ptr %112, null, !dbg !4219
  br i1 %114, label %128, label %115, !dbg !4220

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4209, metadata !DIExpression()), !dbg !4212
  %116 = load ptr, ptr %7, align 8, !dbg !4215
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4215
  store ptr %117, ptr %7, align 8, !dbg !4215
  %118 = load ptr, ptr %116, align 8, !dbg !4215
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4221
  store ptr %118, ptr %119, align 16, !dbg !4218, !tbaa !966
  %120 = icmp eq ptr %118, null, !dbg !4219
  br i1 %120, label %128, label %121, !dbg !4220

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4209, metadata !DIExpression()), !dbg !4212
  %122 = load ptr, ptr %7, align 8, !dbg !4215
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4215
  store ptr %123, ptr %7, align 8, !dbg !4215
  %124 = load ptr, ptr %122, align 8, !dbg !4215
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4221
  store ptr %124, ptr %125, align 8, !dbg !4218, !tbaa !966
  %126 = icmp eq ptr %124, null, !dbg !4219
  %127 = select i1 %126, i64 9, i64 10, !dbg !4220
  br label %128, !dbg !4220

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4222
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4223
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4224
  ret void, !dbg !4224
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4225 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4229, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr %1, metadata !4230, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr %2, metadata !4231, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr %3, metadata !4232, metadata !DIExpression()), !dbg !4238
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !4239
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4233, metadata !DIExpression()), !dbg !4240
  call void @llvm.va_start(ptr nonnull %5), !dbg !4241
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4242
  call void @llvm.va_end(ptr nonnull %5), !dbg !4243
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !4244
  ret void, !dbg !4244
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4245 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4246, !tbaa !966
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.102, ptr noundef %1), !dbg !4246
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.17.119, i32 noundef 5) #39, !dbg !4247
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.120) #39, !dbg !4247
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.19.121, i32 noundef 5) #39, !dbg !4248
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.122, ptr noundef nonnull @.str.21.123) #39, !dbg !4248
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.100, ptr noundef nonnull @.str.22.124, i32 noundef 5) #39, !dbg !4249
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.125) #39, !dbg !4249
  ret void, !dbg !4250
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4251 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4256, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %2, metadata !4258, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %2, metadata !4264, metadata !DIExpression()), !dbg !4265
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4267
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4273
  %5 = icmp eq ptr %4, null, !dbg !4275
  br i1 %5, label %6, label %7, !dbg !4277

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4278
  unreachable, !dbg !4278

7:                                                ; preds = %3
  ret ptr %4, !dbg !4279
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4261 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i64 %2, metadata !4264, metadata !DIExpression()), !dbg !4280
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4281
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4282
  %5 = icmp eq ptr %4, null, !dbg !4284
  br i1 %5, label %6, label %7, !dbg !4285

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4286
  unreachable, !dbg !4286

7:                                                ; preds = %3
  ret ptr %4, !dbg !4287
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4288 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4292, metadata !DIExpression()), !dbg !4293
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4294
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4295
  %3 = icmp eq ptr %2, null, !dbg !4297
  br i1 %3, label %4, label %5, !dbg !4298

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4299
  unreachable, !dbg !4299

5:                                                ; preds = %1
  ret ptr %2, !dbg !4300
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4301 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4302 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4306, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %0, metadata !4308, metadata !DIExpression()), !dbg !4312
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4314
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4315
  %3 = icmp eq ptr %2, null, !dbg !4317
  br i1 %3, label %4, label %5, !dbg !4318

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4319
  unreachable, !dbg !4319

5:                                                ; preds = %1
  ret ptr %2, !dbg !4320
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4321 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4325, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %0, metadata !4292, metadata !DIExpression()), !dbg !4327
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4329
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4330
  %3 = icmp eq ptr %2, null, !dbg !4332
  br i1 %3, label %4, label %5, !dbg !4333

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4334
  unreachable, !dbg !4334

5:                                                ; preds = %1
  ret ptr %2, !dbg !4335
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4336 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %1, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata ptr %0, metadata !4343, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %1, metadata !4347, metadata !DIExpression()), !dbg !4348
  %3 = icmp eq i64 %1, 0, !dbg !4350
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4350
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4351
  call void @llvm.dbg.value(metadata ptr %5, metadata !4268, metadata !DIExpression()), !dbg !4352
  %6 = icmp eq ptr %5, null, !dbg !4354
  br i1 %6, label %7, label %8, !dbg !4355

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4356
  unreachable, !dbg !4356

8:                                                ; preds = %2
  ret ptr %5, !dbg !4357
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4358 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4359 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4363, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i64 %1, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata ptr %0, metadata !4366, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i64 %1, metadata !4369, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata ptr %0, metadata !4343, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %1, metadata !4347, metadata !DIExpression()), !dbg !4372
  %3 = icmp eq i64 %1, 0, !dbg !4374
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4374
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4375
  call void @llvm.dbg.value(metadata ptr %5, metadata !4268, metadata !DIExpression()), !dbg !4376
  %6 = icmp eq ptr %5, null, !dbg !4378
  br i1 %6, label %7, label %8, !dbg !4379

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4380
  unreachable, !dbg !4380

8:                                                ; preds = %2
  ret ptr %5, !dbg !4381
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4382 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4386, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i64 %1, metadata !4387, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i64 %2, metadata !4388, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata ptr %0, metadata !4390, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i64 %1, metadata !4393, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i64 %2, metadata !4394, metadata !DIExpression()), !dbg !4395
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4397
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4398
  %5 = icmp eq ptr %4, null, !dbg !4400
  br i1 %5, label %6, label %7, !dbg !4401

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4402
  unreachable, !dbg !4402

7:                                                ; preds = %3
  ret ptr %4, !dbg !4403
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4408, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %1, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr null, metadata !4260, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 %0, metadata !4263, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 %1, metadata !4264, metadata !DIExpression()), !dbg !4411
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4413
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4414
  %4 = icmp eq ptr %3, null, !dbg !4416
  br i1 %4, label %5, label %6, !dbg !4417

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4418
  unreachable, !dbg !4418

6:                                                ; preds = %2
  ret ptr %3, !dbg !4419
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4420 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4424, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i64 %1, metadata !4425, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata ptr null, metadata !4386, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 %0, metadata !4387, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 %1, metadata !4388, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr null, metadata !4390, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %0, metadata !4393, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %1, metadata !4394, metadata !DIExpression()), !dbg !4429
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4432
  %4 = icmp eq ptr %3, null, !dbg !4434
  br i1 %4, label %5, label %6, !dbg !4435

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4436
  unreachable, !dbg !4436

6:                                                ; preds = %2
  ret ptr %3, !dbg !4437
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata ptr %1, metadata !4443, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata ptr %0, metadata !878, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata ptr %1, metadata !879, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 1, metadata !880, metadata !DIExpression()), !dbg !4445
  %3 = load i64, ptr %1, align 8, !dbg !4447, !tbaa !3202
  call void @llvm.dbg.value(metadata i64 %3, metadata !881, metadata !DIExpression()), !dbg !4445
  %4 = icmp eq ptr %0, null, !dbg !4448
  br i1 %4, label %5, label %8, !dbg !4450

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4451
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4454
  br label %15, !dbg !4454

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4455
  %10 = add nuw i64 %9, 1, !dbg !4455
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4455
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4455
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4455
  call void @llvm.dbg.value(metadata i64 %13, metadata !881, metadata !DIExpression()), !dbg !4445
  br i1 %12, label %14, label %15, !dbg !4458

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4459
  unreachable, !dbg !4459

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4445
  call void @llvm.dbg.value(metadata i64 %16, metadata !881, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %16, metadata !4263, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 1, metadata !4264, metadata !DIExpression()), !dbg !4460
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4462
  call void @llvm.dbg.value(metadata ptr %17, metadata !4268, metadata !DIExpression()), !dbg !4463
  %18 = icmp eq ptr %17, null, !dbg !4465
  br i1 %18, label %19, label %20, !dbg !4466

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4467
  unreachable, !dbg !4467

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !878, metadata !DIExpression()), !dbg !4445
  store i64 %16, ptr %1, align 8, !dbg !4468, !tbaa !3202
  ret ptr %17, !dbg !4469
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !873 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !878, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %1, metadata !879, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %2, metadata !880, metadata !DIExpression()), !dbg !4470
  %4 = load i64, ptr %1, align 8, !dbg !4471, !tbaa !3202
  call void @llvm.dbg.value(metadata i64 %4, metadata !881, metadata !DIExpression()), !dbg !4470
  %5 = icmp eq ptr %0, null, !dbg !4472
  br i1 %5, label %6, label %13, !dbg !4473

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4474
  br i1 %7, label %8, label %20, !dbg !4475

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4476
  call void @llvm.dbg.value(metadata i64 %9, metadata !881, metadata !DIExpression()), !dbg !4470
  %10 = icmp ugt i64 %2, 128, !dbg !4478
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4479
  call void @llvm.dbg.value(metadata i64 %12, metadata !881, metadata !DIExpression()), !dbg !4470
  br label %20, !dbg !4480

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4481
  %15 = add nuw i64 %14, 1, !dbg !4481
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4481
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4481
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4481
  call void @llvm.dbg.value(metadata i64 %18, metadata !881, metadata !DIExpression()), !dbg !4470
  br i1 %17, label %19, label %20, !dbg !4482

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4483
  unreachable, !dbg !4483

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4470
  call void @llvm.dbg.value(metadata i64 %21, metadata !881, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata ptr %0, metadata !4260, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64 %21, metadata !4263, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64 %2, metadata !4264, metadata !DIExpression()), !dbg !4484
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4486
  call void @llvm.dbg.value(metadata ptr %22, metadata !4268, metadata !DIExpression()), !dbg !4487
  %23 = icmp eq ptr %22, null, !dbg !4489
  br i1 %23, label %24, label %25, !dbg !4490

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4491
  unreachable, !dbg !4491

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !878, metadata !DIExpression()), !dbg !4470
  store i64 %21, ptr %1, align 8, !dbg !4492, !tbaa !3202
  ret ptr %22, !dbg !4493
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !893, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr %1, metadata !894, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %2, metadata !895, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %3, metadata !896, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %4, metadata !897, metadata !DIExpression()), !dbg !4494
  %6 = load i64, ptr %1, align 8, !dbg !4495, !tbaa !3202
  call void @llvm.dbg.value(metadata i64 %6, metadata !898, metadata !DIExpression()), !dbg !4494
  %7 = ashr i64 %6, 1, !dbg !4496
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4496
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4496
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4496
  call void @llvm.dbg.value(metadata i64 %10, metadata !899, metadata !DIExpression()), !dbg !4494
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4498
  call void @llvm.dbg.value(metadata i64 %11, metadata !899, metadata !DIExpression()), !dbg !4494
  %12 = icmp sgt i64 %3, -1, !dbg !4499
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4501
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4501
  call void @llvm.dbg.value(metadata i64 %15, metadata !899, metadata !DIExpression()), !dbg !4494
  %16 = icmp slt i64 %4, 0, !dbg !4502
  br i1 %16, label %17, label %30, !dbg !4502

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4502
  br i1 %18, label %19, label %24, !dbg !4502

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4502
  %21 = udiv i64 9223372036854775807, %20, !dbg !4502
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4502
  br i1 %23, label %46, label %43, !dbg !4502

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4502
  br i1 %25, label %43, label %26, !dbg !4502

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4502
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4502
  %29 = icmp ult i64 %28, %15, !dbg !4502
  br i1 %29, label %46, label %43, !dbg !4502

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4502
  br i1 %31, label %43, label %32, !dbg !4502

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4502
  br i1 %33, label %34, label %40, !dbg !4502

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4502
  br i1 %35, label %43, label %36, !dbg !4502

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4502
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4502
  %39 = icmp ult i64 %38, %4, !dbg !4502
  br i1 %39, label %46, label %43, !dbg !4502

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4502
  br i1 %42, label %46, label %43, !dbg !4502

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4494
  %44 = mul i64 %15, %4, !dbg !4502
  call void @llvm.dbg.value(metadata i64 %44, metadata !900, metadata !DIExpression()), !dbg !4494
  %45 = icmp slt i64 %44, 128, !dbg !4502
  br i1 %45, label %46, label %51, !dbg !4502

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !901, metadata !DIExpression()), !dbg !4494
  %48 = sdiv i64 %47, %4, !dbg !4503
  call void @llvm.dbg.value(metadata i64 %48, metadata !899, metadata !DIExpression()), !dbg !4494
  %49 = srem i64 %47, %4, !dbg !4506
  %50 = sub nsw i64 %47, %49, !dbg !4507
  call void @llvm.dbg.value(metadata i64 %50, metadata !900, metadata !DIExpression()), !dbg !4494
  br label %51, !dbg !4508

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4494
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4494
  call void @llvm.dbg.value(metadata i64 %53, metadata !900, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %52, metadata !899, metadata !DIExpression()), !dbg !4494
  %54 = icmp eq ptr %0, null, !dbg !4509
  br i1 %54, label %55, label %56, !dbg !4511

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4512, !tbaa !3202
  br label %56, !dbg !4513

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4514
  %58 = icmp slt i64 %57, %2, !dbg !4516
  br i1 %58, label %59, label %96, !dbg !4517

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4518
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4518
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %62, metadata !899, metadata !DIExpression()), !dbg !4494
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4519
  br i1 %65, label %95, label %66, !dbg !4519

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4520

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4520
  br i1 %68, label %69, label %74, !dbg !4520

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4520
  %71 = udiv i64 9223372036854775807, %70, !dbg !4520
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4520
  br i1 %73, label %95, label %93, !dbg !4520

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4520
  br i1 %75, label %93, label %76, !dbg !4520

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4520
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4520
  %79 = icmp ult i64 %78, %62, !dbg !4520
  br i1 %79, label %95, label %93, !dbg !4520

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4520
  br i1 %81, label %93, label %82, !dbg !4520

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4520
  br i1 %83, label %84, label %90, !dbg !4520

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4520
  br i1 %85, label %93, label %86, !dbg !4520

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4520
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4520
  %89 = icmp ult i64 %88, %4, !dbg !4520
  br i1 %89, label %95, label %93, !dbg !4520

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4520
  br i1 %92, label %95, label %93, !dbg !4520

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4494
  %94 = mul i64 %62, %4, !dbg !4520
  call void @llvm.dbg.value(metadata i64 %94, metadata !900, metadata !DIExpression()), !dbg !4494
  br label %96, !dbg !4521

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !4522
  unreachable, !dbg !4522

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4494
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4494
  call void @llvm.dbg.value(metadata i64 %98, metadata !900, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %97, metadata !899, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %98, metadata !4341, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata ptr %0, metadata !4343, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %98, metadata !4347, metadata !DIExpression()), !dbg !4525
  %99 = icmp eq i64 %98, 0, !dbg !4527
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4527
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #47, !dbg !4528
  call void @llvm.dbg.value(metadata ptr %101, metadata !4268, metadata !DIExpression()), !dbg !4529
  %102 = icmp eq ptr %101, null, !dbg !4531
  br i1 %102, label %103, label %104, !dbg !4532

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !4533
  unreachable, !dbg !4533

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !893, metadata !DIExpression()), !dbg !4494
  store i64 %97, ptr %1, align 8, !dbg !4534, !tbaa !3202
  ret ptr %101, !dbg !4535
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4536 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i64 %0, metadata !4540, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 1, metadata !4543, metadata !DIExpression()), !dbg !4544
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4546
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4547
  %3 = icmp eq ptr %2, null, !dbg !4549
  br i1 %3, label %4, label %5, !dbg !4550

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4551
  unreachable, !dbg !4551

5:                                                ; preds = %1
  ret ptr %2, !dbg !4552
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4553 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4541 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4540, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %1, metadata !4543, metadata !DIExpression()), !dbg !4554
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4555
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4556
  %4 = icmp eq ptr %3, null, !dbg !4558
  br i1 %4, label %5, label %6, !dbg !4559

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4560
  unreachable, !dbg !4560

6:                                                ; preds = %2
  ret ptr %3, !dbg !4561
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4562 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4564, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %0, metadata !4566, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 1, metadata !4569, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %0, metadata !4572, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 1, metadata !4575, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 %0, metadata !4572, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 1, metadata !4575, metadata !DIExpression()), !dbg !4576
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4578
  call void @llvm.dbg.value(metadata ptr %2, metadata !4268, metadata !DIExpression()), !dbg !4579
  %3 = icmp eq ptr %2, null, !dbg !4581
  br i1 %3, label %4, label %5, !dbg !4582

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4583
  unreachable, !dbg !4583

5:                                                ; preds = %1
  ret ptr %2, !dbg !4584
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4567 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4566, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i64 %1, metadata !4569, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i64 %0, metadata !4572, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %1, metadata !4575, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %0, metadata !4572, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %1, metadata !4575, metadata !DIExpression()), !dbg !4586
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4588
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4589
  %4 = icmp eq ptr %3, null, !dbg !4591
  br i1 %4, label %5, label %6, !dbg !4592

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4593
  unreachable, !dbg !4593

6:                                                ; preds = %2
  ret ptr %3, !dbg !4594
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4595 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4599, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %1, metadata !4600, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()), !dbg !4602
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4604
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4605
  %4 = icmp eq ptr %3, null, !dbg !4607
  br i1 %4, label %5, label %6, !dbg !4608

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4609
  unreachable, !dbg !4609

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4610, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata i64 %1, metadata !4617, metadata !DIExpression()), !dbg !4618
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4620
  ret ptr %3, !dbg !4621
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4622 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4626, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %1, metadata !4627, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %1, metadata !4306, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %1, metadata !4308, metadata !DIExpression()), !dbg !4631
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4633
  call void @llvm.dbg.value(metadata ptr %3, metadata !4268, metadata !DIExpression()), !dbg !4634
  %4 = icmp eq ptr %3, null, !dbg !4636
  br i1 %4, label %5, label %6, !dbg !4637

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4638
  unreachable, !dbg !4638

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4610, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.value(metadata i64 %1, metadata !4617, metadata !DIExpression()), !dbg !4639
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4641
  ret ptr %3, !dbg !4642
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4643 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4647, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.value(metadata i64 %1, metadata !4648, metadata !DIExpression()), !dbg !4650
  %3 = add nsw i64 %1, 1, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %3, metadata !4306, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i64 %3, metadata !4308, metadata !DIExpression()), !dbg !4654
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4656
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4657
  %5 = icmp eq ptr %4, null, !dbg !4659
  br i1 %5, label %6, label %7, !dbg !4660

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4661
  unreachable, !dbg !4661

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4649, metadata !DIExpression()), !dbg !4650
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4662
  store i8 0, ptr %8, align 1, !dbg !4663, !tbaa !1044
  call void @llvm.dbg.value(metadata ptr %4, metadata !4610, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i64 %1, metadata !4617, metadata !DIExpression()), !dbg !4664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4666
  ret ptr %4, !dbg !4667
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4668 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4670, metadata !DIExpression()), !dbg !4671
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4672
  %3 = add i64 %2, 1, !dbg !4673
  call void @llvm.dbg.value(metadata ptr %0, metadata !4599, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %3, metadata !4600, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %3, metadata !4292, metadata !DIExpression()), !dbg !4676
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4678
  call void @llvm.dbg.value(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4679
  %5 = icmp eq ptr %4, null, !dbg !4681
  br i1 %5, label %6, label %7, !dbg !4682

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4683
  unreachable, !dbg !4683

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4610, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata ptr %0, metadata !4616, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i64 %3, metadata !4617, metadata !DIExpression()), !dbg !4684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4686
  ret ptr %4, !dbg !4687
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4688 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4693, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %1, metadata !4690, metadata !DIExpression()), !dbg !4694
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.140, ptr noundef nonnull @.str.2.141, i32 noundef 5) #39, !dbg !4693
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef %2) #39, !dbg !4693
  %3 = icmp eq i32 %1, 0, !dbg !4693
  tail call void @llvm.assume(i1 %3), !dbg !4693
  tail call void @abort() #41, !dbg !4695
  unreachable, !dbg !4695
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4696 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4734, metadata !DIExpression()), !dbg !4739
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4740
  call void @llvm.dbg.value(metadata i1 poison, metadata !4735, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %0, metadata !4741, metadata !DIExpression()), !dbg !4744
  %3 = load i32, ptr %0, align 8, !dbg !4746, !tbaa !4747
  %4 = and i32 %3, 32, !dbg !4748
  %5 = icmp eq i32 %4, 0, !dbg !4748
  call void @llvm.dbg.value(metadata i1 %5, metadata !4737, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4739
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4749
  %7 = icmp eq i32 %6, 0, !dbg !4750
  call void @llvm.dbg.value(metadata i1 %7, metadata !4738, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4739
  br i1 %5, label %8, label %18, !dbg !4751

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4753
  call void @llvm.dbg.value(metadata i1 %9, metadata !4735, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4739
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4754
  %11 = xor i1 %7, true, !dbg !4754
  %12 = sext i1 %11 to i32, !dbg !4754
  br i1 %10, label %21, label %13, !dbg !4754

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4755
  %15 = load i32, ptr %14, align 4, !dbg !4755, !tbaa !1035
  %16 = icmp ne i32 %15, 9, !dbg !4756
  %17 = sext i1 %16 to i32, !dbg !4757
  br label %21, !dbg !4757

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4758

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4760
  store i32 0, ptr %20, align 4, !dbg !4762, !tbaa !1035
  br label %21, !dbg !4760

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4739
  ret i32 %22, !dbg !4763
}

; Function Attrs: nounwind
declare !dbg !4764 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4768 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4806, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i32 0, metadata !4807, metadata !DIExpression()), !dbg !4810
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4811
  call void @llvm.dbg.value(metadata i32 %2, metadata !4808, metadata !DIExpression()), !dbg !4810
  %3 = icmp slt i32 %2, 0, !dbg !4812
  br i1 %3, label %4, label %6, !dbg !4814

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4815
  br label %24, !dbg !4816

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4817
  %8 = icmp eq i32 %7, 0, !dbg !4817
  br i1 %8, label %13, label %9, !dbg !4819

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4820
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4821
  %12 = icmp eq i64 %11, -1, !dbg !4822
  br i1 %12, label %16, label %13, !dbg !4823

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4824
  %15 = icmp eq i32 %14, 0, !dbg !4824
  br i1 %15, label %16, label %18, !dbg !4825

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4807, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4810
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4826
  call void @llvm.dbg.value(metadata i32 %17, metadata !4809, metadata !DIExpression()), !dbg !4810
  br label %24, !dbg !4827

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4828
  %20 = load i32, ptr %19, align 4, !dbg !4828, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %20, metadata !4807, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4810
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4826
  call void @llvm.dbg.value(metadata i32 %21, metadata !4809, metadata !DIExpression()), !dbg !4810
  %22 = icmp eq i32 %20, 0, !dbg !4829
  br i1 %22, label %24, label %23, !dbg !4827

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4831, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 -1, metadata !4809, metadata !DIExpression()), !dbg !4810
  br label %24, !dbg !4833

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4810
  ret i32 %25, !dbg !4834
}

; Function Attrs: nofree nounwind
declare !dbg !4835 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4836 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4837 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4838 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(ptr nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4841 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4845, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i32 %1, metadata !4846, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i32 0, metadata !4847, metadata !DIExpression()), !dbg !4861
  %4 = and i32 %1, 64, !dbg !4862
  %5 = icmp eq i32 %4, 0, !dbg !4862
  br i1 %5, label %22, label %6, !dbg !4863

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39, !dbg !4864
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4848, metadata !DIExpression()), !dbg !4865
  call void @llvm.va_start(ptr nonnull %3), !dbg !4866
  %7 = load i32, ptr %3, align 16, !dbg !4867
  %8 = icmp ult i32 %7, 41, !dbg !4867
  br i1 %8, label %9, label %15, !dbg !4867

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4867
  %11 = load ptr, ptr %10, align 16, !dbg !4867
  %12 = zext i32 %7 to i64, !dbg !4867
  %13 = getelementptr i8, ptr %11, i64 %12, !dbg !4867
  %14 = add nuw nsw i32 %7, 8, !dbg !4867
  store i32 %14, ptr %3, align 16, !dbg !4867
  br label %19, !dbg !4867

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4867
  %17 = load ptr, ptr %16, align 8, !dbg !4867
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4867
  store ptr %18, ptr %16, align 8, !dbg !4867
  br label %19, !dbg !4867

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %13, %9 ], [ %17, %15 ], !dbg !4867
  %21 = load i32, ptr %20, align 4, !dbg !4867
  call void @llvm.dbg.value(metadata i32 %21, metadata !4847, metadata !DIExpression()), !dbg !4861
  call void @llvm.va_end(ptr nonnull %3), !dbg !4868
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39, !dbg !4869
  br label %22, !dbg !4870

22:                                               ; preds = %19, %2
  %23 = phi i32 [ %21, %19 ], [ 0, %2 ], !dbg !4861
  call void @llvm.dbg.value(metadata i32 %23, metadata !4847, metadata !DIExpression()), !dbg !4861
  %24 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %23) #39, !dbg !4871
  %25 = call i32 @fd_safer(i32 noundef %24) #39, !dbg !4872
  ret i32 %25, !dbg !4873
}

; Function Attrs: nofree
declare !dbg !4874 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4875 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4913, metadata !DIExpression()), !dbg !4914
  %2 = icmp eq ptr %0, null, !dbg !4915
  br i1 %2, label %6, label %3, !dbg !4917

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4918
  %5 = icmp eq i32 %4, 0, !dbg !4918
  br i1 %5, label %6, label %8, !dbg !4919

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4920
  br label %16, !dbg !4921

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4922, metadata !DIExpression()), !dbg !4927
  %9 = load i32, ptr %0, align 8, !dbg !4929, !tbaa !4747
  %10 = and i32 %9, 256, !dbg !4931
  %11 = icmp eq i32 %10, 0, !dbg !4931
  br i1 %11, label %14, label %12, !dbg !4932

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4933
  br label %14, !dbg !4933

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4934
  br label %16, !dbg !4935

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4914
  ret i32 %17, !dbg !4936
}

; Function Attrs: nofree nounwind
declare !dbg !4937 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4938 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4977, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata i64 %1, metadata !4978, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata i32 %2, metadata !4979, metadata !DIExpression()), !dbg !4983
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4984
  %5 = load ptr, ptr %4, align 8, !dbg !4984, !tbaa !4985
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4986
  %7 = load ptr, ptr %6, align 8, !dbg !4986, !tbaa !4987
  %8 = icmp eq ptr %5, %7, !dbg !4988
  br i1 %8, label %9, label %27, !dbg !4989

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4990
  %11 = load ptr, ptr %10, align 8, !dbg !4990, !tbaa !1545
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4991
  %13 = load ptr, ptr %12, align 8, !dbg !4991, !tbaa !4992
  %14 = icmp eq ptr %11, %13, !dbg !4993
  br i1 %14, label %15, label %27, !dbg !4994

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4995
  %17 = load ptr, ptr %16, align 8, !dbg !4995, !tbaa !4996
  %18 = icmp eq ptr %17, null, !dbg !4997
  br i1 %18, label %19, label %27, !dbg !4998

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4999
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !5000
  call void @llvm.dbg.value(metadata i64 %21, metadata !4980, metadata !DIExpression()), !dbg !5001
  %22 = icmp eq i64 %21, -1, !dbg !5002
  br i1 %22, label %29, label %23, !dbg !5004

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5005, !tbaa !4747
  %25 = and i32 %24, -17, !dbg !5005
  store i32 %25, ptr %0, align 8, !dbg !5005, !tbaa !4747
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5006
  store i64 %21, ptr %26, align 8, !dbg !5007, !tbaa !5008
  br label %29, !dbg !5009

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5010
  br label %29, !dbg !5011

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4983
  ret i32 %30, !dbg !5012
}

; Function Attrs: nofree nounwind
declare !dbg !5013 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5016 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5021, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata ptr %1, metadata !5022, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i64 %2, metadata !5023, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata ptr %3, metadata !5024, metadata !DIExpression()), !dbg !5026
  %5 = icmp eq ptr %1, null, !dbg !5027
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5029
  %7 = select i1 %5, ptr @.str.155, ptr %1, !dbg !5029
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5029
  call void @llvm.dbg.value(metadata i64 %8, metadata !5023, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata ptr %7, metadata !5022, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata ptr %6, metadata !5021, metadata !DIExpression()), !dbg !5026
  %9 = icmp eq ptr %3, null, !dbg !5030
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5032
  call void @llvm.dbg.value(metadata ptr %10, metadata !5024, metadata !DIExpression()), !dbg !5026
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !5033
  call void @llvm.dbg.value(metadata i64 %11, metadata !5025, metadata !DIExpression()), !dbg !5026
  %12 = icmp ult i64 %11, -3, !dbg !5034
  br i1 %12, label %13, label %17, !dbg !5036

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !5037
  %15 = icmp eq i32 %14, 0, !dbg !5037
  br i1 %15, label %16, label %29, !dbg !5038

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5039, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata ptr %10, metadata !5046, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.value(metadata i32 0, metadata !5049, metadata !DIExpression()), !dbg !5051
  call void @llvm.dbg.value(metadata i64 8, metadata !5050, metadata !DIExpression()), !dbg !5051
  store i64 0, ptr %10, align 1, !dbg !5053
  br label %29, !dbg !5054

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5055
  br i1 %18, label %19, label %20, !dbg !5057

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5058
  unreachable, !dbg !5058

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5059

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !5061
  br i1 %23, label %29, label %24, !dbg !5062

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5063
  br i1 %25, label %29, label %26, !dbg !5066

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5067, !tbaa !1044
  %28 = zext i8 %27 to i32, !dbg !5068
  store i32 %28, ptr %6, align 4, !dbg !5069, !tbaa !1035
  br label %29, !dbg !5070

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5026
  ret i64 %30, !dbg !5071
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5072 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i64 @mkancesdirs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5078 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5083, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %1, metadata !5084, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %2, metadata !5085, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %3, metadata !5086, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr null, metadata !5087, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %0, metadata !5088, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %0, metadata !5089, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i8 0, metadata !5091, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %0, metadata !5089, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5100
  %5 = load i8, ptr %0, align 1, !dbg !5101, !tbaa !1044
  call void @llvm.dbg.value(metadata i8 %5, metadata !5090, metadata !DIExpression()), !dbg !5100
  %6 = icmp eq i8 %5, 0, !dbg !5102
  br i1 %6, label %76, label %7, !dbg !5102

7:                                                ; preds = %4, %70
  %8 = phi i8 [ %71, %70 ], [ %5, %4 ]
  %9 = phi ptr [ %13, %70 ], [ %0, %4 ]
  %10 = phi i8 [ %74, %70 ], [ 0, %4 ]
  %11 = phi ptr [ %73, %70 ], [ null, %4 ]
  %12 = phi ptr [ %72, %70 ], [ %0, %4 ]
  %13 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !5103
  call void @llvm.dbg.value(metadata i8 %10, metadata !5091, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %11, metadata !5087, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %12, metadata !5088, metadata !DIExpression()), !dbg !5100
  %14 = load i8, ptr %13, align 1, !dbg !5104, !tbaa !1044
  %15 = icmp eq i8 %14, 47, !dbg !5104
  %16 = icmp eq i8 %8, 47, !dbg !5105
  br i1 %15, label %17, label %19, !dbg !5106

17:                                               ; preds = %7
  %18 = select i1 %16, ptr %11, ptr %13, !dbg !5107
  br label %70, !dbg !5107

19:                                               ; preds = %7
  br i1 %16, label %20, label %70, !dbg !5109

20:                                               ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !5110
  %22 = icmp ne ptr %11, null
  %23 = select i1 %21, i1 %22, i1 false, !dbg !5111
  br i1 %23, label %24, label %66, !dbg !5111

24:                                               ; preds = %20
  %25 = ptrtoint ptr %11 to i64, !dbg !5112
  %26 = ptrtoint ptr %12 to i64, !dbg !5112
  %27 = sub i64 %25, %26, !dbg !5112
  %28 = icmp eq i64 %27, 1, !dbg !5113
  br i1 %28, label %29, label %33, !dbg !5114

29:                                               ; preds = %24
  %30 = load i8, ptr %12, align 1, !dbg !5115, !tbaa !1044
  %31 = icmp eq i8 %30, 46, !dbg !5116
  br i1 %31, label %66, label %32, !dbg !5117

32:                                               ; preds = %29
  store i8 0, ptr %11, align 1, !dbg !5118, !tbaa !1044
  call void @llvm.dbg.value(metadata i32 0, metadata !5092, metadata !DIExpression()), !dbg !5119
  br label %42, !dbg !5120

33:                                               ; preds = %24
  store i8 0, ptr %11, align 1, !dbg !5118, !tbaa !1044
  call void @llvm.dbg.value(metadata i32 0, metadata !5092, metadata !DIExpression()), !dbg !5119
  %34 = icmp eq i64 %27, 2, !dbg !5122
  br i1 %34, label %35, label %42, !dbg !5120

35:                                               ; preds = %33
  %36 = load i8, ptr %12, align 1, !dbg !5123, !tbaa !1044
  %37 = icmp eq i8 %36, 46, !dbg !5124
  br i1 %37, label %38, label %42, !dbg !5125

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !5126
  %40 = load i8, ptr %39, align 1, !dbg !5126, !tbaa !1044
  %41 = icmp eq i8 %40, 46, !dbg !5127
  br i1 %41, label %48, label %42, !dbg !5128

42:                                               ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(ptr noundef nonnull %0, ptr noundef %12, ptr noundef %3) #39, !dbg !5129
  %44 = icmp slt i32 %43, 0, !dbg !5131
  br i1 %44, label %45, label %48, !dbg !5132

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #42, !dbg !5133
  %47 = load i32, ptr %46, align 4, !dbg !5133, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %47, metadata !5092, metadata !DIExpression()), !dbg !5119
  br label %48, !dbg !5134

48:                                               ; preds = %42, %38, %45
  %49 = phi i8 [ %10, %45 ], [ 0, %38 ], [ 1, %42 ], !dbg !5100
  %50 = phi i32 [ %47, %45 ], [ 0, %38 ], [ 0, %42 ], !dbg !5119
  call void @llvm.dbg.value(metadata i32 %50, metadata !5092, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.value(metadata i8 %49, metadata !5091, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i32 0, metadata !5098, metadata !DIExpression()), !dbg !5119
  %51 = and i8 %49, 1, !dbg !5135
  %52 = zext i8 %51 to i32, !dbg !5137
  call void @llvm.dbg.value(metadata i32 %52, metadata !5098, metadata !DIExpression()), !dbg !5119
  %53 = tail call i32 @savewd_chdir(ptr noundef %1, ptr noundef %12, i32 noundef %52, ptr noundef null) #39, !dbg !5138
  call void @llvm.dbg.value(metadata i32 %53, metadata !5099, metadata !DIExpression()), !dbg !5119
  %54 = icmp eq i32 %53, -1, !dbg !5139
  br i1 %54, label %57, label %55, !dbg !5141

55:                                               ; preds = %48
  store i8 47, ptr %11, align 1, !dbg !5142, !tbaa !1044
  %56 = icmp eq i32 %53, 0, !dbg !5143
  br i1 %56, label %66, label %57, !dbg !5145

57:                                               ; preds = %48, %55
  %58 = icmp eq i32 %50, 0, !dbg !5146
  br i1 %58, label %64, label %59, !dbg !5149

59:                                               ; preds = %57
  %60 = tail call ptr @__errno_location() #42, !dbg !5150
  %61 = load i32, ptr %60, align 4, !dbg !5150, !tbaa !1035
  %62 = icmp eq i32 %61, 2, !dbg !5151
  br i1 %62, label %63, label %64, !dbg !5152

63:                                               ; preds = %59
  store i32 %50, ptr %60, align 4, !dbg !5153, !tbaa !1035
  br label %64, !dbg !5154

64:                                               ; preds = %57, %59, %63
  %65 = sext i32 %53 to i64, !dbg !5155
  br label %81

66:                                               ; preds = %20, %29, %55
  %67 = phi ptr [ %13, %55 ], [ %13, %29 ], [ %12, %20 ]
  %68 = phi i8 [ %49, %55 ], [ %10, %29 ], [ %10, %20 ]
  %69 = load i8, ptr %13, align 1, !dbg !5101, !tbaa !1044
  br label %70, !dbg !5101

70:                                               ; preds = %66, %17, %19
  %71 = phi i8 [ %69, %66 ], [ 47, %17 ], [ %14, %19 ], !dbg !5101
  %72 = phi ptr [ %67, %66 ], [ %12, %17 ], [ %12, %19 ], !dbg !5100
  %73 = phi ptr [ %11, %66 ], [ %18, %17 ], [ %11, %19 ], !dbg !5100
  %74 = phi i8 [ %68, %66 ], [ %10, %17 ], [ %10, %19 ], !dbg !5156
  call void @llvm.dbg.value(metadata i8 %74, metadata !5091, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %73, metadata !5087, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %72, metadata !5088, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %13, metadata !5089, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5100
  call void @llvm.dbg.value(metadata i8 %71, metadata !5090, metadata !DIExpression()), !dbg !5100
  %75 = icmp eq i8 %71, 0, !dbg !5102
  br i1 %75, label %76, label %7, !dbg !5102, !llvm.loop !5157

76:                                               ; preds = %70, %4
  %77 = phi ptr [ %0, %4 ], [ %72, %70 ], !dbg !5159
  %78 = ptrtoint ptr %77 to i64, !dbg !5160
  %79 = ptrtoint ptr %0 to i64, !dbg !5160
  %80 = sub i64 %78, %79, !dbg !5160
  br label %81, !dbg !5161

81:                                               ; preds = %64, %76
  %82 = phi i64 [ %65, %64 ], [ %80, %76 ], !dbg !5100
  ret i64 %82, !dbg !5162
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dirchownmod(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #10 !dbg !5163 {
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !5167, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata ptr %1, metadata !5168, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %2, metadata !5169, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %3, metadata !5170, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %4, metadata !5171, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %5, metadata !5172, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %6, metadata !5173, metadata !DIExpression()), !dbg !5211
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #39, !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5174, metadata !DIExpression()), !dbg !5213
  %9 = icmp slt i32 %0, 0, !dbg !5214
  br i1 %9, label %10, label %12, !dbg !5215

10:                                               ; preds = %7
  %11 = call i32 @stat(ptr noundef %1, ptr noundef nonnull %8) #39, !dbg !5216
  br label %14, !dbg !5215

12:                                               ; preds = %7
  %13 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %8) #39, !dbg !5217
  br label %14, !dbg !5215

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ], !dbg !5215
  call void @llvm.dbg.value(metadata i32 %15, metadata !5196, metadata !DIExpression()), !dbg !5211
  %16 = icmp eq i32 %15, 0, !dbg !5218
  br i1 %16, label %17, label %74, !dbg !5219

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 3, !dbg !5220
  %19 = load i32, ptr %18, align 8, !dbg !5220, !tbaa !1960
  call void @llvm.dbg.value(metadata i32 %19, metadata !5197, metadata !DIExpression()), !dbg !5221
  %20 = and i32 %19, 61440, !dbg !5222
  %21 = icmp eq i32 %20, 16384, !dbg !5222
  br i1 %21, label %24, label %22, !dbg !5223

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #42, !dbg !5224
  store i32 20, ptr %23, align 4, !dbg !5226, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 -1, metadata !5196, metadata !DIExpression()), !dbg !5211
  br label %74, !dbg !5227

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !5200, metadata !DIExpression()), !dbg !5228
  %25 = icmp eq i32 %3, -1, !dbg !5229
  %26 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %3
  %29 = select i1 %25, i1 true, i1 %28, !dbg !5231
  br i1 %29, label %30, label %36, !dbg !5231

30:                                               ; preds = %24
  %31 = icmp eq i32 %4, -1, !dbg !5232
  %32 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, %4
  %35 = select i1 %31, i1 true, i1 %34, !dbg !5233
  br i1 %35, label %54, label %36, !dbg !5233

36:                                               ; preds = %30, %24
  %37 = icmp sgt i32 %0, -1, !dbg !5234
  br i1 %37, label %38, label %40, !dbg !5236

38:                                               ; preds = %36
  %39 = tail call i32 @fchown(i32 noundef %0, i32 noundef %3, i32 noundef %4) #39, !dbg !5237
  br label %46, !dbg !5236

40:                                               ; preds = %36
  %41 = icmp eq i32 %2, -1, !dbg !5238
  br i1 %41, label %44, label %42, !dbg !5239

42:                                               ; preds = %40
  %43 = tail call i32 @lchown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #39, !dbg !5240
  br label %46, !dbg !5239

44:                                               ; preds = %40
  %45 = tail call i32 @chown(ptr noundef %1, i32 noundef %3, i32 noundef %4) #39, !dbg !5241
  br label %46, !dbg !5239

46:                                               ; preds = %42, %44, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ], [ %45, %44 ], !dbg !5236
  call void @llvm.dbg.value(metadata i32 %47, metadata !5196, metadata !DIExpression()), !dbg !5211
  %48 = icmp eq i32 %47, 0, !dbg !5242
  br i1 %48, label %49, label %74, !dbg !5244

49:                                               ; preds = %46
  %50 = and i32 %19, 73, !dbg !5245
  %51 = icmp eq i32 %50, 0, !dbg !5245
  %52 = and i32 %19, 3072
  %53 = select i1 %51, i32 0, i32 %52, !dbg !5246
  br label %54, !dbg !5246

54:                                               ; preds = %30, %49
  %55 = phi i32 [ %53, %49 ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !5196, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %55, metadata !5200, metadata !DIExpression()), !dbg !5228
  %56 = xor i32 %19, %5, !dbg !5247
  %57 = or i32 %55, %56, !dbg !5248
  %58 = and i32 %57, %6, !dbg !5249
  %59 = icmp eq i32 %58, 0, !dbg !5249
  br i1 %59, label %74, label %60, !dbg !5250

60:                                               ; preds = %54
  %61 = and i32 %6, 4095, !dbg !5251
  %62 = xor i32 %61, 4095, !dbg !5251
  %63 = and i32 %62, %19, !dbg !5252
  %64 = or i32 %63, %5, !dbg !5253
  call void @llvm.dbg.value(metadata i32 %64, metadata !5203, metadata !DIExpression()), !dbg !5254
  %65 = icmp sgt i32 %0, -1, !dbg !5255
  br i1 %65, label %66, label %68, !dbg !5256

66:                                               ; preds = %60
  %67 = tail call i32 @fchmod(i32 noundef %0, i32 noundef %64) #39, !dbg !5257
  call void @llvm.dbg.value(metadata i32 %67, metadata !5196, metadata !DIExpression()), !dbg !5211
  br label %77, !dbg !5258

68:                                               ; preds = %60
  %69 = icmp eq i32 %2, -1, !dbg !5259
  br i1 %69, label %72, label %70, !dbg !5260

70:                                               ; preds = %68
  %71 = tail call i32 @lchmod(ptr noundef %1, i32 noundef %64) #39, !dbg !5261
  br label %86, !dbg !5260

72:                                               ; preds = %68
  %73 = tail call i32 @chmod(ptr noundef %1, i32 noundef %64) #39, !dbg !5262
  br label %86, !dbg !5260

74:                                               ; preds = %46, %22, %54, %14
  %75 = phi i32 [ %15, %14 ], [ -1, %22 ], [ 0, %54 ], [ %47, %46 ], !dbg !5211
  call void @llvm.dbg.value(metadata i32 %75, metadata !5196, metadata !DIExpression()), !dbg !5211
  %76 = icmp sgt i32 %0, -1, !dbg !5263
  br i1 %76, label %77, label %86, !dbg !5258

77:                                               ; preds = %66, %74
  %78 = phi i32 [ %67, %66 ], [ %75, %74 ]
  %79 = icmp eq i32 %78, 0, !dbg !5264
  br i1 %79, label %80, label %82, !dbg !5265

80:                                               ; preds = %77
  %81 = tail call i32 @close(i32 noundef %0) #39, !dbg !5266
  call void @llvm.dbg.value(metadata i32 %81, metadata !5196, metadata !DIExpression()), !dbg !5211
  br label %86, !dbg !5267

82:                                               ; preds = %77
  %83 = tail call ptr @__errno_location() #42, !dbg !5268
  %84 = load i32, ptr %83, align 4, !dbg !5268, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %84, metadata !5206, metadata !DIExpression()), !dbg !5269
  %85 = tail call i32 @close(i32 noundef %0) #39, !dbg !5270
  store i32 %84, ptr %83, align 4, !dbg !5271, !tbaa !1035
  br label %86

86:                                               ; preds = %70, %72, %80, %82, %74
  %87 = phi i32 [ %81, %80 ], [ %78, %82 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], !dbg !5211
  call void @llvm.dbg.value(metadata i32 %87, metadata !5196, metadata !DIExpression()), !dbg !5211
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #39, !dbg !5272
  ret i32 %87, !dbg !5273
}

; Function Attrs: nofree nounwind
declare !dbg !5274 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5278 i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5281 noundef i32 @lchown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5284 noundef i32 @chown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5285 i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5288 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !5289 noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5290 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5292, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata i64 %1, metadata !5293, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata i64 %2, metadata !5294, metadata !DIExpression()), !dbg !5296
  %4 = icmp eq i64 %2, 0, !dbg !5297
  br i1 %4, label %8, label %5, !dbg !5297

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5297
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5297
  br i1 %7, label %13, label %8, !dbg !5297

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5296
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5296
  %9 = mul i64 %2, %1, !dbg !5297
  call void @llvm.dbg.value(metadata i64 %9, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata ptr %0, metadata !5299, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata i64 %9, metadata !5302, metadata !DIExpression()), !dbg !5303
  %10 = icmp eq i64 %9, 0, !dbg !5305
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5305
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !5306
  br label %15, !dbg !5307

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5296
  %14 = tail call ptr @__errno_location() #42, !dbg !5308
  store i32 12, ptr %14, align 4, !dbg !5310, !tbaa !1035
  br label %15, !dbg !5311

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5296
  ret ptr %16, !dbg !5312
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5315, metadata !DIExpression()), !dbg !5320
  %2 = icmp ult i32 %0, 3, !dbg !5321
  br i1 %2, label %3, label %8, !dbg !5321

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #39, !dbg !5322
  call void @llvm.dbg.value(metadata i32 %4, metadata !5316, metadata !DIExpression()), !dbg !5323
  %5 = tail call ptr @__errno_location() #42, !dbg !5324
  %6 = load i32, ptr %5, align 4, !dbg !5324, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %6, metadata !5319, metadata !DIExpression()), !dbg !5323
  %7 = tail call i32 @close(i32 noundef %0) #39, !dbg !5325
  store i32 %6, ptr %5, align 4, !dbg !5326, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %4, metadata !5315, metadata !DIExpression()), !dbg !5320
  br label %8, !dbg !5327

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !5315, metadata !DIExpression()), !dbg !5320
  ret i32 %9, !dbg !5328
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5329 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5333, metadata !DIExpression()), !dbg !5338
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5339
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5334, metadata !DIExpression()), !dbg !5340
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5341
  %4 = icmp eq i32 %3, 0, !dbg !5341
  br i1 %4, label %5, label %12, !dbg !5343

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5344, metadata !DIExpression()), !dbg !5348
  %6 = load i16, ptr %2, align 16, !dbg !5351
  %7 = icmp eq i16 %6, 67, !dbg !5351
  br i1 %7, label %11, label %8, !dbg !5352

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5344, metadata !DIExpression()), !dbg !5353
  call void @llvm.dbg.value(metadata ptr @.str.1.166, metadata !5347, metadata !DIExpression()), !dbg !5353
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.166, i64 6), !dbg !5355
  %10 = icmp eq i32 %9, 0, !dbg !5356
  br i1 %10, label %11, label %12, !dbg !5357

11:                                               ; preds = %8, %5
  br label %12, !dbg !5358

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5338
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5359
  ret i1 %13, !dbg !5359
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5364, metadata !DIExpression()), !dbg !5367
  call void @llvm.dbg.value(metadata ptr %1, metadata !5365, metadata !DIExpression()), !dbg !5367
  call void @llvm.dbg.value(metadata i64 %2, metadata !5366, metadata !DIExpression()), !dbg !5367
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5368
  ret i32 %4, !dbg !5369
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5370 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5374, metadata !DIExpression()), !dbg !5375
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5376
  ret ptr %2, !dbg !5377
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5380, metadata !DIExpression()), !dbg !5382
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5383
  call void @llvm.dbg.value(metadata ptr %2, metadata !5381, metadata !DIExpression()), !dbg !5382
  ret ptr %2, !dbg !5384
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5387, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.value(metadata ptr %1, metadata !5388, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.value(metadata i64 %2, metadata !5389, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.value(metadata i32 %0, metadata !5380, metadata !DIExpression()), !dbg !5395
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5397
  call void @llvm.dbg.value(metadata ptr %4, metadata !5381, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.value(metadata ptr %4, metadata !5390, metadata !DIExpression()), !dbg !5394
  %5 = icmp eq ptr %4, null, !dbg !5398
  br i1 %5, label %6, label %9, !dbg !5399

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5400
  br i1 %7, label %19, label %8, !dbg !5403

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5404, !tbaa !1044
  br label %19, !dbg !5405

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5406
  call void @llvm.dbg.value(metadata i64 %10, metadata !5391, metadata !DIExpression()), !dbg !5407
  %11 = icmp ult i64 %10, %2, !dbg !5408
  br i1 %11, label %12, label %14, !dbg !5410

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5411
  call void @llvm.dbg.value(metadata ptr %1, metadata !5413, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.value(metadata ptr %4, metadata !5416, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.value(metadata i64 %13, metadata !5417, metadata !DIExpression()), !dbg !5418
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5420
  br label %19, !dbg !5421

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5422
  br i1 %15, label %19, label %16, !dbg !5425

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5426
  call void @llvm.dbg.value(metadata ptr %1, metadata !5413, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.value(metadata ptr %4, metadata !5416, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.value(metadata i64 %17, metadata !5417, metadata !DIExpression()), !dbg !5428
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5430
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5431
  store i8 0, ptr %18, align 1, !dbg !5432, !tbaa !1044
  br label %19, !dbg !5433

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5434
  ret i32 %20, !dbg !5435
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !5436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5438, metadata !DIExpression()), !dbg !5439
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #39, !dbg !5440
  ret i32 %2, !dbg !5441
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !5442 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5444, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.value(metadata i32 %1, metadata !5445, metadata !DIExpression()), !dbg !5469
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5446, metadata !DIExpression()), !dbg !5471
  call void @llvm.va_start(ptr nonnull %3), !dbg !5472
  call void @llvm.dbg.value(metadata i32 -1, metadata !5457, metadata !DIExpression()), !dbg !5469
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
  ], !dbg !5473

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !5474
  %6 = icmp ult i32 %5, 41, !dbg !5474
  br i1 %6, label %7, label %13, !dbg !5474

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5474
  %9 = load ptr, ptr %8, align 16, !dbg !5474
  %10 = zext i32 %5 to i64, !dbg !5474
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !5474
  %12 = add nuw nsw i32 %5, 8, !dbg !5474
  store i32 %12, ptr %3, align 16, !dbg !5474
  br label %17, !dbg !5474

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5474
  %15 = load ptr, ptr %14, align 8, !dbg !5474
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !5474
  store ptr %16, ptr %14, align 8, !dbg !5474
  br label %17, !dbg !5474

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !5474
  %19 = load i32, ptr %18, align 4, !dbg !5474
  call void @llvm.dbg.value(metadata i32 %19, metadata !5458, metadata !DIExpression()), !dbg !5475
  call void @llvm.dbg.value(metadata i32 %0, metadata !5476, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i32 %19, metadata !5479, metadata !DIExpression()), !dbg !5481
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #39, !dbg !5483
  call void @llvm.dbg.value(metadata i32 %20, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i32 %20, metadata !5457, metadata !DIExpression()), !dbg !5469
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !5484
  %23 = icmp ult i32 %22, 41, !dbg !5484
  br i1 %23, label %24, label %30, !dbg !5484

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5484
  %26 = load ptr, ptr %25, align 16, !dbg !5484
  %27 = zext i32 %22 to i64, !dbg !5484
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !5484
  %29 = add nuw nsw i32 %22, 8, !dbg !5484
  store i32 %29, ptr %3, align 16, !dbg !5484
  br label %34, !dbg !5484

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5484
  %32 = load ptr, ptr %31, align 8, !dbg !5484
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !5484
  store ptr %33, ptr %31, align 8, !dbg !5484
  br label %34, !dbg !5484

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !5484
  %36 = load i32, ptr %35, align 4, !dbg !5484
  call void @llvm.dbg.value(metadata i32 %36, metadata !5461, metadata !DIExpression()), !dbg !5485
  call void @llvm.dbg.value(metadata i32 %0, metadata !806, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.value(metadata i32 %36, metadata !807, metadata !DIExpression()), !dbg !5486
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5488, !tbaa !1035
  %38 = icmp sgt i32 %37, -1, !dbg !5490
  br i1 %38, label %39, label %51, !dbg !5491

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #39, !dbg !5492
  call void @llvm.dbg.value(metadata i32 %40, metadata !808, metadata !DIExpression()), !dbg !5486
  %41 = icmp sgt i32 %40, -1, !dbg !5494
  br i1 %41, label %46, label %42, !dbg !5496

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #42, !dbg !5497
  %44 = load i32, ptr %43, align 4, !dbg !5497, !tbaa !1035
  %45 = icmp eq i32 %44, 22, !dbg !5498
  br i1 %45, label %47, label %46, !dbg !5499

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5500, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %40, metadata !808, metadata !DIExpression()), !dbg !5486
  br label %107, !dbg !5502

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !5476, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata i32 %36, metadata !5479, metadata !DIExpression()), !dbg !5503
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !5506
  call void @llvm.dbg.value(metadata i32 %48, metadata !5480, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata i32 %48, metadata !808, metadata !DIExpression()), !dbg !5486
  %49 = icmp sgt i32 %48, -1, !dbg !5507
  br i1 %49, label %50, label %107, !dbg !5509

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5510, !tbaa !1035
  br label %55, !dbg !5511

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !5476, metadata !DIExpression()), !dbg !5512
  call void @llvm.dbg.value(metadata i32 %36, metadata !5479, metadata !DIExpression()), !dbg !5512
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !5514
  call void @llvm.dbg.value(metadata i32 %52, metadata !5480, metadata !DIExpression()), !dbg !5512
  call void @llvm.dbg.value(metadata i32 %52, metadata !808, metadata !DIExpression()), !dbg !5486
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !5515
  call void @llvm.dbg.value(metadata i32 %57, metadata !808, metadata !DIExpression()), !dbg !5486
  %58 = icmp sgt i32 %57, -1, !dbg !5516
  %59 = select i1 %58, i1 %56, i1 false, !dbg !5502
  br i1 %59, label %60, label %107, !dbg !5502

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #39, !dbg !5517
  call void @llvm.dbg.value(metadata i32 %61, metadata !809, metadata !DIExpression()), !dbg !5518
  %62 = icmp slt i32 %61, 0, !dbg !5519
  br i1 %62, label %67, label %63, !dbg !5520

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !5521
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #39, !dbg !5522
  %66 = icmp eq i32 %65, -1, !dbg !5523
  br i1 %66, label %67, label %107, !dbg !5524

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #42, !dbg !5525
  %69 = load i32, ptr %68, align 4, !dbg !5525, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 %69, metadata !812, metadata !DIExpression()), !dbg !5526
  %70 = call i32 @close(i32 noundef %57) #39, !dbg !5527
  store i32 %69, ptr %68, align 4, !dbg !5528, !tbaa !1035
  call void @llvm.dbg.value(metadata i32 -1, metadata !808, metadata !DIExpression()), !dbg !5486
  br label %107, !dbg !5529

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !5530
  call void @llvm.dbg.value(metadata i32 %72, metadata !5457, metadata !DIExpression()), !dbg !5469
  br label %107, !dbg !5531

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !5532
  %75 = icmp ult i32 %74, 41, !dbg !5532
  br i1 %75, label %76, label %82, !dbg !5532

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5532
  %78 = load ptr, ptr %77, align 16, !dbg !5532
  %79 = zext i32 %74 to i64, !dbg !5532
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !5532
  %81 = add nuw nsw i32 %74, 8, !dbg !5532
  store i32 %81, ptr %3, align 16, !dbg !5532
  br label %86, !dbg !5532

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5532
  %84 = load ptr, ptr %83, align 8, !dbg !5532
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !5532
  store ptr %85, ptr %83, align 8, !dbg !5532
  br label %86, !dbg !5532

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !5532
  %88 = load i32, ptr %87, align 4, !dbg !5532
  call void @llvm.dbg.value(metadata i32 %88, metadata !5463, metadata !DIExpression()), !dbg !5533
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #39, !dbg !5534
  call void @llvm.dbg.value(metadata i32 %89, metadata !5457, metadata !DIExpression()), !dbg !5469
  br label %107, !dbg !5535

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !5536
  %92 = icmp ult i32 %91, 41, !dbg !5536
  br i1 %92, label %93, label %99, !dbg !5536

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !5536
  %95 = load ptr, ptr %94, align 16, !dbg !5536
  %96 = zext i32 %91 to i64, !dbg !5536
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !5536
  %98 = add nuw nsw i32 %91, 8, !dbg !5536
  store i32 %98, ptr %3, align 16, !dbg !5536
  br label %103, !dbg !5536

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !5536
  %101 = load ptr, ptr %100, align 8, !dbg !5536
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !5536
  store ptr %102, ptr %100, align 8, !dbg !5536
  br label %103, !dbg !5536

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !5536
  %105 = load ptr, ptr %104, align 8, !dbg !5536
  call void @llvm.dbg.value(metadata ptr %105, metadata !5467, metadata !DIExpression()), !dbg !5537
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #39, !dbg !5538
  call void @llvm.dbg.value(metadata i32 %106, metadata !5457, metadata !DIExpression()), !dbg !5469
  br label %107, !dbg !5539

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !5540
  call void @llvm.dbg.value(metadata i32 %108, metadata !5457, metadata !DIExpression()), !dbg !5469
  call void @llvm.va_end(ptr nonnull %3), !dbg !5541
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39, !dbg !5542
  ret i32 %108, !dbg !5543
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
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }
attributes #47 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!76, !815, !818, !416, !420, !435, !765, !820, !822, !840, !503, !517, !568, !849, !862, !757, !869, !903, !905, !907, !909, !911, !913, !781, !915, !928, !933, !936, !938, !942, !944, !946, !803}
!llvm.ident = !{!948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948, !948}
!llvm.module.flags = !{!949, !950, !951, !952, !953, !954}

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
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !136, globals: !150, splitDebugInlining: false, nameTableKind: None)
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
!434 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !435, file: !436, line: 66, type: !479, isLocal: false, isDefinition: true)
!435 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !437, globals: !438, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!437 = !{!138, !145}
!438 = !{!439, !441, !461, !463, !465, !467, !433, !469, !471, !473, !475, !477}
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !436, line: 272, type: !263, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "old_file_name", scope: !443, file: !436, line: 304, type: !143, isLocal: true, isDefinition: true)
!443 = distinct !DISubprogram(name: "verror_at_line", scope: !436, file: !436, line: 298, type: !444, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !454)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !80, !80, !143, !99, !143, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !448)
!448 = !{!449, !451, !452, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !447, file: !450, baseType: !99, size: 32)
!450 = !DIFile(filename: "lib/error.c", directory: "/src")
!451 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !447, file: !450, baseType: !99, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !447, file: !450, baseType: !138, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !447, file: !450, baseType: !138, size: 64, offset: 128)
!454 = !{!455, !456, !457, !458, !459, !460}
!455 = !DILocalVariable(name: "status", arg: 1, scope: !443, file: !436, line: 298, type: !80)
!456 = !DILocalVariable(name: "errnum", arg: 2, scope: !443, file: !436, line: 298, type: !80)
!457 = !DILocalVariable(name: "file_name", arg: 3, scope: !443, file: !436, line: 298, type: !143)
!458 = !DILocalVariable(name: "line_number", arg: 4, scope: !443, file: !436, line: 298, type: !99)
!459 = !DILocalVariable(name: "message", arg: 5, scope: !443, file: !436, line: 298, type: !143)
!460 = !DILocalVariable(name: "args", arg: 6, scope: !443, file: !436, line: 298, type: !446)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "old_line_number", scope: !443, file: !436, line: 305, type: !99, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !436, line: 338, type: !270, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !302, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !436, line: 346, type: !277, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "error_message_count", scope: !435, file: !436, line: 69, type: !99, isLocal: false, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !435, file: !436, line: 295, type: !80, isLocal: false, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !297, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !436, line: 208, type: !153, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !436, line: 214, type: !263, isLocal: true, isDefinition: true)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null}
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !484, line: 164, type: !297, isLocal: true, isDefinition: true)
!484 = !DIFile(filename: "lib/mkdir-p.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35fabba6c7fba2a5201f9ea7f8c0e0d1")
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !484, line: 164, type: !329, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !484, line: 180, type: !277, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !484, line: 189, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 32)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !484, line: 189, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 42)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !484, line: 208, type: !363, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "program_name", scope: !503, file: !504, line: 31, type: !143, isLocal: false, isDefinition: true)
!503 = distinct !DICompileUnit(language: DW_LANG_C11, file: !504, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !505, globals: !506, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!505 = !{!137}
!506 = !{!501, !507, !509}
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !504, line: 46, type: !302, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !504, line: 49, type: !270, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "utf07FF", scope: !513, file: !514, line: 46, type: !541, isLocal: true, isDefinition: true)
!513 = distinct !DISubprogram(name: "proper_name_lite", scope: !514, file: !514, line: 38, type: !515, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !519)
!514 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!515 = !DISubroutineType(types: !516)
!516 = !{!143, !143, !143}
!517 = distinct !DICompileUnit(language: DW_LANG_C11, file: !514, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !518, splitDebugInlining: false, nameTableKind: None)
!518 = !{!511}
!519 = !{!520, !521, !522, !523, !528}
!520 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !513, file: !514, line: 38, type: !143)
!521 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !513, file: !514, line: 38, type: !143)
!522 = !DILocalVariable(name: "translation", scope: !513, file: !514, line: 40, type: !143)
!523 = !DILocalVariable(name: "w", scope: !513, file: !514, line: 47, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !525, line: 37, baseType: !526)
!525 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !98, line: 57, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !99)
!528 = !DILocalVariable(name: "mbs", scope: !513, file: !514, line: 48, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !531)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !533)
!532 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !533, file: !532, line: 15, baseType: !80, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !533, file: !532, line: 20, baseType: !537, size: 32, offset: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !532, line: 16, size: 32, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !537, file: !532, line: 18, baseType: !99, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !537, file: !532, line: 19, baseType: !270, size: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16, elements: !278)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !544, line: 78, type: !302, isLocal: true, isDefinition: true)
!544 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !544, line: 79, type: !19, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !544, line: 80, type: !549, isLocal: true, isDefinition: true)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 13)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !544, line: 81, type: !549, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !544, line: 82, type: !252, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !544, line: 83, type: !277, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !544, line: 84, type: !302, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !544, line: 85, type: !297, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !544, line: 86, type: !297, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !544, line: 87, type: !302, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !568, file: !544, line: 76, type: !640, isLocal: false, isDefinition: true)
!568 = distinct !DICompileUnit(language: DW_LANG_C11, file: !544, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !569, retainedTypes: !575, globals: !576, splitDebugInlining: false, nameTableKind: None)
!569 = !{!122, !570, !107}
!570 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !123, line: 254, baseType: !99, size: 32, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!573 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!574 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!575 = !{!80, !139, !140}
!576 = !{!542, !545, !547, !552, !554, !556, !558, !560, !562, !564, !566, !577, !581, !591, !593, !598, !600, !602, !604, !606, !629, !636, !638}
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !568, file: !544, line: 92, type: !579, isLocal: false, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 320, elements: !65)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !568, file: !544, line: 1040, type: !583, isLocal: false, isDefinition: true)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !544, line: 56, size: 448, elements: !584)
!584 = !{!585, !586, !587, !589, !590}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !583, file: !544, line: 59, baseType: !122, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !544, line: 62, baseType: !80, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !583, file: !544, line: 66, baseType: !588, size: 256, offset: 64)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 256, elements: !303)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !583, file: !544, line: 69, baseType: !143, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !583, file: !544, line: 72, baseType: !143, size: 64, offset: 384)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !568, file: !544, line: 107, type: !583, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "slot0", scope: !568, file: !544, line: 831, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 256)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !544, line: 321, type: !277, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !544, line: 357, type: !277, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !544, line: 358, type: !277, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !544, line: 199, type: !297, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "quote", scope: !608, file: !544, line: 228, type: !627, isLocal: true, isDefinition: true)
!608 = distinct !DISubprogram(name: "gettext_quote", scope: !544, file: !544, line: 197, type: !609, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!143, !143, !122}
!611 = !{!612, !613, !614, !615, !616}
!612 = !DILocalVariable(name: "msgid", arg: 1, scope: !608, file: !544, line: 197, type: !143)
!613 = !DILocalVariable(name: "s", arg: 2, scope: !608, file: !544, line: 197, type: !122)
!614 = !DILocalVariable(name: "translation", scope: !608, file: !544, line: 199, type: !143)
!615 = !DILocalVariable(name: "w", scope: !608, file: !544, line: 229, type: !524)
!616 = !DILocalVariable(name: "mbs", scope: !608, file: !544, line: 230, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !619, file: !532, line: 15, baseType: !80, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !619, file: !532, line: 20, baseType: !623, size: 32, offset: 32)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !532, line: 16, size: 32, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !623, file: !532, line: 18, baseType: !99, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !623, file: !532, line: 19, baseType: !270, size: 32)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !628)
!628 = !{!279, !272}
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "slotvec", scope: !568, file: !544, line: 834, type: !631, isLocal: true, isDefinition: true)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !544, line: 823, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !632, file: !544, line: 825, baseType: !140, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !632, file: !544, line: 826, baseType: !137, size: 64, offset: 64)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "nslots", scope: !568, file: !544, line: 832, type: !80, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "slotvec0", scope: !568, file: !544, line: 833, type: !632, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 704, elements: !642)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!642 = !{!643}
!643 = !DISubrange(count: 11)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 162, type: !647, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "lib/savewd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0cafd16d007fc7abd1f9bf11434952af")
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 19)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !646, line: 162, type: !549, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !646, line: 162, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 480, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 60)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !646, line: 166, type: !277, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !646, line: 223, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 28)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !646, line: 223, type: !666, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 328, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 41)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !646, line: 256, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 18)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !646, line: 256, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 288, elements: !10)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !646, line: 55, type: !277, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !646, line: 106, type: !681, isLocal: true, isDefinition: true)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 280, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 35)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !686, line: 67, type: !373, isLocal: true, isDefinition: true)
!686 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !686, line: 69, type: !297, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !686, line: 83, type: !297, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !686, line: 83, type: !270, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !686, line: 85, type: !277, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !686, line: 88, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 171)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !686, line: 88, type: !702, isLocal: true, isDefinition: true)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 34)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !686, line: 105, type: !168, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !686, line: 109, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 23)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !686, line: 113, type: !661, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !686, line: 120, type: !491, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !686, line: 127, type: !9, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !686, line: 134, type: !324, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !686, line: 142, type: !722, isLocal: true, isDefinition: true)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 44)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !686, line: 150, type: !727, isLocal: true, isDefinition: true)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 48)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !686, line: 159, type: !732, isLocal: true, isDefinition: true)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 52)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !686, line: 170, type: !737, isLocal: true, isDefinition: true)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !655)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !686, line: 248, type: !252, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !686, line: 248, type: !349, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !686, line: 254, type: !252, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !686, line: 254, type: !163, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !686, line: 254, type: !324, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !686, line: 259, type: !3, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !686, line: 259, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 29)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !757, file: !758, line: 26, type: !760, isLocal: false, isDefinition: true)
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!759 = !{!755}
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 376, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 47)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "exit_failure", scope: !765, file: !766, line: 24, type: !768, isLocal: false, isDefinition: true)
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !767, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!767 = !{!763}
!768 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !771, line: 34, type: !286, isLocal: true, isDefinition: true)
!771 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !771, line: 34, type: !297, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !771, line: 34, type: !319, isLocal: true, isDefinition: true)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !778, line: 108, type: !59, isLocal: true, isDefinition: true)
!778 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(name: "internal_state", scope: !781, file: !778, line: 97, type: !784, isLocal: true, isDefinition: true)
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !782, globals: !783, splitDebugInlining: false, nameTableKind: None)
!782 = !{!138, !140, !145}
!783 = !{!776, !779}
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !786, file: !532, line: 15, baseType: !80, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !786, file: !532, line: 20, baseType: !790, size: 32, offset: 32)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !786, file: !532, line: 16, size: 32, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !790, file: !532, line: 18, baseType: !99, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !790, file: !532, line: 19, baseType: !270, size: 32)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !796, line: 35, type: !19, isLocal: true, isDefinition: true)
!796 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !799, file: !800, line: 506, type: !80, isLocal: true, isDefinition: true)
!799 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !800, file: !800, line: 485, type: !801, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !805)
!800 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!801 = !DISubroutineType(types: !802)
!802 = !{!80, !80, !80}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !800, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !804, splitDebugInlining: false, nameTableKind: None)
!804 = !{!797}
!805 = !{!806, !807, !808, !809, !812}
!806 = !DILocalVariable(name: "fd", arg: 1, scope: !799, file: !800, line: 485, type: !80)
!807 = !DILocalVariable(name: "target", arg: 2, scope: !799, file: !800, line: 485, type: !80)
!808 = !DILocalVariable(name: "result", scope: !799, file: !800, line: 487, type: !80)
!809 = !DILocalVariable(name: "flags", scope: !810, file: !800, line: 530, type: !80)
!810 = distinct !DILexicalBlock(scope: !811, file: !800, line: 529, column: 5)
!811 = distinct !DILexicalBlock(scope: !799, file: !800, line: 528, column: 7)
!812 = !DILocalVariable(name: "saved_errno", scope: !813, file: !800, line: 533, type: !80)
!813 = distinct !DILexicalBlock(scope: !814, file: !800, line: 532, column: 9)
!814 = distinct !DILexicalBlock(scope: !810, file: !800, line: 531, column: 11)
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !816, globals: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !{!145}
!817 = !{!408}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !484, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !823, retainedTypes: !838, globals: !839, splitDebugInlining: false, nameTableKind: None)
!823 = !{!824, !834}
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !825, file: !85, line: 45, baseType: !99, size: 32, elements: !100)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !85, line: 42, size: 64, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !825, file: !85, line: 73, baseType: !824, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !825, file: !85, line: 81, baseType: !829, size: 32, offset: 32)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !85, line: 76, size: 32, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !829, file: !85, line: 78, baseType: !80, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !829, file: !85, line: 79, baseType: !80, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !829, file: !85, line: 80, baseType: !95, size: 32)
!834 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 93, baseType: !99, size: 32, elements: !835)
!835 = !{!836, !837}
!836 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1)
!837 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2)
!838 = !{!146, !148}
!839 = !{!482, !485, !487, !489, !494, !499}
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !842, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!842 = !{!843}
!843 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !841, line: 78, baseType: !99, size: 32, elements: !844)
!844 = !{!845, !846, !847, !848}
!845 = !DIEnumerator(name: "MODE_DONE", value: 0)
!846 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!847 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!848 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !850, globals: !861, splitDebugInlining: false, nameTableKind: None)
!850 = !{!851, !834}
!851 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !852, file: !85, line: 45, baseType: !99, size: 32, elements: !100)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !85, line: 42, size: 64, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !852, file: !85, line: 73, baseType: !851, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !852, file: !85, line: 81, baseType: !856, size: 32, offset: 32)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !85, line: 76, size: 32, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !856, file: !85, line: 78, baseType: !80, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !856, file: !85, line: 79, baseType: !80, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !856, file: !85, line: 80, baseType: !95, size: 32)
!861 = !{!644, !650, !652, !657, !659, !664, !669, !674, !677, !679}
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !863, retainedTypes: !867, globals: !868, splitDebugInlining: false, nameTableKind: None)
!863 = !{!864}
!864 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !686, line: 40, baseType: !99, size: 32, elements: !865)
!865 = !{!866}
!866 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!867 = !{!138}
!868 = !{!684, !687, !689, !691, !693, !695, !700, !705, !707, !712, !714, !716, !718, !720, !725, !730, !735, !738, !740, !742, !744, !746, !748, !750}
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !870, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !871, retainedTypes: !902, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!871 = !{!872, !884}
!872 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !873, file: !870, line: 188, baseType: !99, size: 32, elements: !882)
!873 = distinct !DISubprogram(name: "x2nrealloc", scope: !870, file: !870, line: 176, type: !874, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !877)
!874 = !DISubroutineType(types: !875)
!875 = !{!138, !138, !876, !140}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!877 = !{!878, !879, !880, !881}
!878 = !DILocalVariable(name: "p", arg: 1, scope: !873, file: !870, line: 176, type: !138)
!879 = !DILocalVariable(name: "pn", arg: 2, scope: !873, file: !870, line: 176, type: !876)
!880 = !DILocalVariable(name: "s", arg: 3, scope: !873, file: !870, line: 176, type: !140)
!881 = !DILocalVariable(name: "n", scope: !873, file: !870, line: 178, type: !140)
!882 = !{!883}
!883 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!884 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !885, file: !870, line: 228, baseType: !99, size: 32, elements: !882)
!885 = distinct !DISubprogram(name: "xpalloc", scope: !870, file: !870, line: 223, type: !886, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !892)
!886 = !DISubroutineType(types: !887)
!887 = !{!138, !138, !888, !889, !891, !889}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !890, line: 130, baseType: !891)
!890 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !141, line: 35, baseType: !231)
!892 = !{!893, !894, !895, !896, !897, !898, !899, !900, !901}
!893 = !DILocalVariable(name: "pa", arg: 1, scope: !885, file: !870, line: 223, type: !138)
!894 = !DILocalVariable(name: "pn", arg: 2, scope: !885, file: !870, line: 223, type: !888)
!895 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !885, file: !870, line: 223, type: !889)
!896 = !DILocalVariable(name: "n_max", arg: 4, scope: !885, file: !870, line: 223, type: !891)
!897 = !DILocalVariable(name: "s", arg: 5, scope: !885, file: !870, line: 223, type: !889)
!898 = !DILocalVariable(name: "n0", scope: !885, file: !870, line: 230, type: !889)
!899 = !DILocalVariable(name: "n", scope: !885, file: !870, line: 237, type: !889)
!900 = !DILocalVariable(name: "nbytes", scope: !885, file: !870, line: 248, type: !889)
!901 = !DILocalVariable(name: "adjusted_nbytes", scope: !885, file: !870, line: 252, type: !889)
!902 = !{!137, !138, !191, !231, !142}
!903 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !904, splitDebugInlining: false, nameTableKind: None)
!904 = !{!769, !772, !774}
!905 = distinct !DICompileUnit(language: DW_LANG_C11, file: !906, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!906 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!907 = distinct !DICompileUnit(language: DW_LANG_C11, file: !908, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!908 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!909 = distinct !DICompileUnit(language: DW_LANG_C11, file: !910, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!910 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !867, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !914, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !867, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!915 = distinct !DICompileUnit(language: DW_LANG_C11, file: !916, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !917, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6b54240f33d18f510b92d67eeccd60e")
!917 = !{!918, !834}
!918 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !919, file: !85, line: 45, baseType: !99, size: 32, elements: !100)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !85, line: 42, size: 64, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !919, file: !85, line: 73, baseType: !918, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !919, file: !85, line: 81, baseType: !923, size: 32, offset: 32)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !85, line: 76, size: 32, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !923, file: !85, line: 78, baseType: !80, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !923, file: !85, line: 79, baseType: !80, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !923, file: !85, line: 80, baseType: !95, size: 32)
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !930, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/dirchownmod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b1a0bf6d4e9295f75572be521597aa1e")
!930 = !{!146, !148, !931}
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !96, line: 69, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !98, line: 150, baseType: !99)
!933 = distinct !DICompileUnit(language: DW_LANG_C11, file: !934, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !935, splitDebugInlining: false, nameTableKind: None)
!934 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!935 = !{!191, !142, !138}
!936 = distinct !DICompileUnit(language: DW_LANG_C11, file: !937, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!937 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!938 = distinct !DICompileUnit(language: DW_LANG_C11, file: !796, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !939, splitDebugInlining: false, nameTableKind: None)
!939 = !{!940, !794}
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !796, line: 35, type: !277, isLocal: true, isDefinition: true)
!942 = distinct !DICompileUnit(language: DW_LANG_C11, file: !943, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!943 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!944 = distinct !DICompileUnit(language: DW_LANG_C11, file: !945, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !867, splitDebugInlining: false, nameTableKind: None)
!945 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!946 = distinct !DICompileUnit(language: DW_LANG_C11, file: !947, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!947 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!948 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!949 = !{i32 7, !"Dwarf Version", i32 5}
!950 = !{i32 2, !"Debug Info Version", i32 3}
!951 = !{i32 1, !"wchar_size", i32 4}
!952 = !{i32 8, !"PIC Level", i32 2}
!953 = !{i32 7, !"PIE Level", i32 2}
!954 = !{i32 7, !"uwtable", i32 2}
!955 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 51, type: !956, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !80}
!958 = !{!959}
!959 = !DILocalVariable(name: "status", arg: 1, scope: !955, file: !2, line: 51, type: !80)
!960 = !DILocation(line: 0, scope: !955)
!961 = !DILocation(line: 53, column: 14, scope: !962)
!962 = distinct !DILexicalBlock(scope: !955, file: !2, line: 53, column: 7)
!963 = !DILocation(line: 53, column: 7, scope: !955)
!964 = !DILocation(line: 54, column: 5, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !2, line: 54, column: 5)
!966 = !{!967, !967, i64 0}
!967 = !{!"any pointer", !968, i64 0}
!968 = !{!"omnipotent char", !969, i64 0}
!969 = !{!"Simple C/C++ TBAA"}
!970 = !DILocation(line: 57, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !962, file: !2, line: 56, column: 5)
!972 = !DILocation(line: 58, column: 7, scope: !971)
!973 = !DILocation(line: 736, column: 3, scope: !974, inlinedAt: !976)
!974 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !79, file: !79, line: 734, type: !480, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !975)
!975 = !{}
!976 = distinct !DILocation(line: 62, column: 7, scope: !971)
!977 = !DILocation(line: 64, column: 7, scope: !971)
!978 = !DILocation(line: 68, column: 7, scope: !971)
!979 = !DILocation(line: 73, column: 7, scope: !971)
!980 = !DILocation(line: 77, column: 7, scope: !971)
!981 = !DILocation(line: 82, column: 7, scope: !971)
!982 = !DILocation(line: 87, column: 7, scope: !971)
!983 = !DILocation(line: 88, column: 7, scope: !971)
!984 = !DILocalVariable(name: "program", arg: 1, scope: !985, file: !79, line: 836, type: !143)
!985 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !79, file: !79, line: 836, type: !986, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !143}
!988 = !{!984, !989, !996, !997, !999, !1000}
!989 = !DILocalVariable(name: "infomap", scope: !985, file: !79, line: 838, type: !990)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 896, elements: !298)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !985, file: !79, line: 838, size: 128, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !992, file: !79, line: 838, baseType: !143, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !992, file: !79, line: 838, baseType: !143, size: 64, offset: 64)
!996 = !DILocalVariable(name: "node", scope: !985, file: !79, line: 848, type: !143)
!997 = !DILocalVariable(name: "map_prog", scope: !985, file: !79, line: 849, type: !998)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!999 = !DILocalVariable(name: "lc_messages", scope: !985, file: !79, line: 861, type: !143)
!1000 = !DILocalVariable(name: "url_program", scope: !985, file: !79, line: 874, type: !143)
!1001 = !DILocation(line: 0, scope: !985, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 89, column: 7, scope: !971)
!1003 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1002)
!1004 = !DILocation(line: 861, column: 29, scope: !985, inlinedAt: !1002)
!1005 = !DILocation(line: 862, column: 7, scope: !1006, inlinedAt: !1002)
!1006 = distinct !DILexicalBlock(scope: !985, file: !79, line: 862, column: 7)
!1007 = !DILocation(line: 862, column: 19, scope: !1006, inlinedAt: !1002)
!1008 = !DILocation(line: 862, column: 22, scope: !1006, inlinedAt: !1002)
!1009 = !DILocation(line: 862, column: 7, scope: !985, inlinedAt: !1002)
!1010 = !DILocation(line: 868, column: 7, scope: !1011, inlinedAt: !1002)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !79, line: 863, column: 5)
!1012 = !DILocation(line: 870, column: 5, scope: !1011, inlinedAt: !1002)
!1013 = !DILocation(line: 875, column: 3, scope: !985, inlinedAt: !1002)
!1014 = !DILocation(line: 877, column: 3, scope: !985, inlinedAt: !1002)
!1015 = !DILocation(line: 91, column: 3, scope: !955)
!1016 = !DISubprogram(name: "dcgettext", scope: !1017, file: !1017, line: 51, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1017 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!137, !143, !143, !80}
!1020 = !DISubprogram(name: "__fprintf_chk", scope: !1021, file: !1021, line: 93, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1021 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!80, !1024, !80, !1025, null}
!1024 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!1025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!1026 = !DISubprogram(name: "__printf_chk", scope: !1021, file: !1021, line: 95, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!80, !80, !1025, null}
!1029 = !DISubprogram(name: "fputs_unlocked", scope: !1030, file: !1030, line: 691, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1030 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!80, !1025, !1024}
!1033 = !DILocation(line: 0, scope: !181)
!1034 = !DILocation(line: 581, column: 7, scope: !189)
!1035 = !{!1036, !1036, i64 0}
!1036 = !{!"int", !968, i64 0}
!1037 = !DILocation(line: 581, column: 19, scope: !189)
!1038 = !DILocation(line: 581, column: 7, scope: !181)
!1039 = !DILocation(line: 585, column: 26, scope: !188)
!1040 = !DILocation(line: 0, scope: !188)
!1041 = !DILocation(line: 586, column: 23, scope: !188)
!1042 = !DILocation(line: 586, column: 28, scope: !188)
!1043 = !DILocation(line: 586, column: 32, scope: !188)
!1044 = !{!968, !968, i64 0}
!1045 = !DILocation(line: 586, column: 38, scope: !188)
!1046 = !DILocalVariable(name: "__s1", arg: 1, scope: !1047, file: !1048, line: 1359, type: !143)
!1047 = distinct !DISubprogram(name: "streq", scope: !1048, file: !1048, line: 1359, type: !1049, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1051)
!1048 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!191, !143, !143}
!1051 = !{!1046, !1052}
!1052 = !DILocalVariable(name: "__s2", arg: 2, scope: !1047, file: !1048, line: 1359, type: !143)
!1053 = !DILocation(line: 0, scope: !1047, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 586, column: 41, scope: !188)
!1055 = !DILocation(line: 1361, column: 11, scope: !1047, inlinedAt: !1054)
!1056 = !DILocation(line: 1361, column: 10, scope: !1047, inlinedAt: !1054)
!1057 = !DILocation(line: 586, column: 19, scope: !188)
!1058 = !DILocation(line: 587, column: 5, scope: !188)
!1059 = !DILocation(line: 588, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !181, file: !79, line: 588, column: 7)
!1061 = !DILocation(line: 588, column: 7, scope: !181)
!1062 = !DILocation(line: 590, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !79, line: 589, column: 5)
!1064 = !DILocation(line: 591, column: 7, scope: !1063)
!1065 = !DILocation(line: 595, column: 37, scope: !181)
!1066 = !DILocation(line: 595, column: 35, scope: !181)
!1067 = !DILocation(line: 596, column: 29, scope: !181)
!1068 = !DILocation(line: 597, column: 8, scope: !197)
!1069 = !DILocation(line: 597, column: 7, scope: !181)
!1070 = !DILocation(line: 604, column: 24, scope: !196)
!1071 = !DILocation(line: 604, column: 12, scope: !197)
!1072 = !DILocation(line: 0, scope: !195)
!1073 = !DILocation(line: 610, column: 16, scope: !195)
!1074 = !DILocation(line: 610, column: 7, scope: !195)
!1075 = !DILocation(line: 611, column: 21, scope: !195)
!1076 = !{!1077, !1077, i64 0}
!1077 = !{!"short", !968, i64 0}
!1078 = !DILocation(line: 611, column: 19, scope: !195)
!1079 = !DILocation(line: 611, column: 16, scope: !195)
!1080 = !DILocation(line: 610, column: 30, scope: !195)
!1081 = distinct !{!1081, !1074, !1075, !1082}
!1082 = !{!"llvm.loop.mustprogress"}
!1083 = !DILocation(line: 612, column: 18, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !195, file: !79, line: 612, column: 11)
!1085 = !DILocation(line: 612, column: 11, scope: !195)
!1086 = !DILocation(line: 618, column: 5, scope: !195)
!1087 = !DILocation(line: 620, column: 23, scope: !181)
!1088 = !DILocation(line: 625, column: 39, scope: !181)
!1089 = !DILocation(line: 626, column: 3, scope: !181)
!1090 = !DILocation(line: 626, column: 10, scope: !181)
!1091 = !DILocation(line: 626, column: 21, scope: !181)
!1092 = !DILocation(line: 628, column: 44, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !79, line: 628, column: 11)
!1094 = distinct !DILexicalBlock(scope: !181, file: !79, line: 627, column: 5)
!1095 = !DILocation(line: 628, column: 32, scope: !1093)
!1096 = !DILocation(line: 628, column: 49, scope: !1093)
!1097 = !DILocation(line: 628, column: 11, scope: !1094)
!1098 = !DILocation(line: 630, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !79, line: 630, column: 11)
!1100 = !DILocation(line: 630, column: 11, scope: !1094)
!1101 = !DILocation(line: 632, column: 26, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !79, line: 632, column: 15)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !79, line: 631, column: 9)
!1104 = !DILocation(line: 632, column: 34, scope: !1102)
!1105 = !DILocation(line: 632, column: 37, scope: !1102)
!1106 = !DILocation(line: 632, column: 15, scope: !1103)
!1107 = !DILocation(line: 636, column: 16, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !79, line: 636, column: 15)
!1109 = !DILocation(line: 636, column: 29, scope: !1108)
!1110 = !DILocation(line: 640, column: 16, scope: !1094)
!1111 = distinct !{!1111, !1089, !1112, !1082}
!1112 = !DILocation(line: 641, column: 5, scope: !181)
!1113 = !DILocation(line: 644, column: 3, scope: !181)
!1114 = !DILocation(line: 0, scope: !1047, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 648, column: 31, scope: !181)
!1116 = !DILocation(line: 0, scope: !1047, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 649, column: 31, scope: !181)
!1118 = !DILocation(line: 0, scope: !1047, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 650, column: 31, scope: !181)
!1120 = !DILocation(line: 0, scope: !1047, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 651, column: 31, scope: !181)
!1122 = !DILocation(line: 0, scope: !1047, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 652, column: 31, scope: !181)
!1124 = !DILocation(line: 0, scope: !1047, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 653, column: 31, scope: !181)
!1126 = !DILocation(line: 0, scope: !1047, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 654, column: 31, scope: !181)
!1128 = !DILocation(line: 0, scope: !1047, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 655, column: 31, scope: !181)
!1130 = !DILocation(line: 0, scope: !1047, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 656, column: 31, scope: !181)
!1132 = !DILocation(line: 0, scope: !1047, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 657, column: 31, scope: !181)
!1134 = !DILocation(line: 663, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !181, file: !79, line: 663, column: 7)
!1136 = !DILocation(line: 664, column: 7, scope: !1135)
!1137 = !DILocation(line: 664, column: 10, scope: !1135)
!1138 = !DILocation(line: 663, column: 7, scope: !181)
!1139 = !DILocation(line: 669, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !79, line: 665, column: 5)
!1141 = !DILocation(line: 671, column: 5, scope: !1140)
!1142 = !DILocation(line: 676, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1135, file: !79, line: 673, column: 5)
!1144 = !DILocation(line: 679, column: 3, scope: !181)
!1145 = !DILocation(line: 683, column: 3, scope: !181)
!1146 = !DILocation(line: 686, column: 3, scope: !181)
!1147 = !DILocation(line: 688, column: 3, scope: !181)
!1148 = !DILocation(line: 691, column: 3, scope: !181)
!1149 = !DILocation(line: 695, column: 3, scope: !181)
!1150 = !DILocation(line: 696, column: 1, scope: !181)
!1151 = !DISubprogram(name: "setlocale", scope: !1152, file: !1152, line: 122, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1152 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!137, !80, !143}
!1155 = !DISubprogram(name: "strncmp", scope: !1156, file: !1156, line: 159, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1156 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!80, !143, !143, !140}
!1159 = !DISubprogram(name: "exit", scope: !1160, file: !1160, line: 624, type: !956, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1160 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1161 = !DISubprogram(name: "getenv", scope: !1160, file: !1160, line: 641, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!137, !143}
!1164 = !DISubprogram(name: "strcmp", scope: !1156, file: !1156, line: 156, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!80, !143, !143}
!1167 = !DISubprogram(name: "strspn", scope: !1156, file: !1156, line: 297, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!142, !143, !143}
!1170 = !DISubprogram(name: "strchr", scope: !1156, file: !1156, line: 246, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!137, !143, !80}
!1173 = !DISubprogram(name: "__ctype_b_loc", scope: !108, file: !108, line: 79, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1179 = !DISubprogram(name: "strcspn", scope: !1156, file: !1156, line: 293, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1180 = !DISubprogram(name: "fwrite_unlocked", scope: !1030, file: !1030, line: 704, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!140, !1183, !140, !140, !1024}
!1183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1186 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 202, type: !1187, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1190)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!80, !80, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1212, !1215, !1218}
!1191 = !DILocalVariable(name: "argc", arg: 1, scope: !1186, file: !2, line: 202, type: !80)
!1192 = !DILocalVariable(name: "argv", arg: 2, scope: !1186, file: !2, line: 202, type: !1189)
!1193 = !DILocalVariable(name: "specified_mode", scope: !1186, file: !2, line: 204, type: !143)
!1194 = !DILocalVariable(name: "optc", scope: !1186, file: !2, line: 205, type: !80)
!1195 = !DILocalVariable(name: "scontext", scope: !1186, file: !2, line: 206, type: !143)
!1196 = !DILocalVariable(name: "options", scope: !1186, file: !2, line: 207, type: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !2, line: 95, size: 320, elements: !1198)
!1198 = !{!1199, !1203, !1204, !1205, !1206, !1207, !1211}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !1197, file: !2, line: 99, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!80, !143, !143, !138}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !1197, file: !2, line: 102, baseType: !931, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !1197, file: !2, line: 105, baseType: !931, size: 32, offset: 96)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1197, file: !2, line: 108, baseType: !931, size: 32, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !1197, file: !2, line: 111, baseType: !931, size: 32, offset: 160)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !1197, file: !2, line: 114, baseType: !1208, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1210, line: 53, flags: DIFlagFwdDecl)
!1210 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !1197, file: !2, line: 117, baseType: !143, size: 64, offset: 256)
!1212 = !DILocalVariable(name: "ret", scope: !1213, file: !2, line: 279, type: !80)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 278, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 277, column: 7)
!1215 = !DILocalVariable(name: "umask_value", scope: !1216, file: !2, line: 294, type: !931)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 293, column: 5)
!1217 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 292, column: 7)
!1218 = !DILocalVariable(name: "change", scope: !1219, file: !2, line: 299, type: !1221)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 298, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 297, column: 11)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1223, line: 35, flags: DIFlagFwdDecl)
!1223 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1224 = !DILocation(line: 0, scope: !1186)
!1225 = !DILocation(line: 207, column: 3, scope: !1186)
!1226 = !DILocation(line: 207, column: 24, scope: !1186)
!1227 = !DILocation(line: 210, column: 11, scope: !1186)
!1228 = !DILocation(line: 210, column: 16, scope: !1186)
!1229 = !{!1230, !1036, i64 16}
!1230 = !{!"mkdir_options", !967, i64 0, !1036, i64 8, !1036, i64 12, !1036, i64 16, !1036, i64 20, !967, i64 24, !967, i64 32}
!1231 = !DILocation(line: 211, column: 11, scope: !1186)
!1232 = !DILocation(line: 212, column: 11, scope: !1186)
!1233 = !DILocation(line: 212, column: 36, scope: !1186)
!1234 = !DILocation(line: 216, column: 21, scope: !1186)
!1235 = !DILocation(line: 216, column: 3, scope: !1186)
!1236 = !DILocation(line: 217, column: 3, scope: !1186)
!1237 = !DILocation(line: 218, column: 3, scope: !1186)
!1238 = !DILocation(line: 219, column: 3, scope: !1186)
!1239 = !DILocation(line: 221, column: 3, scope: !1186)
!1240 = !DILocation(line: 223, column: 3, scope: !1186)
!1241 = !DILocation(line: 223, column: 18, scope: !1186)
!1242 = distinct !{!1242, !1240, !1243, !1082}
!1243 = !DILocation(line: 266, column: 5, scope: !1186)
!1244 = !DILocation(line: 231, column: 28, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 226, column: 9)
!1246 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 224, column: 5)
!1247 = !DILocation(line: 232, column: 11, scope: !1245)
!1248 = !DILocation(line: 234, column: 46, scope: !1245)
!1249 = !DILocation(line: 235, column: 11, scope: !1245)
!1250 = !DILocation(line: 254, column: 20, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 254, column: 20)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 242, column: 20)
!1253 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 237, column: 15)
!1254 = !DILocation(line: 254, column: 20, scope: !1252)
!1255 = !DILocation(line: 256, column: 15, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 255, column: 13)
!1257 = !DILocation(line: 259, column: 13, scope: !1256)
!1258 = !DILocation(line: 261, column: 9, scope: !1245)
!1259 = !DILocation(line: 262, column: 9, scope: !1245)
!1260 = !DILocation(line: 264, column: 11, scope: !1245)
!1261 = !DILocation(line: 234, column: 44, scope: !1245)
!1262 = !{!1230, !967, i64 32}
!1263 = !DILocation(line: 228, column: 42, scope: !1245)
!1264 = !{!1230, !967, i64 0}
!1265 = !DILocation(line: 268, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 268, column: 7)
!1267 = !DILocation(line: 268, column: 14, scope: !1266)
!1268 = !DILocation(line: 268, column: 7, scope: !1186)
!1269 = !DILocation(line: 270, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 269, column: 5)
!1271 = !DILocation(line: 271, column: 7, scope: !1270)
!1272 = !DILocation(line: 292, column: 38, scope: !1217)
!1273 = !DILocation(line: 294, column: 28, scope: !1216)
!1274 = !DILocation(line: 0, scope: !1216)
!1275 = !DILocation(line: 295, column: 44, scope: !1216)
!1276 = !DILocation(line: 295, column: 15, scope: !1216)
!1277 = !DILocation(line: 295, column: 30, scope: !1216)
!1278 = !{!1230, !1036, i64 8}
!1279 = !DILocation(line: 297, column: 11, scope: !1216)
!1280 = !DILocation(line: 299, column: 40, scope: !1219)
!1281 = !DILocation(line: 0, scope: !1219)
!1282 = !DILocation(line: 300, column: 16, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 300, column: 15)
!1284 = !DILocation(line: 300, column: 15, scope: !1219)
!1285 = !DILocation(line: 301, column: 13, scope: !1283)
!1286 = !DILocation(line: 303, column: 26, scope: !1219)
!1287 = !DILocation(line: 303, column: 24, scope: !1219)
!1288 = !DILocation(line: 305, column: 46, scope: !1219)
!1289 = !DILocation(line: 305, column: 44, scope: !1219)
!1290 = !DILocation(line: 305, column: 19, scope: !1219)
!1291 = !DILocation(line: 305, column: 30, scope: !1219)
!1292 = !{!1230, !1036, i64 12}
!1293 = !DILocation(line: 306, column: 11, scope: !1219)
!1294 = !DILocation(line: 307, column: 9, scope: !1219)
!1295 = !DILocation(line: 310, column: 24, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 309, column: 9)
!1297 = !DILocation(line: 311, column: 19, scope: !1296)
!1298 = !DILocation(line: 311, column: 30, scope: !1296)
!1299 = !DILocation(line: 314, column: 22, scope: !1216)
!1300 = !DILocation(line: 314, column: 7, scope: !1216)
!1301 = !DILocation(line: 317, column: 39, scope: !1186)
!1302 = !DILocation(line: 315, column: 5, scope: !1216)
!1303 = !DILocation(line: 317, column: 37, scope: !1186)
!1304 = !DILocation(line: 317, column: 52, scope: !1186)
!1305 = !DILocation(line: 317, column: 10, scope: !1186)
!1306 = !DILocation(line: 319, column: 1, scope: !1186)
!1307 = !DILocation(line: 317, column: 3, scope: !1186)
!1308 = !DISubprogram(name: "bindtextdomain", scope: !1017, file: !1017, line: 86, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!137, !143, !143}
!1311 = !DISubprogram(name: "textdomain", scope: !1017, file: !1017, line: 82, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1312 = !DISubprogram(name: "atexit", scope: !1160, file: !1160, line: 602, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!80, !479}
!1315 = distinct !DISubprogram(name: "make_ancestor", scope: !2, file: !2, line: 135, type: !1201, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1323, !1324}
!1317 = !DILocalVariable(name: "dir", arg: 1, scope: !1315, file: !2, line: 135, type: !143)
!1318 = !DILocalVariable(name: "component", arg: 2, scope: !1315, file: !2, line: 135, type: !143)
!1319 = !DILocalVariable(name: "options", arg: 3, scope: !1315, file: !2, line: 135, type: !138)
!1320 = !DILocalVariable(name: "o", scope: !1315, file: !2, line: 137, type: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1323 = !DILocalVariable(name: "r", scope: !1315, file: !2, line: 147, type: !80)
!1324 = !DILocalVariable(name: "mkdir_errno", scope: !1325, file: !2, line: 150, type: !80)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 149, column: 5)
!1326 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 148, column: 7)
!1327 = !DILocation(line: 0, scope: !1315)
!1328 = !DILocation(line: 139, column: 10, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 139, column: 7)
!1330 = !{!1230, !967, i64 24}
!1331 = !DILocation(line: 139, column: 7, scope: !1329)
!1332 = !DILocation(line: 140, column: 7, scope: !1329)
!1333 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1334, file: !1335, line: 49, type: !1208)
!1334 = distinct !DISubprogram(name: "defaultcon", scope: !1335, file: !1335, line: 49, type: !1336, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1338)
!1335 = !DIFile(filename: "src/selinux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!80, !1208, !143, !931}
!1338 = !{!1333, !1339, !1340}
!1339 = !DILocalVariable(name: "path", arg: 2, scope: !1334, file: !1335, line: 50, type: !143)
!1340 = !DILocalVariable(name: "mode", arg: 3, scope: !1334, file: !1335, line: 50, type: !931)
!1341 = !DILocation(line: 0, scope: !1334, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 140, column: 10, scope: !1329)
!1343 = !DILocation(line: 51, column: 3, scope: !1334, inlinedAt: !1342)
!1344 = !DILocation(line: 51, column: 9, scope: !1334, inlinedAt: !1342)
!1345 = !DILocation(line: 139, column: 7, scope: !1315)
!1346 = !DILocation(line: 145, column: 10, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 145, column: 7)
!1348 = !DILocation(line: 145, column: 31, scope: !1347)
!1349 = !DILocation(line: 145, column: 25, scope: !1347)
!1350 = !DILocation(line: 145, column: 7, scope: !1315)
!1351 = !DILocation(line: 146, column: 5, scope: !1347)
!1352 = !DILocation(line: 147, column: 11, scope: !1315)
!1353 = !DILocation(line: 148, column: 10, scope: !1326)
!1354 = !DILocation(line: 148, column: 31, scope: !1326)
!1355 = !DILocation(line: 148, column: 25, scope: !1326)
!1356 = !DILocation(line: 148, column: 7, scope: !1315)
!1357 = !DILocation(line: 150, column: 25, scope: !1325)
!1358 = !DILocation(line: 0, scope: !1325)
!1359 = !DILocation(line: 151, column: 7, scope: !1325)
!1360 = !DILocation(line: 152, column: 13, scope: !1325)
!1361 = !DILocation(line: 153, column: 5, scope: !1325)
!1362 = !DILocation(line: 154, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 154, column: 7)
!1364 = !DILocation(line: 154, column: 7, scope: !1315)
!1365 = !DILocation(line: 156, column: 15, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 155, column: 5)
!1367 = !DILocation(line: 156, column: 41, scope: !1366)
!1368 = !DILocalVariable(name: "dir", arg: 1, scope: !1369, file: !2, line: 122, type: !143)
!1369 = distinct !DISubprogram(name: "announce_mkdir", scope: !2, file: !2, line: 122, type: !1370, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1372)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !143, !138}
!1372 = !{!1368, !1373, !1374}
!1373 = !DILocalVariable(name: "options", arg: 2, scope: !1369, file: !2, line: 122, type: !138)
!1374 = !DILocalVariable(name: "o", scope: !1369, file: !2, line: 124, type: !1321)
!1375 = !DILocation(line: 0, scope: !1369, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 157, column: 7, scope: !1366)
!1377 = !DILocation(line: 125, column: 10, scope: !1378, inlinedAt: !1376)
!1378 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 125, column: 7)
!1379 = !DILocation(line: 125, column: 7, scope: !1378, inlinedAt: !1376)
!1380 = !DILocation(line: 125, column: 7, scope: !1369, inlinedAt: !1376)
!1381 = !DILocation(line: 126, column: 19, scope: !1378, inlinedAt: !1376)
!1382 = !DILocation(line: 126, column: 56, scope: !1378, inlinedAt: !1376)
!1383 = !DILocation(line: 126, column: 5, scope: !1378, inlinedAt: !1376)
!1384 = !DILocation(line: 159, column: 3, scope: !1315)
!1385 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!80, !80, !1388, !143, !1390, !406}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1391 = !DISubprogram(name: "umask", scope: !1392, file: !1392, line: 380, type: !1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!932, !932}
!1395 = !DISubprogram(name: "free", scope: !1160, file: !1160, line: 555, type: !1396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !138}
!1398 = distinct !DISubprogram(name: "process_dir", scope: !2, file: !2, line: 164, type: !1399, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1402)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!80, !137, !1401, !138}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1402 = !{!1403, !1404, !1405, !1406, !1407}
!1403 = !DILocalVariable(name: "dir", arg: 1, scope: !1398, file: !2, line: 164, type: !137)
!1404 = !DILocalVariable(name: "wd", arg: 2, scope: !1398, file: !2, line: 164, type: !1401)
!1405 = !DILocalVariable(name: "options", arg: 3, scope: !1398, file: !2, line: 164, type: !138)
!1406 = !DILocalVariable(name: "o", scope: !1398, file: !2, line: 166, type: !1321)
!1407 = !DILocalVariable(name: "ret", scope: !1398, file: !2, line: 178, type: !80)
!1408 = !DILocation(line: 0, scope: !1398)
!1409 = !DILocation(line: 169, column: 10, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 169, column: 7)
!1411 = !DILocation(line: 169, column: 7, scope: !1410)
!1412 = !DILocation(line: 169, column: 7, scope: !1398)
!1413 = !DILocation(line: 0, scope: !1334, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 172, column: 14, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 171, column: 11)
!1416 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 170, column: 5)
!1417 = !DILocation(line: 51, column: 3, scope: !1334, inlinedAt: !1414)
!1418 = !DILocation(line: 51, column: 9, scope: !1334, inlinedAt: !1414)
!1419 = !DILocation(line: 171, column: 11, scope: !1416)
!1420 = !DILocation(line: 178, column: 44, scope: !1398)
!1421 = !DILocation(line: 179, column: 35, scope: !1398)
!1422 = !DILocation(line: 180, column: 35, scope: !1398)
!1423 = !{!1230, !1036, i64 20}
!1424 = !DILocation(line: 178, column: 14, scope: !1398)
!1425 = !DILocation(line: 189, column: 27, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 189, column: 7)
!1427 = !DILocation(line: 189, column: 33, scope: !1426)
!1428 = !DILocation(line: 189, column: 30, scope: !1426)
!1429 = !DILocation(line: 190, column: 7, scope: !1426)
!1430 = !DILocation(line: 190, column: 13, scope: !1426)
!1431 = !DILocation(line: 190, column: 10, scope: !1426)
!1432 = !DILocation(line: 189, column: 7, scope: !1398)
!1433 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1434, file: !1335, line: 44, type: !1208)
!1434 = distinct !DISubprogram(name: "restorecon", scope: !1335, file: !1335, line: 44, type: !1435, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!191, !1208, !143, !191}
!1437 = !{!1433, !1438, !1439}
!1438 = !DILocalVariable(name: "path", arg: 2, scope: !1434, file: !1335, line: 45, type: !143)
!1439 = !DILocalVariable(name: "recurse", arg: 3, scope: !1434, file: !1335, line: 45, type: !191)
!1440 = !DILocation(line: 0, scope: !1434, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 192, column: 13, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 192, column: 11)
!1443 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 191, column: 5)
!1444 = !DILocation(line: 46, column: 3, scope: !1434, inlinedAt: !1441)
!1445 = !DILocation(line: 46, column: 9, scope: !1434, inlinedAt: !1441)
!1446 = !DILocation(line: 192, column: 11, scope: !1443)
!1447 = !DILocation(line: 198, column: 3, scope: !1398)
!1448 = !DISubprogram(name: "__errno_location", scope: !1449, file: !1449, line: 37, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1449 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!406}
!1452 = !DILocation(line: 0, scope: !1369)
!1453 = !DILocation(line: 125, column: 10, scope: !1378)
!1454 = !DILocation(line: 125, column: 7, scope: !1378)
!1455 = !DILocation(line: 125, column: 7, scope: !1369)
!1456 = !DILocation(line: 126, column: 19, scope: !1378)
!1457 = !DILocation(line: 126, column: 56, scope: !1378)
!1458 = !DILocation(line: 126, column: 5, scope: !1378)
!1459 = !DILocation(line: 127, column: 1, scope: !1369)
!1460 = !DISubprogram(name: "mkdir", scope: !1392, file: !1392, line: 389, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!80, !143, !932}
!1463 = distinct !DISubprogram(name: "prog_fprintf", scope: !410, file: !410, line: 28, type: !1464, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !1500)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1466, !143, null}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1468, file: !208, line: 51, baseType: !80, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1468, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1468, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1468, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1468, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1468, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1468, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1468, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1468, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1468, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1468, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1468, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1468, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1468, file: !208, line: 70, baseType: !1484, size: 64, offset: 832)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1468, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1468, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1468, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1468, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1468, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1468, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1468, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1468, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1468, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1468, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1468, file: !208, line: 93, baseType: !1484, size: 64, offset: 1344)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1468, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1468, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1468, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1468, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1500 = !{!1501, !1502, !1503}
!1501 = !DILocalVariable(name: "fp", arg: 1, scope: !1463, file: !410, line: 28, type: !1466)
!1502 = !DILocalVariable(name: "fmt", arg: 2, scope: !1463, file: !410, line: 28, type: !143)
!1503 = !DILocalVariable(name: "ap", scope: !1463, file: !410, line: 30, type: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1030, line: 52, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1506, line: 14, baseType: !1507)
!1506 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1508, baseType: !1509)
!1508 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src")
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1510, size: 192, elements: !60)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1510, file: !1508, line: 30, baseType: !99, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1510, file: !1508, line: 30, baseType: !99, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1510, file: !1508, line: 30, baseType: !138, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1510, file: !1508, line: 30, baseType: !138, size: 64, offset: 128)
!1516 = !DILocation(line: 0, scope: !1463)
!1517 = !DILocation(line: 30, column: 3, scope: !1463)
!1518 = !DILocation(line: 30, column: 11, scope: !1463)
!1519 = !DILocation(line: 31, column: 3, scope: !1463)
!1520 = !DILocation(line: 32, column: 3, scope: !1463)
!1521 = !DILocation(line: 33, column: 3, scope: !1463)
!1522 = !DILocalVariable(name: "__stream", arg: 1, scope: !1523, file: !1021, line: 132, type: !1526)
!1523 = distinct !DISubprogram(name: "vfprintf", scope: !1021, file: !1021, line: 132, type: !1524, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !1528)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!80, !1526, !1025, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1466)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1528 = !{!1522, !1529, !1530}
!1529 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1523, file: !1021, line: 133, type: !1025)
!1530 = !DILocalVariable(name: "__ap", arg: 3, scope: !1523, file: !1021, line: 133, type: !1527)
!1531 = !DILocation(line: 0, scope: !1523, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 34, column: 3, scope: !1463)
!1533 = !DILocation(line: 135, column: 10, scope: !1523, inlinedAt: !1532)
!1534 = !DILocation(line: 35, column: 3, scope: !1463)
!1535 = !DILocalVariable(name: "__c", arg: 1, scope: !1536, file: !1537, line: 91, type: !80)
!1536 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1537, file: !1537, line: 91, type: !1538, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !1540)
!1537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!80, !80, !1466}
!1540 = !{!1535, !1541}
!1541 = !DILocalVariable(name: "__stream", arg: 2, scope: !1536, file: !1537, line: 91, type: !1466)
!1542 = !DILocation(line: 0, scope: !1536, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 36, column: 3, scope: !1463)
!1544 = !DILocation(line: 93, column: 10, scope: !1536, inlinedAt: !1543)
!1545 = !{!1546, !967, i64 40}
!1546 = !{!"_IO_FILE", !1036, i64 0, !967, i64 8, !967, i64 16, !967, i64 24, !967, i64 32, !967, i64 40, !967, i64 48, !967, i64 56, !967, i64 64, !967, i64 72, !967, i64 80, !967, i64 88, !967, i64 96, !967, i64 104, !1036, i64 112, !1036, i64 116, !1547, i64 120, !1077, i64 128, !968, i64 130, !968, i64 131, !967, i64 136, !1547, i64 144, !967, i64 152, !967, i64 160, !967, i64 168, !967, i64 176, !1547, i64 184, !1036, i64 192, !968, i64 196}
!1547 = !{!"long", !968, i64 0}
!1548 = !{!1546, !967, i64 48}
!1549 = !{!"branch_weights", i32 2000, i32 1}
!1550 = !DILocation(line: 37, column: 1, scope: !1463)
!1551 = !DISubprogram(name: "__vfprintf_chk", scope: !1021, file: !1021, line: 96, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!80, !1526, !80, !1025, !1527}
!1554 = !DISubprogram(name: "__overflow", scope: !1030, file: !1030, line: 886, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!80, !1466, !80}
!1557 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !421, file: !421, line: 50, type: !986, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1558)
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "file", arg: 1, scope: !1557, file: !421, line: 50, type: !143)
!1560 = !DILocation(line: 0, scope: !1557)
!1561 = !DILocation(line: 52, column: 13, scope: !1557)
!1562 = !DILocation(line: 53, column: 1, scope: !1557)
!1563 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !421, file: !421, line: 87, type: !1564, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !191}
!1566 = !{!1567}
!1567 = !DILocalVariable(name: "ignore", arg: 1, scope: !1563, file: !421, line: 87, type: !191)
!1568 = !DILocation(line: 0, scope: !1563)
!1569 = !DILocation(line: 89, column: 16, scope: !1563)
!1570 = !{!1571, !1571, i64 0}
!1571 = !{!"_Bool", !968, i64 0}
!1572 = !DILocation(line: 90, column: 1, scope: !1563)
!1573 = distinct !DISubprogram(name: "close_stdout", scope: !421, file: !421, line: 116, type: !480, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1574)
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "write_error", scope: !1576, file: !421, line: 121, type: !143)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !421, line: 120, column: 5)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !421, line: 118, column: 7)
!1578 = !DILocation(line: 118, column: 21, scope: !1577)
!1579 = !DILocation(line: 118, column: 7, scope: !1577)
!1580 = !DILocation(line: 118, column: 29, scope: !1577)
!1581 = !DILocation(line: 119, column: 7, scope: !1577)
!1582 = !DILocation(line: 119, column: 12, scope: !1577)
!1583 = !{i8 0, i8 2}
!1584 = !DILocation(line: 119, column: 25, scope: !1577)
!1585 = !DILocation(line: 119, column: 28, scope: !1577)
!1586 = !DILocation(line: 119, column: 34, scope: !1577)
!1587 = !DILocation(line: 118, column: 7, scope: !1573)
!1588 = !DILocation(line: 121, column: 33, scope: !1576)
!1589 = !DILocation(line: 0, scope: !1576)
!1590 = !DILocation(line: 122, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1576, file: !421, line: 122, column: 11)
!1592 = !DILocation(line: 0, scope: !1591)
!1593 = !DILocation(line: 122, column: 11, scope: !1576)
!1594 = !DILocation(line: 123, column: 9, scope: !1591)
!1595 = !DILocation(line: 126, column: 9, scope: !1591)
!1596 = !DILocation(line: 128, column: 14, scope: !1576)
!1597 = !DILocation(line: 128, column: 7, scope: !1576)
!1598 = !DILocation(line: 133, column: 42, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1573, file: !421, line: 133, column: 7)
!1600 = !DILocation(line: 133, column: 28, scope: !1599)
!1601 = !DILocation(line: 133, column: 50, scope: !1599)
!1602 = !DILocation(line: 133, column: 7, scope: !1573)
!1603 = !DILocation(line: 134, column: 12, scope: !1599)
!1604 = !DILocation(line: 134, column: 5, scope: !1599)
!1605 = !DILocation(line: 135, column: 1, scope: !1573)
!1606 = !DISubprogram(name: "_exit", scope: !1607, file: !1607, line: 624, type: !956, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1607 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1608 = distinct !DISubprogram(name: "verror", scope: !436, file: !436, line: 251, type: !1609, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !80, !80, !143, !446}
!1611 = !{!1612, !1613, !1614, !1615}
!1612 = !DILocalVariable(name: "status", arg: 1, scope: !1608, file: !436, line: 251, type: !80)
!1613 = !DILocalVariable(name: "errnum", arg: 2, scope: !1608, file: !436, line: 251, type: !80)
!1614 = !DILocalVariable(name: "message", arg: 3, scope: !1608, file: !436, line: 251, type: !143)
!1615 = !DILocalVariable(name: "args", arg: 4, scope: !1608, file: !436, line: 251, type: !446)
!1616 = !DILocation(line: 0, scope: !1608)
!1617 = !DILocation(line: 261, column: 3, scope: !1608)
!1618 = !DILocation(line: 265, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 265, column: 7)
!1620 = !DILocation(line: 265, column: 7, scope: !1608)
!1621 = !DILocation(line: 266, column: 5, scope: !1619)
!1622 = !DILocation(line: 272, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !436, line: 268, column: 5)
!1624 = !DILocation(line: 276, column: 3, scope: !1608)
!1625 = !DILocation(line: 282, column: 1, scope: !1608)
!1626 = distinct !DISubprogram(name: "flush_stdout", scope: !436, file: !436, line: 163, type: !480, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1627)
!1627 = !{!1628}
!1628 = !DILocalVariable(name: "stdout_fd", scope: !1626, file: !436, line: 166, type: !80)
!1629 = !DILocation(line: 0, scope: !1626)
!1630 = !DILocalVariable(name: "fd", arg: 1, scope: !1631, file: !436, line: 145, type: !80)
!1631 = distinct !DISubprogram(name: "is_open", scope: !436, file: !436, line: 145, type: !1632, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!80, !80}
!1634 = !{!1630}
!1635 = !DILocation(line: 0, scope: !1631, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 182, column: 25, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1626, file: !436, line: 182, column: 7)
!1638 = !DILocation(line: 157, column: 15, scope: !1631, inlinedAt: !1636)
!1639 = !DILocation(line: 157, column: 12, scope: !1631, inlinedAt: !1636)
!1640 = !DILocation(line: 182, column: 7, scope: !1626)
!1641 = !DILocation(line: 184, column: 5, scope: !1637)
!1642 = !DILocation(line: 185, column: 1, scope: !1626)
!1643 = distinct !DISubprogram(name: "error_tail", scope: !436, file: !436, line: 219, type: !1609, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1644)
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DILocalVariable(name: "status", arg: 1, scope: !1643, file: !436, line: 219, type: !80)
!1646 = !DILocalVariable(name: "errnum", arg: 2, scope: !1643, file: !436, line: 219, type: !80)
!1647 = !DILocalVariable(name: "message", arg: 3, scope: !1643, file: !436, line: 219, type: !143)
!1648 = !DILocalVariable(name: "args", arg: 4, scope: !1643, file: !436, line: 219, type: !446)
!1649 = !DILocation(line: 0, scope: !1643)
!1650 = !DILocation(line: 229, column: 13, scope: !1643)
!1651 = !DILocalVariable(name: "__stream", arg: 1, scope: !1652, file: !1021, line: 132, type: !1655)
!1652 = distinct !DISubprogram(name: "vfprintf", scope: !1021, file: !1021, line: 132, type: !1653, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1690)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!80, !1655, !1025, !446}
!1655 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1658, file: !208, line: 51, baseType: !80, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1658, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1658, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1658, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1658, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1658, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1658, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1658, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1658, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1658, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1658, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1658, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1658, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1658, file: !208, line: 70, baseType: !1674, size: 64, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1658, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1658, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1658, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1658, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1658, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1658, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1658, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1658, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1658, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1658, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1658, file: !208, line: 93, baseType: !1674, size: 64, offset: 1344)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1658, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1658, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1658, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1658, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!1690 = !{!1651, !1691, !1692}
!1691 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1652, file: !1021, line: 133, type: !1025)
!1692 = !DILocalVariable(name: "__ap", arg: 3, scope: !1652, file: !1021, line: 133, type: !446)
!1693 = !DILocation(line: 0, scope: !1652, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 229, column: 3, scope: !1643)
!1695 = !DILocation(line: 135, column: 10, scope: !1652, inlinedAt: !1694)
!1696 = !DILocation(line: 232, column: 3, scope: !1643)
!1697 = !DILocation(line: 233, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 233, column: 7)
!1699 = !DILocation(line: 233, column: 7, scope: !1643)
!1700 = !DILocalVariable(name: "errnum", arg: 1, scope: !1701, file: !436, line: 188, type: !80)
!1701 = distinct !DISubprogram(name: "print_errno_message", scope: !436, file: !436, line: 188, type: !956, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1702)
!1702 = !{!1700, !1703, !1704}
!1703 = !DILocalVariable(name: "s", scope: !1701, file: !436, line: 190, type: !143)
!1704 = !DILocalVariable(name: "errbuf", scope: !1701, file: !436, line: 193, type: !1705)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 1024)
!1708 = !DILocation(line: 0, scope: !1701, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 234, column: 5, scope: !1698)
!1710 = !DILocation(line: 193, column: 3, scope: !1701, inlinedAt: !1709)
!1711 = !DILocation(line: 193, column: 8, scope: !1701, inlinedAt: !1709)
!1712 = !DILocation(line: 195, column: 7, scope: !1701, inlinedAt: !1709)
!1713 = !DILocation(line: 207, column: 9, scope: !1714, inlinedAt: !1709)
!1714 = distinct !DILexicalBlock(scope: !1701, file: !436, line: 207, column: 7)
!1715 = !DILocation(line: 207, column: 7, scope: !1701, inlinedAt: !1709)
!1716 = !DILocation(line: 208, column: 9, scope: !1714, inlinedAt: !1709)
!1717 = !DILocation(line: 208, column: 5, scope: !1714, inlinedAt: !1709)
!1718 = !DILocation(line: 214, column: 3, scope: !1701, inlinedAt: !1709)
!1719 = !DILocation(line: 216, column: 1, scope: !1701, inlinedAt: !1709)
!1720 = !DILocation(line: 234, column: 5, scope: !1698)
!1721 = !DILocation(line: 238, column: 3, scope: !1643)
!1722 = !DILocalVariable(name: "__c", arg: 1, scope: !1723, file: !1537, line: 101, type: !80)
!1723 = distinct !DISubprogram(name: "putc_unlocked", scope: !1537, file: !1537, line: 101, type: !1724, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!80, !80, !1656}
!1726 = !{!1722, !1727}
!1727 = !DILocalVariable(name: "__stream", arg: 2, scope: !1723, file: !1537, line: 101, type: !1656)
!1728 = !DILocation(line: 0, scope: !1723, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 238, column: 3, scope: !1643)
!1730 = !DILocation(line: 103, column: 10, scope: !1723, inlinedAt: !1729)
!1731 = !DILocation(line: 240, column: 3, scope: !1643)
!1732 = !DILocation(line: 241, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1643, file: !436, line: 241, column: 7)
!1734 = !DILocation(line: 241, column: 7, scope: !1643)
!1735 = !DILocation(line: 242, column: 5, scope: !1733)
!1736 = !DILocation(line: 243, column: 1, scope: !1643)
!1737 = !DISubprogram(name: "strerror_r", scope: !1156, file: !1156, line: 444, type: !1738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!137, !80, !137, !140}
!1740 = !DISubprogram(name: "fflush_unlocked", scope: !1030, file: !1030, line: 239, type: !1741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!80, !1656}
!1743 = !DISubprogram(name: "fcntl", scope: !1744, file: !1744, line: 149, type: !1745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!1744 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!80, !80, !80, null}
!1747 = distinct !DISubprogram(name: "error", scope: !436, file: !436, line: 285, type: !1748, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1750)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !80, !80, !143, null}
!1750 = !{!1751, !1752, !1753, !1754}
!1751 = !DILocalVariable(name: "status", arg: 1, scope: !1747, file: !436, line: 285, type: !80)
!1752 = !DILocalVariable(name: "errnum", arg: 2, scope: !1747, file: !436, line: 285, type: !80)
!1753 = !DILocalVariable(name: "message", arg: 3, scope: !1747, file: !436, line: 285, type: !143)
!1754 = !DILocalVariable(name: "ap", scope: !1747, file: !436, line: 287, type: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1030, line: 52, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1506, line: 14, baseType: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !450, baseType: !1758)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 192, elements: !60)
!1759 = !DILocation(line: 0, scope: !1747)
!1760 = !DILocation(line: 287, column: 3, scope: !1747)
!1761 = !DILocation(line: 287, column: 11, scope: !1747)
!1762 = !DILocation(line: 288, column: 3, scope: !1747)
!1763 = !DILocation(line: 289, column: 3, scope: !1747)
!1764 = !DILocation(line: 290, column: 3, scope: !1747)
!1765 = !DILocation(line: 291, column: 1, scope: !1747)
!1766 = !DILocation(line: 0, scope: !443)
!1767 = !DILocation(line: 302, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !443, file: !436, line: 302, column: 7)
!1769 = !DILocation(line: 302, column: 7, scope: !443)
!1770 = !DILocation(line: 307, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !436, line: 307, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !436, line: 303, column: 5)
!1773 = !DILocation(line: 307, column: 27, scope: !1771)
!1774 = !DILocation(line: 308, column: 11, scope: !1771)
!1775 = !DILocation(line: 308, column: 28, scope: !1771)
!1776 = !DILocation(line: 308, column: 25, scope: !1771)
!1777 = !DILocation(line: 309, column: 15, scope: !1771)
!1778 = !DILocation(line: 309, column: 33, scope: !1771)
!1779 = !DILocation(line: 310, column: 19, scope: !1771)
!1780 = !DILocation(line: 311, column: 22, scope: !1771)
!1781 = !DILocation(line: 311, column: 56, scope: !1771)
!1782 = !DILocation(line: 307, column: 11, scope: !1772)
!1783 = !DILocation(line: 316, column: 21, scope: !1772)
!1784 = !DILocation(line: 317, column: 23, scope: !1772)
!1785 = !DILocation(line: 318, column: 5, scope: !1772)
!1786 = !DILocation(line: 327, column: 3, scope: !443)
!1787 = !DILocation(line: 331, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !443, file: !436, line: 331, column: 7)
!1789 = !DILocation(line: 331, column: 7, scope: !443)
!1790 = !DILocation(line: 332, column: 5, scope: !1788)
!1791 = !DILocation(line: 338, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !436, line: 334, column: 5)
!1793 = !DILocation(line: 346, column: 3, scope: !443)
!1794 = !DILocation(line: 350, column: 3, scope: !443)
!1795 = !DILocation(line: 356, column: 1, scope: !443)
!1796 = distinct !DISubprogram(name: "error_at_line", scope: !436, file: !436, line: 359, type: !1797, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !80, !80, !143, !99, !143, null}
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805}
!1800 = !DILocalVariable(name: "status", arg: 1, scope: !1796, file: !436, line: 359, type: !80)
!1801 = !DILocalVariable(name: "errnum", arg: 2, scope: !1796, file: !436, line: 359, type: !80)
!1802 = !DILocalVariable(name: "file_name", arg: 3, scope: !1796, file: !436, line: 359, type: !143)
!1803 = !DILocalVariable(name: "line_number", arg: 4, scope: !1796, file: !436, line: 360, type: !99)
!1804 = !DILocalVariable(name: "message", arg: 5, scope: !1796, file: !436, line: 360, type: !143)
!1805 = !DILocalVariable(name: "ap", scope: !1796, file: !436, line: 362, type: !1755)
!1806 = !DILocation(line: 0, scope: !1796)
!1807 = !DILocation(line: 362, column: 3, scope: !1796)
!1808 = !DILocation(line: 362, column: 11, scope: !1796)
!1809 = !DILocation(line: 363, column: 3, scope: !1796)
!1810 = !DILocation(line: 364, column: 3, scope: !1796)
!1811 = !DILocation(line: 366, column: 3, scope: !1796)
!1812 = !DILocation(line: 367, column: 1, scope: !1796)
!1813 = distinct !DISubprogram(name: "getprogname", scope: !821, file: !821, line: 54, type: !1814, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !975)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!143}
!1816 = !DILocation(line: 58, column: 10, scope: !1813)
!1817 = !DILocation(line: 58, column: 3, scope: !1813)
!1818 = distinct !DISubprogram(name: "make_dir_parents", scope: !484, file: !484, line: 85, type: !1819, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !1823)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!191, !137, !1821, !1200, !138, !931, !1822, !931, !146, !148, !191}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1838, !1839, !1842, !1843, !1844, !1847, !1884, !1887, !1888, !1892}
!1824 = !DILocalVariable(name: "dir", arg: 1, scope: !1818, file: !484, line: 85, type: !137)
!1825 = !DILocalVariable(name: "wd", arg: 2, scope: !1818, file: !484, line: 86, type: !1821)
!1826 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1818, file: !484, line: 87, type: !1200)
!1827 = !DILocalVariable(name: "options", arg: 4, scope: !1818, file: !484, line: 88, type: !138)
!1828 = !DILocalVariable(name: "mode", arg: 5, scope: !1818, file: !484, line: 89, type: !931)
!1829 = !DILocalVariable(name: "announce", arg: 6, scope: !1818, file: !484, line: 90, type: !1822)
!1830 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1818, file: !484, line: 91, type: !931)
!1831 = !DILocalVariable(name: "owner", arg: 8, scope: !1818, file: !484, line: 92, type: !146)
!1832 = !DILocalVariable(name: "group", arg: 9, scope: !1818, file: !484, line: 93, type: !148)
!1833 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1818, file: !484, line: 94, type: !191)
!1834 = !DILocalVariable(name: "mkdir_errno", scope: !1818, file: !484, line: 96, type: !80)
!1835 = !DILocalVariable(name: "savewd_chdir_options", scope: !1836, file: !484, line: 100, type: !80)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !484, line: 99, column: 5)
!1837 = distinct !DILexicalBlock(scope: !1818, file: !484, line: 98, column: 7)
!1838 = !DILocalVariable(name: "prefix_len", scope: !1836, file: !484, line: 102, type: !891)
!1839 = !DILocalVariable(name: "keep_owner", scope: !1840, file: !484, line: 121, type: !191)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !484, line: 115, column: 9)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !484, line: 114, column: 11)
!1842 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1840, file: !484, line: 122, type: !191)
!1843 = !DILocalVariable(name: "mkdir_mode", scope: !1840, file: !484, line: 124, type: !931)
!1844 = !DILocalVariable(name: "umask_must_be_ok", scope: !1845, file: !484, line: 134, type: !191)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !484, line: 131, column: 13)
!1846 = distinct !DILexicalBlock(scope: !1840, file: !484, line: 130, column: 15)
!1847 = !DILocalVariable(name: "st", scope: !1848, file: !484, line: 155, type: !1853)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !484, line: 154, column: 17)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !484, line: 153, column: 19)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !484, line: 150, column: 13)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !484, line: 149, column: 20)
!1852 = distinct !DILexicalBlock(scope: !1840, file: !484, line: 147, column: 15)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1854, line: 26, size: 1152, elements: !1855)
!1854 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1855 = !{!1856, !1858, !1860, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1870, !1872, !1880, !1881, !1882}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1853, file: !1854, line: 31, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !98, line: 145, baseType: !142)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1853, file: !1854, line: 36, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !98, line: 148, baseType: !142)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1853, file: !1854, line: 44, baseType: !1861, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !98, line: 151, baseType: !142)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1853, file: !1854, line: 45, baseType: !932, size: 32, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1853, file: !1854, line: 47, baseType: !147, size: 32, offset: 224)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1853, file: !1854, line: 48, baseType: !149, size: 32, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1853, file: !1854, line: 50, baseType: !80, size: 32, offset: 288)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1853, file: !1854, line: 52, baseType: !1857, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1853, file: !1854, line: 57, baseType: !230, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1853, file: !1854, line: 61, baseType: !1869, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !98, line: 175, baseType: !231)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1853, file: !1854, line: 63, baseType: !1871, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !98, line: 180, baseType: !231)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1853, file: !1854, line: 74, baseType: !1873, size: 128, offset: 576)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1874, line: 11, size: 128, elements: !1875)
!1874 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1875 = !{!1876, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1873, file: !1874, line: 16, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !98, line: 160, baseType: !231)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1873, file: !1874, line: 21, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !98, line: 197, baseType: !231)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1853, file: !1854, line: 75, baseType: !1873, size: 128, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1853, file: !1854, line: 76, baseType: !1873, size: 128, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1853, file: !1854, line: 89, baseType: !1883, size: 192, offset: 960)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, size: 192, elements: !287)
!1884 = !DILocalVariable(name: "open_result", scope: !1885, file: !484, line: 171, type: !1886)
!1885 = distinct !DILexicalBlock(scope: !1851, file: !484, line: 170, column: 13)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !278)
!1887 = !DILocalVariable(name: "chdir_result", scope: !1885, file: !484, line: 172, type: !80)
!1888 = !DILocalVariable(name: "chdir_ok", scope: !1889, file: !484, line: 179, type: !191)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !484, line: 178, column: 17)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !484, line: 177, column: 24)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !484, line: 175, column: 19)
!1892 = !DILocalVariable(name: "subdir", scope: !1889, file: !484, line: 180, type: !143)
!1893 = !DILocation(line: 0, scope: !1818)
!1894 = !DILocation(line: 96, column: 22, scope: !1818)
!1895 = !DILocalVariable(name: "wd", arg: 1, scope: !1896, file: !85, line: 131, type: !1899)
!1896 = distinct !DISubprogram(name: "savewd_errno", scope: !85, file: !85, line: 131, type: !1897, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !1901)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!80, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!1901 = !{!1895}
!1902 = !DILocation(line: 0, scope: !1896, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 96, column: 56, scope: !1818)
!1904 = !DILocation(line: 133, column: 14, scope: !1896, inlinedAt: !1903)
!1905 = !{!1906, !968, i64 0}
!1906 = !{!"savewd", !968, i64 0, !968, i64 4}
!1907 = !DILocation(line: 133, column: 20, scope: !1896, inlinedAt: !1903)
!1908 = !DILocation(line: 133, column: 10, scope: !1896, inlinedAt: !1903)
!1909 = !DILocation(line: 133, column: 44, scope: !1896, inlinedAt: !1903)
!1910 = !DILocation(line: 133, column: 48, scope: !1896, inlinedAt: !1903)
!1911 = !DILocation(line: 98, column: 19, scope: !1837)
!1912 = !DILocation(line: 98, column: 7, scope: !1818)
!1913 = !DILocation(line: 0, scope: !1836)
!1914 = !DILocation(line: 103, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1836, file: !484, line: 103, column: 11)
!1916 = !DILocation(line: 103, column: 11, scope: !1836)
!1917 = !DILocation(line: 105, column: 24, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !484, line: 104, column: 9)
!1919 = !DILocation(line: 106, column: 26, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1918, file: !484, line: 106, column: 15)
!1921 = !DILocation(line: 106, column: 15, scope: !1918)
!1922 = !DILocation(line: 108, column: 30, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !484, line: 108, column: 19)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !484, line: 107, column: 13)
!1925 = !DILocation(line: 108, column: 19, scope: !1924)
!1926 = !DILocation(line: 110, column: 29, scope: !1924)
!1927 = !DILocation(line: 114, column: 11, scope: !1836)
!1928 = !DILocation(line: 121, column: 49, scope: !1840)
!1929 = !DILocation(line: 0, scope: !1840)
!1930 = !DILocation(line: 123, column: 25, scope: !1840)
!1931 = !DILocation(line: 123, column: 56, scope: !1840)
!1932 = !DILocation(line: 123, column: 48, scope: !1840)
!1933 = !DILocation(line: 125, column: 15, scope: !1840)
!1934 = !DILocation(line: 130, column: 26, scope: !1846)
!1935 = !DILocation(line: 130, column: 15, scope: !1846)
!1936 = !DILocation(line: 130, column: 52, scope: !1846)
!1937 = !DILocation(line: 130, column: 15, scope: !1840)
!1938 = !DILocation(line: 134, column: 45, scope: !1845)
!1939 = !DILocation(line: 134, column: 57, scope: !1845)
!1940 = !DILocation(line: 0, scope: !1845)
!1941 = !DILocation(line: 136, column: 15, scope: !1845)
!1942 = !DILocation(line: 138, column: 36, scope: !1845)
!1943 = !DILocation(line: 149, column: 20, scope: !1852)
!1944 = !DILocation(line: 143, column: 29, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1846, file: !484, line: 142, column: 13)
!1946 = !DILocation(line: 147, column: 37, scope: !1852)
!1947 = !DILocation(line: 151, column: 31, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1850, file: !484, line: 151, column: 19)
!1949 = !DILocation(line: 151, column: 19, scope: !1850)
!1950 = !DILocation(line: 153, column: 19, scope: !1850)
!1951 = !DILocation(line: 155, column: 19, scope: !1848)
!1952 = !DILocation(line: 155, column: 31, scope: !1848)
!1953 = !DILocation(line: 156, column: 23, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1848, file: !484, line: 156, column: 23)
!1955 = !DILocation(line: 156, column: 52, scope: !1954)
!1956 = !DILocation(line: 156, column: 23, scope: !1848)
!1957 = !DILocation(line: 158, column: 27, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !484, line: 158, column: 27)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !484, line: 157, column: 21)
!1960 = !{!1961, !1036, i64 24}
!1961 = !{!"stat", !1547, i64 0, !1547, i64 8, !1547, i64 16, !1036, i64 24, !1036, i64 28, !1036, i64 32, !1036, i64 36, !1547, i64 40, !1547, i64 48, !1547, i64 56, !1547, i64 64, !1962, i64 72, !1962, i64 88, !1962, i64 104, !968, i64 120}
!1962 = !{!"timespec", !1547, i64 0, !1547, i64 8}
!1963 = !DILocation(line: 158, column: 27, scope: !1959)
!1964 = !DILocation(line: 161, column: 40, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1954, file: !484, line: 161, column: 28)
!1966 = !DILocation(line: 162, column: 28, scope: !1965)
!1967 = !DILocation(line: 162, column: 31, scope: !1965)
!1968 = !DILocation(line: 162, column: 47, scope: !1965)
!1969 = !DILocation(line: 164, column: 23, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !484, line: 163, column: 21)
!1971 = !DILocation(line: 165, column: 23, scope: !1970)
!1972 = !DILocation(line: 167, column: 17, scope: !1849)
!1973 = !DILocation(line: 171, column: 15, scope: !1885)
!1974 = !DILocation(line: 171, column: 19, scope: !1885)
!1975 = !DILocation(line: 173, column: 17, scope: !1885)
!1976 = !DILocation(line: 0, scope: !1885)
!1977 = !DILocation(line: 175, column: 32, scope: !1891)
!1978 = !DILocation(line: 175, column: 19, scope: !1885)
!1979 = !DILocation(line: 177, column: 37, scope: !1890)
!1980 = !DILocation(line: 177, column: 42, scope: !1890)
!1981 = !DILocation(line: 177, column: 45, scope: !1890)
!1982 = !DILocation(line: 177, column: 51, scope: !1890)
!1983 = !DILocation(line: 177, column: 24, scope: !1891)
!1984 = !DILocation(line: 0, scope: !1889)
!1985 = !DILocation(line: 181, column: 36, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1889, file: !484, line: 181, column: 23)
!1987 = !DILocation(line: 181, column: 23, scope: !1986)
!1988 = !DILocation(line: 183, column: 23, scope: !1986)
!1989 = !DILocation(line: 181, column: 23, scope: !1889)
!1990 = !DILocation(line: 186, column: 35, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1889, file: !484, line: 186, column: 23)
!1992 = !DILocation(line: 187, column: 23, scope: !1991)
!1993 = !DILocation(line: 189, column: 23, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !484, line: 188, column: 21)
!1995 = !DILocation(line: 187, column: 41, scope: !1991)
!1996 = !DILocation(line: 187, column: 44, scope: !1991)
!1997 = !DILocation(line: 187, column: 60, scope: !1991)
!1998 = !DILocation(line: 194, column: 23, scope: !1994)
!1999 = !DILocation(line: 199, column: 35, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !484, line: 199, column: 23)
!2001 = distinct !DILexicalBlock(scope: !1890, file: !484, line: 198, column: 17)
!2002 = !DILocation(line: 199, column: 23, scope: !2001)
!2003 = !DILocation(line: 201, column: 28, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !484, line: 201, column: 23)
!2005 = !DILocation(line: 201, column: 25, scope: !2004)
!2006 = !DILocation(line: 201, column: 23, scope: !2001)
!2007 = !DILocation(line: 202, column: 21, scope: !2004)
!2008 = !DILocation(line: 204, column: 13, scope: !1851)
!2009 = !DILocation(line: 0, scope: !1891)
!2010 = !DILocation(line: 96, column: 7, scope: !1818)
!2011 = !DILocation(line: 208, column: 3, scope: !1818)
!2012 = !DILocation(line: 209, column: 3, scope: !1818)
!2013 = !DILocation(line: 210, column: 1, scope: !1818)
!2014 = !DISubprogram(name: "stat", scope: !1392, file: !1392, line: 205, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!80, !1025, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!2019 = !DISubprogram(name: "close", scope: !1607, file: !1607, line: 358, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!2020 = distinct !DISubprogram(name: "mode_compile", scope: !841, file: !841, line: 134, type: !2021, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !2031)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!2023, !143}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !841, line: 98, size: 128, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2030}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2024, file: !841, line: 100, baseType: !4, size: 8)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !2024, file: !841, line: 101, baseType: !4, size: 8, offset: 8)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !2024, file: !841, line: 102, baseType: !931, size: 32, offset: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2024, file: !841, line: 103, baseType: !931, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !2024, file: !841, line: 104, baseType: !931, size: 32, offset: 96)
!2031 = !{!2032, !2033, !2036, !2037, !2038, !2039, !2040, !2042, !2044, !2045, !2046, !2050, !2052, !2053, !2054, !2055, !2058, !2059, !2060, !2061}
!2032 = !DILocalVariable(name: "mode_string", arg: 1, scope: !2020, file: !841, line: 134, type: !143)
!2033 = !DILocalVariable(name: "p", scope: !2034, file: !841, line: 138, type: !143)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !841, line: 137, column: 5)
!2035 = distinct !DILexicalBlock(scope: !2020, file: !841, line: 136, column: 7)
!2036 = !DILocalVariable(name: "octal_mode", scope: !2034, file: !841, line: 139, type: !99)
!2037 = !DILocalVariable(name: "mode", scope: !2034, file: !841, line: 140, type: !931)
!2038 = !DILocalVariable(name: "mentioned", scope: !2034, file: !841, line: 141, type: !931)
!2039 = !DILocalVariable(name: "mc", scope: !2020, file: !841, line: 163, type: !2023)
!2040 = !DILocalVariable(name: "needed", scope: !2041, file: !841, line: 167, type: !140)
!2041 = distinct !DILexicalBlock(scope: !2020, file: !841, line: 166, column: 3)
!2042 = !DILocalVariable(name: "p", scope: !2043, file: !841, line: 168, type: !143)
!2043 = distinct !DILexicalBlock(scope: !2041, file: !841, line: 168, column: 5)
!2044 = !DILocalVariable(name: "used", scope: !2020, file: !841, line: 175, type: !140)
!2045 = !DILocalVariable(name: "p", scope: !2020, file: !841, line: 176, type: !143)
!2046 = !DILocalVariable(name: "affected", scope: !2047, file: !841, line: 180, type: !931)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !841, line: 178, column: 5)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !841, line: 177, column: 3)
!2049 = distinct !DILexicalBlock(scope: !2020, file: !841, line: 177, column: 3)
!2050 = !DILocalVariable(name: "op", scope: !2051, file: !841, line: 207, type: !4)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !841, line: 206, column: 9)
!2052 = !DILocalVariable(name: "value", scope: !2051, file: !841, line: 208, type: !931)
!2053 = !DILocalVariable(name: "mentioned", scope: !2051, file: !841, line: 209, type: !931)
!2054 = !DILocalVariable(name: "flag", scope: !2051, file: !841, line: 210, type: !4)
!2055 = !DILocalVariable(name: "octal_mode", scope: !2056, file: !841, line: 217, type: !99)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !841, line: 216, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2051, file: !841, line: 213, column: 13)
!2058 = !DILocalVariable(name: "change", scope: !2051, file: !841, line: 287, type: !2023)
!2059 = !DILabel(scope: !2047, name: "no_more_affected", file: !841, line: 203)
!2060 = !DILabel(scope: !2057, name: "no_more_values", file: !841, line: 284)
!2061 = !DILabel(scope: !2020, name: "invalid", file: !841, line: 308)
!2062 = !DILocation(line: 0, scope: !2020)
!2063 = !DILocation(line: 136, column: 14, scope: !2035)
!2064 = !DILocation(line: 136, column: 27, scope: !2035)
!2065 = !DILocation(line: 146, column: 41, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2034, file: !841, line: 145, column: 9)
!2067 = !DILocation(line: 0, scope: !2034)
!2068 = !DILocation(line: 146, column: 26, scope: !2066)
!2069 = !DILocation(line: 146, column: 39, scope: !2066)
!2070 = !DILocation(line: 146, column: 46, scope: !2066)
!2071 = !DILocation(line: 147, column: 20, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2066, file: !841, line: 147, column: 15)
!2073 = !DILocation(line: 147, column: 15, scope: !2066)
!2074 = !DILocation(line: 146, column: 43, scope: !2066)
!2075 = !DILocation(line: 150, column: 21, scope: !2034)
!2076 = !DILocation(line: 150, column: 24, scope: !2034)
!2077 = distinct !{!2077, !2078, !2079, !1082}
!2078 = !DILocation(line: 144, column: 7, scope: !2034)
!2079 = !DILocation(line: 150, column: 35, scope: !2034)
!2080 = !DILocation(line: 152, column: 11, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2034, file: !841, line: 152, column: 11)
!2082 = !DILocation(line: 152, column: 11, scope: !2034)
!2083 = !DILocation(line: 156, column: 22, scope: !2034)
!2084 = !DILocation(line: 156, column: 36, scope: !2034)
!2085 = !DILocation(line: 156, column: 20, scope: !2034)
!2086 = !DILocalVariable(name: "new_mode", arg: 1, scope: !2087, file: !841, line: 112, type: !931)
!2087 = distinct !DISubprogram(name: "make_node_op_equals", scope: !841, file: !841, line: 112, type: !2088, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2023, !931, !931}
!2090 = !{!2086, !2091, !2092}
!2091 = !DILocalVariable(name: "mentioned", arg: 2, scope: !2087, file: !841, line: 112, type: !931)
!2092 = !DILocalVariable(name: "p", scope: !2087, file: !841, line: 114, type: !2023)
!2093 = !DILocation(line: 0, scope: !2087, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 159, column: 14, scope: !2034)
!2095 = !DILocation(line: 114, column: 27, scope: !2087, inlinedAt: !2094)
!2096 = !DILocation(line: 115, column: 9, scope: !2087, inlinedAt: !2094)
!2097 = !{!2098, !968, i64 0}
!2098 = !{!"mode_change", !968, i64 0, !968, i64 1, !1036, i64 4, !1036, i64 8, !1036, i64 12}
!2099 = !DILocation(line: 116, column: 6, scope: !2087, inlinedAt: !2094)
!2100 = !DILocation(line: 116, column: 11, scope: !2087, inlinedAt: !2094)
!2101 = !{!2098, !968, i64 1}
!2102 = !DILocation(line: 117, column: 6, scope: !2087, inlinedAt: !2094)
!2103 = !DILocation(line: 117, column: 15, scope: !2087, inlinedAt: !2094)
!2104 = !{!2098, !1036, i64 4}
!2105 = !DILocation(line: 118, column: 6, scope: !2087, inlinedAt: !2094)
!2106 = !DILocation(line: 118, column: 12, scope: !2087, inlinedAt: !2094)
!2107 = !{!2098, !1036, i64 8}
!2108 = !DILocation(line: 119, column: 6, scope: !2087, inlinedAt: !2094)
!2109 = !DILocation(line: 119, column: 16, scope: !2087, inlinedAt: !2094)
!2110 = !{!2098, !1036, i64 12}
!2111 = !DILocation(line: 120, column: 8, scope: !2087, inlinedAt: !2094)
!2112 = !DILocation(line: 120, column: 13, scope: !2087, inlinedAt: !2094)
!2113 = !DILocation(line: 159, column: 7, scope: !2034)
!2114 = !DILocation(line: 168, column: 39, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2043, file: !841, line: 168, column: 5)
!2116 = !DILocation(line: 0, scope: !2041)
!2117 = !DILocation(line: 168, scope: !2043)
!2118 = !DILocation(line: 0, scope: !2043)
!2119 = !DILocation(line: 168, column: 5, scope: !2043)
!2120 = !DILocation(line: 170, column: 10, scope: !2041)
!2121 = !DILocation(line: 177, column: 8, scope: !2049)
!2122 = !DILocation(line: 169, column: 41, scope: !2115)
!2123 = !DILocation(line: 169, column: 14, scope: !2115)
!2124 = !DILocation(line: 168, column: 44, scope: !2115)
!2125 = !DILocation(line: 168, column: 5, scope: !2115)
!2126 = distinct !{!2126, !2119, !2127, !1082}
!2127 = !DILocation(line: 169, column: 53, scope: !2043)
!2128 = !DILocation(line: 175, column: 10, scope: !2020)
!2129 = !DILocation(line: 177, scope: !2049)
!2130 = !DILocation(line: 0, scope: !2051)
!2131 = !DILocation(line: 0, scope: !2047)
!2132 = !DILocation(line: 183, column: 7, scope: !2047)
!2133 = !DILocation(line: 0, scope: !2049)
!2134 = !DILocation(line: 184, column: 17, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !841, line: 183, column: 7)
!2136 = distinct !DILexicalBlock(scope: !2047, file: !841, line: 183, column: 7)
!2137 = !DILocation(line: 184, column: 9, scope: !2135)
!2138 = !DILocation(line: 212, column: 11, scope: !2051)
!2139 = !DILocation(line: 189, column: 22, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !841, line: 185, column: 11)
!2141 = !DILocation(line: 190, column: 13, scope: !2140)
!2142 = !DILocation(line: 192, column: 22, scope: !2140)
!2143 = !DILocation(line: 193, column: 13, scope: !2140)
!2144 = !DILocation(line: 195, column: 22, scope: !2140)
!2145 = !DILocation(line: 196, column: 13, scope: !2140)
!2146 = !DILocation(line: 0, scope: !2140)
!2147 = !DILocation(line: 183, column: 16, scope: !2135)
!2148 = !DILocation(line: 183, column: 7, scope: !2135)
!2149 = distinct !{!2149, !2150, !2151}
!2150 = !DILocation(line: 183, column: 7, scope: !2136)
!2151 = !DILocation(line: 202, column: 11, scope: !2136)
!2152 = !DILocation(line: 207, column: 21, scope: !2051)
!2153 = !DILocation(line: 180, column: 14, scope: !2047)
!2154 = !DILocation(line: 207, column: 23, scope: !2051)
!2155 = !DILocation(line: 212, column: 19, scope: !2051)
!2156 = !DILocation(line: 219, column: 17, scope: !2056)
!2157 = !DILocation(line: 221, column: 51, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2056, file: !841, line: 220, column: 19)
!2159 = !DILocation(line: 0, scope: !2056)
!2160 = !DILocation(line: 221, column: 36, scope: !2158)
!2161 = !DILocation(line: 221, column: 49, scope: !2158)
!2162 = !DILocation(line: 221, column: 56, scope: !2158)
!2163 = !DILocation(line: 222, column: 30, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2158, file: !841, line: 222, column: 25)
!2165 = !DILocation(line: 222, column: 25, scope: !2158)
!2166 = !DILocation(line: 221, column: 53, scope: !2158)
!2167 = !DILocation(line: 225, column: 31, scope: !2056)
!2168 = !DILocation(line: 225, column: 34, scope: !2056)
!2169 = distinct !{!2169, !2156, !2170, !1082}
!2170 = !DILocation(line: 225, column: 45, scope: !2056)
!2171 = !DILocation(line: 227, column: 21, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2056, file: !841, line: 227, column: 21)
!2173 = !DILocation(line: 227, column: 30, scope: !2172)
!2174 = !DILocation(line: 227, column: 37, scope: !2172)
!2175 = !DILocation(line: 239, column: 16, scope: !2057)
!2176 = !DILocation(line: 240, column: 15, scope: !2057)
!2177 = !DILocation(line: 245, column: 16, scope: !2057)
!2178 = !DILocation(line: 246, column: 15, scope: !2057)
!2179 = !DILocation(line: 251, column: 16, scope: !2057)
!2180 = !DILocation(line: 252, column: 15, scope: !2057)
!2181 = !DILocation(line: 259, column: 25, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !841, line: 258, column: 15)
!2183 = distinct !DILexicalBlock(scope: !2057, file: !841, line: 258, column: 15)
!2184 = !DILocation(line: 0, scope: !2057)
!2185 = !DILocation(line: 256, column: 20, scope: !2057)
!2186 = !DILocation(line: 259, column: 17, scope: !2182)
!2187 = !DILocation(line: 262, column: 27, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2182, file: !841, line: 260, column: 19)
!2189 = !DILocation(line: 263, column: 21, scope: !2188)
!2190 = !DILocation(line: 265, column: 27, scope: !2188)
!2191 = !DILocation(line: 266, column: 21, scope: !2188)
!2192 = !DILocation(line: 268, column: 27, scope: !2188)
!2193 = !DILocation(line: 269, column: 21, scope: !2188)
!2194 = !DILocation(line: 275, column: 27, scope: !2188)
!2195 = !DILocation(line: 276, column: 21, scope: !2188)
!2196 = !DILocation(line: 279, column: 27, scope: !2188)
!2197 = !DILocation(line: 280, column: 21, scope: !2188)
!2198 = !DILocation(line: 258, column: 24, scope: !2182)
!2199 = !DILocation(line: 258, column: 15, scope: !2182)
!2200 = distinct !{!2200, !2201, !2202}
!2201 = !DILocation(line: 258, column: 15, scope: !2183)
!2202 = !DILocation(line: 283, column: 19, scope: !2183)
!2203 = !DILocation(line: 209, column: 18, scope: !2051)
!2204 = !DILocation(line: 294, column: 14, scope: !2051)
!2205 = !DILocation(line: 288, column: 28, scope: !2051)
!2206 = !DILocation(line: 288, column: 21, scope: !2051)
!2207 = !DILocation(line: 289, column: 22, scope: !2051)
!2208 = !DILocation(line: 290, column: 19, scope: !2051)
!2209 = !DILocation(line: 290, column: 24, scope: !2051)
!2210 = !DILocation(line: 291, column: 19, scope: !2051)
!2211 = !DILocation(line: 291, column: 28, scope: !2051)
!2212 = !DILocation(line: 292, column: 19, scope: !2051)
!2213 = !DILocation(line: 292, column: 25, scope: !2051)
!2214 = !DILocation(line: 293, column: 19, scope: !2051)
!2215 = !DILocation(line: 293, column: 29, scope: !2051)
!2216 = !DILocation(line: 296, column: 14, scope: !2047)
!2217 = !DILocation(line: 296, column: 24, scope: !2047)
!2218 = !DILocation(line: 177, column: 28, scope: !2048)
!2219 = !DILocation(line: 177, column: 3, scope: !2048)
!2220 = distinct !{!2220, !2221, !2222}
!2221 = !DILocation(line: 177, column: 3, scope: !2049)
!2222 = !DILocation(line: 300, column: 5, scope: !2049)
!2223 = !DILocation(line: 304, column: 16, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !841, line: 303, column: 5)
!2225 = distinct !DILexicalBlock(scope: !2020, file: !841, line: 302, column: 7)
!2226 = !DILocation(line: 304, column: 21, scope: !2224)
!2227 = !DILocation(line: 305, column: 7, scope: !2224)
!2228 = !DILocation(line: 308, column: 1, scope: !2020)
!2229 = !DILocation(line: 309, column: 3, scope: !2020)
!2230 = !DILocation(line: 310, column: 3, scope: !2020)
!2231 = !DILocation(line: 311, column: 1, scope: !2020)
!2232 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !841, file: !841, line: 317, type: !2021, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !2233)
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "ref_file", arg: 1, scope: !2232, file: !841, line: 317, type: !143)
!2235 = !DILocalVariable(name: "ref_stats", scope: !2232, file: !841, line: 319, type: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1854, line: 26, size: 1152, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2254, !2255, !2256}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2236, file: !1854, line: 31, baseType: !1857, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2236, file: !1854, line: 36, baseType: !1859, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2236, file: !1854, line: 44, baseType: !1861, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2236, file: !1854, line: 45, baseType: !932, size: 32, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2236, file: !1854, line: 47, baseType: !147, size: 32, offset: 224)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2236, file: !1854, line: 48, baseType: !149, size: 32, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2236, file: !1854, line: 50, baseType: !80, size: 32, offset: 288)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2236, file: !1854, line: 52, baseType: !1857, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2236, file: !1854, line: 57, baseType: !230, size: 64, offset: 384)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2236, file: !1854, line: 61, baseType: !1869, size: 64, offset: 448)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2236, file: !1854, line: 63, baseType: !1871, size: 64, offset: 512)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2236, file: !1854, line: 74, baseType: !2250, size: 128, offset: 576)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1874, line: 11, size: 128, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2250, file: !1874, line: 16, baseType: !1877, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2250, file: !1874, line: 21, baseType: !1879, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2236, file: !1854, line: 75, baseType: !2250, size: 128, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2236, file: !1854, line: 76, baseType: !2250, size: 128, offset: 832)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2236, file: !1854, line: 89, baseType: !1883, size: 192, offset: 960)
!2257 = !DILocation(line: 0, scope: !2232)
!2258 = !DILocation(line: 319, column: 3, scope: !2232)
!2259 = !DILocation(line: 319, column: 15, scope: !2232)
!2260 = !DILocation(line: 321, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2232, file: !841, line: 321, column: 7)
!2262 = !DILocation(line: 321, column: 35, scope: !2261)
!2263 = !DILocation(line: 321, column: 7, scope: !2232)
!2264 = !DILocation(line: 323, column: 41, scope: !2232)
!2265 = !DILocation(line: 0, scope: !2087, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 323, column: 10, scope: !2232)
!2267 = !DILocation(line: 114, column: 27, scope: !2087, inlinedAt: !2266)
!2268 = !DILocation(line: 115, column: 9, scope: !2087, inlinedAt: !2266)
!2269 = !DILocation(line: 116, column: 6, scope: !2087, inlinedAt: !2266)
!2270 = !DILocation(line: 116, column: 11, scope: !2087, inlinedAt: !2266)
!2271 = !DILocation(line: 117, column: 6, scope: !2087, inlinedAt: !2266)
!2272 = !DILocation(line: 117, column: 15, scope: !2087, inlinedAt: !2266)
!2273 = !DILocation(line: 118, column: 6, scope: !2087, inlinedAt: !2266)
!2274 = !DILocation(line: 118, column: 12, scope: !2087, inlinedAt: !2266)
!2275 = !DILocation(line: 119, column: 6, scope: !2087, inlinedAt: !2266)
!2276 = !DILocation(line: 119, column: 16, scope: !2087, inlinedAt: !2266)
!2277 = !DILocation(line: 120, column: 8, scope: !2087, inlinedAt: !2266)
!2278 = !DILocation(line: 120, column: 13, scope: !2087, inlinedAt: !2266)
!2279 = !DILocation(line: 323, column: 3, scope: !2232)
!2280 = !DILocation(line: 324, column: 1, scope: !2232)
!2281 = distinct !DISubprogram(name: "mode_adjust", scope: !841, file: !841, line: 340, type: !2282, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !2287)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!931, !931, !191, !931, !2284, !2286}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2299, !2300, !2301}
!2288 = !DILocalVariable(name: "oldmode", arg: 1, scope: !2281, file: !841, line: 340, type: !931)
!2289 = !DILocalVariable(name: "dir", arg: 2, scope: !2281, file: !841, line: 340, type: !191)
!2290 = !DILocalVariable(name: "umask_value", arg: 3, scope: !2281, file: !841, line: 340, type: !931)
!2291 = !DILocalVariable(name: "changes", arg: 4, scope: !2281, file: !841, line: 341, type: !2284)
!2292 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !2281, file: !841, line: 341, type: !2286)
!2293 = !DILocalVariable(name: "newmode", scope: !2281, file: !841, line: 344, type: !931)
!2294 = !DILocalVariable(name: "mode_bits", scope: !2281, file: !841, line: 347, type: !931)
!2295 = !DILocalVariable(name: "affected", scope: !2296, file: !841, line: 351, type: !931)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !841, line: 350, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !841, line: 349, column: 3)
!2298 = distinct !DILexicalBlock(scope: !2281, file: !841, line: 349, column: 3)
!2299 = !DILocalVariable(name: "omit_change", scope: !2296, file: !841, line: 352, type: !931)
!2300 = !DILocalVariable(name: "value", scope: !2296, file: !841, line: 354, type: !931)
!2301 = !DILocalVariable(name: "preserved", scope: !2302, file: !841, line: 394, type: !931)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !841, line: 393, column: 11)
!2303 = distinct !DILexicalBlock(scope: !2296, file: !841, line: 388, column: 9)
!2304 = !DILocation(line: 0, scope: !2281)
!2305 = !DILocation(line: 344, column: 28, scope: !2281)
!2306 = !DILocation(line: 349, column: 19, scope: !2297)
!2307 = !DILocation(line: 349, column: 24, scope: !2297)
!2308 = !DILocation(line: 349, column: 3, scope: !2298)
!2309 = !DILocation(line: 349, column: 10, scope: !2297)
!2310 = !DILocation(line: 351, column: 34, scope: !2296)
!2311 = !DILocation(line: 0, scope: !2296)
!2312 = !DILocation(line: 353, column: 52, scope: !2296)
!2313 = !DILocation(line: 353, column: 41, scope: !2296)
!2314 = !DILocation(line: 353, column: 39, scope: !2296)
!2315 = !DILocation(line: 354, column: 31, scope: !2296)
!2316 = !DILocation(line: 356, column: 7, scope: !2296)
!2317 = !DILocation(line: 363, column: 17, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2296, file: !841, line: 357, column: 9)
!2319 = !DILocation(line: 366, column: 28, scope: !2318)
!2320 = !DILocation(line: 366, column: 22, scope: !2318)
!2321 = !DILocation(line: 368, column: 30, scope: !2318)
!2322 = !DILocation(line: 368, column: 24, scope: !2318)
!2323 = !DILocation(line: 370, column: 30, scope: !2318)
!2324 = !DILocation(line: 370, column: 24, scope: !2318)
!2325 = !DILocation(line: 370, column: 21, scope: !2318)
!2326 = !DILocation(line: 366, column: 17, scope: !2318)
!2327 = !DILocation(line: 372, column: 11, scope: !2318)
!2328 = !DILocation(line: 377, column: 24, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2318, file: !841, line: 377, column: 15)
!2330 = !DILocation(line: 377, column: 57, scope: !2329)
!2331 = !DILocation(line: 377, column: 15, scope: !2318)
!2332 = !DILocation(line: 385, column: 17, scope: !2296)
!2333 = !DILocation(line: 385, column: 55, scope: !2296)
!2334 = !DILocation(line: 385, column: 53, scope: !2296)
!2335 = !DILocation(line: 385, column: 13, scope: !2296)
!2336 = !DILocation(line: 387, column: 24, scope: !2296)
!2337 = !DILocation(line: 387, column: 15, scope: !2296)
!2338 = !DILocation(line: 387, column: 7, scope: !2296)
!2339 = !DILocation(line: 394, column: 33, scope: !2302)
!2340 = !DILocation(line: 394, column: 59, scope: !2302)
!2341 = !DILocation(line: 0, scope: !2302)
!2342 = !DILocation(line: 395, column: 42, scope: !2302)
!2343 = !DILocation(line: 395, column: 23, scope: !2302)
!2344 = !DILocation(line: 396, column: 32, scope: !2302)
!2345 = !DILocation(line: 396, column: 45, scope: !2302)
!2346 = !DILocation(line: 401, column: 21, scope: !2303)
!2347 = !DILocation(line: 402, column: 19, scope: !2303)
!2348 = !DILocation(line: 403, column: 11, scope: !2303)
!2349 = !DILocation(line: 406, column: 21, scope: !2303)
!2350 = !DILocation(line: 407, column: 22, scope: !2303)
!2351 = !DILocation(line: 407, column: 19, scope: !2303)
!2352 = !DILocation(line: 408, column: 11, scope: !2303)
!2353 = !DILocation(line: 349, column: 45, scope: !2297)
!2354 = distinct !{!2354, !2308, !2355, !1082}
!2355 = !DILocation(line: 410, column: 5, scope: !2298)
!2356 = !DILocation(line: 347, column: 10, scope: !2281)
!2357 = !DILocation(line: 344, column: 10, scope: !2281)
!2358 = !DILocation(line: 412, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2281, file: !841, line: 412, column: 7)
!2360 = !DILocation(line: 412, column: 7, scope: !2281)
!2361 = !DILocation(line: 413, column: 17, scope: !2359)
!2362 = !DILocation(line: 413, column: 5, scope: !2359)
!2363 = !DILocation(line: 414, column: 3, scope: !2281)
!2364 = distinct !DISubprogram(name: "set_program_name", scope: !504, file: !504, line: 37, type: !986, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2365)
!2365 = !{!2366, !2367, !2368}
!2366 = !DILocalVariable(name: "argv0", arg: 1, scope: !2364, file: !504, line: 37, type: !143)
!2367 = !DILocalVariable(name: "slash", scope: !2364, file: !504, line: 44, type: !143)
!2368 = !DILocalVariable(name: "base", scope: !2364, file: !504, line: 45, type: !143)
!2369 = !DILocation(line: 0, scope: !2364)
!2370 = !DILocation(line: 44, column: 23, scope: !2364)
!2371 = !DILocation(line: 45, column: 22, scope: !2364)
!2372 = !DILocation(line: 46, column: 17, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2364, file: !504, line: 46, column: 7)
!2374 = !DILocation(line: 46, column: 9, scope: !2373)
!2375 = !DILocation(line: 46, column: 25, scope: !2373)
!2376 = !DILocation(line: 46, column: 40, scope: !2373)
!2377 = !DILocalVariable(name: "__s1", arg: 1, scope: !2378, file: !1048, line: 974, type: !1184)
!2378 = distinct !DISubprogram(name: "memeq", scope: !1048, file: !1048, line: 974, type: !2379, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!191, !1184, !1184, !140}
!2381 = !{!2377, !2382, !2383}
!2382 = !DILocalVariable(name: "__s2", arg: 2, scope: !2378, file: !1048, line: 974, type: !1184)
!2383 = !DILocalVariable(name: "__n", arg: 3, scope: !2378, file: !1048, line: 974, type: !140)
!2384 = !DILocation(line: 0, scope: !2378, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 46, column: 28, scope: !2373)
!2386 = !DILocation(line: 976, column: 11, scope: !2378, inlinedAt: !2385)
!2387 = !DILocation(line: 976, column: 10, scope: !2378, inlinedAt: !2385)
!2388 = !DILocation(line: 46, column: 7, scope: !2364)
!2389 = !DILocation(line: 49, column: 11, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !504, line: 49, column: 11)
!2391 = distinct !DILexicalBlock(scope: !2373, file: !504, line: 47, column: 5)
!2392 = !DILocation(line: 49, column: 36, scope: !2390)
!2393 = !DILocation(line: 49, column: 11, scope: !2391)
!2394 = !DILocation(line: 65, column: 16, scope: !2364)
!2395 = !DILocation(line: 71, column: 27, scope: !2364)
!2396 = !DILocation(line: 74, column: 33, scope: !2364)
!2397 = !DILocation(line: 76, column: 1, scope: !2364)
!2398 = !DISubprogram(name: "strrchr", scope: !1156, file: !1156, line: 273, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!2399 = !DILocation(line: 0, scope: !513)
!2400 = !DILocation(line: 40, column: 29, scope: !513)
!2401 = !DILocation(line: 41, column: 19, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !513, file: !514, line: 41, column: 7)
!2403 = !DILocation(line: 41, column: 7, scope: !513)
!2404 = !DILocation(line: 47, column: 3, scope: !513)
!2405 = !DILocation(line: 48, column: 3, scope: !513)
!2406 = !DILocation(line: 48, column: 13, scope: !513)
!2407 = !DILocalVariable(name: "ps", arg: 1, scope: !2408, file: !2409, line: 1135, type: !2412)
!2408 = distinct !DISubprogram(name: "mbszero", scope: !2409, file: !2409, line: 1135, type: !2410, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2413)
!2409 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!2413 = !{!2407}
!2414 = !DILocation(line: 0, scope: !2408, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 48, column: 18, scope: !513)
!2416 = !DILocalVariable(name: "__dest", arg: 1, scope: !2417, file: !2418, line: 57, type: !138)
!2417 = distinct !DISubprogram(name: "memset", scope: !2418, file: !2418, line: 57, type: !2419, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !2421)
!2418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!138, !138, !80, !140}
!2421 = !{!2416, !2422, !2423}
!2422 = !DILocalVariable(name: "__ch", arg: 2, scope: !2417, file: !2418, line: 57, type: !80)
!2423 = !DILocalVariable(name: "__len", arg: 3, scope: !2417, file: !2418, line: 57, type: !140)
!2424 = !DILocation(line: 0, scope: !2417, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 1137, column: 3, scope: !2408, inlinedAt: !2415)
!2426 = !DILocation(line: 59, column: 10, scope: !2417, inlinedAt: !2425)
!2427 = !DILocation(line: 49, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !513, file: !514, line: 49, column: 7)
!2429 = !DILocation(line: 49, column: 39, scope: !2428)
!2430 = !DILocation(line: 49, column: 44, scope: !2428)
!2431 = !DILocation(line: 54, column: 1, scope: !513)
!2432 = !DISubprogram(name: "mbrtoc32", scope: !525, file: !525, line: 57, type: !2433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!140, !2435, !1025, !140, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2436)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2412)
!2438 = distinct !DISubprogram(name: "clone_quoting_options", scope: !544, file: !544, line: 113, type: !2439, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2442)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!2441, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2442 = !{!2443, !2444, !2445}
!2443 = !DILocalVariable(name: "o", arg: 1, scope: !2438, file: !544, line: 113, type: !2441)
!2444 = !DILocalVariable(name: "saved_errno", scope: !2438, file: !544, line: 115, type: !80)
!2445 = !DILocalVariable(name: "p", scope: !2438, file: !544, line: 116, type: !2441)
!2446 = !DILocation(line: 0, scope: !2438)
!2447 = !DILocation(line: 115, column: 21, scope: !2438)
!2448 = !DILocation(line: 116, column: 40, scope: !2438)
!2449 = !DILocation(line: 116, column: 31, scope: !2438)
!2450 = !DILocation(line: 118, column: 9, scope: !2438)
!2451 = !DILocation(line: 119, column: 3, scope: !2438)
!2452 = distinct !DISubprogram(name: "get_quoting_style", scope: !544, file: !544, line: 124, type: !2453, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2457)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!122, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!2457 = !{!2458}
!2458 = !DILocalVariable(name: "o", arg: 1, scope: !2452, file: !544, line: 124, type: !2455)
!2459 = !DILocation(line: 0, scope: !2452)
!2460 = !DILocation(line: 126, column: 11, scope: !2452)
!2461 = !DILocation(line: 126, column: 46, scope: !2452)
!2462 = !{!2463, !968, i64 0}
!2463 = !{!"quoting_options", !968, i64 0, !1036, i64 4, !968, i64 8, !967, i64 40, !967, i64 48}
!2464 = !DILocation(line: 126, column: 3, scope: !2452)
!2465 = distinct !DISubprogram(name: "set_quoting_style", scope: !544, file: !544, line: 132, type: !2466, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !2441, !122}
!2468 = !{!2469, !2470}
!2469 = !DILocalVariable(name: "o", arg: 1, scope: !2465, file: !544, line: 132, type: !2441)
!2470 = !DILocalVariable(name: "s", arg: 2, scope: !2465, file: !544, line: 132, type: !122)
!2471 = !DILocation(line: 0, scope: !2465)
!2472 = !DILocation(line: 134, column: 4, scope: !2465)
!2473 = !DILocation(line: 134, column: 45, scope: !2465)
!2474 = !DILocation(line: 135, column: 1, scope: !2465)
!2475 = distinct !DISubprogram(name: "set_char_quoting", scope: !544, file: !544, line: 143, type: !2476, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!80, !2441, !4, !80}
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2485, !2486}
!2479 = !DILocalVariable(name: "o", arg: 1, scope: !2475, file: !544, line: 143, type: !2441)
!2480 = !DILocalVariable(name: "c", arg: 2, scope: !2475, file: !544, line: 143, type: !4)
!2481 = !DILocalVariable(name: "i", arg: 3, scope: !2475, file: !544, line: 143, type: !80)
!2482 = !DILocalVariable(name: "uc", scope: !2475, file: !544, line: 145, type: !145)
!2483 = !DILocalVariable(name: "p", scope: !2475, file: !544, line: 146, type: !2484)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!2485 = !DILocalVariable(name: "shift", scope: !2475, file: !544, line: 148, type: !80)
!2486 = !DILocalVariable(name: "r", scope: !2475, file: !544, line: 149, type: !99)
!2487 = !DILocation(line: 0, scope: !2475)
!2488 = !DILocation(line: 147, column: 6, scope: !2475)
!2489 = !DILocation(line: 147, column: 41, scope: !2475)
!2490 = !DILocation(line: 147, column: 62, scope: !2475)
!2491 = !DILocation(line: 147, column: 57, scope: !2475)
!2492 = !DILocation(line: 148, column: 15, scope: !2475)
!2493 = !DILocation(line: 149, column: 21, scope: !2475)
!2494 = !DILocation(line: 149, column: 24, scope: !2475)
!2495 = !DILocation(line: 149, column: 34, scope: !2475)
!2496 = !DILocation(line: 150, column: 19, scope: !2475)
!2497 = !DILocation(line: 150, column: 24, scope: !2475)
!2498 = !DILocation(line: 150, column: 6, scope: !2475)
!2499 = !DILocation(line: 151, column: 3, scope: !2475)
!2500 = distinct !DISubprogram(name: "set_quoting_flags", scope: !544, file: !544, line: 159, type: !2501, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!80, !2441, !80}
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "o", arg: 1, scope: !2500, file: !544, line: 159, type: !2441)
!2505 = !DILocalVariable(name: "i", arg: 2, scope: !2500, file: !544, line: 159, type: !80)
!2506 = !DILocalVariable(name: "r", scope: !2500, file: !544, line: 163, type: !80)
!2507 = !DILocation(line: 0, scope: !2500)
!2508 = !DILocation(line: 161, column: 8, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2500, file: !544, line: 161, column: 7)
!2510 = !DILocation(line: 161, column: 7, scope: !2500)
!2511 = !DILocation(line: 163, column: 14, scope: !2500)
!2512 = !{!2463, !1036, i64 4}
!2513 = !DILocation(line: 164, column: 12, scope: !2500)
!2514 = !DILocation(line: 165, column: 3, scope: !2500)
!2515 = distinct !DISubprogram(name: "set_custom_quoting", scope: !544, file: !544, line: 169, type: !2516, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !2441, !143, !143}
!2518 = !{!2519, !2520, !2521}
!2519 = !DILocalVariable(name: "o", arg: 1, scope: !2515, file: !544, line: 169, type: !2441)
!2520 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2515, file: !544, line: 170, type: !143)
!2521 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2515, file: !544, line: 170, type: !143)
!2522 = !DILocation(line: 0, scope: !2515)
!2523 = !DILocation(line: 172, column: 8, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2515, file: !544, line: 172, column: 7)
!2525 = !DILocation(line: 172, column: 7, scope: !2515)
!2526 = !DILocation(line: 174, column: 12, scope: !2515)
!2527 = !DILocation(line: 175, column: 8, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2515, file: !544, line: 175, column: 7)
!2529 = !DILocation(line: 175, column: 19, scope: !2528)
!2530 = !DILocation(line: 176, column: 5, scope: !2528)
!2531 = !DILocation(line: 177, column: 6, scope: !2515)
!2532 = !DILocation(line: 177, column: 17, scope: !2515)
!2533 = !{!2463, !967, i64 40}
!2534 = !DILocation(line: 178, column: 6, scope: !2515)
!2535 = !DILocation(line: 178, column: 18, scope: !2515)
!2536 = !{!2463, !967, i64 48}
!2537 = !DILocation(line: 179, column: 1, scope: !2515)
!2538 = !DISubprogram(name: "abort", scope: !1160, file: !1160, line: 598, type: !480, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !975)
!2539 = distinct !DISubprogram(name: "quotearg_buffer", scope: !544, file: !544, line: 774, type: !2540, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!140, !137, !140, !143, !140, !2455}
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2543 = !DILocalVariable(name: "buffer", arg: 1, scope: !2539, file: !544, line: 774, type: !137)
!2544 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2539, file: !544, line: 774, type: !140)
!2545 = !DILocalVariable(name: "arg", arg: 3, scope: !2539, file: !544, line: 775, type: !143)
!2546 = !DILocalVariable(name: "argsize", arg: 4, scope: !2539, file: !544, line: 775, type: !140)
!2547 = !DILocalVariable(name: "o", arg: 5, scope: !2539, file: !544, line: 776, type: !2455)
!2548 = !DILocalVariable(name: "p", scope: !2539, file: !544, line: 778, type: !2455)
!2549 = !DILocalVariable(name: "saved_errno", scope: !2539, file: !544, line: 779, type: !80)
!2550 = !DILocalVariable(name: "r", scope: !2539, file: !544, line: 780, type: !140)
!2551 = !DILocation(line: 0, scope: !2539)
!2552 = !DILocation(line: 778, column: 37, scope: !2539)
!2553 = !DILocation(line: 779, column: 21, scope: !2539)
!2554 = !DILocation(line: 781, column: 43, scope: !2539)
!2555 = !DILocation(line: 781, column: 53, scope: !2539)
!2556 = !DILocation(line: 781, column: 63, scope: !2539)
!2557 = !DILocation(line: 782, column: 43, scope: !2539)
!2558 = !DILocation(line: 782, column: 58, scope: !2539)
!2559 = !DILocation(line: 780, column: 14, scope: !2539)
!2560 = !DILocation(line: 783, column: 9, scope: !2539)
!2561 = !DILocation(line: 784, column: 3, scope: !2539)
!2562 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !544, file: !544, line: 251, type: !2563, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2567)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!140, !137, !140, !143, !140, !122, !80, !2565, !143, !143}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2592, !2594, !2597, !2598, !2599, !2600, !2603, !2604, !2607, !2611, !2612, !2620, !2623, !2624, !2626, !2627, !2628, !2629}
!2568 = !DILocalVariable(name: "buffer", arg: 1, scope: !2562, file: !544, line: 251, type: !137)
!2569 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2562, file: !544, line: 251, type: !140)
!2570 = !DILocalVariable(name: "arg", arg: 3, scope: !2562, file: !544, line: 252, type: !143)
!2571 = !DILocalVariable(name: "argsize", arg: 4, scope: !2562, file: !544, line: 252, type: !140)
!2572 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2562, file: !544, line: 253, type: !122)
!2573 = !DILocalVariable(name: "flags", arg: 6, scope: !2562, file: !544, line: 253, type: !80)
!2574 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2562, file: !544, line: 254, type: !2565)
!2575 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2562, file: !544, line: 255, type: !143)
!2576 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2562, file: !544, line: 256, type: !143)
!2577 = !DILocalVariable(name: "unibyte_locale", scope: !2562, file: !544, line: 258, type: !191)
!2578 = !DILocalVariable(name: "len", scope: !2562, file: !544, line: 260, type: !140)
!2579 = !DILocalVariable(name: "orig_buffersize", scope: !2562, file: !544, line: 261, type: !140)
!2580 = !DILocalVariable(name: "quote_string", scope: !2562, file: !544, line: 262, type: !143)
!2581 = !DILocalVariable(name: "quote_string_len", scope: !2562, file: !544, line: 263, type: !140)
!2582 = !DILocalVariable(name: "backslash_escapes", scope: !2562, file: !544, line: 264, type: !191)
!2583 = !DILocalVariable(name: "elide_outer_quotes", scope: !2562, file: !544, line: 265, type: !191)
!2584 = !DILocalVariable(name: "encountered_single_quote", scope: !2562, file: !544, line: 266, type: !191)
!2585 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2562, file: !544, line: 267, type: !191)
!2586 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2562, file: !544, line: 309, type: !191)
!2587 = !DILocalVariable(name: "lq", scope: !2588, file: !544, line: 361, type: !143)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !544, line: 361, column: 11)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !544, line: 360, column: 13)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !544, line: 333, column: 7)
!2591 = distinct !DILexicalBlock(scope: !2562, file: !544, line: 312, column: 5)
!2592 = !DILocalVariable(name: "i", scope: !2593, file: !544, line: 395, type: !140)
!2593 = distinct !DILexicalBlock(scope: !2562, file: !544, line: 395, column: 3)
!2594 = !DILocalVariable(name: "is_right_quote", scope: !2595, file: !544, line: 397, type: !191)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !544, line: 396, column: 5)
!2596 = distinct !DILexicalBlock(scope: !2593, file: !544, line: 395, column: 3)
!2597 = !DILocalVariable(name: "escaping", scope: !2595, file: !544, line: 398, type: !191)
!2598 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2595, file: !544, line: 399, type: !191)
!2599 = !DILocalVariable(name: "c", scope: !2595, file: !544, line: 417, type: !145)
!2600 = !DILocalVariable(name: "m", scope: !2601, file: !544, line: 598, type: !140)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 596, column: 11)
!2602 = distinct !DILexicalBlock(scope: !2595, file: !544, line: 419, column: 9)
!2603 = !DILocalVariable(name: "printable", scope: !2601, file: !544, line: 600, type: !191)
!2604 = !DILocalVariable(name: "mbs", scope: !2605, file: !544, line: 609, type: !617)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !544, line: 608, column: 15)
!2606 = distinct !DILexicalBlock(scope: !2601, file: !544, line: 602, column: 17)
!2607 = !DILocalVariable(name: "w", scope: !2608, file: !544, line: 618, type: !524)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !544, line: 617, column: 19)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !544, line: 616, column: 17)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !544, line: 616, column: 17)
!2611 = !DILocalVariable(name: "bytes", scope: !2608, file: !544, line: 619, type: !140)
!2612 = !DILocalVariable(name: "j", scope: !2613, file: !544, line: 648, type: !140)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !544, line: 648, column: 29)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !544, line: 647, column: 27)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !544, line: 645, column: 29)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !544, line: 636, column: 23)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !544, line: 628, column: 30)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !544, line: 623, column: 30)
!2619 = distinct !DILexicalBlock(scope: !2608, file: !544, line: 621, column: 25)
!2620 = !DILocalVariable(name: "ilim", scope: !2621, file: !544, line: 674, type: !140)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !544, line: 671, column: 15)
!2622 = distinct !DILexicalBlock(scope: !2601, file: !544, line: 670, column: 17)
!2623 = !DILabel(scope: !2562, name: "process_input", file: !544, line: 308)
!2624 = !DILabel(scope: !2625, name: "c_and_shell_escape", file: !544, line: 502)
!2625 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 478, column: 9)
!2626 = !DILabel(scope: !2625, name: "c_escape", file: !544, line: 507)
!2627 = !DILabel(scope: !2595, name: "store_escape", file: !544, line: 709)
!2628 = !DILabel(scope: !2595, name: "store_c", file: !544, line: 712)
!2629 = !DILabel(scope: !2562, name: "force_outer_quoting_style", file: !544, line: 753)
!2630 = !DILocation(line: 0, scope: !2562)
!2631 = !DILocation(line: 258, column: 25, scope: !2562)
!2632 = !DILocation(line: 258, column: 36, scope: !2562)
!2633 = !DILocation(line: 265, column: 8, scope: !2562)
!2634 = !DILocation(line: 267, column: 3, scope: !2562)
!2635 = !DILocation(line: 261, column: 10, scope: !2562)
!2636 = !DILocation(line: 262, column: 15, scope: !2562)
!2637 = !DILocation(line: 263, column: 10, scope: !2562)
!2638 = !DILocation(line: 264, column: 8, scope: !2562)
!2639 = !DILocation(line: 266, column: 8, scope: !2562)
!2640 = !DILocation(line: 267, column: 8, scope: !2562)
!2641 = !DILocation(line: 308, column: 2, scope: !2562)
!2642 = !DILocation(line: 311, column: 3, scope: !2562)
!2643 = !DILocation(line: 318, column: 11, scope: !2591)
!2644 = !DILocation(line: 318, column: 12, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2591, file: !544, line: 318, column: 11)
!2646 = !DILocation(line: 319, column: 9, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !544, line: 319, column: 9)
!2648 = distinct !DILexicalBlock(scope: !2645, file: !544, line: 319, column: 9)
!2649 = !DILocation(line: 319, column: 9, scope: !2648)
!2650 = !DILocation(line: 0, scope: !608, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 357, column: 26, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !544, line: 335, column: 11)
!2653 = distinct !DILexicalBlock(scope: !2590, file: !544, line: 334, column: 13)
!2654 = !DILocation(line: 199, column: 29, scope: !608, inlinedAt: !2651)
!2655 = !DILocation(line: 201, column: 19, scope: !2656, inlinedAt: !2651)
!2656 = distinct !DILexicalBlock(scope: !608, file: !544, line: 201, column: 7)
!2657 = !DILocation(line: 201, column: 7, scope: !608, inlinedAt: !2651)
!2658 = !DILocation(line: 229, column: 3, scope: !608, inlinedAt: !2651)
!2659 = !DILocation(line: 230, column: 3, scope: !608, inlinedAt: !2651)
!2660 = !DILocation(line: 230, column: 13, scope: !608, inlinedAt: !2651)
!2661 = !DILocalVariable(name: "ps", arg: 1, scope: !2662, file: !2409, line: 1135, type: !2665)
!2662 = distinct !DISubprogram(name: "mbszero", scope: !2409, file: !2409, line: 1135, type: !2663, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2666)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!2666 = !{!2661}
!2667 = !DILocation(line: 0, scope: !2662, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 230, column: 18, scope: !608, inlinedAt: !2651)
!2669 = !DILocalVariable(name: "__dest", arg: 1, scope: !2670, file: !2418, line: 57, type: !138)
!2670 = distinct !DISubprogram(name: "memset", scope: !2418, file: !2418, line: 57, type: !2419, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2671)
!2671 = !{!2669, !2672, !2673}
!2672 = !DILocalVariable(name: "__ch", arg: 2, scope: !2670, file: !2418, line: 57, type: !80)
!2673 = !DILocalVariable(name: "__len", arg: 3, scope: !2670, file: !2418, line: 57, type: !140)
!2674 = !DILocation(line: 0, scope: !2670, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1137, column: 3, scope: !2662, inlinedAt: !2668)
!2676 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !2675)
!2677 = !DILocation(line: 231, column: 7, scope: !2678, inlinedAt: !2651)
!2678 = distinct !DILexicalBlock(scope: !608, file: !544, line: 231, column: 7)
!2679 = !DILocation(line: 231, column: 40, scope: !2678, inlinedAt: !2651)
!2680 = !DILocation(line: 231, column: 45, scope: !2678, inlinedAt: !2651)
!2681 = !DILocation(line: 235, column: 1, scope: !608, inlinedAt: !2651)
!2682 = !DILocation(line: 0, scope: !608, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 358, column: 27, scope: !2652)
!2684 = !DILocation(line: 199, column: 29, scope: !608, inlinedAt: !2683)
!2685 = !DILocation(line: 201, column: 19, scope: !2656, inlinedAt: !2683)
!2686 = !DILocation(line: 201, column: 7, scope: !608, inlinedAt: !2683)
!2687 = !DILocation(line: 229, column: 3, scope: !608, inlinedAt: !2683)
!2688 = !DILocation(line: 230, column: 3, scope: !608, inlinedAt: !2683)
!2689 = !DILocation(line: 230, column: 13, scope: !608, inlinedAt: !2683)
!2690 = !DILocation(line: 0, scope: !2662, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 230, column: 18, scope: !608, inlinedAt: !2683)
!2692 = !DILocation(line: 0, scope: !2670, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 1137, column: 3, scope: !2662, inlinedAt: !2691)
!2694 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !2693)
!2695 = !DILocation(line: 231, column: 7, scope: !2678, inlinedAt: !2683)
!2696 = !DILocation(line: 231, column: 40, scope: !2678, inlinedAt: !2683)
!2697 = !DILocation(line: 231, column: 45, scope: !2678, inlinedAt: !2683)
!2698 = !DILocation(line: 235, column: 1, scope: !608, inlinedAt: !2683)
!2699 = !DILocation(line: 360, column: 14, scope: !2589)
!2700 = !DILocation(line: 360, column: 13, scope: !2590)
!2701 = !DILocation(line: 0, scope: !2588)
!2702 = !DILocation(line: 361, column: 45, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2588, file: !544, line: 361, column: 11)
!2704 = !DILocation(line: 361, column: 11, scope: !2588)
!2705 = !DILocation(line: 362, column: 13, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !544, line: 362, column: 13)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !544, line: 362, column: 13)
!2708 = !DILocation(line: 362, column: 13, scope: !2707)
!2709 = !DILocation(line: 361, column: 52, scope: !2703)
!2710 = distinct !{!2710, !2704, !2711, !1082}
!2711 = !DILocation(line: 362, column: 13, scope: !2588)
!2712 = !DILocation(line: 260, column: 10, scope: !2562)
!2713 = !DILocation(line: 365, column: 28, scope: !2590)
!2714 = !DILocation(line: 367, column: 7, scope: !2591)
!2715 = !DILocation(line: 370, column: 7, scope: !2591)
!2716 = !DILocation(line: 373, column: 7, scope: !2591)
!2717 = !DILocation(line: 376, column: 12, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2591, file: !544, line: 376, column: 11)
!2719 = !DILocation(line: 376, column: 11, scope: !2591)
!2720 = !DILocation(line: 381, column: 12, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2591, file: !544, line: 381, column: 11)
!2722 = !DILocation(line: 381, column: 11, scope: !2591)
!2723 = !DILocation(line: 382, column: 9, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !544, line: 382, column: 9)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !544, line: 382, column: 9)
!2726 = !DILocation(line: 382, column: 9, scope: !2725)
!2727 = !DILocation(line: 389, column: 7, scope: !2591)
!2728 = !DILocation(line: 392, column: 7, scope: !2591)
!2729 = !DILocation(line: 0, scope: !2593)
!2730 = !DILocation(line: 395, column: 8, scope: !2593)
!2731 = !DILocation(line: 309, column: 8, scope: !2562)
!2732 = !DILocation(line: 395, scope: !2593)
!2733 = !DILocation(line: 395, column: 34, scope: !2596)
!2734 = !DILocation(line: 395, column: 26, scope: !2596)
!2735 = !DILocation(line: 395, column: 48, scope: !2596)
!2736 = !DILocation(line: 395, column: 55, scope: !2596)
!2737 = !DILocation(line: 395, column: 3, scope: !2593)
!2738 = !DILocation(line: 395, column: 67, scope: !2596)
!2739 = !DILocation(line: 0, scope: !2595)
!2740 = !DILocation(line: 402, column: 11, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2595, file: !544, line: 401, column: 11)
!2742 = !DILocation(line: 404, column: 17, scope: !2741)
!2743 = !DILocation(line: 405, column: 39, scope: !2741)
!2744 = !DILocation(line: 409, column: 32, scope: !2741)
!2745 = !DILocation(line: 405, column: 19, scope: !2741)
!2746 = !DILocation(line: 405, column: 15, scope: !2741)
!2747 = !DILocation(line: 410, column: 11, scope: !2741)
!2748 = !DILocation(line: 410, column: 25, scope: !2741)
!2749 = !DILocalVariable(name: "__s1", arg: 1, scope: !2750, file: !1048, line: 974, type: !1184)
!2750 = distinct !DISubprogram(name: "memeq", scope: !1048, file: !1048, line: 974, type: !2379, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2751)
!2751 = !{!2749, !2752, !2753}
!2752 = !DILocalVariable(name: "__s2", arg: 2, scope: !2750, file: !1048, line: 974, type: !1184)
!2753 = !DILocalVariable(name: "__n", arg: 3, scope: !2750, file: !1048, line: 974, type: !140)
!2754 = !DILocation(line: 0, scope: !2750, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 410, column: 14, scope: !2741)
!2756 = !DILocation(line: 976, column: 11, scope: !2750, inlinedAt: !2755)
!2757 = !DILocation(line: 976, column: 10, scope: !2750, inlinedAt: !2755)
!2758 = !DILocation(line: 401, column: 11, scope: !2595)
!2759 = !DILocation(line: 417, column: 25, scope: !2595)
!2760 = !DILocation(line: 418, column: 7, scope: !2595)
!2761 = !DILocation(line: 421, column: 15, scope: !2602)
!2762 = !DILocation(line: 423, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !544, line: 423, column: 15)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !544, line: 422, column: 13)
!2765 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 421, column: 15)
!2766 = !DILocation(line: 423, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !544, line: 423, column: 15)
!2768 = !DILocation(line: 423, column: 15, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !544, line: 423, column: 15)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !544, line: 423, column: 15)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !544, line: 423, column: 15)
!2772 = !DILocation(line: 423, column: 15, scope: !2770)
!2773 = !DILocation(line: 423, column: 15, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !544, line: 423, column: 15)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !544, line: 423, column: 15)
!2776 = !DILocation(line: 423, column: 15, scope: !2775)
!2777 = !DILocation(line: 423, column: 15, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !544, line: 423, column: 15)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !544, line: 423, column: 15)
!2780 = !DILocation(line: 423, column: 15, scope: !2779)
!2781 = !DILocation(line: 423, column: 15, scope: !2771)
!2782 = !DILocation(line: 423, column: 15, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !544, line: 423, column: 15)
!2784 = distinct !DILexicalBlock(scope: !2763, file: !544, line: 423, column: 15)
!2785 = !DILocation(line: 423, column: 15, scope: !2784)
!2786 = !DILocation(line: 431, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2764, file: !544, line: 430, column: 19)
!2788 = !DILocation(line: 431, column: 24, scope: !2787)
!2789 = !DILocation(line: 431, column: 28, scope: !2787)
!2790 = !DILocation(line: 431, column: 38, scope: !2787)
!2791 = !DILocation(line: 431, column: 48, scope: !2787)
!2792 = !DILocation(line: 431, column: 59, scope: !2787)
!2793 = !DILocation(line: 433, column: 19, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !544, line: 433, column: 19)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !544, line: 433, column: 19)
!2796 = distinct !DILexicalBlock(scope: !2787, file: !544, line: 432, column: 17)
!2797 = !DILocation(line: 433, column: 19, scope: !2795)
!2798 = !DILocation(line: 434, column: 19, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !544, line: 434, column: 19)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !544, line: 434, column: 19)
!2801 = !DILocation(line: 434, column: 19, scope: !2800)
!2802 = !DILocation(line: 435, column: 17, scope: !2796)
!2803 = !DILocation(line: 442, column: 20, scope: !2765)
!2804 = !DILocation(line: 447, column: 11, scope: !2602)
!2805 = !DILocation(line: 450, column: 19, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 448, column: 13)
!2807 = !DILocation(line: 456, column: 19, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2806, file: !544, line: 455, column: 19)
!2809 = !DILocation(line: 456, column: 24, scope: !2808)
!2810 = !DILocation(line: 456, column: 28, scope: !2808)
!2811 = !DILocation(line: 456, column: 38, scope: !2808)
!2812 = !DILocation(line: 456, column: 47, scope: !2808)
!2813 = !DILocation(line: 456, column: 41, scope: !2808)
!2814 = !DILocation(line: 456, column: 52, scope: !2808)
!2815 = !DILocation(line: 455, column: 19, scope: !2806)
!2816 = !DILocation(line: 457, column: 25, scope: !2808)
!2817 = !DILocation(line: 457, column: 17, scope: !2808)
!2818 = !DILocation(line: 464, column: 25, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2808, file: !544, line: 458, column: 19)
!2820 = !DILocation(line: 468, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !544, line: 468, column: 21)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !544, line: 468, column: 21)
!2823 = !DILocation(line: 468, column: 21, scope: !2822)
!2824 = !DILocation(line: 469, column: 21, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !544, line: 469, column: 21)
!2826 = distinct !DILexicalBlock(scope: !2819, file: !544, line: 469, column: 21)
!2827 = !DILocation(line: 469, column: 21, scope: !2826)
!2828 = !DILocation(line: 470, column: 21, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !544, line: 470, column: 21)
!2830 = distinct !DILexicalBlock(scope: !2819, file: !544, line: 470, column: 21)
!2831 = !DILocation(line: 470, column: 21, scope: !2830)
!2832 = !DILocation(line: 471, column: 21, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !544, line: 471, column: 21)
!2834 = distinct !DILexicalBlock(scope: !2819, file: !544, line: 471, column: 21)
!2835 = !DILocation(line: 471, column: 21, scope: !2834)
!2836 = !DILocation(line: 472, column: 21, scope: !2819)
!2837 = !DILocation(line: 482, column: 33, scope: !2625)
!2838 = !DILocation(line: 483, column: 33, scope: !2625)
!2839 = !DILocation(line: 485, column: 33, scope: !2625)
!2840 = !DILocation(line: 486, column: 33, scope: !2625)
!2841 = !DILocation(line: 487, column: 33, scope: !2625)
!2842 = !DILocation(line: 490, column: 17, scope: !2625)
!2843 = !DILocation(line: 492, column: 21, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !544, line: 491, column: 15)
!2845 = distinct !DILexicalBlock(scope: !2625, file: !544, line: 490, column: 17)
!2846 = !DILocation(line: 499, column: 35, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2625, file: !544, line: 499, column: 17)
!2848 = !DILocation(line: 499, column: 57, scope: !2847)
!2849 = !DILocation(line: 0, scope: !2625)
!2850 = !DILocation(line: 502, column: 11, scope: !2625)
!2851 = !DILocation(line: 504, column: 17, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2625, file: !544, line: 503, column: 17)
!2853 = !DILocation(line: 507, column: 11, scope: !2625)
!2854 = !DILocation(line: 508, column: 17, scope: !2625)
!2855 = !DILocation(line: 517, column: 15, scope: !2602)
!2856 = !DILocation(line: 517, column: 40, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 517, column: 15)
!2858 = !DILocation(line: 517, column: 47, scope: !2857)
!2859 = !DILocation(line: 517, column: 18, scope: !2857)
!2860 = !DILocation(line: 521, column: 17, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 521, column: 15)
!2862 = !DILocation(line: 521, column: 15, scope: !2602)
!2863 = !DILocation(line: 525, column: 11, scope: !2602)
!2864 = !DILocation(line: 537, column: 15, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 536, column: 15)
!2866 = !DILocation(line: 544, column: 15, scope: !2602)
!2867 = !DILocation(line: 546, column: 19, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !544, line: 545, column: 13)
!2869 = distinct !DILexicalBlock(scope: !2602, file: !544, line: 544, column: 15)
!2870 = !DILocation(line: 549, column: 19, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !544, line: 549, column: 19)
!2872 = !DILocation(line: 549, column: 30, scope: !2871)
!2873 = !DILocation(line: 558, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !544, line: 558, column: 15)
!2875 = distinct !DILexicalBlock(scope: !2868, file: !544, line: 558, column: 15)
!2876 = !DILocation(line: 558, column: 15, scope: !2875)
!2877 = !DILocation(line: 559, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !544, line: 559, column: 15)
!2879 = distinct !DILexicalBlock(scope: !2868, file: !544, line: 559, column: 15)
!2880 = !DILocation(line: 559, column: 15, scope: !2879)
!2881 = !DILocation(line: 560, column: 15, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !544, line: 560, column: 15)
!2883 = distinct !DILexicalBlock(scope: !2868, file: !544, line: 560, column: 15)
!2884 = !DILocation(line: 560, column: 15, scope: !2883)
!2885 = !DILocation(line: 562, column: 13, scope: !2868)
!2886 = !DILocation(line: 602, column: 17, scope: !2601)
!2887 = !DILocation(line: 0, scope: !2601)
!2888 = !DILocation(line: 605, column: 29, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2606, file: !544, line: 603, column: 15)
!2890 = !DILocation(line: 605, column: 27, scope: !2889)
!2891 = !DILocation(line: 668, column: 40, scope: !2601)
!2892 = !DILocation(line: 670, column: 23, scope: !2622)
!2893 = !DILocation(line: 609, column: 17, scope: !2605)
!2894 = !DILocation(line: 609, column: 27, scope: !2605)
!2895 = !DILocation(line: 0, scope: !2662, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 609, column: 32, scope: !2605)
!2897 = !DILocation(line: 0, scope: !2670, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 1137, column: 3, scope: !2662, inlinedAt: !2896)
!2899 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !2898)
!2900 = !DILocation(line: 613, column: 29, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2605, file: !544, line: 613, column: 21)
!2902 = !DILocation(line: 613, column: 21, scope: !2605)
!2903 = !DILocation(line: 614, column: 29, scope: !2901)
!2904 = !DILocation(line: 614, column: 19, scope: !2901)
!2905 = !DILocation(line: 618, column: 21, scope: !2608)
!2906 = !DILocation(line: 620, column: 54, scope: !2608)
!2907 = !DILocation(line: 0, scope: !2608)
!2908 = !DILocation(line: 619, column: 36, scope: !2608)
!2909 = !DILocation(line: 621, column: 25, scope: !2608)
!2910 = !DILocation(line: 631, column: 38, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2617, file: !544, line: 629, column: 23)
!2912 = !DILocation(line: 631, column: 48, scope: !2911)
!2913 = !DILocation(line: 665, column: 19, scope: !2609)
!2914 = !DILocation(line: 666, column: 15, scope: !2606)
!2915 = !DILocation(line: 626, column: 25, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2618, file: !544, line: 624, column: 23)
!2917 = !DILocation(line: 631, column: 51, scope: !2911)
!2918 = !DILocation(line: 631, column: 25, scope: !2911)
!2919 = !DILocation(line: 632, column: 28, scope: !2911)
!2920 = !DILocation(line: 631, column: 34, scope: !2911)
!2921 = distinct !{!2921, !2918, !2919, !1082}
!2922 = !DILocation(line: 646, column: 29, scope: !2615)
!2923 = !DILocation(line: 0, scope: !2613)
!2924 = !DILocation(line: 649, column: 49, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2613, file: !544, line: 648, column: 29)
!2926 = !DILocation(line: 649, column: 39, scope: !2925)
!2927 = !DILocation(line: 649, column: 31, scope: !2925)
!2928 = !DILocation(line: 648, column: 60, scope: !2925)
!2929 = !DILocation(line: 648, column: 50, scope: !2925)
!2930 = !DILocation(line: 648, column: 29, scope: !2613)
!2931 = distinct !{!2931, !2930, !2932, !1082}
!2932 = !DILocation(line: 654, column: 33, scope: !2613)
!2933 = !DILocation(line: 657, column: 43, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2616, file: !544, line: 657, column: 29)
!2935 = !DILocalVariable(name: "wc", arg: 1, scope: !2936, file: !2937, line: 865, type: !2940)
!2936 = distinct !DISubprogram(name: "c32isprint", scope: !2937, file: !2937, line: 865, type: !2938, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !2942)
!2937 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!80, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2941, line: 20, baseType: !99)
!2941 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2942 = !{!2935}
!2943 = !DILocation(line: 0, scope: !2936, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 657, column: 31, scope: !2934)
!2945 = !DILocation(line: 871, column: 10, scope: !2936, inlinedAt: !2944)
!2946 = !DILocation(line: 657, column: 31, scope: !2934)
!2947 = !DILocation(line: 657, column: 29, scope: !2616)
!2948 = !DILocation(line: 664, column: 23, scope: !2608)
!2949 = !DILocation(line: 670, column: 19, scope: !2622)
!2950 = !DILocation(line: 670, column: 45, scope: !2622)
!2951 = !DILocation(line: 674, column: 33, scope: !2621)
!2952 = !DILocation(line: 0, scope: !2621)
!2953 = !DILocation(line: 676, column: 17, scope: !2621)
!2954 = !DILocation(line: 398, column: 12, scope: !2595)
!2955 = !DILocation(line: 678, column: 43, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !544, line: 678, column: 25)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !544, line: 677, column: 19)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !544, line: 676, column: 17)
!2959 = distinct !DILexicalBlock(scope: !2621, file: !544, line: 676, column: 17)
!2960 = !DILocation(line: 680, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !544, line: 680, column: 25)
!2962 = distinct !DILexicalBlock(scope: !2956, file: !544, line: 679, column: 23)
!2963 = !DILocation(line: 680, column: 25, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !544, line: 680, column: 25)
!2965 = !DILocation(line: 680, column: 25, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !544, line: 680, column: 25)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !544, line: 680, column: 25)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !544, line: 680, column: 25)
!2969 = !DILocation(line: 680, column: 25, scope: !2967)
!2970 = !DILocation(line: 680, column: 25, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !544, line: 680, column: 25)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !544, line: 680, column: 25)
!2973 = !DILocation(line: 680, column: 25, scope: !2972)
!2974 = !DILocation(line: 680, column: 25, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !544, line: 680, column: 25)
!2976 = distinct !DILexicalBlock(scope: !2968, file: !544, line: 680, column: 25)
!2977 = !DILocation(line: 680, column: 25, scope: !2976)
!2978 = !DILocation(line: 680, column: 25, scope: !2968)
!2979 = !DILocation(line: 680, column: 25, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !544, line: 680, column: 25)
!2981 = distinct !DILexicalBlock(scope: !2961, file: !544, line: 680, column: 25)
!2982 = !DILocation(line: 680, column: 25, scope: !2981)
!2983 = !DILocation(line: 681, column: 25, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !544, line: 681, column: 25)
!2985 = distinct !DILexicalBlock(scope: !2962, file: !544, line: 681, column: 25)
!2986 = !DILocation(line: 681, column: 25, scope: !2985)
!2987 = !DILocation(line: 682, column: 25, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !544, line: 682, column: 25)
!2989 = distinct !DILexicalBlock(scope: !2962, file: !544, line: 682, column: 25)
!2990 = !DILocation(line: 682, column: 25, scope: !2989)
!2991 = !DILocation(line: 683, column: 38, scope: !2962)
!2992 = !DILocation(line: 683, column: 33, scope: !2962)
!2993 = !DILocation(line: 684, column: 23, scope: !2962)
!2994 = !DILocation(line: 685, column: 30, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2956, file: !544, line: 685, column: 30)
!2996 = !DILocation(line: 685, column: 30, scope: !2956)
!2997 = !DILocation(line: 687, column: 25, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !544, line: 687, column: 25)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !544, line: 687, column: 25)
!3000 = distinct !DILexicalBlock(scope: !2995, file: !544, line: 686, column: 23)
!3001 = !DILocation(line: 687, column: 25, scope: !2999)
!3002 = !DILocation(line: 689, column: 23, scope: !3000)
!3003 = !DILocation(line: 690, column: 35, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2957, file: !544, line: 690, column: 25)
!3005 = !DILocation(line: 690, column: 30, scope: !3004)
!3006 = !DILocation(line: 690, column: 25, scope: !2957)
!3007 = !DILocation(line: 692, column: 21, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !544, line: 692, column: 21)
!3009 = distinct !DILexicalBlock(scope: !2957, file: !544, line: 692, column: 21)
!3010 = !DILocation(line: 692, column: 21, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !544, line: 692, column: 21)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !544, line: 692, column: 21)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !544, line: 692, column: 21)
!3014 = !DILocation(line: 692, column: 21, scope: !3012)
!3015 = !DILocation(line: 692, column: 21, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !544, line: 692, column: 21)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !544, line: 692, column: 21)
!3018 = !DILocation(line: 692, column: 21, scope: !3017)
!3019 = !DILocation(line: 692, column: 21, scope: !3013)
!3020 = !DILocation(line: 0, scope: !2957)
!3021 = !DILocation(line: 693, column: 21, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !544, line: 693, column: 21)
!3023 = distinct !DILexicalBlock(scope: !2957, file: !544, line: 693, column: 21)
!3024 = !DILocation(line: 693, column: 21, scope: !3023)
!3025 = !DILocation(line: 694, column: 25, scope: !2957)
!3026 = !DILocation(line: 676, column: 17, scope: !2958)
!3027 = distinct !{!3027, !3028, !3029}
!3028 = !DILocation(line: 676, column: 17, scope: !2959)
!3029 = !DILocation(line: 695, column: 19, scope: !2959)
!3030 = !DILocation(line: 409, column: 30, scope: !2741)
!3031 = !DILocation(line: 702, column: 34, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2595, file: !544, line: 702, column: 11)
!3033 = !DILocation(line: 704, column: 14, scope: !3032)
!3034 = !DILocation(line: 705, column: 14, scope: !3032)
!3035 = !DILocation(line: 705, column: 35, scope: !3032)
!3036 = !DILocation(line: 705, column: 17, scope: !3032)
!3037 = !DILocation(line: 705, column: 47, scope: !3032)
!3038 = !DILocation(line: 705, column: 65, scope: !3032)
!3039 = !DILocation(line: 706, column: 11, scope: !3032)
!3040 = !DILocation(line: 702, column: 11, scope: !2595)
!3041 = !DILocation(line: 395, column: 15, scope: !2593)
!3042 = !DILocation(line: 709, column: 5, scope: !2595)
!3043 = !DILocation(line: 710, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2595, file: !544, line: 710, column: 7)
!3045 = !DILocation(line: 710, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3044, file: !544, line: 710, column: 7)
!3047 = !DILocation(line: 710, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !544, line: 710, column: 7)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !544, line: 710, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !544, line: 710, column: 7)
!3051 = !DILocation(line: 710, column: 7, scope: !3049)
!3052 = !DILocation(line: 710, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !544, line: 710, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !544, line: 710, column: 7)
!3055 = !DILocation(line: 710, column: 7, scope: !3054)
!3056 = !DILocation(line: 710, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !544, line: 710, column: 7)
!3058 = distinct !DILexicalBlock(scope: !3050, file: !544, line: 710, column: 7)
!3059 = !DILocation(line: 710, column: 7, scope: !3058)
!3060 = !DILocation(line: 710, column: 7, scope: !3050)
!3061 = !DILocation(line: 710, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !544, line: 710, column: 7)
!3063 = distinct !DILexicalBlock(scope: !3044, file: !544, line: 710, column: 7)
!3064 = !DILocation(line: 710, column: 7, scope: !3063)
!3065 = !DILocation(line: 712, column: 5, scope: !2595)
!3066 = !DILocation(line: 713, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !544, line: 713, column: 7)
!3068 = distinct !DILexicalBlock(scope: !2595, file: !544, line: 713, column: 7)
!3069 = !DILocation(line: 417, column: 21, scope: !2595)
!3070 = !DILocation(line: 713, column: 7, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !544, line: 713, column: 7)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !544, line: 713, column: 7)
!3073 = distinct !DILexicalBlock(scope: !3067, file: !544, line: 713, column: 7)
!3074 = !DILocation(line: 713, column: 7, scope: !3072)
!3075 = !DILocation(line: 713, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !544, line: 713, column: 7)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !544, line: 713, column: 7)
!3078 = !DILocation(line: 713, column: 7, scope: !3077)
!3079 = !DILocation(line: 713, column: 7, scope: !3073)
!3080 = !DILocation(line: 714, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !544, line: 714, column: 7)
!3082 = distinct !DILexicalBlock(scope: !2595, file: !544, line: 714, column: 7)
!3083 = !DILocation(line: 714, column: 7, scope: !3082)
!3084 = !DILocation(line: 716, column: 13, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !2595, file: !544, line: 716, column: 11)
!3086 = !DILocation(line: 716, column: 11, scope: !2595)
!3087 = !DILocation(line: 718, column: 5, scope: !2596)
!3088 = !DILocation(line: 395, column: 82, scope: !2596)
!3089 = !DILocation(line: 395, column: 3, scope: !2596)
!3090 = distinct !{!3090, !2737, !3091, !1082}
!3091 = !DILocation(line: 718, column: 5, scope: !2593)
!3092 = !DILocation(line: 720, column: 11, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2562, file: !544, line: 720, column: 7)
!3094 = !DILocation(line: 720, column: 16, scope: !3093)
!3095 = !DILocation(line: 728, column: 51, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !2562, file: !544, line: 728, column: 7)
!3097 = !DILocation(line: 731, column: 11, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !544, line: 731, column: 11)
!3099 = distinct !DILexicalBlock(scope: !3096, file: !544, line: 730, column: 5)
!3100 = !DILocation(line: 731, column: 11, scope: !3099)
!3101 = !DILocation(line: 732, column: 16, scope: !3098)
!3102 = !DILocation(line: 732, column: 9, scope: !3098)
!3103 = !DILocation(line: 736, column: 18, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3098, file: !544, line: 736, column: 16)
!3105 = !DILocation(line: 736, column: 29, scope: !3104)
!3106 = !DILocation(line: 745, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2562, file: !544, line: 745, column: 7)
!3108 = !DILocation(line: 745, column: 20, scope: !3107)
!3109 = !DILocation(line: 746, column: 12, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !544, line: 746, column: 5)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !544, line: 746, column: 5)
!3112 = !DILocation(line: 746, column: 5, scope: !3111)
!3113 = !DILocation(line: 747, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !544, line: 747, column: 7)
!3115 = distinct !DILexicalBlock(scope: !3110, file: !544, line: 747, column: 7)
!3116 = !DILocation(line: 747, column: 7, scope: !3115)
!3117 = !DILocation(line: 746, column: 39, scope: !3110)
!3118 = distinct !{!3118, !3112, !3119, !1082}
!3119 = !DILocation(line: 747, column: 7, scope: !3111)
!3120 = !DILocation(line: 749, column: 11, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !2562, file: !544, line: 749, column: 7)
!3122 = !DILocation(line: 749, column: 7, scope: !2562)
!3123 = !DILocation(line: 750, column: 5, scope: !3121)
!3124 = !DILocation(line: 750, column: 17, scope: !3121)
!3125 = !DILocation(line: 753, column: 2, scope: !2562)
!3126 = !DILocation(line: 756, column: 51, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !2562, file: !544, line: 756, column: 7)
!3128 = !DILocation(line: 756, column: 21, scope: !3127)
!3129 = !DILocation(line: 760, column: 42, scope: !2562)
!3130 = !DILocation(line: 758, column: 10, scope: !2562)
!3131 = !DILocation(line: 758, column: 3, scope: !2562)
!3132 = !DILocation(line: 762, column: 1, scope: !2562)
!3133 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1160, file: !1160, line: 98, type: !3134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!140}
!3136 = !DISubprogram(name: "strlen", scope: !1156, file: !1156, line: 407, type: !3137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!142, !143}
!3139 = !DISubprogram(name: "iswprint", scope: !3140, file: !3140, line: 120, type: !2938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3141 = distinct !DISubprogram(name: "quotearg_alloc", scope: !544, file: !544, line: 788, type: !3142, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!137, !143, !140, !2455}
!3144 = !{!3145, !3146, !3147}
!3145 = !DILocalVariable(name: "arg", arg: 1, scope: !3141, file: !544, line: 788, type: !143)
!3146 = !DILocalVariable(name: "argsize", arg: 2, scope: !3141, file: !544, line: 788, type: !140)
!3147 = !DILocalVariable(name: "o", arg: 3, scope: !3141, file: !544, line: 789, type: !2455)
!3148 = !DILocation(line: 0, scope: !3141)
!3149 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !544, line: 801, type: !143)
!3150 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !544, file: !544, line: 801, type: !3151, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!137, !143, !140, !876, !2455}
!3153 = !{!3149, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161}
!3154 = !DILocalVariable(name: "argsize", arg: 2, scope: !3150, file: !544, line: 801, type: !140)
!3155 = !DILocalVariable(name: "size", arg: 3, scope: !3150, file: !544, line: 801, type: !876)
!3156 = !DILocalVariable(name: "o", arg: 4, scope: !3150, file: !544, line: 802, type: !2455)
!3157 = !DILocalVariable(name: "p", scope: !3150, file: !544, line: 804, type: !2455)
!3158 = !DILocalVariable(name: "saved_errno", scope: !3150, file: !544, line: 805, type: !80)
!3159 = !DILocalVariable(name: "flags", scope: !3150, file: !544, line: 807, type: !80)
!3160 = !DILocalVariable(name: "bufsize", scope: !3150, file: !544, line: 808, type: !140)
!3161 = !DILocalVariable(name: "buf", scope: !3150, file: !544, line: 812, type: !137)
!3162 = !DILocation(line: 0, scope: !3150, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 791, column: 10, scope: !3141)
!3164 = !DILocation(line: 804, column: 37, scope: !3150, inlinedAt: !3163)
!3165 = !DILocation(line: 805, column: 21, scope: !3150, inlinedAt: !3163)
!3166 = !DILocation(line: 807, column: 18, scope: !3150, inlinedAt: !3163)
!3167 = !DILocation(line: 807, column: 24, scope: !3150, inlinedAt: !3163)
!3168 = !DILocation(line: 808, column: 72, scope: !3150, inlinedAt: !3163)
!3169 = !DILocation(line: 809, column: 56, scope: !3150, inlinedAt: !3163)
!3170 = !DILocation(line: 810, column: 49, scope: !3150, inlinedAt: !3163)
!3171 = !DILocation(line: 811, column: 49, scope: !3150, inlinedAt: !3163)
!3172 = !DILocation(line: 808, column: 20, scope: !3150, inlinedAt: !3163)
!3173 = !DILocation(line: 811, column: 62, scope: !3150, inlinedAt: !3163)
!3174 = !DILocation(line: 812, column: 15, scope: !3150, inlinedAt: !3163)
!3175 = !DILocation(line: 813, column: 60, scope: !3150, inlinedAt: !3163)
!3176 = !DILocation(line: 815, column: 32, scope: !3150, inlinedAt: !3163)
!3177 = !DILocation(line: 815, column: 47, scope: !3150, inlinedAt: !3163)
!3178 = !DILocation(line: 813, column: 3, scope: !3150, inlinedAt: !3163)
!3179 = !DILocation(line: 816, column: 9, scope: !3150, inlinedAt: !3163)
!3180 = !DILocation(line: 791, column: 3, scope: !3141)
!3181 = !DILocation(line: 0, scope: !3150)
!3182 = !DILocation(line: 804, column: 37, scope: !3150)
!3183 = !DILocation(line: 805, column: 21, scope: !3150)
!3184 = !DILocation(line: 807, column: 18, scope: !3150)
!3185 = !DILocation(line: 807, column: 27, scope: !3150)
!3186 = !DILocation(line: 807, column: 24, scope: !3150)
!3187 = !DILocation(line: 808, column: 72, scope: !3150)
!3188 = !DILocation(line: 809, column: 56, scope: !3150)
!3189 = !DILocation(line: 810, column: 49, scope: !3150)
!3190 = !DILocation(line: 811, column: 49, scope: !3150)
!3191 = !DILocation(line: 808, column: 20, scope: !3150)
!3192 = !DILocation(line: 811, column: 62, scope: !3150)
!3193 = !DILocation(line: 812, column: 15, scope: !3150)
!3194 = !DILocation(line: 813, column: 60, scope: !3150)
!3195 = !DILocation(line: 815, column: 32, scope: !3150)
!3196 = !DILocation(line: 815, column: 47, scope: !3150)
!3197 = !DILocation(line: 813, column: 3, scope: !3150)
!3198 = !DILocation(line: 816, column: 9, scope: !3150)
!3199 = !DILocation(line: 817, column: 7, scope: !3150)
!3200 = !DILocation(line: 818, column: 11, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3150, file: !544, line: 817, column: 7)
!3202 = !{!1547, !1547, i64 0}
!3203 = !DILocation(line: 818, column: 5, scope: !3201)
!3204 = !DILocation(line: 819, column: 3, scope: !3150)
!3205 = distinct !DISubprogram(name: "quotearg_free", scope: !544, file: !544, line: 837, type: !480, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3206)
!3206 = !{!3207, !3208}
!3207 = !DILocalVariable(name: "sv", scope: !3205, file: !544, line: 839, type: !631)
!3208 = !DILocalVariable(name: "i", scope: !3209, file: !544, line: 840, type: !80)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !544, line: 840, column: 3)
!3210 = !DILocation(line: 839, column: 24, scope: !3205)
!3211 = !DILocation(line: 0, scope: !3205)
!3212 = !DILocation(line: 0, scope: !3209)
!3213 = !DILocation(line: 840, column: 21, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3209, file: !544, line: 840, column: 3)
!3215 = !DILocation(line: 840, column: 3, scope: !3209)
!3216 = !DILocation(line: 842, column: 13, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3205, file: !544, line: 842, column: 7)
!3218 = !{!3219, !967, i64 8}
!3219 = !{!"slotvec", !1547, i64 0, !967, i64 8}
!3220 = !DILocation(line: 842, column: 17, scope: !3217)
!3221 = !DILocation(line: 842, column: 7, scope: !3205)
!3222 = !DILocation(line: 841, column: 17, scope: !3214)
!3223 = !DILocation(line: 841, column: 5, scope: !3214)
!3224 = !DILocation(line: 840, column: 32, scope: !3214)
!3225 = distinct !{!3225, !3215, !3226, !1082}
!3226 = !DILocation(line: 841, column: 20, scope: !3209)
!3227 = !DILocation(line: 844, column: 7, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3217, file: !544, line: 843, column: 5)
!3229 = !DILocation(line: 845, column: 21, scope: !3228)
!3230 = !{!3219, !1547, i64 0}
!3231 = !DILocation(line: 846, column: 20, scope: !3228)
!3232 = !DILocation(line: 847, column: 5, scope: !3228)
!3233 = !DILocation(line: 848, column: 10, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3205, file: !544, line: 848, column: 7)
!3235 = !DILocation(line: 848, column: 7, scope: !3205)
!3236 = !DILocation(line: 850, column: 7, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !544, line: 849, column: 5)
!3238 = !DILocation(line: 851, column: 15, scope: !3237)
!3239 = !DILocation(line: 852, column: 5, scope: !3237)
!3240 = !DILocation(line: 853, column: 10, scope: !3205)
!3241 = !DILocation(line: 854, column: 1, scope: !3205)
!3242 = distinct !DISubprogram(name: "quotearg_n", scope: !544, file: !544, line: 919, type: !1153, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3243)
!3243 = !{!3244, !3245}
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3242, file: !544, line: 919, type: !80)
!3245 = !DILocalVariable(name: "arg", arg: 2, scope: !3242, file: !544, line: 919, type: !143)
!3246 = !DILocation(line: 0, scope: !3242)
!3247 = !DILocation(line: 921, column: 10, scope: !3242)
!3248 = !DILocation(line: 921, column: 3, scope: !3242)
!3249 = distinct !DISubprogram(name: "quotearg_n_options", scope: !544, file: !544, line: 866, type: !3250, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!137, !80, !143, !140, !2455}
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3263, !3264, !3266, !3267, !3268}
!3253 = !DILocalVariable(name: "n", arg: 1, scope: !3249, file: !544, line: 866, type: !80)
!3254 = !DILocalVariable(name: "arg", arg: 2, scope: !3249, file: !544, line: 866, type: !143)
!3255 = !DILocalVariable(name: "argsize", arg: 3, scope: !3249, file: !544, line: 866, type: !140)
!3256 = !DILocalVariable(name: "options", arg: 4, scope: !3249, file: !544, line: 867, type: !2455)
!3257 = !DILocalVariable(name: "saved_errno", scope: !3249, file: !544, line: 869, type: !80)
!3258 = !DILocalVariable(name: "sv", scope: !3249, file: !544, line: 871, type: !631)
!3259 = !DILocalVariable(name: "nslots_max", scope: !3249, file: !544, line: 873, type: !80)
!3260 = !DILocalVariable(name: "preallocated", scope: !3261, file: !544, line: 879, type: !191)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !544, line: 878, column: 5)
!3262 = distinct !DILexicalBlock(scope: !3249, file: !544, line: 877, column: 7)
!3263 = !DILocalVariable(name: "new_nslots", scope: !3261, file: !544, line: 880, type: !889)
!3264 = !DILocalVariable(name: "size", scope: !3265, file: !544, line: 891, type: !140)
!3265 = distinct !DILexicalBlock(scope: !3249, file: !544, line: 890, column: 3)
!3266 = !DILocalVariable(name: "val", scope: !3265, file: !544, line: 892, type: !137)
!3267 = !DILocalVariable(name: "flags", scope: !3265, file: !544, line: 894, type: !80)
!3268 = !DILocalVariable(name: "qsize", scope: !3265, file: !544, line: 895, type: !140)
!3269 = !DILocation(line: 0, scope: !3249)
!3270 = !DILocation(line: 869, column: 21, scope: !3249)
!3271 = !DILocation(line: 871, column: 24, scope: !3249)
!3272 = !DILocation(line: 874, column: 17, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3249, file: !544, line: 874, column: 7)
!3274 = !DILocation(line: 875, column: 5, scope: !3273)
!3275 = !DILocation(line: 877, column: 7, scope: !3262)
!3276 = !DILocation(line: 877, column: 14, scope: !3262)
!3277 = !DILocation(line: 877, column: 7, scope: !3249)
!3278 = !DILocation(line: 879, column: 31, scope: !3261)
!3279 = !DILocation(line: 0, scope: !3261)
!3280 = !DILocation(line: 880, column: 7, scope: !3261)
!3281 = !DILocation(line: 880, column: 26, scope: !3261)
!3282 = !DILocation(line: 880, column: 13, scope: !3261)
!3283 = !DILocation(line: 882, column: 31, scope: !3261)
!3284 = !DILocation(line: 883, column: 33, scope: !3261)
!3285 = !DILocation(line: 883, column: 42, scope: !3261)
!3286 = !DILocation(line: 883, column: 31, scope: !3261)
!3287 = !DILocation(line: 882, column: 22, scope: !3261)
!3288 = !DILocation(line: 882, column: 15, scope: !3261)
!3289 = !DILocation(line: 884, column: 11, scope: !3261)
!3290 = !DILocation(line: 885, column: 15, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3261, file: !544, line: 884, column: 11)
!3292 = !{i64 0, i64 8, !3202, i64 8, i64 8, !966}
!3293 = !DILocation(line: 885, column: 9, scope: !3291)
!3294 = !DILocation(line: 886, column: 20, scope: !3261)
!3295 = !DILocation(line: 886, column: 18, scope: !3261)
!3296 = !DILocation(line: 886, column: 32, scope: !3261)
!3297 = !DILocation(line: 886, column: 43, scope: !3261)
!3298 = !DILocation(line: 886, column: 53, scope: !3261)
!3299 = !DILocation(line: 0, scope: !2670, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 886, column: 7, scope: !3261)
!3301 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !3300)
!3302 = !DILocation(line: 887, column: 16, scope: !3261)
!3303 = !DILocation(line: 887, column: 14, scope: !3261)
!3304 = !DILocation(line: 888, column: 5, scope: !3262)
!3305 = !DILocation(line: 888, column: 5, scope: !3261)
!3306 = !DILocation(line: 891, column: 19, scope: !3265)
!3307 = !DILocation(line: 891, column: 25, scope: !3265)
!3308 = !DILocation(line: 0, scope: !3265)
!3309 = !DILocation(line: 892, column: 23, scope: !3265)
!3310 = !DILocation(line: 894, column: 26, scope: !3265)
!3311 = !DILocation(line: 894, column: 32, scope: !3265)
!3312 = !DILocation(line: 896, column: 55, scope: !3265)
!3313 = !DILocation(line: 897, column: 55, scope: !3265)
!3314 = !DILocation(line: 898, column: 55, scope: !3265)
!3315 = !DILocation(line: 899, column: 55, scope: !3265)
!3316 = !DILocation(line: 895, column: 20, scope: !3265)
!3317 = !DILocation(line: 901, column: 14, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3265, file: !544, line: 901, column: 9)
!3319 = !DILocation(line: 901, column: 9, scope: !3265)
!3320 = !DILocation(line: 903, column: 35, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !544, line: 902, column: 7)
!3322 = !DILocation(line: 903, column: 20, scope: !3321)
!3323 = !DILocation(line: 904, column: 17, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !544, line: 904, column: 13)
!3325 = !DILocation(line: 904, column: 13, scope: !3321)
!3326 = !DILocation(line: 905, column: 11, scope: !3324)
!3327 = !DILocation(line: 906, column: 27, scope: !3321)
!3328 = !DILocation(line: 906, column: 19, scope: !3321)
!3329 = !DILocation(line: 907, column: 69, scope: !3321)
!3330 = !DILocation(line: 909, column: 44, scope: !3321)
!3331 = !DILocation(line: 910, column: 44, scope: !3321)
!3332 = !DILocation(line: 907, column: 9, scope: !3321)
!3333 = !DILocation(line: 911, column: 7, scope: !3321)
!3334 = !DILocation(line: 913, column: 11, scope: !3265)
!3335 = !DILocation(line: 914, column: 5, scope: !3265)
!3336 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !544, file: !544, line: 925, type: !3337, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!137, !80, !143, !140}
!3339 = !{!3340, !3341, !3342}
!3340 = !DILocalVariable(name: "n", arg: 1, scope: !3336, file: !544, line: 925, type: !80)
!3341 = !DILocalVariable(name: "arg", arg: 2, scope: !3336, file: !544, line: 925, type: !143)
!3342 = !DILocalVariable(name: "argsize", arg: 3, scope: !3336, file: !544, line: 925, type: !140)
!3343 = !DILocation(line: 0, scope: !3336)
!3344 = !DILocation(line: 927, column: 10, scope: !3336)
!3345 = !DILocation(line: 927, column: 3, scope: !3336)
!3346 = distinct !DISubprogram(name: "quotearg", scope: !544, file: !544, line: 931, type: !1162, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3347)
!3347 = !{!3348}
!3348 = !DILocalVariable(name: "arg", arg: 1, scope: !3346, file: !544, line: 931, type: !143)
!3349 = !DILocation(line: 0, scope: !3346)
!3350 = !DILocation(line: 0, scope: !3242, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 933, column: 10, scope: !3346)
!3352 = !DILocation(line: 921, column: 10, scope: !3242, inlinedAt: !3351)
!3353 = !DILocation(line: 933, column: 3, scope: !3346)
!3354 = distinct !DISubprogram(name: "quotearg_mem", scope: !544, file: !544, line: 937, type: !3355, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!137, !143, !140}
!3357 = !{!3358, !3359}
!3358 = !DILocalVariable(name: "arg", arg: 1, scope: !3354, file: !544, line: 937, type: !143)
!3359 = !DILocalVariable(name: "argsize", arg: 2, scope: !3354, file: !544, line: 937, type: !140)
!3360 = !DILocation(line: 0, scope: !3354)
!3361 = !DILocation(line: 0, scope: !3336, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 939, column: 10, scope: !3354)
!3363 = !DILocation(line: 927, column: 10, scope: !3336, inlinedAt: !3362)
!3364 = !DILocation(line: 939, column: 3, scope: !3354)
!3365 = distinct !DISubprogram(name: "quotearg_n_style", scope: !544, file: !544, line: 943, type: !3366, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!137, !80, !122, !143}
!3368 = !{!3369, !3370, !3371, !3372}
!3369 = !DILocalVariable(name: "n", arg: 1, scope: !3365, file: !544, line: 943, type: !80)
!3370 = !DILocalVariable(name: "s", arg: 2, scope: !3365, file: !544, line: 943, type: !122)
!3371 = !DILocalVariable(name: "arg", arg: 3, scope: !3365, file: !544, line: 943, type: !143)
!3372 = !DILocalVariable(name: "o", scope: !3365, file: !544, line: 945, type: !2456)
!3373 = !DILocation(line: 0, scope: !3365)
!3374 = !DILocation(line: 945, column: 3, scope: !3365)
!3375 = !DILocation(line: 945, column: 32, scope: !3365)
!3376 = !{!3377}
!3377 = distinct !{!3377, !3378, !"quoting_options_from_style: argument 0"}
!3378 = distinct !{!3378, !"quoting_options_from_style"}
!3379 = !DILocation(line: 945, column: 36, scope: !3365)
!3380 = !DILocalVariable(name: "style", arg: 1, scope: !3381, file: !544, line: 183, type: !122)
!3381 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !544, file: !544, line: 183, type: !3382, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!583, !122}
!3384 = !{!3380, !3385}
!3385 = !DILocalVariable(name: "o", scope: !3381, file: !544, line: 185, type: !583)
!3386 = !DILocation(line: 0, scope: !3381, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 945, column: 36, scope: !3365)
!3388 = !DILocation(line: 185, column: 26, scope: !3381, inlinedAt: !3387)
!3389 = !DILocation(line: 186, column: 13, scope: !3390, inlinedAt: !3387)
!3390 = distinct !DILexicalBlock(scope: !3381, file: !544, line: 186, column: 7)
!3391 = !DILocation(line: 186, column: 7, scope: !3381, inlinedAt: !3387)
!3392 = !DILocation(line: 187, column: 5, scope: !3390, inlinedAt: !3387)
!3393 = !DILocation(line: 188, column: 11, scope: !3381, inlinedAt: !3387)
!3394 = !DILocation(line: 946, column: 10, scope: !3365)
!3395 = !DILocation(line: 947, column: 1, scope: !3365)
!3396 = !DILocation(line: 946, column: 3, scope: !3365)
!3397 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !544, file: !544, line: 950, type: !3398, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!137, !80, !122, !143, !140}
!3400 = !{!3401, !3402, !3403, !3404, !3405}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !544, line: 950, type: !80)
!3402 = !DILocalVariable(name: "s", arg: 2, scope: !3397, file: !544, line: 950, type: !122)
!3403 = !DILocalVariable(name: "arg", arg: 3, scope: !3397, file: !544, line: 951, type: !143)
!3404 = !DILocalVariable(name: "argsize", arg: 4, scope: !3397, file: !544, line: 951, type: !140)
!3405 = !DILocalVariable(name: "o", scope: !3397, file: !544, line: 953, type: !2456)
!3406 = !DILocation(line: 0, scope: !3397)
!3407 = !DILocation(line: 953, column: 3, scope: !3397)
!3408 = !DILocation(line: 953, column: 32, scope: !3397)
!3409 = !{!3410}
!3410 = distinct !{!3410, !3411, !"quoting_options_from_style: argument 0"}
!3411 = distinct !{!3411, !"quoting_options_from_style"}
!3412 = !DILocation(line: 953, column: 36, scope: !3397)
!3413 = !DILocation(line: 0, scope: !3381, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 953, column: 36, scope: !3397)
!3415 = !DILocation(line: 185, column: 26, scope: !3381, inlinedAt: !3414)
!3416 = !DILocation(line: 186, column: 13, scope: !3390, inlinedAt: !3414)
!3417 = !DILocation(line: 186, column: 7, scope: !3381, inlinedAt: !3414)
!3418 = !DILocation(line: 187, column: 5, scope: !3390, inlinedAt: !3414)
!3419 = !DILocation(line: 188, column: 11, scope: !3381, inlinedAt: !3414)
!3420 = !DILocation(line: 954, column: 10, scope: !3397)
!3421 = !DILocation(line: 955, column: 1, scope: !3397)
!3422 = !DILocation(line: 954, column: 3, scope: !3397)
!3423 = distinct !DISubprogram(name: "quotearg_style", scope: !544, file: !544, line: 958, type: !3424, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!137, !122, !143}
!3426 = !{!3427, !3428}
!3427 = !DILocalVariable(name: "s", arg: 1, scope: !3423, file: !544, line: 958, type: !122)
!3428 = !DILocalVariable(name: "arg", arg: 2, scope: !3423, file: !544, line: 958, type: !143)
!3429 = !DILocation(line: 0, scope: !3423)
!3430 = !DILocation(line: 0, scope: !3365, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 960, column: 10, scope: !3423)
!3432 = !DILocation(line: 945, column: 3, scope: !3365, inlinedAt: !3431)
!3433 = !DILocation(line: 945, column: 32, scope: !3365, inlinedAt: !3431)
!3434 = !{!3435}
!3435 = distinct !{!3435, !3436, !"quoting_options_from_style: argument 0"}
!3436 = distinct !{!3436, !"quoting_options_from_style"}
!3437 = !DILocation(line: 945, column: 36, scope: !3365, inlinedAt: !3431)
!3438 = !DILocation(line: 0, scope: !3381, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 945, column: 36, scope: !3365, inlinedAt: !3431)
!3440 = !DILocation(line: 185, column: 26, scope: !3381, inlinedAt: !3439)
!3441 = !DILocation(line: 186, column: 13, scope: !3390, inlinedAt: !3439)
!3442 = !DILocation(line: 186, column: 7, scope: !3381, inlinedAt: !3439)
!3443 = !DILocation(line: 187, column: 5, scope: !3390, inlinedAt: !3439)
!3444 = !DILocation(line: 188, column: 11, scope: !3381, inlinedAt: !3439)
!3445 = !DILocation(line: 946, column: 10, scope: !3365, inlinedAt: !3431)
!3446 = !DILocation(line: 947, column: 1, scope: !3365, inlinedAt: !3431)
!3447 = !DILocation(line: 960, column: 3, scope: !3423)
!3448 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !544, file: !544, line: 964, type: !3449, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!137, !122, !143, !140}
!3451 = !{!3452, !3453, !3454}
!3452 = !DILocalVariable(name: "s", arg: 1, scope: !3448, file: !544, line: 964, type: !122)
!3453 = !DILocalVariable(name: "arg", arg: 2, scope: !3448, file: !544, line: 964, type: !143)
!3454 = !DILocalVariable(name: "argsize", arg: 3, scope: !3448, file: !544, line: 964, type: !140)
!3455 = !DILocation(line: 0, scope: !3448)
!3456 = !DILocation(line: 0, scope: !3397, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 966, column: 10, scope: !3448)
!3458 = !DILocation(line: 953, column: 3, scope: !3397, inlinedAt: !3457)
!3459 = !DILocation(line: 953, column: 32, scope: !3397, inlinedAt: !3457)
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"quoting_options_from_style: argument 0"}
!3462 = distinct !{!3462, !"quoting_options_from_style"}
!3463 = !DILocation(line: 953, column: 36, scope: !3397, inlinedAt: !3457)
!3464 = !DILocation(line: 0, scope: !3381, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 953, column: 36, scope: !3397, inlinedAt: !3457)
!3466 = !DILocation(line: 185, column: 26, scope: !3381, inlinedAt: !3465)
!3467 = !DILocation(line: 186, column: 13, scope: !3390, inlinedAt: !3465)
!3468 = !DILocation(line: 186, column: 7, scope: !3381, inlinedAt: !3465)
!3469 = !DILocation(line: 187, column: 5, scope: !3390, inlinedAt: !3465)
!3470 = !DILocation(line: 188, column: 11, scope: !3381, inlinedAt: !3465)
!3471 = !DILocation(line: 954, column: 10, scope: !3397, inlinedAt: !3457)
!3472 = !DILocation(line: 955, column: 1, scope: !3397, inlinedAt: !3457)
!3473 = !DILocation(line: 966, column: 3, scope: !3448)
!3474 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !544, file: !544, line: 970, type: !3475, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!137, !143, !140, !4}
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DILocalVariable(name: "arg", arg: 1, scope: !3474, file: !544, line: 970, type: !143)
!3479 = !DILocalVariable(name: "argsize", arg: 2, scope: !3474, file: !544, line: 970, type: !140)
!3480 = !DILocalVariable(name: "ch", arg: 3, scope: !3474, file: !544, line: 970, type: !4)
!3481 = !DILocalVariable(name: "options", scope: !3474, file: !544, line: 972, type: !583)
!3482 = !DILocation(line: 0, scope: !3474)
!3483 = !DILocation(line: 972, column: 3, scope: !3474)
!3484 = !DILocation(line: 972, column: 26, scope: !3474)
!3485 = !DILocation(line: 973, column: 13, scope: !3474)
!3486 = !{i64 0, i64 4, !1044, i64 4, i64 4, !1035, i64 8, i64 32, !1044, i64 40, i64 8, !966, i64 48, i64 8, !966}
!3487 = !DILocation(line: 0, scope: !2475, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 974, column: 3, scope: !3474)
!3489 = !DILocation(line: 147, column: 41, scope: !2475, inlinedAt: !3488)
!3490 = !DILocation(line: 147, column: 62, scope: !2475, inlinedAt: !3488)
!3491 = !DILocation(line: 147, column: 57, scope: !2475, inlinedAt: !3488)
!3492 = !DILocation(line: 148, column: 15, scope: !2475, inlinedAt: !3488)
!3493 = !DILocation(line: 149, column: 21, scope: !2475, inlinedAt: !3488)
!3494 = !DILocation(line: 149, column: 24, scope: !2475, inlinedAt: !3488)
!3495 = !DILocation(line: 150, column: 19, scope: !2475, inlinedAt: !3488)
!3496 = !DILocation(line: 150, column: 24, scope: !2475, inlinedAt: !3488)
!3497 = !DILocation(line: 150, column: 6, scope: !2475, inlinedAt: !3488)
!3498 = !DILocation(line: 975, column: 10, scope: !3474)
!3499 = !DILocation(line: 976, column: 1, scope: !3474)
!3500 = !DILocation(line: 975, column: 3, scope: !3474)
!3501 = distinct !DISubprogram(name: "quotearg_char", scope: !544, file: !544, line: 979, type: !3502, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!137, !143, !4}
!3504 = !{!3505, !3506}
!3505 = !DILocalVariable(name: "arg", arg: 1, scope: !3501, file: !544, line: 979, type: !143)
!3506 = !DILocalVariable(name: "ch", arg: 2, scope: !3501, file: !544, line: 979, type: !4)
!3507 = !DILocation(line: 0, scope: !3501)
!3508 = !DILocation(line: 0, scope: !3474, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 981, column: 10, scope: !3501)
!3510 = !DILocation(line: 972, column: 3, scope: !3474, inlinedAt: !3509)
!3511 = !DILocation(line: 972, column: 26, scope: !3474, inlinedAt: !3509)
!3512 = !DILocation(line: 973, column: 13, scope: !3474, inlinedAt: !3509)
!3513 = !DILocation(line: 0, scope: !2475, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 974, column: 3, scope: !3474, inlinedAt: !3509)
!3515 = !DILocation(line: 147, column: 41, scope: !2475, inlinedAt: !3514)
!3516 = !DILocation(line: 147, column: 62, scope: !2475, inlinedAt: !3514)
!3517 = !DILocation(line: 147, column: 57, scope: !2475, inlinedAt: !3514)
!3518 = !DILocation(line: 148, column: 15, scope: !2475, inlinedAt: !3514)
!3519 = !DILocation(line: 149, column: 21, scope: !2475, inlinedAt: !3514)
!3520 = !DILocation(line: 149, column: 24, scope: !2475, inlinedAt: !3514)
!3521 = !DILocation(line: 150, column: 19, scope: !2475, inlinedAt: !3514)
!3522 = !DILocation(line: 150, column: 24, scope: !2475, inlinedAt: !3514)
!3523 = !DILocation(line: 150, column: 6, scope: !2475, inlinedAt: !3514)
!3524 = !DILocation(line: 975, column: 10, scope: !3474, inlinedAt: !3509)
!3525 = !DILocation(line: 976, column: 1, scope: !3474, inlinedAt: !3509)
!3526 = !DILocation(line: 981, column: 3, scope: !3501)
!3527 = distinct !DISubprogram(name: "quotearg_colon", scope: !544, file: !544, line: 985, type: !1162, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3528)
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "arg", arg: 1, scope: !3527, file: !544, line: 985, type: !143)
!3530 = !DILocation(line: 0, scope: !3527)
!3531 = !DILocation(line: 0, scope: !3501, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 987, column: 10, scope: !3527)
!3533 = !DILocation(line: 0, scope: !3474, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 981, column: 10, scope: !3501, inlinedAt: !3532)
!3535 = !DILocation(line: 972, column: 3, scope: !3474, inlinedAt: !3534)
!3536 = !DILocation(line: 972, column: 26, scope: !3474, inlinedAt: !3534)
!3537 = !DILocation(line: 973, column: 13, scope: !3474, inlinedAt: !3534)
!3538 = !DILocation(line: 0, scope: !2475, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 974, column: 3, scope: !3474, inlinedAt: !3534)
!3540 = !DILocation(line: 147, column: 57, scope: !2475, inlinedAt: !3539)
!3541 = !DILocation(line: 149, column: 21, scope: !2475, inlinedAt: !3539)
!3542 = !DILocation(line: 150, column: 6, scope: !2475, inlinedAt: !3539)
!3543 = !DILocation(line: 975, column: 10, scope: !3474, inlinedAt: !3534)
!3544 = !DILocation(line: 976, column: 1, scope: !3474, inlinedAt: !3534)
!3545 = !DILocation(line: 987, column: 3, scope: !3527)
!3546 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !544, file: !544, line: 991, type: !3355, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3547)
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "arg", arg: 1, scope: !3546, file: !544, line: 991, type: !143)
!3549 = !DILocalVariable(name: "argsize", arg: 2, scope: !3546, file: !544, line: 991, type: !140)
!3550 = !DILocation(line: 0, scope: !3546)
!3551 = !DILocation(line: 0, scope: !3474, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 993, column: 10, scope: !3546)
!3553 = !DILocation(line: 972, column: 3, scope: !3474, inlinedAt: !3552)
!3554 = !DILocation(line: 972, column: 26, scope: !3474, inlinedAt: !3552)
!3555 = !DILocation(line: 973, column: 13, scope: !3474, inlinedAt: !3552)
!3556 = !DILocation(line: 0, scope: !2475, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 974, column: 3, scope: !3474, inlinedAt: !3552)
!3558 = !DILocation(line: 147, column: 57, scope: !2475, inlinedAt: !3557)
!3559 = !DILocation(line: 149, column: 21, scope: !2475, inlinedAt: !3557)
!3560 = !DILocation(line: 150, column: 6, scope: !2475, inlinedAt: !3557)
!3561 = !DILocation(line: 975, column: 10, scope: !3474, inlinedAt: !3552)
!3562 = !DILocation(line: 976, column: 1, scope: !3474, inlinedAt: !3552)
!3563 = !DILocation(line: 993, column: 3, scope: !3546)
!3564 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !544, file: !544, line: 997, type: !3366, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3565)
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DILocalVariable(name: "n", arg: 1, scope: !3564, file: !544, line: 997, type: !80)
!3567 = !DILocalVariable(name: "s", arg: 2, scope: !3564, file: !544, line: 997, type: !122)
!3568 = !DILocalVariable(name: "arg", arg: 3, scope: !3564, file: !544, line: 997, type: !143)
!3569 = !DILocalVariable(name: "options", scope: !3564, file: !544, line: 999, type: !583)
!3570 = !DILocation(line: 185, column: 26, scope: !3381, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 1000, column: 13, scope: !3564)
!3572 = !DILocation(line: 0, scope: !3564)
!3573 = !DILocation(line: 999, column: 3, scope: !3564)
!3574 = !DILocation(line: 999, column: 26, scope: !3564)
!3575 = !DILocation(line: 0, scope: !3381, inlinedAt: !3571)
!3576 = !DILocation(line: 186, column: 13, scope: !3390, inlinedAt: !3571)
!3577 = !DILocation(line: 186, column: 7, scope: !3381, inlinedAt: !3571)
!3578 = !DILocation(line: 187, column: 5, scope: !3390, inlinedAt: !3571)
!3579 = !{!3580}
!3580 = distinct !{!3580, !3581, !"quoting_options_from_style: argument 0"}
!3581 = distinct !{!3581, !"quoting_options_from_style"}
!3582 = !DILocation(line: 1000, column: 13, scope: !3564)
!3583 = !DILocation(line: 0, scope: !2475, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 1001, column: 3, scope: !3564)
!3585 = !DILocation(line: 147, column: 57, scope: !2475, inlinedAt: !3584)
!3586 = !DILocation(line: 149, column: 21, scope: !2475, inlinedAt: !3584)
!3587 = !DILocation(line: 150, column: 6, scope: !2475, inlinedAt: !3584)
!3588 = !DILocation(line: 1002, column: 10, scope: !3564)
!3589 = !DILocation(line: 1003, column: 1, scope: !3564)
!3590 = !DILocation(line: 1002, column: 3, scope: !3564)
!3591 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !544, file: !544, line: 1006, type: !3592, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!137, !80, !143, !143, !143}
!3594 = !{!3595, !3596, !3597, !3598}
!3595 = !DILocalVariable(name: "n", arg: 1, scope: !3591, file: !544, line: 1006, type: !80)
!3596 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3591, file: !544, line: 1006, type: !143)
!3597 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3591, file: !544, line: 1007, type: !143)
!3598 = !DILocalVariable(name: "arg", arg: 4, scope: !3591, file: !544, line: 1007, type: !143)
!3599 = !DILocation(line: 0, scope: !3591)
!3600 = !DILocalVariable(name: "n", arg: 1, scope: !3601, file: !544, line: 1014, type: !80)
!3601 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !544, file: !544, line: 1014, type: !3602, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!137, !80, !143, !143, !143, !140}
!3604 = !{!3600, !3605, !3606, !3607, !3608, !3609}
!3605 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3601, file: !544, line: 1014, type: !143)
!3606 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3601, file: !544, line: 1015, type: !143)
!3607 = !DILocalVariable(name: "arg", arg: 4, scope: !3601, file: !544, line: 1016, type: !143)
!3608 = !DILocalVariable(name: "argsize", arg: 5, scope: !3601, file: !544, line: 1016, type: !140)
!3609 = !DILocalVariable(name: "o", scope: !3601, file: !544, line: 1018, type: !583)
!3610 = !DILocation(line: 0, scope: !3601, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 1009, column: 10, scope: !3591)
!3612 = !DILocation(line: 1018, column: 3, scope: !3601, inlinedAt: !3611)
!3613 = !DILocation(line: 1018, column: 26, scope: !3601, inlinedAt: !3611)
!3614 = !DILocation(line: 1018, column: 30, scope: !3601, inlinedAt: !3611)
!3615 = !DILocation(line: 0, scope: !2515, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 1019, column: 3, scope: !3601, inlinedAt: !3611)
!3617 = !DILocation(line: 174, column: 12, scope: !2515, inlinedAt: !3616)
!3618 = !DILocation(line: 175, column: 8, scope: !2528, inlinedAt: !3616)
!3619 = !DILocation(line: 175, column: 19, scope: !2528, inlinedAt: !3616)
!3620 = !DILocation(line: 176, column: 5, scope: !2528, inlinedAt: !3616)
!3621 = !DILocation(line: 177, column: 6, scope: !2515, inlinedAt: !3616)
!3622 = !DILocation(line: 177, column: 17, scope: !2515, inlinedAt: !3616)
!3623 = !DILocation(line: 178, column: 6, scope: !2515, inlinedAt: !3616)
!3624 = !DILocation(line: 178, column: 18, scope: !2515, inlinedAt: !3616)
!3625 = !DILocation(line: 1020, column: 10, scope: !3601, inlinedAt: !3611)
!3626 = !DILocation(line: 1021, column: 1, scope: !3601, inlinedAt: !3611)
!3627 = !DILocation(line: 1009, column: 3, scope: !3591)
!3628 = !DILocation(line: 0, scope: !3601)
!3629 = !DILocation(line: 1018, column: 3, scope: !3601)
!3630 = !DILocation(line: 1018, column: 26, scope: !3601)
!3631 = !DILocation(line: 1018, column: 30, scope: !3601)
!3632 = !DILocation(line: 0, scope: !2515, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 1019, column: 3, scope: !3601)
!3634 = !DILocation(line: 174, column: 12, scope: !2515, inlinedAt: !3633)
!3635 = !DILocation(line: 175, column: 8, scope: !2528, inlinedAt: !3633)
!3636 = !DILocation(line: 175, column: 19, scope: !2528, inlinedAt: !3633)
!3637 = !DILocation(line: 176, column: 5, scope: !2528, inlinedAt: !3633)
!3638 = !DILocation(line: 177, column: 6, scope: !2515, inlinedAt: !3633)
!3639 = !DILocation(line: 177, column: 17, scope: !2515, inlinedAt: !3633)
!3640 = !DILocation(line: 178, column: 6, scope: !2515, inlinedAt: !3633)
!3641 = !DILocation(line: 178, column: 18, scope: !2515, inlinedAt: !3633)
!3642 = !DILocation(line: 1020, column: 10, scope: !3601)
!3643 = !DILocation(line: 1021, column: 1, scope: !3601)
!3644 = !DILocation(line: 1020, column: 3, scope: !3601)
!3645 = distinct !DISubprogram(name: "quotearg_custom", scope: !544, file: !544, line: 1024, type: !3646, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!137, !143, !143, !143}
!3648 = !{!3649, !3650, !3651}
!3649 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3645, file: !544, line: 1024, type: !143)
!3650 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3645, file: !544, line: 1024, type: !143)
!3651 = !DILocalVariable(name: "arg", arg: 3, scope: !3645, file: !544, line: 1025, type: !143)
!3652 = !DILocation(line: 0, scope: !3645)
!3653 = !DILocation(line: 0, scope: !3591, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 1027, column: 10, scope: !3645)
!3655 = !DILocation(line: 0, scope: !3601, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 1009, column: 10, scope: !3591, inlinedAt: !3654)
!3657 = !DILocation(line: 1018, column: 3, scope: !3601, inlinedAt: !3656)
!3658 = !DILocation(line: 1018, column: 26, scope: !3601, inlinedAt: !3656)
!3659 = !DILocation(line: 1018, column: 30, scope: !3601, inlinedAt: !3656)
!3660 = !DILocation(line: 0, scope: !2515, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 1019, column: 3, scope: !3601, inlinedAt: !3656)
!3662 = !DILocation(line: 174, column: 12, scope: !2515, inlinedAt: !3661)
!3663 = !DILocation(line: 175, column: 8, scope: !2528, inlinedAt: !3661)
!3664 = !DILocation(line: 175, column: 19, scope: !2528, inlinedAt: !3661)
!3665 = !DILocation(line: 176, column: 5, scope: !2528, inlinedAt: !3661)
!3666 = !DILocation(line: 177, column: 6, scope: !2515, inlinedAt: !3661)
!3667 = !DILocation(line: 177, column: 17, scope: !2515, inlinedAt: !3661)
!3668 = !DILocation(line: 178, column: 6, scope: !2515, inlinedAt: !3661)
!3669 = !DILocation(line: 178, column: 18, scope: !2515, inlinedAt: !3661)
!3670 = !DILocation(line: 1020, column: 10, scope: !3601, inlinedAt: !3656)
!3671 = !DILocation(line: 1021, column: 1, scope: !3601, inlinedAt: !3656)
!3672 = !DILocation(line: 1027, column: 3, scope: !3645)
!3673 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !544, file: !544, line: 1031, type: !3674, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!137, !143, !143, !143, !140}
!3676 = !{!3677, !3678, !3679, !3680}
!3677 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3673, file: !544, line: 1031, type: !143)
!3678 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3673, file: !544, line: 1031, type: !143)
!3679 = !DILocalVariable(name: "arg", arg: 3, scope: !3673, file: !544, line: 1032, type: !143)
!3680 = !DILocalVariable(name: "argsize", arg: 4, scope: !3673, file: !544, line: 1032, type: !140)
!3681 = !DILocation(line: 0, scope: !3673)
!3682 = !DILocation(line: 0, scope: !3601, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 1034, column: 10, scope: !3673)
!3684 = !DILocation(line: 1018, column: 3, scope: !3601, inlinedAt: !3683)
!3685 = !DILocation(line: 1018, column: 26, scope: !3601, inlinedAt: !3683)
!3686 = !DILocation(line: 1018, column: 30, scope: !3601, inlinedAt: !3683)
!3687 = !DILocation(line: 0, scope: !2515, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 1019, column: 3, scope: !3601, inlinedAt: !3683)
!3689 = !DILocation(line: 174, column: 12, scope: !2515, inlinedAt: !3688)
!3690 = !DILocation(line: 175, column: 8, scope: !2528, inlinedAt: !3688)
!3691 = !DILocation(line: 175, column: 19, scope: !2528, inlinedAt: !3688)
!3692 = !DILocation(line: 176, column: 5, scope: !2528, inlinedAt: !3688)
!3693 = !DILocation(line: 177, column: 6, scope: !2515, inlinedAt: !3688)
!3694 = !DILocation(line: 177, column: 17, scope: !2515, inlinedAt: !3688)
!3695 = !DILocation(line: 178, column: 6, scope: !2515, inlinedAt: !3688)
!3696 = !DILocation(line: 178, column: 18, scope: !2515, inlinedAt: !3688)
!3697 = !DILocation(line: 1020, column: 10, scope: !3601, inlinedAt: !3683)
!3698 = !DILocation(line: 1021, column: 1, scope: !3601, inlinedAt: !3683)
!3699 = !DILocation(line: 1034, column: 3, scope: !3673)
!3700 = distinct !DISubprogram(name: "quote_n_mem", scope: !544, file: !544, line: 1049, type: !3701, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!143, !80, !143, !140}
!3703 = !{!3704, !3705, !3706}
!3704 = !DILocalVariable(name: "n", arg: 1, scope: !3700, file: !544, line: 1049, type: !80)
!3705 = !DILocalVariable(name: "arg", arg: 2, scope: !3700, file: !544, line: 1049, type: !143)
!3706 = !DILocalVariable(name: "argsize", arg: 3, scope: !3700, file: !544, line: 1049, type: !140)
!3707 = !DILocation(line: 0, scope: !3700)
!3708 = !DILocation(line: 1051, column: 10, scope: !3700)
!3709 = !DILocation(line: 1051, column: 3, scope: !3700)
!3710 = distinct !DISubprogram(name: "quote_mem", scope: !544, file: !544, line: 1055, type: !3711, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!143, !143, !140}
!3713 = !{!3714, !3715}
!3714 = !DILocalVariable(name: "arg", arg: 1, scope: !3710, file: !544, line: 1055, type: !143)
!3715 = !DILocalVariable(name: "argsize", arg: 2, scope: !3710, file: !544, line: 1055, type: !140)
!3716 = !DILocation(line: 0, scope: !3710)
!3717 = !DILocation(line: 0, scope: !3700, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 1057, column: 10, scope: !3710)
!3719 = !DILocation(line: 1051, column: 10, scope: !3700, inlinedAt: !3718)
!3720 = !DILocation(line: 1057, column: 3, scope: !3710)
!3721 = distinct !DISubprogram(name: "quote_n", scope: !544, file: !544, line: 1061, type: !3722, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!143, !80, !143}
!3724 = !{!3725, !3726}
!3725 = !DILocalVariable(name: "n", arg: 1, scope: !3721, file: !544, line: 1061, type: !80)
!3726 = !DILocalVariable(name: "arg", arg: 2, scope: !3721, file: !544, line: 1061, type: !143)
!3727 = !DILocation(line: 0, scope: !3721)
!3728 = !DILocation(line: 0, scope: !3700, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 1063, column: 10, scope: !3721)
!3730 = !DILocation(line: 1051, column: 10, scope: !3700, inlinedAt: !3729)
!3731 = !DILocation(line: 1063, column: 3, scope: !3721)
!3732 = distinct !DISubprogram(name: "quote", scope: !544, file: !544, line: 1067, type: !3733, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!143, !143}
!3735 = !{!3736}
!3736 = !DILocalVariable(name: "arg", arg: 1, scope: !3732, file: !544, line: 1067, type: !143)
!3737 = !DILocation(line: 0, scope: !3732)
!3738 = !DILocation(line: 0, scope: !3721, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 1069, column: 10, scope: !3732)
!3740 = !DILocation(line: 0, scope: !3700, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 1063, column: 10, scope: !3721, inlinedAt: !3739)
!3742 = !DILocation(line: 1051, column: 10, scope: !3700, inlinedAt: !3741)
!3743 = !DILocation(line: 1069, column: 3, scope: !3732)
!3744 = distinct !DISubprogram(name: "savewd_init", scope: !85, file: !85, line: 86, type: !3745, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !3748)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!3748 = !{!3749}
!3749 = !DILocalVariable(name: "wd", arg: 1, scope: !3744, file: !85, line: 86, type: !3747)
!3750 = !DILocation(line: 0, scope: !3744)
!3751 = !DILocation(line: 88, column: 13, scope: !3744)
!3752 = !DILocation(line: 89, column: 1, scope: !3744)
!3753 = distinct !DISubprogram(name: "savewd_errno", scope: !85, file: !85, line: 131, type: !3754, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !3758)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!80, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!3758 = !{!3759}
!3759 = !DILocalVariable(name: "wd", arg: 1, scope: !3753, file: !85, line: 131, type: !3756)
!3760 = !DILocation(line: 0, scope: !3753)
!3761 = !DILocation(line: 133, column: 14, scope: !3753)
!3762 = !DILocation(line: 133, column: 20, scope: !3753)
!3763 = !DILocation(line: 133, column: 10, scope: !3753)
!3764 = !DILocation(line: 133, column: 44, scope: !3753)
!3765 = !DILocation(line: 133, column: 48, scope: !3753)
!3766 = !DILocation(line: 133, column: 3, scope: !3753)
!3767 = distinct !DISubprogram(name: "savewd_chdir", scope: !646, file: !646, line: 113, type: !3768, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!80, !3747, !143, !80, !406}
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3771 = !DILocalVariable(name: "wd", arg: 1, scope: !3767, file: !646, line: 113, type: !3747)
!3772 = !DILocalVariable(name: "dir", arg: 2, scope: !3767, file: !646, line: 113, type: !143)
!3773 = !DILocalVariable(name: "options", arg: 3, scope: !3767, file: !646, line: 113, type: !80)
!3774 = !DILocalVariable(name: "open_result", arg: 4, scope: !3767, file: !646, line: 114, type: !406)
!3775 = !DILocalVariable(name: "fd", scope: !3767, file: !646, line: 116, type: !80)
!3776 = !DILocalVariable(name: "result", scope: !3767, file: !646, line: 117, type: !80)
!3777 = !DILocalVariable(name: "saved_errno", scope: !3778, file: !646, line: 173, type: !80)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !646, line: 172, column: 5)
!3779 = distinct !DILexicalBlock(scope: !3767, file: !646, line: 171, column: 7)
!3780 = !DILocation(line: 0, scope: !3767)
!3781 = !DILocation(line: 121, column: 7, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3767, file: !646, line: 121, column: 7)
!3783 = !DILocation(line: 122, column: 7, scope: !3782)
!3784 = !DILocation(line: 126, column: 22, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !646, line: 123, column: 5)
!3786 = !DILocation(line: 126, column: 19, scope: !3785)
!3787 = !DILocation(line: 124, column: 12, scope: !3785)
!3788 = !DILocation(line: 128, column: 11, scope: !3785)
!3789 = !DILocation(line: 130, column: 26, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !646, line: 129, column: 9)
!3791 = distinct !DILexicalBlock(scope: !3785, file: !646, line: 128, column: 11)
!3792 = !DILocation(line: 131, column: 28, scope: !3790)
!3793 = !DILocation(line: 131, column: 11, scope: !3790)
!3794 = !DILocation(line: 131, column: 26, scope: !3790)
!3795 = !DILocation(line: 132, column: 9, scope: !3790)
!3796 = !DILocation(line: 134, column: 14, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3785, file: !646, line: 134, column: 11)
!3798 = !DILocation(line: 134, column: 18, scope: !3797)
!3799 = !DILocation(line: 134, column: 21, scope: !3797)
!3800 = !DILocation(line: 134, column: 27, scope: !3797)
!3801 = !DILocation(line: 138, column: 19, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3767, file: !646, line: 138, column: 7)
!3803 = !DILocation(line: 138, column: 33, scope: !3802)
!3804 = !DILocalVariable(name: "wd", arg: 1, scope: !3805, file: !646, line: 48, type: !3747)
!3805 = distinct !DISubprogram(name: "savewd_save", scope: !646, file: !646, line: 48, type: !3806, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!191, !3747}
!3808 = !{!3804, !3809, !3812}
!3809 = !DILocalVariable(name: "fd", scope: !3810, file: !646, line: 55, type: !80)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !646, line: 54, column: 7)
!3811 = distinct !DILexicalBlock(scope: !3805, file: !646, line: 51, column: 5)
!3812 = !DILocalVariable(name: "try_fork", scope: !3810, file: !646, line: 70, type: !191)
!3813 = !DILocation(line: 0, scope: !3805, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 140, column: 11, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !646, line: 140, column: 11)
!3816 = distinct !DILexicalBlock(scope: !3802, file: !646, line: 139, column: 5)
!3817 = !DILocation(line: 50, column: 15, scope: !3805, inlinedAt: !3814)
!3818 = !DILocation(line: 50, column: 3, scope: !3805, inlinedAt: !3814)
!3819 = !DILocation(line: 55, column: 18, scope: !3810, inlinedAt: !3814)
!3820 = !DILocation(line: 0, scope: !3810, inlinedAt: !3814)
!3821 = !DILocation(line: 56, column: 15, scope: !3822, inlinedAt: !3814)
!3822 = distinct !DILexicalBlock(scope: !3810, file: !646, line: 56, column: 13)
!3823 = !DILocation(line: 56, column: 13, scope: !3810, inlinedAt: !3814)
!3824 = !DILocation(line: 58, column: 23, scope: !3825, inlinedAt: !3814)
!3825 = distinct !DILexicalBlock(scope: !3822, file: !646, line: 57, column: 11)
!3826 = !DILocation(line: 59, column: 17, scope: !3825, inlinedAt: !3814)
!3827 = !DILocation(line: 59, column: 24, scope: !3825, inlinedAt: !3814)
!3828 = !DILocation(line: 60, column: 13, scope: !3825, inlinedAt: !3814)
!3829 = !DILocation(line: 70, column: 25, scope: !3810, inlinedAt: !3814)
!3830 = !DILocation(line: 72, column: 13, scope: !3810, inlinedAt: !3814)
!3831 = !DILocation(line: 74, column: 23, scope: !3832, inlinedAt: !3814)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !646, line: 73, column: 11)
!3833 = distinct !DILexicalBlock(scope: !3810, file: !646, line: 72, column: 13)
!3834 = !DILocation(line: 75, column: 17, scope: !3832, inlinedAt: !3814)
!3835 = !DILocation(line: 75, column: 28, scope: !3832, inlinedAt: !3814)
!3836 = !DILocation(line: 76, column: 13, scope: !3832, inlinedAt: !3814)
!3837 = !DILocation(line: 79, column: 17, scope: !3811, inlinedAt: !3814)
!3838 = !DILocation(line: 80, column: 11, scope: !3811, inlinedAt: !3814)
!3839 = !DILocation(line: 80, column: 21, scope: !3811, inlinedAt: !3814)
!3840 = !DILocation(line: 83, column: 11, scope: !3811, inlinedAt: !3814)
!3841 = !DILocation(line: 83, column: 19, scope: !3842, inlinedAt: !3814)
!3842 = distinct !DILexicalBlock(scope: !3811, file: !646, line: 83, column: 11)
!3843 = !DILocation(line: 83, column: 25, scope: !3842, inlinedAt: !3814)
!3844 = !DILocation(line: 83, column: 15, scope: !3842, inlinedAt: !3814)
!3845 = !DILocation(line: 88, column: 27, scope: !3846, inlinedAt: !3814)
!3846 = distinct !DILexicalBlock(scope: !3842, file: !646, line: 84, column: 9)
!3847 = !DILocation(line: 88, column: 25, scope: !3846, inlinedAt: !3814)
!3848 = !DILocation(line: 89, column: 29, scope: !3849, inlinedAt: !3814)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !646, line: 89, column: 15)
!3850 = !DILocation(line: 89, column: 15, scope: !3846, inlinedAt: !3814)
!3851 = !DILocation(line: 91, column: 21, scope: !3852, inlinedAt: !3814)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !646, line: 91, column: 19)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !646, line: 90, column: 13)
!3854 = !DILocation(line: 91, column: 19, scope: !3853, inlinedAt: !3814)
!3855 = !DILocation(line: 93, column: 25, scope: !3853, inlinedAt: !3814)
!3856 = !DILocation(line: 94, column: 32, scope: !3853, inlinedAt: !3814)
!3857 = !DILocation(line: 94, column: 30, scope: !3853, inlinedAt: !3814)
!3858 = !DILocation(line: 95, column: 13, scope: !3853, inlinedAt: !3814)
!3859 = !DILocation(line: 106, column: 7, scope: !3860, inlinedAt: !3814)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !646, line: 106, column: 7)
!3861 = distinct !DILexicalBlock(scope: !3811, file: !646, line: 106, column: 7)
!3862 = !DILocation(line: 147, column: 24, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3815, file: !646, line: 146, column: 9)
!3864 = !DILocation(line: 147, column: 21, scope: !3863)
!3865 = !DILocation(line: 147, column: 30, scope: !3863)
!3866 = !DILocation(line: 147, column: 44, scope: !3863)
!3867 = !DILocation(line: 149, column: 22, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !646, line: 149, column: 15)
!3869 = !DILocation(line: 149, column: 15, scope: !3863)
!3870 = !DILocation(line: 150, column: 25, scope: !3868)
!3871 = !DILocation(line: 150, column: 13, scope: !3868)
!3872 = !DILocation(line: 153, column: 27, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3868, file: !646, line: 151, column: 15)
!3874 = !DILocation(line: 154, column: 17, scope: !3873)
!3875 = !DILocation(line: 162, column: 17, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !646, line: 162, column: 17)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !646, line: 162, column: 17)
!3878 = !DILocation(line: 162, column: 17, scope: !3877)
!3879 = !DILocation(line: 166, column: 17, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !646, line: 166, column: 17)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !646, line: 166, column: 17)
!3882 = !DILocation(line: 171, column: 9, scope: !3779)
!3883 = !DILocation(line: 171, column: 15, scope: !3779)
!3884 = !DILocation(line: 173, column: 25, scope: !3778)
!3885 = !DILocation(line: 0, scope: !3778)
!3886 = !DILocation(line: 174, column: 7, scope: !3778)
!3887 = !DILocation(line: 175, column: 13, scope: !3778)
!3888 = !DILocation(line: 176, column: 5, scope: !3778)
!3889 = !DILocation(line: 178, column: 3, scope: !3767)
!3890 = !DISubprogram(name: "fork", scope: !1607, file: !1607, line: 778, type: !3891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!97}
!3893 = !DISubprogram(name: "__assert_fail", scope: !3894, file: !3894, line: 69, type: !3895, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3894 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !143, !143, !99, !143}
!3897 = !DISubprogram(name: "chdir", scope: !1607, file: !1607, line: 517, type: !3898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!80, !143}
!3900 = !DISubprogram(name: "fchdir", scope: !1607, file: !1607, line: 521, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3901 = distinct !DISubprogram(name: "savewd_restore", scope: !646, file: !646, line: 182, type: !3902, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!80, !3747, !80}
!3904 = !{!3905, !3906, !3907, !3911, !3913}
!3905 = !DILocalVariable(name: "wd", arg: 1, scope: !3901, file: !646, line: 182, type: !3747)
!3906 = !DILocalVariable(name: "status", arg: 2, scope: !3901, file: !646, line: 182, type: !80)
!3907 = !DILocalVariable(name: "chdir_errno", scope: !3908, file: !646, line: 201, type: !80)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !646, line: 200, column: 9)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !646, line: 194, column: 11)
!3910 = distinct !DILexicalBlock(scope: !3901, file: !646, line: 185, column: 5)
!3911 = !DILocalVariable(name: "child", scope: !3912, file: !646, line: 216, type: !95)
!3912 = distinct !DILexicalBlock(scope: !3910, file: !646, line: 215, column: 7)
!3913 = !DILocalVariable(name: "child_status", scope: !3914, file: !646, line: 221, type: !80)
!3914 = distinct !DILexicalBlock(scope: !3915, file: !646, line: 220, column: 11)
!3915 = distinct !DILexicalBlock(scope: !3912, file: !646, line: 219, column: 13)
!3916 = !DILocation(line: 0, scope: !3901)
!3917 = !DILocation(line: 184, column: 15, scope: !3901)
!3918 = !DILocation(line: 184, column: 3, scope: !3901)
!3919 = !DILocation(line: 209, column: 23, scope: !3910)
!3920 = !DILocation(line: 209, column: 7, scope: !3910)
!3921 = !DILocation(line: 194, column: 23, scope: !3909)
!3922 = !DILocation(line: 194, column: 27, scope: !3909)
!3923 = !DILocation(line: 194, column: 11, scope: !3909)
!3924 = !DILocation(line: 194, column: 31, scope: !3909)
!3925 = !DILocation(line: 194, column: 11, scope: !3910)
!3926 = !DILocation(line: 196, column: 21, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3909, file: !646, line: 195, column: 9)
!3928 = !DILocation(line: 197, column: 11, scope: !3927)
!3929 = !DILocation(line: 201, column: 29, scope: !3908)
!3930 = !DILocation(line: 0, scope: !3908)
!3931 = !DILocation(line: 202, column: 26, scope: !3908)
!3932 = !DILocation(line: 202, column: 11, scope: !3908)
!3933 = !DILocation(line: 203, column: 21, scope: !3908)
!3934 = !DILocation(line: 204, column: 26, scope: !3908)
!3935 = !DILocation(line: 194, column: 34, scope: !3909)
!3936 = !DILocation(line: 209, column: 13, scope: !3910)
!3937 = !DILocation(line: 210, column: 7, scope: !3910)
!3938 = !DILocation(line: 216, column: 27, scope: !3912)
!3939 = !DILocation(line: 216, column: 31, scope: !3912)
!3940 = !DILocation(line: 0, scope: !3912)
!3941 = !DILocation(line: 217, column: 19, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3912, file: !646, line: 217, column: 13)
!3943 = !DILocation(line: 217, column: 13, scope: !3912)
!3944 = !DILocation(line: 218, column: 11, scope: !3942)
!3945 = !DILocation(line: 219, column: 15, scope: !3915)
!3946 = !DILocation(line: 219, column: 13, scope: !3912)
!3947 = !DILocation(line: 221, column: 13, scope: !3914)
!3948 = !DILocation(line: 222, column: 13, scope: !3914)
!3949 = !DILocation(line: 0, scope: !3914)
!3950 = !DILocation(line: 222, column: 20, scope: !3914)
!3951 = !DILocation(line: 222, column: 54, scope: !3914)
!3952 = !DILocation(line: 223, column: 15, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !646, line: 223, column: 15)
!3954 = distinct !DILexicalBlock(scope: !3914, file: !646, line: 223, column: 15)
!3955 = !DILocation(line: 223, column: 15, scope: !3954)
!3956 = distinct !{!3956, !3948, !3957, !1082}
!3957 = !DILocation(line: 223, column: 15, scope: !3914)
!3958 = !DILocation(line: 224, column: 27, scope: !3914)
!3959 = !DILocation(line: 225, column: 19, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3914, file: !646, line: 225, column: 17)
!3961 = !DILocation(line: 225, column: 17, scope: !3914)
!3962 = !DILocation(line: 226, column: 15, scope: !3960)
!3963 = !DILocation(line: 227, column: 20, scope: !3914)
!3964 = !DILocation(line: 228, column: 11, scope: !3915)
!3965 = !DILocation(line: 233, column: 7, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !646, line: 233, column: 7)
!3967 = distinct !DILexicalBlock(scope: !3910, file: !646, line: 233, column: 7)
!3968 = !DILocation(line: 237, column: 1, scope: !3901)
!3969 = !DISubprogram(name: "waitpid", scope: !3970, file: !3970, line: 111, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3970 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!97, !97, !406, !80}
!3973 = !DISubprogram(name: "raise", scope: !3974, file: !3974, line: 123, type: !1632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!3974 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3975 = distinct !DISubprogram(name: "savewd_finish", scope: !646, file: !646, line: 240, type: !3745, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !3976)
!3976 = !{!3977}
!3977 = !DILocalVariable(name: "wd", arg: 1, scope: !3975, file: !646, line: 240, type: !3747)
!3978 = !DILocation(line: 0, scope: !3975)
!3979 = !DILocation(line: 242, column: 15, scope: !3975)
!3980 = !DILocation(line: 242, column: 3, scope: !3975)
!3981 = !DILocation(line: 249, column: 18, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3975, file: !646, line: 243, column: 5)
!3983 = !DILocation(line: 249, column: 22, scope: !3982)
!3984 = !DILocation(line: 249, column: 7, scope: !3982)
!3985 = !DILocation(line: 252, column: 11, scope: !3982)
!3986 = !DILocation(line: 253, column: 7, scope: !3982)
!3987 = !DILocation(line: 256, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !646, line: 256, column: 7)
!3989 = distinct !DILexicalBlock(scope: !3982, file: !646, line: 256, column: 7)
!3990 = !DILocation(line: 256, column: 7, scope: !3989)
!3991 = !DILocation(line: 261, column: 7, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !646, line: 261, column: 7)
!3993 = distinct !DILexicalBlock(scope: !3982, file: !646, line: 261, column: 7)
!3994 = !DILocation(line: 0, scope: !3982)
!3995 = !DILocation(line: 264, column: 13, scope: !3975)
!3996 = !DILocation(line: 265, column: 1, scope: !3975)
!3997 = distinct !DISubprogram(name: "savewd_process_files", scope: !646, file: !646, line: 284, type: !3998, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4003)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!80, !80, !1189, !4000, !138}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!80, !137, !3747, !138}
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4018, !4021}
!4004 = !DILocalVariable(name: "n_files", arg: 1, scope: !3997, file: !646, line: 284, type: !80)
!4005 = !DILocalVariable(name: "file", arg: 2, scope: !3997, file: !646, line: 284, type: !1189)
!4006 = !DILocalVariable(name: "act", arg: 3, scope: !3997, file: !646, line: 285, type: !4000)
!4007 = !DILocalVariable(name: "options", arg: 4, scope: !3997, file: !646, line: 286, type: !138)
!4008 = !DILocalVariable(name: "i", scope: !3997, file: !646, line: 288, type: !80)
!4009 = !DILocalVariable(name: "last_relative", scope: !3997, file: !646, line: 289, type: !80)
!4010 = !DILocalVariable(name: "exit_status", scope: !3997, file: !646, line: 290, type: !80)
!4011 = !DILocalVariable(name: "wd", scope: !3997, file: !646, line: 291, type: !852)
!4012 = !DILocalVariable(name: "s", scope: !4013, file: !646, line: 302, type: !80)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !646, line: 301, column: 9)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !646, line: 300, column: 11)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !646, line: 299, column: 5)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !646, line: 298, column: 3)
!4017 = distinct !DILexicalBlock(scope: !3997, file: !646, line: 298, column: 3)
!4018 = !DILocalVariable(name: "r", scope: !4019, file: !646, line: 309, type: !80)
!4019 = distinct !DILexicalBlock(scope: !4020, file: !646, line: 308, column: 9)
!4020 = distinct !DILexicalBlock(scope: !4015, file: !646, line: 307, column: 11)
!4021 = !DILocalVariable(name: "s", scope: !4022, file: !646, line: 319, type: !80)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !646, line: 318, column: 5)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !646, line: 317, column: 3)
!4024 = distinct !DILexicalBlock(scope: !3997, file: !646, line: 317, column: 3)
!4025 = !DILocation(line: 0, scope: !3997)
!4026 = !DILocation(line: 291, column: 3, scope: !3997)
!4027 = !DILocation(line: 291, column: 17, scope: !3997)
!4028 = !DILocation(line: 0, scope: !3744, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 292, column: 3, scope: !3997)
!4030 = !DILocation(line: 88, column: 13, scope: !3744, inlinedAt: !4029)
!4031 = !DILocation(line: 294, column: 8, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !3997, file: !646, line: 294, column: 3)
!4033 = !DILocation(line: 294, column: 39, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4032, file: !646, line: 294, column: 3)
!4035 = !DILocation(line: 294, column: 3, scope: !4032)
!4036 = !DILocation(line: 294, scope: !4032)
!4037 = !DILocation(line: 295, column: 11, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4034, file: !646, line: 295, column: 9)
!4039 = !DILocation(line: 295, column: 9, scope: !4034)
!4040 = distinct !{!4040, !4035, !4041, !1082}
!4041 = !DILocation(line: 296, column: 7, scope: !4032)
!4042 = !DILocation(line: 298, column: 12, scope: !4016)
!4043 = !DILocation(line: 298, column: 3, scope: !4017)
!4044 = !DILocalVariable(name: "wd", arg: 1, scope: !4045, file: !646, line: 278, type: !3756)
!4045 = distinct !DISubprogram(name: "savewd_delegating", scope: !646, file: !646, line: 278, type: !4046, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4048)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!191, !3756}
!4048 = !{!4044}
!4049 = !DILocation(line: 0, scope: !4045, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 300, column: 13, scope: !4014)
!4051 = !DILocation(line: 280, column: 14, scope: !4045, inlinedAt: !4050)
!4052 = !DILocation(line: 280, column: 20, scope: !4045, inlinedAt: !4050)
!4053 = !DILocation(line: 280, column: 37, scope: !4045, inlinedAt: !4050)
!4054 = !DILocation(line: 302, column: 24, scope: !4013)
!4055 = !DILocation(line: 302, column: 19, scope: !4013)
!4056 = !DILocation(line: 0, scope: !4013)
!4057 = !DILocation(line: 303, column: 15, scope: !4013)
!4058 = !DILocation(line: 305, column: 9, scope: !4013)
!4059 = !DILocation(line: 307, column: 13, scope: !4020)
!4060 = !DILocation(line: 307, column: 11, scope: !4015)
!4061 = !DILocation(line: 309, column: 19, scope: !4019)
!4062 = !DILocation(line: 0, scope: !4019)
!4063 = !DILocation(line: 310, column: 15, scope: !4019)
!4064 = !DILocation(line: 312, column: 9, scope: !4019)
!4065 = distinct !{!4065, !4043, !4066, !1082}
!4066 = !DILocation(line: 313, column: 5, scope: !4017)
!4067 = !DILocation(line: 242, column: 15, scope: !3975, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 315, column: 3, scope: !3997)
!4069 = !DILocation(line: 0, scope: !3975, inlinedAt: !4068)
!4070 = !DILocation(line: 242, column: 3, scope: !3975, inlinedAt: !4068)
!4071 = !DILocation(line: 249, column: 18, scope: !3982, inlinedAt: !4068)
!4072 = !DILocation(line: 249, column: 22, scope: !3982, inlinedAt: !4068)
!4073 = !DILocation(line: 249, column: 7, scope: !3982, inlinedAt: !4068)
!4074 = !DILocation(line: 252, column: 11, scope: !3982, inlinedAt: !4068)
!4075 = !DILocation(line: 253, column: 7, scope: !3982, inlinedAt: !4068)
!4076 = !DILocation(line: 256, column: 7, scope: !3988, inlinedAt: !4068)
!4077 = !DILocation(line: 256, column: 7, scope: !3989, inlinedAt: !4068)
!4078 = !DILocation(line: 261, column: 7, scope: !3992, inlinedAt: !4068)
!4079 = !DILocation(line: 0, scope: !3982, inlinedAt: !4068)
!4080 = !DILocation(line: 264, column: 13, scope: !3975, inlinedAt: !4068)
!4081 = !DILocation(line: 317, column: 12, scope: !4023)
!4082 = !DILocation(line: 317, column: 3, scope: !4024)
!4083 = !DILocation(line: 319, column: 20, scope: !4022)
!4084 = !DILocation(line: 319, column: 15, scope: !4022)
!4085 = !DILocation(line: 0, scope: !4022)
!4086 = !DILocation(line: 320, column: 11, scope: !4022)
!4087 = !DILocation(line: 317, column: 24, scope: !4023)
!4088 = distinct !{!4088, !4082, !4089, !1082}
!4089 = !DILocation(line: 322, column: 5, scope: !4024)
!4090 = !DILocation(line: 325, column: 1, scope: !3997)
!4091 = !DILocation(line: 324, column: 3, scope: !3997)
!4092 = distinct !DISubprogram(name: "version_etc_arn", scope: !686, file: !686, line: 61, type: !4093, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4130)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !4095, !143, !143, !143, !4129, !140}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4097)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4097, file: !208, line: 51, baseType: !80, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4097, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4097, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4097, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4097, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4097, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4097, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4097, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4097, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4097, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4097, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4097, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4097, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4097, file: !208, line: 70, baseType: !4113, size: 64, offset: 832)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4097, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4097, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4097, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4097, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4097, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4097, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4097, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4097, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4097, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4097, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4097, file: !208, line: 93, baseType: !4113, size: 64, offset: 1344)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4097, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4097, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4097, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4097, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136}
!4131 = !DILocalVariable(name: "stream", arg: 1, scope: !4092, file: !686, line: 61, type: !4095)
!4132 = !DILocalVariable(name: "command_name", arg: 2, scope: !4092, file: !686, line: 62, type: !143)
!4133 = !DILocalVariable(name: "package", arg: 3, scope: !4092, file: !686, line: 62, type: !143)
!4134 = !DILocalVariable(name: "version", arg: 4, scope: !4092, file: !686, line: 63, type: !143)
!4135 = !DILocalVariable(name: "authors", arg: 5, scope: !4092, file: !686, line: 64, type: !4129)
!4136 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4092, file: !686, line: 64, type: !140)
!4137 = !DILocation(line: 0, scope: !4092)
!4138 = !DILocation(line: 66, column: 7, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4092, file: !686, line: 66, column: 7)
!4140 = !DILocation(line: 66, column: 7, scope: !4092)
!4141 = !DILocation(line: 67, column: 5, scope: !4139)
!4142 = !DILocation(line: 69, column: 5, scope: !4139)
!4143 = !DILocation(line: 83, column: 3, scope: !4092)
!4144 = !DILocation(line: 85, column: 3, scope: !4092)
!4145 = !DILocation(line: 88, column: 3, scope: !4092)
!4146 = !DILocation(line: 95, column: 3, scope: !4092)
!4147 = !DILocation(line: 97, column: 3, scope: !4092)
!4148 = !DILocation(line: 105, column: 7, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4092, file: !686, line: 98, column: 5)
!4150 = !DILocation(line: 106, column: 7, scope: !4149)
!4151 = !DILocation(line: 109, column: 7, scope: !4149)
!4152 = !DILocation(line: 110, column: 7, scope: !4149)
!4153 = !DILocation(line: 113, column: 7, scope: !4149)
!4154 = !DILocation(line: 115, column: 7, scope: !4149)
!4155 = !DILocation(line: 120, column: 7, scope: !4149)
!4156 = !DILocation(line: 122, column: 7, scope: !4149)
!4157 = !DILocation(line: 127, column: 7, scope: !4149)
!4158 = !DILocation(line: 129, column: 7, scope: !4149)
!4159 = !DILocation(line: 134, column: 7, scope: !4149)
!4160 = !DILocation(line: 137, column: 7, scope: !4149)
!4161 = !DILocation(line: 142, column: 7, scope: !4149)
!4162 = !DILocation(line: 145, column: 7, scope: !4149)
!4163 = !DILocation(line: 150, column: 7, scope: !4149)
!4164 = !DILocation(line: 154, column: 7, scope: !4149)
!4165 = !DILocation(line: 159, column: 7, scope: !4149)
!4166 = !DILocation(line: 163, column: 7, scope: !4149)
!4167 = !DILocation(line: 170, column: 7, scope: !4149)
!4168 = !DILocation(line: 174, column: 7, scope: !4149)
!4169 = !DILocation(line: 176, column: 1, scope: !4092)
!4170 = distinct !DISubprogram(name: "version_etc_ar", scope: !686, file: !686, line: 183, type: !4171, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4095, !143, !143, !143, !4129}
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179}
!4174 = !DILocalVariable(name: "stream", arg: 1, scope: !4170, file: !686, line: 183, type: !4095)
!4175 = !DILocalVariable(name: "command_name", arg: 2, scope: !4170, file: !686, line: 184, type: !143)
!4176 = !DILocalVariable(name: "package", arg: 3, scope: !4170, file: !686, line: 184, type: !143)
!4177 = !DILocalVariable(name: "version", arg: 4, scope: !4170, file: !686, line: 185, type: !143)
!4178 = !DILocalVariable(name: "authors", arg: 5, scope: !4170, file: !686, line: 185, type: !4129)
!4179 = !DILocalVariable(name: "n_authors", scope: !4170, file: !686, line: 187, type: !140)
!4180 = !DILocation(line: 0, scope: !4170)
!4181 = !DILocation(line: 189, column: 8, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4170, file: !686, line: 189, column: 3)
!4183 = !DILocation(line: 189, scope: !4182)
!4184 = !DILocation(line: 189, column: 23, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4182, file: !686, line: 189, column: 3)
!4186 = !DILocation(line: 189, column: 3, scope: !4182)
!4187 = !DILocation(line: 189, column: 52, scope: !4185)
!4188 = distinct !{!4188, !4186, !4189, !1082}
!4189 = !DILocation(line: 190, column: 5, scope: !4182)
!4190 = !DILocation(line: 191, column: 3, scope: !4170)
!4191 = !DILocation(line: 192, column: 1, scope: !4170)
!4192 = distinct !DISubprogram(name: "version_etc_va", scope: !686, file: !686, line: 199, type: !4193, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4203)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !4095, !143, !143, !143, !4195}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4197)
!4197 = !{!4198, !4200, !4201, !4202}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4196, file: !4199, line: 192, baseType: !99, size: 32)
!4199 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4196, file: !4199, line: 192, baseType: !99, size: 32, offset: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4196, file: !4199, line: 192, baseType: !138, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4196, file: !4199, line: 192, baseType: !138, size: 64, offset: 128)
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209, !4210}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4192, file: !686, line: 199, type: !4095)
!4205 = !DILocalVariable(name: "command_name", arg: 2, scope: !4192, file: !686, line: 200, type: !143)
!4206 = !DILocalVariable(name: "package", arg: 3, scope: !4192, file: !686, line: 200, type: !143)
!4207 = !DILocalVariable(name: "version", arg: 4, scope: !4192, file: !686, line: 201, type: !143)
!4208 = !DILocalVariable(name: "authors", arg: 5, scope: !4192, file: !686, line: 201, type: !4195)
!4209 = !DILocalVariable(name: "n_authors", scope: !4192, file: !686, line: 203, type: !140)
!4210 = !DILocalVariable(name: "authtab", scope: !4192, file: !686, line: 204, type: !4211)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !65)
!4212 = !DILocation(line: 0, scope: !4192)
!4213 = !DILocation(line: 204, column: 3, scope: !4192)
!4214 = !DILocation(line: 204, column: 15, scope: !4192)
!4215 = !DILocation(line: 208, column: 35, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !686, line: 206, column: 3)
!4217 = distinct !DILexicalBlock(scope: !4192, file: !686, line: 206, column: 3)
!4218 = !DILocation(line: 208, column: 33, scope: !4216)
!4219 = !DILocation(line: 208, column: 67, scope: !4216)
!4220 = !DILocation(line: 206, column: 3, scope: !4217)
!4221 = !DILocation(line: 208, column: 14, scope: !4216)
!4222 = !DILocation(line: 0, scope: !4217)
!4223 = !DILocation(line: 211, column: 3, scope: !4192)
!4224 = !DILocation(line: 213, column: 1, scope: !4192)
!4225 = distinct !DISubprogram(name: "version_etc", scope: !686, file: !686, line: 230, type: !4226, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !4095, !143, !143, !143, null}
!4228 = !{!4229, !4230, !4231, !4232, !4233}
!4229 = !DILocalVariable(name: "stream", arg: 1, scope: !4225, file: !686, line: 230, type: !4095)
!4230 = !DILocalVariable(name: "command_name", arg: 2, scope: !4225, file: !686, line: 231, type: !143)
!4231 = !DILocalVariable(name: "package", arg: 3, scope: !4225, file: !686, line: 231, type: !143)
!4232 = !DILocalVariable(name: "version", arg: 4, scope: !4225, file: !686, line: 232, type: !143)
!4233 = !DILocalVariable(name: "authors", scope: !4225, file: !686, line: 234, type: !4234)
!4234 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1030, line: 52, baseType: !4235)
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1506, line: 14, baseType: !4236)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4199, baseType: !4237)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4196, size: 192, elements: !60)
!4238 = !DILocation(line: 0, scope: !4225)
!4239 = !DILocation(line: 234, column: 3, scope: !4225)
!4240 = !DILocation(line: 234, column: 11, scope: !4225)
!4241 = !DILocation(line: 235, column: 3, scope: !4225)
!4242 = !DILocation(line: 236, column: 3, scope: !4225)
!4243 = !DILocation(line: 237, column: 3, scope: !4225)
!4244 = !DILocation(line: 238, column: 1, scope: !4225)
!4245 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !686, file: !686, line: 241, type: !480, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !975)
!4246 = !DILocation(line: 243, column: 3, scope: !4245)
!4247 = !DILocation(line: 248, column: 3, scope: !4245)
!4248 = !DILocation(line: 254, column: 3, scope: !4245)
!4249 = !DILocation(line: 259, column: 3, scope: !4245)
!4250 = !DILocation(line: 261, column: 1, scope: !4245)
!4251 = distinct !DISubprogram(name: "xnrealloc", scope: !4252, file: !4252, line: 147, type: !4253, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4255)
!4252 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!138, !138, !140, !140}
!4255 = !{!4256, !4257, !4258}
!4256 = !DILocalVariable(name: "p", arg: 1, scope: !4251, file: !4252, line: 147, type: !138)
!4257 = !DILocalVariable(name: "n", arg: 2, scope: !4251, file: !4252, line: 147, type: !140)
!4258 = !DILocalVariable(name: "s", arg: 3, scope: !4251, file: !4252, line: 147, type: !140)
!4259 = !DILocation(line: 0, scope: !4251)
!4260 = !DILocalVariable(name: "p", arg: 1, scope: !4261, file: !870, line: 83, type: !138)
!4261 = distinct !DISubprogram(name: "xreallocarray", scope: !870, file: !870, line: 83, type: !4253, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4262)
!4262 = !{!4260, !4263, !4264}
!4263 = !DILocalVariable(name: "n", arg: 2, scope: !4261, file: !870, line: 83, type: !140)
!4264 = !DILocalVariable(name: "s", arg: 3, scope: !4261, file: !870, line: 83, type: !140)
!4265 = !DILocation(line: 0, scope: !4261, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 149, column: 10, scope: !4251)
!4267 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4266)
!4268 = !DILocalVariable(name: "p", arg: 1, scope: !4269, file: !870, line: 37, type: !138)
!4269 = distinct !DISubprogram(name: "check_nonnull", scope: !870, file: !870, line: 37, type: !4270, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!138, !138}
!4272 = !{!4268}
!4273 = !DILocation(line: 0, scope: !4269, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4266)
!4275 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4274)
!4276 = distinct !DILexicalBlock(scope: !4269, file: !870, line: 39, column: 7)
!4277 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4274)
!4278 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4274)
!4279 = !DILocation(line: 149, column: 3, scope: !4251)
!4280 = !DILocation(line: 0, scope: !4261)
!4281 = !DILocation(line: 85, column: 25, scope: !4261)
!4282 = !DILocation(line: 0, scope: !4269, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 85, column: 10, scope: !4261)
!4284 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4283)
!4285 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4283)
!4286 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4283)
!4287 = !DILocation(line: 85, column: 3, scope: !4261)
!4288 = distinct !DISubprogram(name: "xmalloc", scope: !870, file: !870, line: 47, type: !4289, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!138, !140}
!4291 = !{!4292}
!4292 = !DILocalVariable(name: "s", arg: 1, scope: !4288, file: !870, line: 47, type: !140)
!4293 = !DILocation(line: 0, scope: !4288)
!4294 = !DILocation(line: 49, column: 25, scope: !4288)
!4295 = !DILocation(line: 0, scope: !4269, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 49, column: 10, scope: !4288)
!4297 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4296)
!4298 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4296)
!4299 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4296)
!4300 = !DILocation(line: 49, column: 3, scope: !4288)
!4301 = !DISubprogram(name: "malloc", scope: !1160, file: !1160, line: 540, type: !4289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4302 = distinct !DISubprogram(name: "ximalloc", scope: !870, file: !870, line: 53, type: !4303, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!138, !889}
!4305 = !{!4306}
!4306 = !DILocalVariable(name: "s", arg: 1, scope: !4302, file: !870, line: 53, type: !889)
!4307 = !DILocation(line: 0, scope: !4302)
!4308 = !DILocalVariable(name: "s", arg: 1, scope: !4309, file: !4310, line: 55, type: !889)
!4309 = distinct !DISubprogram(name: "imalloc", scope: !4310, file: !4310, line: 55, type: !4303, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4311)
!4310 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4311 = !{!4308}
!4312 = !DILocation(line: 0, scope: !4309, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 55, column: 25, scope: !4302)
!4314 = !DILocation(line: 57, column: 26, scope: !4309, inlinedAt: !4313)
!4315 = !DILocation(line: 0, scope: !4269, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 55, column: 10, scope: !4302)
!4317 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4316)
!4318 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4316)
!4319 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4316)
!4320 = !DILocation(line: 55, column: 3, scope: !4302)
!4321 = distinct !DISubprogram(name: "xcharalloc", scope: !870, file: !870, line: 59, type: !4322, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!137, !140}
!4324 = !{!4325}
!4325 = !DILocalVariable(name: "n", arg: 1, scope: !4321, file: !870, line: 59, type: !140)
!4326 = !DILocation(line: 0, scope: !4321)
!4327 = !DILocation(line: 0, scope: !4288, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 61, column: 10, scope: !4321)
!4329 = !DILocation(line: 49, column: 25, scope: !4288, inlinedAt: !4328)
!4330 = !DILocation(line: 0, scope: !4269, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 49, column: 10, scope: !4288, inlinedAt: !4328)
!4332 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4331)
!4333 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4331)
!4334 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4331)
!4335 = !DILocation(line: 61, column: 3, scope: !4321)
!4336 = distinct !DISubprogram(name: "xrealloc", scope: !870, file: !870, line: 68, type: !4337, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!138, !138, !140}
!4339 = !{!4340, !4341}
!4340 = !DILocalVariable(name: "p", arg: 1, scope: !4336, file: !870, line: 68, type: !138)
!4341 = !DILocalVariable(name: "s", arg: 2, scope: !4336, file: !870, line: 68, type: !140)
!4342 = !DILocation(line: 0, scope: !4336)
!4343 = !DILocalVariable(name: "ptr", arg: 1, scope: !4344, file: !4345, line: 2057, type: !138)
!4344 = distinct !DISubprogram(name: "rpl_realloc", scope: !4345, file: !4345, line: 2057, type: !4337, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4346)
!4345 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4346 = !{!4343, !4347}
!4347 = !DILocalVariable(name: "size", arg: 2, scope: !4344, file: !4345, line: 2057, type: !140)
!4348 = !DILocation(line: 0, scope: !4344, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 70, column: 25, scope: !4336)
!4350 = !DILocation(line: 2059, column: 24, scope: !4344, inlinedAt: !4349)
!4351 = !DILocation(line: 2059, column: 10, scope: !4344, inlinedAt: !4349)
!4352 = !DILocation(line: 0, scope: !4269, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 70, column: 10, scope: !4336)
!4354 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4353)
!4355 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4353)
!4356 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4353)
!4357 = !DILocation(line: 70, column: 3, scope: !4336)
!4358 = !DISubprogram(name: "realloc", scope: !1160, file: !1160, line: 551, type: !4337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4359 = distinct !DISubprogram(name: "xirealloc", scope: !870, file: !870, line: 74, type: !4360, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!138, !138, !889}
!4362 = !{!4363, !4364}
!4363 = !DILocalVariable(name: "p", arg: 1, scope: !4359, file: !870, line: 74, type: !138)
!4364 = !DILocalVariable(name: "s", arg: 2, scope: !4359, file: !870, line: 74, type: !889)
!4365 = !DILocation(line: 0, scope: !4359)
!4366 = !DILocalVariable(name: "p", arg: 1, scope: !4367, file: !4310, line: 66, type: !138)
!4367 = distinct !DISubprogram(name: "irealloc", scope: !4310, file: !4310, line: 66, type: !4360, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4368)
!4368 = !{!4366, !4369}
!4369 = !DILocalVariable(name: "s", arg: 2, scope: !4367, file: !4310, line: 66, type: !889)
!4370 = !DILocation(line: 0, scope: !4367, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 76, column: 25, scope: !4359)
!4372 = !DILocation(line: 0, scope: !4344, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 68, column: 26, scope: !4367, inlinedAt: !4371)
!4374 = !DILocation(line: 2059, column: 24, scope: !4344, inlinedAt: !4373)
!4375 = !DILocation(line: 2059, column: 10, scope: !4344, inlinedAt: !4373)
!4376 = !DILocation(line: 0, scope: !4269, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 76, column: 10, scope: !4359)
!4378 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4377)
!4379 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4377)
!4380 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4377)
!4381 = !DILocation(line: 76, column: 3, scope: !4359)
!4382 = distinct !DISubprogram(name: "xireallocarray", scope: !870, file: !870, line: 89, type: !4383, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!138, !138, !889, !889}
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "p", arg: 1, scope: !4382, file: !870, line: 89, type: !138)
!4387 = !DILocalVariable(name: "n", arg: 2, scope: !4382, file: !870, line: 89, type: !889)
!4388 = !DILocalVariable(name: "s", arg: 3, scope: !4382, file: !870, line: 89, type: !889)
!4389 = !DILocation(line: 0, scope: !4382)
!4390 = !DILocalVariable(name: "p", arg: 1, scope: !4391, file: !4310, line: 98, type: !138)
!4391 = distinct !DISubprogram(name: "ireallocarray", scope: !4310, file: !4310, line: 98, type: !4383, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4392)
!4392 = !{!4390, !4393, !4394}
!4393 = !DILocalVariable(name: "n", arg: 2, scope: !4391, file: !4310, line: 98, type: !889)
!4394 = !DILocalVariable(name: "s", arg: 3, scope: !4391, file: !4310, line: 98, type: !889)
!4395 = !DILocation(line: 0, scope: !4391, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 91, column: 25, scope: !4382)
!4397 = !DILocation(line: 101, column: 13, scope: !4391, inlinedAt: !4396)
!4398 = !DILocation(line: 0, scope: !4269, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 91, column: 10, scope: !4382)
!4400 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4399)
!4401 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4399)
!4402 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4399)
!4403 = !DILocation(line: 91, column: 3, scope: !4382)
!4404 = distinct !DISubprogram(name: "xnmalloc", scope: !870, file: !870, line: 98, type: !4405, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!138, !140, !140}
!4407 = !{!4408, !4409}
!4408 = !DILocalVariable(name: "n", arg: 1, scope: !4404, file: !870, line: 98, type: !140)
!4409 = !DILocalVariable(name: "s", arg: 2, scope: !4404, file: !870, line: 98, type: !140)
!4410 = !DILocation(line: 0, scope: !4404)
!4411 = !DILocation(line: 0, scope: !4261, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 100, column: 10, scope: !4404)
!4413 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4412)
!4414 = !DILocation(line: 0, scope: !4269, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4412)
!4416 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4415)
!4417 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4415)
!4418 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4415)
!4419 = !DILocation(line: 100, column: 3, scope: !4404)
!4420 = distinct !DISubprogram(name: "xinmalloc", scope: !870, file: !870, line: 104, type: !4421, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!138, !889, !889}
!4423 = !{!4424, !4425}
!4424 = !DILocalVariable(name: "n", arg: 1, scope: !4420, file: !870, line: 104, type: !889)
!4425 = !DILocalVariable(name: "s", arg: 2, scope: !4420, file: !870, line: 104, type: !889)
!4426 = !DILocation(line: 0, scope: !4420)
!4427 = !DILocation(line: 0, scope: !4382, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 106, column: 10, scope: !4420)
!4429 = !DILocation(line: 0, scope: !4391, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 91, column: 25, scope: !4382, inlinedAt: !4428)
!4431 = !DILocation(line: 101, column: 13, scope: !4391, inlinedAt: !4430)
!4432 = !DILocation(line: 0, scope: !4269, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 91, column: 10, scope: !4382, inlinedAt: !4428)
!4434 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4433)
!4435 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4433)
!4436 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4433)
!4437 = !DILocation(line: 106, column: 3, scope: !4420)
!4438 = distinct !DISubprogram(name: "x2realloc", scope: !870, file: !870, line: 116, type: !4439, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!138, !138, !876}
!4441 = !{!4442, !4443}
!4442 = !DILocalVariable(name: "p", arg: 1, scope: !4438, file: !870, line: 116, type: !138)
!4443 = !DILocalVariable(name: "ps", arg: 2, scope: !4438, file: !870, line: 116, type: !876)
!4444 = !DILocation(line: 0, scope: !4438)
!4445 = !DILocation(line: 0, scope: !873, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 118, column: 10, scope: !4438)
!4447 = !DILocation(line: 178, column: 14, scope: !873, inlinedAt: !4446)
!4448 = !DILocation(line: 180, column: 9, scope: !4449, inlinedAt: !4446)
!4449 = distinct !DILexicalBlock(scope: !873, file: !870, line: 180, column: 7)
!4450 = !DILocation(line: 180, column: 7, scope: !873, inlinedAt: !4446)
!4451 = !DILocation(line: 182, column: 13, scope: !4452, inlinedAt: !4446)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !870, line: 182, column: 11)
!4453 = distinct !DILexicalBlock(scope: !4449, file: !870, line: 181, column: 5)
!4454 = !DILocation(line: 182, column: 11, scope: !4453, inlinedAt: !4446)
!4455 = !DILocation(line: 197, column: 11, scope: !4456, inlinedAt: !4446)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !870, line: 197, column: 11)
!4457 = distinct !DILexicalBlock(scope: !4449, file: !870, line: 195, column: 5)
!4458 = !DILocation(line: 197, column: 11, scope: !4457, inlinedAt: !4446)
!4459 = !DILocation(line: 198, column: 9, scope: !4456, inlinedAt: !4446)
!4460 = !DILocation(line: 0, scope: !4261, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 201, column: 7, scope: !873, inlinedAt: !4446)
!4462 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4461)
!4463 = !DILocation(line: 0, scope: !4269, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4461)
!4465 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4464)
!4466 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4464)
!4467 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4464)
!4468 = !DILocation(line: 202, column: 7, scope: !873, inlinedAt: !4446)
!4469 = !DILocation(line: 118, column: 3, scope: !4438)
!4470 = !DILocation(line: 0, scope: !873)
!4471 = !DILocation(line: 178, column: 14, scope: !873)
!4472 = !DILocation(line: 180, column: 9, scope: !4449)
!4473 = !DILocation(line: 180, column: 7, scope: !873)
!4474 = !DILocation(line: 182, column: 13, scope: !4452)
!4475 = !DILocation(line: 182, column: 11, scope: !4453)
!4476 = !DILocation(line: 190, column: 30, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4452, file: !870, line: 183, column: 9)
!4478 = !DILocation(line: 191, column: 16, scope: !4477)
!4479 = !DILocation(line: 191, column: 13, scope: !4477)
!4480 = !DILocation(line: 192, column: 9, scope: !4477)
!4481 = !DILocation(line: 197, column: 11, scope: !4456)
!4482 = !DILocation(line: 197, column: 11, scope: !4457)
!4483 = !DILocation(line: 198, column: 9, scope: !4456)
!4484 = !DILocation(line: 0, scope: !4261, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 201, column: 7, scope: !873)
!4486 = !DILocation(line: 85, column: 25, scope: !4261, inlinedAt: !4485)
!4487 = !DILocation(line: 0, scope: !4269, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 85, column: 10, scope: !4261, inlinedAt: !4485)
!4489 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4488)
!4490 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4488)
!4491 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4488)
!4492 = !DILocation(line: 202, column: 7, scope: !873)
!4493 = !DILocation(line: 203, column: 3, scope: !873)
!4494 = !DILocation(line: 0, scope: !885)
!4495 = !DILocation(line: 230, column: 14, scope: !885)
!4496 = !DILocation(line: 238, column: 7, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !885, file: !870, line: 238, column: 7)
!4498 = !DILocation(line: 238, column: 7, scope: !885)
!4499 = !DILocation(line: 240, column: 9, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !885, file: !870, line: 240, column: 7)
!4501 = !DILocation(line: 240, column: 18, scope: !4500)
!4502 = !DILocation(line: 253, column: 8, scope: !885)
!4503 = !DILocation(line: 258, column: 27, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !870, line: 257, column: 5)
!4505 = distinct !DILexicalBlock(scope: !885, file: !870, line: 256, column: 7)
!4506 = !DILocation(line: 259, column: 50, scope: !4504)
!4507 = !DILocation(line: 259, column: 32, scope: !4504)
!4508 = !DILocation(line: 260, column: 5, scope: !4504)
!4509 = !DILocation(line: 262, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !885, file: !870, line: 262, column: 7)
!4511 = !DILocation(line: 262, column: 7, scope: !885)
!4512 = !DILocation(line: 263, column: 9, scope: !4510)
!4513 = !DILocation(line: 263, column: 5, scope: !4510)
!4514 = !DILocation(line: 264, column: 9, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !885, file: !870, line: 264, column: 7)
!4516 = !DILocation(line: 264, column: 14, scope: !4515)
!4517 = !DILocation(line: 265, column: 7, scope: !4515)
!4518 = !DILocation(line: 265, column: 11, scope: !4515)
!4519 = !DILocation(line: 266, column: 11, scope: !4515)
!4520 = !DILocation(line: 267, column: 14, scope: !4515)
!4521 = !DILocation(line: 264, column: 7, scope: !885)
!4522 = !DILocation(line: 268, column: 5, scope: !4515)
!4523 = !DILocation(line: 0, scope: !4336, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 269, column: 8, scope: !885)
!4525 = !DILocation(line: 0, scope: !4344, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 70, column: 25, scope: !4336, inlinedAt: !4524)
!4527 = !DILocation(line: 2059, column: 24, scope: !4344, inlinedAt: !4526)
!4528 = !DILocation(line: 2059, column: 10, scope: !4344, inlinedAt: !4526)
!4529 = !DILocation(line: 0, scope: !4269, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 70, column: 10, scope: !4336, inlinedAt: !4524)
!4531 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4530)
!4532 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4530)
!4533 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4530)
!4534 = !DILocation(line: 270, column: 7, scope: !885)
!4535 = !DILocation(line: 271, column: 3, scope: !885)
!4536 = distinct !DISubprogram(name: "xzalloc", scope: !870, file: !870, line: 279, type: !4289, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4537)
!4537 = !{!4538}
!4538 = !DILocalVariable(name: "s", arg: 1, scope: !4536, file: !870, line: 279, type: !140)
!4539 = !DILocation(line: 0, scope: !4536)
!4540 = !DILocalVariable(name: "n", arg: 1, scope: !4541, file: !870, line: 294, type: !140)
!4541 = distinct !DISubprogram(name: "xcalloc", scope: !870, file: !870, line: 294, type: !4405, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4542)
!4542 = !{!4540, !4543}
!4543 = !DILocalVariable(name: "s", arg: 2, scope: !4541, file: !870, line: 294, type: !140)
!4544 = !DILocation(line: 0, scope: !4541, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 281, column: 10, scope: !4536)
!4546 = !DILocation(line: 296, column: 25, scope: !4541, inlinedAt: !4545)
!4547 = !DILocation(line: 0, scope: !4269, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 296, column: 10, scope: !4541, inlinedAt: !4545)
!4549 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4548)
!4550 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4548)
!4551 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4548)
!4552 = !DILocation(line: 281, column: 3, scope: !4536)
!4553 = !DISubprogram(name: "calloc", scope: !1160, file: !1160, line: 543, type: !4405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4554 = !DILocation(line: 0, scope: !4541)
!4555 = !DILocation(line: 296, column: 25, scope: !4541)
!4556 = !DILocation(line: 0, scope: !4269, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 296, column: 10, scope: !4541)
!4558 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4557)
!4559 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4557)
!4560 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4557)
!4561 = !DILocation(line: 296, column: 3, scope: !4541)
!4562 = distinct !DISubprogram(name: "xizalloc", scope: !870, file: !870, line: 285, type: !4303, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4563)
!4563 = !{!4564}
!4564 = !DILocalVariable(name: "s", arg: 1, scope: !4562, file: !870, line: 285, type: !889)
!4565 = !DILocation(line: 0, scope: !4562)
!4566 = !DILocalVariable(name: "n", arg: 1, scope: !4567, file: !870, line: 300, type: !889)
!4567 = distinct !DISubprogram(name: "xicalloc", scope: !870, file: !870, line: 300, type: !4421, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4568)
!4568 = !{!4566, !4569}
!4569 = !DILocalVariable(name: "s", arg: 2, scope: !4567, file: !870, line: 300, type: !889)
!4570 = !DILocation(line: 0, scope: !4567, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 287, column: 10, scope: !4562)
!4572 = !DILocalVariable(name: "n", arg: 1, scope: !4573, file: !4310, line: 77, type: !889)
!4573 = distinct !DISubprogram(name: "icalloc", scope: !4310, file: !4310, line: 77, type: !4421, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4574)
!4574 = !{!4572, !4575}
!4575 = !DILocalVariable(name: "s", arg: 2, scope: !4573, file: !4310, line: 77, type: !889)
!4576 = !DILocation(line: 0, scope: !4573, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 302, column: 25, scope: !4567, inlinedAt: !4571)
!4578 = !DILocation(line: 91, column: 10, scope: !4573, inlinedAt: !4577)
!4579 = !DILocation(line: 0, scope: !4269, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 302, column: 10, scope: !4567, inlinedAt: !4571)
!4581 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4580)
!4582 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4580)
!4583 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4580)
!4584 = !DILocation(line: 287, column: 3, scope: !4562)
!4585 = !DILocation(line: 0, scope: !4567)
!4586 = !DILocation(line: 0, scope: !4573, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 302, column: 25, scope: !4567)
!4588 = !DILocation(line: 91, column: 10, scope: !4573, inlinedAt: !4587)
!4589 = !DILocation(line: 0, scope: !4269, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 302, column: 10, scope: !4567)
!4591 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4590)
!4592 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4590)
!4593 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4590)
!4594 = !DILocation(line: 302, column: 3, scope: !4567)
!4595 = distinct !DISubprogram(name: "xmemdup", scope: !870, file: !870, line: 310, type: !4596, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!138, !1184, !140}
!4598 = !{!4599, !4600}
!4599 = !DILocalVariable(name: "p", arg: 1, scope: !4595, file: !870, line: 310, type: !1184)
!4600 = !DILocalVariable(name: "s", arg: 2, scope: !4595, file: !870, line: 310, type: !140)
!4601 = !DILocation(line: 0, scope: !4595)
!4602 = !DILocation(line: 0, scope: !4288, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 312, column: 18, scope: !4595)
!4604 = !DILocation(line: 49, column: 25, scope: !4288, inlinedAt: !4603)
!4605 = !DILocation(line: 0, scope: !4269, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 49, column: 10, scope: !4288, inlinedAt: !4603)
!4607 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4606)
!4608 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4606)
!4609 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4606)
!4610 = !DILocalVariable(name: "__dest", arg: 1, scope: !4611, file: !2418, line: 26, type: !4614)
!4611 = distinct !DISubprogram(name: "memcpy", scope: !2418, file: !2418, line: 26, type: !4612, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4615)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!138, !4614, !1183, !140}
!4614 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!4615 = !{!4610, !4616, !4617}
!4616 = !DILocalVariable(name: "__src", arg: 2, scope: !4611, file: !2418, line: 26, type: !1183)
!4617 = !DILocalVariable(name: "__len", arg: 3, scope: !4611, file: !2418, line: 26, type: !140)
!4618 = !DILocation(line: 0, scope: !4611, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 312, column: 10, scope: !4595)
!4620 = !DILocation(line: 29, column: 10, scope: !4611, inlinedAt: !4619)
!4621 = !DILocation(line: 312, column: 3, scope: !4595)
!4622 = distinct !DISubprogram(name: "ximemdup", scope: !870, file: !870, line: 316, type: !4623, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4625)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!138, !1184, !889}
!4625 = !{!4626, !4627}
!4626 = !DILocalVariable(name: "p", arg: 1, scope: !4622, file: !870, line: 316, type: !1184)
!4627 = !DILocalVariable(name: "s", arg: 2, scope: !4622, file: !870, line: 316, type: !889)
!4628 = !DILocation(line: 0, scope: !4622)
!4629 = !DILocation(line: 0, scope: !4302, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 318, column: 18, scope: !4622)
!4631 = !DILocation(line: 0, scope: !4309, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 55, column: 25, scope: !4302, inlinedAt: !4630)
!4633 = !DILocation(line: 57, column: 26, scope: !4309, inlinedAt: !4632)
!4634 = !DILocation(line: 0, scope: !4269, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 55, column: 10, scope: !4302, inlinedAt: !4630)
!4636 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4635)
!4637 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4635)
!4638 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4635)
!4639 = !DILocation(line: 0, scope: !4611, inlinedAt: !4640)
!4640 = distinct !DILocation(line: 318, column: 10, scope: !4622)
!4641 = !DILocation(line: 29, column: 10, scope: !4611, inlinedAt: !4640)
!4642 = !DILocation(line: 318, column: 3, scope: !4622)
!4643 = distinct !DISubprogram(name: "ximemdup0", scope: !870, file: !870, line: 325, type: !4644, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4646)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!137, !1184, !889}
!4646 = !{!4647, !4648, !4649}
!4647 = !DILocalVariable(name: "p", arg: 1, scope: !4643, file: !870, line: 325, type: !1184)
!4648 = !DILocalVariable(name: "s", arg: 2, scope: !4643, file: !870, line: 325, type: !889)
!4649 = !DILocalVariable(name: "result", scope: !4643, file: !870, line: 327, type: !137)
!4650 = !DILocation(line: 0, scope: !4643)
!4651 = !DILocation(line: 327, column: 30, scope: !4643)
!4652 = !DILocation(line: 0, scope: !4302, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 327, column: 18, scope: !4643)
!4654 = !DILocation(line: 0, scope: !4309, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 55, column: 25, scope: !4302, inlinedAt: !4653)
!4656 = !DILocation(line: 57, column: 26, scope: !4309, inlinedAt: !4655)
!4657 = !DILocation(line: 0, scope: !4269, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 55, column: 10, scope: !4302, inlinedAt: !4653)
!4659 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4658)
!4660 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4658)
!4661 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4658)
!4662 = !DILocation(line: 328, column: 3, scope: !4643)
!4663 = !DILocation(line: 328, column: 13, scope: !4643)
!4664 = !DILocation(line: 0, scope: !4611, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 329, column: 10, scope: !4643)
!4666 = !DILocation(line: 29, column: 10, scope: !4611, inlinedAt: !4665)
!4667 = !DILocation(line: 329, column: 3, scope: !4643)
!4668 = distinct !DISubprogram(name: "xstrdup", scope: !870, file: !870, line: 335, type: !1162, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4669)
!4669 = !{!4670}
!4670 = !DILocalVariable(name: "string", arg: 1, scope: !4668, file: !870, line: 335, type: !143)
!4671 = !DILocation(line: 0, scope: !4668)
!4672 = !DILocation(line: 337, column: 27, scope: !4668)
!4673 = !DILocation(line: 337, column: 43, scope: !4668)
!4674 = !DILocation(line: 0, scope: !4595, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 337, column: 10, scope: !4668)
!4676 = !DILocation(line: 0, scope: !4288, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 312, column: 18, scope: !4595, inlinedAt: !4675)
!4678 = !DILocation(line: 49, column: 25, scope: !4288, inlinedAt: !4677)
!4679 = !DILocation(line: 0, scope: !4269, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 49, column: 10, scope: !4288, inlinedAt: !4677)
!4681 = !DILocation(line: 39, column: 8, scope: !4276, inlinedAt: !4680)
!4682 = !DILocation(line: 39, column: 7, scope: !4269, inlinedAt: !4680)
!4683 = !DILocation(line: 40, column: 5, scope: !4276, inlinedAt: !4680)
!4684 = !DILocation(line: 0, scope: !4611, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 312, column: 10, scope: !4595, inlinedAt: !4675)
!4686 = !DILocation(line: 29, column: 10, scope: !4611, inlinedAt: !4685)
!4687 = !DILocation(line: 337, column: 3, scope: !4668)
!4688 = distinct !DISubprogram(name: "xalloc_die", scope: !771, file: !771, line: 32, type: !480, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !903, retainedNodes: !4689)
!4689 = !{!4690}
!4690 = !DILocalVariable(name: "__errstatus", scope: !4691, file: !771, line: 34, type: !4692)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !771, line: 34, column: 3)
!4692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!4693 = !DILocation(line: 34, column: 3, scope: !4691)
!4694 = !DILocation(line: 0, scope: !4691)
!4695 = !DILocation(line: 40, column: 3, scope: !4688)
!4696 = distinct !DISubprogram(name: "close_stream", scope: !906, file: !906, line: 55, type: !4697, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !4733)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!80, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4701, file: !208, line: 51, baseType: !80, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4701, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4701, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4701, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4701, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4701, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4701, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4701, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4701, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4701, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4701, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4701, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4701, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4701, file: !208, line: 70, baseType: !4717, size: 64, offset: 832)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4701, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4701, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4701, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4701, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4701, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4701, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4701, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4701, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4701, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4701, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4701, file: !208, line: 93, baseType: !4717, size: 64, offset: 1344)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4701, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4701, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4701, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4701, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4733 = !{!4734, !4735, !4737, !4738}
!4734 = !DILocalVariable(name: "stream", arg: 1, scope: !4696, file: !906, line: 55, type: !4699)
!4735 = !DILocalVariable(name: "some_pending", scope: !4696, file: !906, line: 57, type: !4736)
!4736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4737 = !DILocalVariable(name: "prev_fail", scope: !4696, file: !906, line: 58, type: !4736)
!4738 = !DILocalVariable(name: "fclose_fail", scope: !4696, file: !906, line: 59, type: !4736)
!4739 = !DILocation(line: 0, scope: !4696)
!4740 = !DILocation(line: 57, column: 30, scope: !4696)
!4741 = !DILocalVariable(name: "__stream", arg: 1, scope: !4742, file: !1537, line: 135, type: !4699)
!4742 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1537, file: !1537, line: 135, type: !4697, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !4743)
!4743 = !{!4741}
!4744 = !DILocation(line: 0, scope: !4742, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 58, column: 27, scope: !4696)
!4746 = !DILocation(line: 137, column: 10, scope: !4742, inlinedAt: !4745)
!4747 = !{!1546, !1036, i64 0}
!4748 = !DILocation(line: 58, column: 43, scope: !4696)
!4749 = !DILocation(line: 59, column: 29, scope: !4696)
!4750 = !DILocation(line: 59, column: 45, scope: !4696)
!4751 = !DILocation(line: 69, column: 17, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4696, file: !906, line: 69, column: 7)
!4753 = !DILocation(line: 57, column: 50, scope: !4696)
!4754 = !DILocation(line: 69, column: 33, scope: !4752)
!4755 = !DILocation(line: 69, column: 53, scope: !4752)
!4756 = !DILocation(line: 69, column: 59, scope: !4752)
!4757 = !DILocation(line: 69, column: 7, scope: !4696)
!4758 = !DILocation(line: 71, column: 11, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4752, file: !906, line: 70, column: 5)
!4760 = !DILocation(line: 72, column: 9, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4759, file: !906, line: 71, column: 11)
!4762 = !DILocation(line: 72, column: 15, scope: !4761)
!4763 = !DILocation(line: 77, column: 1, scope: !4696)
!4764 = !DISubprogram(name: "__fpending", scope: !4765, file: !4765, line: 75, type: !4766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4765 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!140, !4699}
!4768 = distinct !DISubprogram(name: "rpl_fclose", scope: !908, file: !908, line: 58, type: !4769, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !907, retainedNodes: !4805)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!80, !4771}
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4773)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4774)
!4774 = !{!4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4773, file: !208, line: 51, baseType: !80, size: 32)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4773, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4773, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4773, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4773, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4773, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4773, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4773, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4773, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4773, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4773, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4773, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4773, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4773, file: !208, line: 70, baseType: !4789, size: 64, offset: 832)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4773, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4773, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4773, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4773, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4773, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4773, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4773, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4773, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4773, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4773, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4773, file: !208, line: 93, baseType: !4789, size: 64, offset: 1344)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4773, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4773, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4773, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4773, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4805 = !{!4806, !4807, !4808, !4809}
!4806 = !DILocalVariable(name: "fp", arg: 1, scope: !4768, file: !908, line: 58, type: !4771)
!4807 = !DILocalVariable(name: "saved_errno", scope: !4768, file: !908, line: 60, type: !80)
!4808 = !DILocalVariable(name: "fd", scope: !4768, file: !908, line: 63, type: !80)
!4809 = !DILocalVariable(name: "result", scope: !4768, file: !908, line: 74, type: !80)
!4810 = !DILocation(line: 0, scope: !4768)
!4811 = !DILocation(line: 63, column: 12, scope: !4768)
!4812 = !DILocation(line: 64, column: 10, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4768, file: !908, line: 64, column: 7)
!4814 = !DILocation(line: 64, column: 7, scope: !4768)
!4815 = !DILocation(line: 65, column: 12, scope: !4813)
!4816 = !DILocation(line: 65, column: 5, scope: !4813)
!4817 = !DILocation(line: 70, column: 9, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4768, file: !908, line: 70, column: 7)
!4819 = !DILocation(line: 70, column: 23, scope: !4818)
!4820 = !DILocation(line: 70, column: 33, scope: !4818)
!4821 = !DILocation(line: 70, column: 26, scope: !4818)
!4822 = !DILocation(line: 70, column: 59, scope: !4818)
!4823 = !DILocation(line: 71, column: 7, scope: !4818)
!4824 = !DILocation(line: 71, column: 10, scope: !4818)
!4825 = !DILocation(line: 70, column: 7, scope: !4768)
!4826 = !DILocation(line: 100, column: 12, scope: !4768)
!4827 = !DILocation(line: 105, column: 7, scope: !4768)
!4828 = !DILocation(line: 72, column: 19, scope: !4818)
!4829 = !DILocation(line: 105, column: 19, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4768, file: !908, line: 105, column: 7)
!4831 = !DILocation(line: 107, column: 13, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4830, file: !908, line: 106, column: 5)
!4833 = !DILocation(line: 109, column: 5, scope: !4832)
!4834 = !DILocation(line: 112, column: 1, scope: !4768)
!4835 = !DISubprogram(name: "fileno", scope: !1030, file: !1030, line: 809, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4836 = !DISubprogram(name: "fclose", scope: !1030, file: !1030, line: 178, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4837 = !DISubprogram(name: "__freading", scope: !4765, file: !4765, line: 51, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4838 = !DISubprogram(name: "lseek", scope: !1607, file: !1607, line: 339, type: !4839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!230, !80, !230, !80}
!4841 = distinct !DISubprogram(name: "open_safer", scope: !910, file: !910, line: 29, type: !4842, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !4844)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!80, !143, !80, null}
!4844 = !{!4845, !4846, !4847, !4848}
!4845 = !DILocalVariable(name: "file", arg: 1, scope: !4841, file: !910, line: 29, type: !143)
!4846 = !DILocalVariable(name: "flags", arg: 2, scope: !4841, file: !910, line: 29, type: !80)
!4847 = !DILocalVariable(name: "mode", scope: !4841, file: !910, line: 31, type: !931)
!4848 = !DILocalVariable(name: "ap", scope: !4849, file: !910, line: 35, type: !4851)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !910, line: 34, column: 5)
!4850 = distinct !DILexicalBlock(scope: !4841, file: !910, line: 33, column: 7)
!4851 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1506, line: 22, baseType: !4852)
!4852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4853, baseType: !4854)
!4853 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!4854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4855, size: 192, elements: !60)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4855, file: !4853, line: 35, baseType: !99, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4855, file: !4853, line: 35, baseType: !99, size: 32, offset: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4855, file: !4853, line: 35, baseType: !138, size: 64, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4855, file: !4853, line: 35, baseType: !138, size: 64, offset: 128)
!4861 = !DILocation(line: 0, scope: !4841)
!4862 = !DILocation(line: 33, column: 13, scope: !4850)
!4863 = !DILocation(line: 33, column: 7, scope: !4841)
!4864 = !DILocation(line: 35, column: 7, scope: !4849)
!4865 = !DILocation(line: 35, column: 15, scope: !4849)
!4866 = !DILocation(line: 36, column: 7, scope: !4849)
!4867 = !DILocation(line: 40, column: 14, scope: !4849)
!4868 = !DILocation(line: 42, column: 7, scope: !4849)
!4869 = !DILocation(line: 43, column: 5, scope: !4850)
!4870 = !DILocation(line: 43, column: 5, scope: !4849)
!4871 = !DILocation(line: 45, column: 20, scope: !4841)
!4872 = !DILocation(line: 45, column: 10, scope: !4841)
!4873 = !DILocation(line: 45, column: 3, scope: !4841)
!4874 = !DISubprogram(name: "open", scope: !1744, file: !1744, line: 181, type: !4842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4875 = distinct !DISubprogram(name: "rpl_fflush", scope: !912, file: !912, line: 130, type: !4876, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4912)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!80, !4878}
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4880)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4881)
!4881 = !{!4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4880, file: !208, line: 51, baseType: !80, size: 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4880, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4880, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4880, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4880, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4880, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4880, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4880, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4880, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4880, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4880, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4880, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4880, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4880, file: !208, line: 70, baseType: !4896, size: 64, offset: 832)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4880, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4880, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4880, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4880, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4880, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4880, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4880, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4880, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4880, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4880, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4880, file: !208, line: 93, baseType: !4896, size: 64, offset: 1344)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4880, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4880, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4880, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4880, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4912 = !{!4913}
!4913 = !DILocalVariable(name: "stream", arg: 1, scope: !4875, file: !912, line: 130, type: !4878)
!4914 = !DILocation(line: 0, scope: !4875)
!4915 = !DILocation(line: 151, column: 14, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4875, file: !912, line: 151, column: 7)
!4917 = !DILocation(line: 151, column: 22, scope: !4916)
!4918 = !DILocation(line: 151, column: 27, scope: !4916)
!4919 = !DILocation(line: 151, column: 7, scope: !4875)
!4920 = !DILocation(line: 152, column: 12, scope: !4916)
!4921 = !DILocation(line: 152, column: 5, scope: !4916)
!4922 = !DILocalVariable(name: "fp", arg: 1, scope: !4923, file: !912, line: 42, type: !4878)
!4923 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !912, file: !912, line: 42, type: !4924, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4926)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{null, !4878}
!4926 = !{!4922}
!4927 = !DILocation(line: 0, scope: !4923, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 157, column: 3, scope: !4875)
!4929 = !DILocation(line: 44, column: 12, scope: !4930, inlinedAt: !4928)
!4930 = distinct !DILexicalBlock(scope: !4923, file: !912, line: 44, column: 7)
!4931 = !DILocation(line: 44, column: 19, scope: !4930, inlinedAt: !4928)
!4932 = !DILocation(line: 44, column: 7, scope: !4923, inlinedAt: !4928)
!4933 = !DILocation(line: 46, column: 5, scope: !4930, inlinedAt: !4928)
!4934 = !DILocation(line: 159, column: 10, scope: !4875)
!4935 = !DILocation(line: 159, column: 3, scope: !4875)
!4936 = !DILocation(line: 236, column: 1, scope: !4875)
!4937 = !DISubprogram(name: "fflush", scope: !1030, file: !1030, line: 230, type: !4876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!4938 = distinct !DISubprogram(name: "rpl_fseeko", scope: !914, file: !914, line: 28, type: !4939, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4976)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!80, !4941, !4975, !80}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !206, line: 7, baseType: !4943)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !208, line: 49, size: 1728, elements: !4944)
!4944 = !{!4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4943, file: !208, line: 51, baseType: !80, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4943, file: !208, line: 54, baseType: !137, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4943, file: !208, line: 55, baseType: !137, size: 64, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4943, file: !208, line: 56, baseType: !137, size: 64, offset: 192)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4943, file: !208, line: 57, baseType: !137, size: 64, offset: 256)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4943, file: !208, line: 58, baseType: !137, size: 64, offset: 320)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4943, file: !208, line: 59, baseType: !137, size: 64, offset: 384)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4943, file: !208, line: 60, baseType: !137, size: 64, offset: 448)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4943, file: !208, line: 61, baseType: !137, size: 64, offset: 512)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4943, file: !208, line: 64, baseType: !137, size: 64, offset: 576)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4943, file: !208, line: 65, baseType: !137, size: 64, offset: 640)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4943, file: !208, line: 66, baseType: !137, size: 64, offset: 704)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4943, file: !208, line: 68, baseType: !223, size: 64, offset: 768)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4943, file: !208, line: 70, baseType: !4959, size: 64, offset: 832)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4943, file: !208, line: 72, baseType: !80, size: 32, offset: 896)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4943, file: !208, line: 73, baseType: !80, size: 32, offset: 928)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4943, file: !208, line: 74, baseType: !230, size: 64, offset: 960)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4943, file: !208, line: 77, baseType: !139, size: 16, offset: 1024)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4943, file: !208, line: 78, baseType: !234, size: 8, offset: 1040)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4943, file: !208, line: 79, baseType: !59, size: 8, offset: 1048)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4943, file: !208, line: 81, baseType: !237, size: 64, offset: 1088)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4943, file: !208, line: 89, baseType: !240, size: 64, offset: 1152)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4943, file: !208, line: 91, baseType: !242, size: 64, offset: 1216)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4943, file: !208, line: 92, baseType: !245, size: 64, offset: 1280)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4943, file: !208, line: 93, baseType: !4959, size: 64, offset: 1344)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4943, file: !208, line: 94, baseType: !138, size: 64, offset: 1408)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4943, file: !208, line: 95, baseType: !140, size: 64, offset: 1472)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4943, file: !208, line: 96, baseType: !80, size: 32, offset: 1536)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4943, file: !208, line: 98, baseType: !252, size: 160, offset: 1568)
!4975 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1030, line: 63, baseType: !230)
!4976 = !{!4977, !4978, !4979, !4980}
!4977 = !DILocalVariable(name: "fp", arg: 1, scope: !4938, file: !914, line: 28, type: !4941)
!4978 = !DILocalVariable(name: "offset", arg: 2, scope: !4938, file: !914, line: 28, type: !4975)
!4979 = !DILocalVariable(name: "whence", arg: 3, scope: !4938, file: !914, line: 28, type: !80)
!4980 = !DILocalVariable(name: "pos", scope: !4981, file: !914, line: 123, type: !4975)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !914, line: 119, column: 5)
!4982 = distinct !DILexicalBlock(scope: !4938, file: !914, line: 55, column: 7)
!4983 = !DILocation(line: 0, scope: !4938)
!4984 = !DILocation(line: 55, column: 12, scope: !4982)
!4985 = !{!1546, !967, i64 16}
!4986 = !DILocation(line: 55, column: 33, scope: !4982)
!4987 = !{!1546, !967, i64 8}
!4988 = !DILocation(line: 55, column: 25, scope: !4982)
!4989 = !DILocation(line: 56, column: 7, scope: !4982)
!4990 = !DILocation(line: 56, column: 15, scope: !4982)
!4991 = !DILocation(line: 56, column: 37, scope: !4982)
!4992 = !{!1546, !967, i64 32}
!4993 = !DILocation(line: 56, column: 29, scope: !4982)
!4994 = !DILocation(line: 57, column: 7, scope: !4982)
!4995 = !DILocation(line: 57, column: 15, scope: !4982)
!4996 = !{!1546, !967, i64 72}
!4997 = !DILocation(line: 57, column: 29, scope: !4982)
!4998 = !DILocation(line: 55, column: 7, scope: !4938)
!4999 = !DILocation(line: 123, column: 26, scope: !4981)
!5000 = !DILocation(line: 123, column: 19, scope: !4981)
!5001 = !DILocation(line: 0, scope: !4981)
!5002 = !DILocation(line: 124, column: 15, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4981, file: !914, line: 124, column: 11)
!5004 = !DILocation(line: 124, column: 11, scope: !4981)
!5005 = !DILocation(line: 135, column: 19, scope: !4981)
!5006 = !DILocation(line: 136, column: 12, scope: !4981)
!5007 = !DILocation(line: 136, column: 20, scope: !4981)
!5008 = !{!1546, !1547, i64 144}
!5009 = !DILocation(line: 167, column: 7, scope: !4981)
!5010 = !DILocation(line: 169, column: 10, scope: !4938)
!5011 = !DILocation(line: 169, column: 3, scope: !4938)
!5012 = !DILocation(line: 170, column: 1, scope: !4938)
!5013 = !DISubprogram(name: "fseeko", scope: !1030, file: !1030, line: 736, type: !5014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!80, !4941, !230, !80}
!5016 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !778, file: !778, line: 100, type: !5017, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !5020)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!140, !2436, !143, !140, !5019}
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!5020 = !{!5021, !5022, !5023, !5024, !5025}
!5021 = !DILocalVariable(name: "pwc", arg: 1, scope: !5016, file: !778, line: 100, type: !2436)
!5022 = !DILocalVariable(name: "s", arg: 2, scope: !5016, file: !778, line: 100, type: !143)
!5023 = !DILocalVariable(name: "n", arg: 3, scope: !5016, file: !778, line: 100, type: !140)
!5024 = !DILocalVariable(name: "ps", arg: 4, scope: !5016, file: !778, line: 100, type: !5019)
!5025 = !DILocalVariable(name: "ret", scope: !5016, file: !778, line: 130, type: !140)
!5026 = !DILocation(line: 0, scope: !5016)
!5027 = !DILocation(line: 105, column: 9, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5016, file: !778, line: 105, column: 7)
!5029 = !DILocation(line: 105, column: 7, scope: !5016)
!5030 = !DILocation(line: 117, column: 10, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5016, file: !778, line: 117, column: 7)
!5032 = !DILocation(line: 117, column: 7, scope: !5016)
!5033 = !DILocation(line: 130, column: 16, scope: !5016)
!5034 = !DILocation(line: 135, column: 11, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5016, file: !778, line: 135, column: 7)
!5036 = !DILocation(line: 135, column: 25, scope: !5035)
!5037 = !DILocation(line: 135, column: 30, scope: !5035)
!5038 = !DILocation(line: 135, column: 7, scope: !5016)
!5039 = !DILocalVariable(name: "ps", arg: 1, scope: !5040, file: !2409, line: 1135, type: !5019)
!5040 = distinct !DISubprogram(name: "mbszero", scope: !2409, file: !2409, line: 1135, type: !5041, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !5019}
!5043 = !{!5039}
!5044 = !DILocation(line: 0, scope: !5040, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 137, column: 5, scope: !5035)
!5046 = !DILocalVariable(name: "__dest", arg: 1, scope: !5047, file: !2418, line: 57, type: !138)
!5047 = distinct !DISubprogram(name: "memset", scope: !2418, file: !2418, line: 57, type: !2419, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !5048)
!5048 = !{!5046, !5049, !5050}
!5049 = !DILocalVariable(name: "__ch", arg: 2, scope: !5047, file: !2418, line: 57, type: !80)
!5050 = !DILocalVariable(name: "__len", arg: 3, scope: !5047, file: !2418, line: 57, type: !140)
!5051 = !DILocation(line: 0, scope: !5047, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 1137, column: 3, scope: !5040, inlinedAt: !5045)
!5053 = !DILocation(line: 59, column: 10, scope: !5047, inlinedAt: !5052)
!5054 = !DILocation(line: 137, column: 5, scope: !5035)
!5055 = !DILocation(line: 138, column: 11, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5016, file: !778, line: 138, column: 7)
!5057 = !DILocation(line: 138, column: 7, scope: !5016)
!5058 = !DILocation(line: 139, column: 5, scope: !5056)
!5059 = !DILocation(line: 143, column: 26, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5016, file: !778, line: 143, column: 7)
!5061 = !DILocation(line: 143, column: 41, scope: !5060)
!5062 = !DILocation(line: 143, column: 7, scope: !5016)
!5063 = !DILocation(line: 145, column: 15, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5065, file: !778, line: 145, column: 11)
!5065 = distinct !DILexicalBlock(scope: !5060, file: !778, line: 144, column: 5)
!5066 = !DILocation(line: 145, column: 11, scope: !5065)
!5067 = !DILocation(line: 146, column: 32, scope: !5064)
!5068 = !DILocation(line: 146, column: 16, scope: !5064)
!5069 = !DILocation(line: 146, column: 14, scope: !5064)
!5070 = !DILocation(line: 146, column: 9, scope: !5064)
!5071 = !DILocation(line: 286, column: 1, scope: !5016)
!5072 = !DISubprogram(name: "mbsinit", scope: !5073, file: !5073, line: 293, type: !5074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5073 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!80, !5076}
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!5078 = distinct !DISubprogram(name: "mkancesdirs", scope: !916, file: !916, line: 65, type: !5079, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !5082)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!891, !137, !5081, !1200, !138}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!5082 = !{!5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5098, !5099}
!5083 = !DILocalVariable(name: "file", arg: 1, scope: !5078, file: !916, line: 65, type: !137)
!5084 = !DILocalVariable(name: "wd", arg: 2, scope: !5078, file: !916, line: 65, type: !5081)
!5085 = !DILocalVariable(name: "make_dir", arg: 3, scope: !5078, file: !916, line: 66, type: !1200)
!5086 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !5078, file: !916, line: 67, type: !138)
!5087 = !DILocalVariable(name: "sep", scope: !5078, file: !916, line: 72, type: !137)
!5088 = !DILocalVariable(name: "component", scope: !5078, file: !916, line: 76, type: !137)
!5089 = !DILocalVariable(name: "p", scope: !5078, file: !916, line: 78, type: !137)
!5090 = !DILocalVariable(name: "c", scope: !5078, file: !916, line: 79, type: !4)
!5091 = !DILocalVariable(name: "made_dir", scope: !5078, file: !916, line: 80, type: !191)
!5092 = !DILocalVariable(name: "make_dir_errno", scope: !5093, file: !916, line: 106, type: !80)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !916, line: 99, column: 11)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !916, line: 98, column: 13)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !916, line: 95, column: 7)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !916, line: 94, column: 14)
!5097 = distinct !DILexicalBlock(scope: !5078, file: !916, line: 89, column: 9)
!5098 = !DILocalVariable(name: "savewd_chdir_options", scope: !5093, file: !916, line: 115, type: !80)
!5099 = !DILocalVariable(name: "chdir_result", scope: !5093, file: !916, line: 119, type: !80)
!5100 = !DILocation(line: 0, scope: !5078)
!5101 = !DILocation(line: 88, column: 15, scope: !5078)
!5102 = !DILocation(line: 88, column: 3, scope: !5078)
!5103 = !DILocation(line: 88, column: 17, scope: !5078)
!5104 = !DILocation(line: 89, column: 9, scope: !5097)
!5105 = !DILocation(line: 0, scope: !5097)
!5106 = !DILocation(line: 89, column: 9, scope: !5078)
!5107 = !DILocation(line: 91, column: 13, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5097, file: !916, line: 90, column: 7)
!5109 = !DILocation(line: 94, column: 26, scope: !5096)
!5110 = !DILocation(line: 94, column: 29, scope: !5096)
!5111 = !DILocation(line: 94, column: 32, scope: !5096)
!5112 = !DILocation(line: 98, column: 20, scope: !5094)
!5113 = !DILocation(line: 98, column: 32, scope: !5094)
!5114 = !DILocation(line: 98, column: 37, scope: !5094)
!5115 = !DILocation(line: 98, column: 40, scope: !5094)
!5116 = !DILocation(line: 98, column: 53, scope: !5094)
!5117 = !DILocation(line: 98, column: 13, scope: !5095)
!5118 = !DILocation(line: 102, column: 18, scope: !5093)
!5119 = !DILocation(line: 0, scope: !5093)
!5120 = !DILocation(line: 108, column: 17, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5093, file: !916, line: 107, column: 17)
!5122 = !DILocation(line: 107, column: 33, scope: !5121)
!5123 = !DILocation(line: 108, column: 20, scope: !5121)
!5124 = !DILocation(line: 108, column: 33, scope: !5121)
!5125 = !DILocation(line: 108, column: 40, scope: !5121)
!5126 = !DILocation(line: 108, column: 43, scope: !5121)
!5127 = !DILocation(line: 108, column: 56, scope: !5121)
!5128 = !DILocation(line: 107, column: 17, scope: !5093)
!5129 = !DILocation(line: 110, column: 22, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5121, file: !916, line: 110, column: 22)
!5131 = !DILocation(line: 110, column: 63, scope: !5130)
!5132 = !DILocation(line: 110, column: 22, scope: !5121)
!5133 = !DILocation(line: 111, column: 32, scope: !5130)
!5134 = !DILocation(line: 111, column: 15, scope: !5130)
!5135 = !DILocation(line: 116, column: 17, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5093, file: !916, line: 116, column: 17)
!5137 = !DILocation(line: 116, column: 17, scope: !5093)
!5138 = !DILocation(line: 120, column: 15, scope: !5093)
!5139 = !DILocation(line: 124, column: 30, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5093, file: !916, line: 124, column: 17)
!5141 = !DILocation(line: 124, column: 17, scope: !5093)
!5142 = !DILocation(line: 125, column: 20, scope: !5140)
!5143 = !DILocation(line: 127, column: 30, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5093, file: !916, line: 127, column: 17)
!5145 = !DILocation(line: 127, column: 17, scope: !5093)
!5146 = !DILocation(line: 129, column: 36, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !916, line: 129, column: 21)
!5148 = distinct !DILexicalBlock(scope: !5144, file: !916, line: 128, column: 15)
!5149 = !DILocation(line: 129, column: 41, scope: !5147)
!5150 = !DILocation(line: 129, column: 44, scope: !5147)
!5151 = !DILocation(line: 129, column: 50, scope: !5147)
!5152 = !DILocation(line: 129, column: 21, scope: !5148)
!5153 = !DILocation(line: 130, column: 25, scope: !5147)
!5154 = !DILocation(line: 130, column: 19, scope: !5147)
!5155 = !DILocation(line: 131, column: 24, scope: !5148)
!5156 = !DILocation(line: 80, column: 8, scope: !5078)
!5157 = distinct !{!5157, !5102, !5158, !1082}
!5158 = !DILocation(line: 136, column: 7, scope: !5078)
!5159 = !DILocation(line: 76, column: 9, scope: !5078)
!5160 = !DILocation(line: 138, column: 20, scope: !5078)
!5161 = !DILocation(line: 138, column: 3, scope: !5078)
!5162 = !DILocation(line: 139, column: 1, scope: !5078)
!5163 = distinct !DISubprogram(name: "dirchownmod", scope: !929, file: !929, line: 67, type: !5164, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !5166)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!80, !80, !143, !931, !146, !148, !931, !931}
!5166 = !{!5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5196, !5197, !5200, !5203, !5206}
!5167 = !DILocalVariable(name: "fd", arg: 1, scope: !5163, file: !929, line: 67, type: !80)
!5168 = !DILocalVariable(name: "dir", arg: 2, scope: !5163, file: !929, line: 67, type: !143)
!5169 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !5163, file: !929, line: 67, type: !931)
!5170 = !DILocalVariable(name: "owner", arg: 4, scope: !5163, file: !929, line: 68, type: !146)
!5171 = !DILocalVariable(name: "group", arg: 5, scope: !5163, file: !929, line: 68, type: !148)
!5172 = !DILocalVariable(name: "mode", arg: 6, scope: !5163, file: !929, line: 69, type: !931)
!5173 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !5163, file: !929, line: 69, type: !931)
!5174 = !DILocalVariable(name: "st", scope: !5163, file: !929, line: 71, type: !5175)
!5175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1854, line: 26, size: 1152, elements: !5176)
!5176 = !{!5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5193, !5194, !5195}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5175, file: !1854, line: 31, baseType: !1857, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5175, file: !1854, line: 36, baseType: !1859, size: 64, offset: 64)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5175, file: !1854, line: 44, baseType: !1861, size: 64, offset: 128)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5175, file: !1854, line: 45, baseType: !932, size: 32, offset: 192)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5175, file: !1854, line: 47, baseType: !147, size: 32, offset: 224)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5175, file: !1854, line: 48, baseType: !149, size: 32, offset: 256)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !5175, file: !1854, line: 50, baseType: !80, size: 32, offset: 288)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5175, file: !1854, line: 52, baseType: !1857, size: 64, offset: 320)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5175, file: !1854, line: 57, baseType: !230, size: 64, offset: 384)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5175, file: !1854, line: 61, baseType: !1869, size: 64, offset: 448)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5175, file: !1854, line: 63, baseType: !1871, size: 64, offset: 512)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5175, file: !1854, line: 74, baseType: !5189, size: 128, offset: 576)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1874, line: 11, size: 128, elements: !5190)
!5190 = !{!5191, !5192}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5189, file: !1874, line: 16, baseType: !1877, size: 64)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5189, file: !1874, line: 21, baseType: !1879, size: 64, offset: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5175, file: !1854, line: 75, baseType: !5189, size: 128, offset: 704)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5175, file: !1854, line: 76, baseType: !5189, size: 128, offset: 832)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5175, file: !1854, line: 89, baseType: !1883, size: 192, offset: 960)
!5196 = !DILocalVariable(name: "result", scope: !5163, file: !929, line: 72, type: !80)
!5197 = !DILocalVariable(name: "dir_mode", scope: !5198, file: !929, line: 76, type: !931)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !929, line: 75, column: 5)
!5199 = distinct !DILexicalBlock(scope: !5163, file: !929, line: 74, column: 7)
!5200 = !DILocalVariable(name: "indeterminate", scope: !5201, file: !929, line: 93, type: !931)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !929, line: 88, column: 9)
!5202 = distinct !DILexicalBlock(scope: !5198, file: !929, line: 82, column: 11)
!5203 = !DILocalVariable(name: "chmod_mode", scope: !5204, file: !929, line: 123, type: !931)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !929, line: 122, column: 13)
!5205 = distinct !DILexicalBlock(scope: !5201, file: !929, line: 121, column: 15)
!5206 = !DILocalVariable(name: "saved_errno", scope: !5207, file: !929, line: 140, type: !80)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !929, line: 139, column: 9)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !929, line: 136, column: 11)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !929, line: 135, column: 5)
!5210 = distinct !DILexicalBlock(scope: !5163, file: !929, line: 134, column: 7)
!5211 = !DILocation(line: 0, scope: !5163)
!5212 = !DILocation(line: 71, column: 3, scope: !5163)
!5213 = !DILocation(line: 71, column: 15, scope: !5163)
!5214 = !DILocation(line: 72, column: 20, scope: !5163)
!5215 = !DILocation(line: 72, column: 17, scope: !5163)
!5216 = !DILocation(line: 72, column: 26, scope: !5163)
!5217 = !DILocation(line: 72, column: 44, scope: !5163)
!5218 = !DILocation(line: 74, column: 14, scope: !5199)
!5219 = !DILocation(line: 74, column: 7, scope: !5163)
!5220 = !DILocation(line: 76, column: 28, scope: !5198)
!5221 = !DILocation(line: 0, scope: !5198)
!5222 = !DILocation(line: 82, column: 13, scope: !5202)
!5223 = !DILocation(line: 82, column: 11, scope: !5198)
!5224 = !DILocation(line: 84, column: 11, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5202, file: !929, line: 83, column: 9)
!5226 = !DILocation(line: 84, column: 17, scope: !5225)
!5227 = !DILocation(line: 86, column: 9, scope: !5225)
!5228 = !DILocation(line: 0, scope: !5201)
!5229 = !DILocation(line: 100, column: 22, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5201, file: !929, line: 100, column: 15)
!5231 = !DILocation(line: 100, column: 36, scope: !5230)
!5232 = !DILocation(line: 101, column: 25, scope: !5230)
!5233 = !DILocation(line: 101, column: 39, scope: !5230)
!5234 = !DILocation(line: 103, column: 42, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5230, file: !929, line: 102, column: 13)
!5236 = !DILocation(line: 103, column: 25, scope: !5235)
!5237 = !DILocation(line: 104, column: 27, scope: !5235)
!5238 = !DILocation(line: 105, column: 38, scope: !5235)
!5239 = !DILocation(line: 105, column: 27, scope: !5235)
!5240 = !DILocation(line: 106, column: 27, scope: !5235)
!5241 = !DILocation(line: 107, column: 27, scope: !5235)
!5242 = !DILocation(line: 114, column: 26, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5235, file: !929, line: 114, column: 19)
!5244 = !DILocation(line: 114, column: 31, scope: !5243)
!5245 = !DILocation(line: 114, column: 44, scope: !5243)
!5246 = !DILocation(line: 114, column: 19, scope: !5235)
!5247 = !DILocation(line: 121, column: 42, scope: !5205)
!5248 = !DILocation(line: 121, column: 50, scope: !5205)
!5249 = !DILocation(line: 121, column: 67, scope: !5205)
!5250 = !DILocation(line: 121, column: 15, scope: !5201)
!5251 = !DILocation(line: 124, column: 34, scope: !5204)
!5252 = !DILocation(line: 124, column: 52, scope: !5204)
!5253 = !DILocation(line: 124, column: 22, scope: !5204)
!5254 = !DILocation(line: 0, scope: !5204)
!5255 = !DILocation(line: 125, column: 42, scope: !5204)
!5256 = !DILocation(line: 125, column: 25, scope: !5204)
!5257 = !DILocation(line: 126, column: 27, scope: !5204)
!5258 = !DILocation(line: 134, column: 7, scope: !5163)
!5259 = !DILocation(line: 127, column: 38, scope: !5204)
!5260 = !DILocation(line: 127, column: 27, scope: !5204)
!5261 = !DILocation(line: 128, column: 27, scope: !5204)
!5262 = !DILocation(line: 129, column: 27, scope: !5204)
!5263 = !DILocation(line: 134, column: 9, scope: !5210)
!5264 = !DILocation(line: 136, column: 18, scope: !5208)
!5265 = !DILocation(line: 136, column: 11, scope: !5209)
!5266 = !DILocation(line: 137, column: 18, scope: !5208)
!5267 = !DILocation(line: 137, column: 9, scope: !5208)
!5268 = !DILocation(line: 140, column: 29, scope: !5207)
!5269 = !DILocation(line: 0, scope: !5207)
!5270 = !DILocation(line: 141, column: 11, scope: !5207)
!5271 = !DILocation(line: 142, column: 17, scope: !5207)
!5272 = !DILocation(line: 147, column: 1, scope: !5163)
!5273 = !DILocation(line: 146, column: 3, scope: !5163)
!5274 = !DISubprogram(name: "fstat", scope: !1392, file: !1392, line: 210, type: !5275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!80, !80, !5277}
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5278 = !DISubprogram(name: "fchown", scope: !1607, file: !1607, line: 498, type: !5279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!80, !80, !147, !149}
!5281 = !DISubprogram(name: "lchown", scope: !1607, file: !1607, line: 503, type: !5282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!80, !143, !147, !149}
!5284 = !DISubprogram(name: "chown", scope: !1607, file: !1607, line: 493, type: !5282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5285 = !DISubprogram(name: "fchmod", scope: !1392, file: !1392, line: 365, type: !5286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!80, !80, !932}
!5288 = !DISubprogram(name: "lchmod", scope: !1392, file: !1392, line: 359, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5289 = !DISubprogram(name: "chmod", scope: !1392, file: !1392, line: 352, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !975)
!5290 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !934, file: !934, line: 27, type: !4253, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !5291)
!5291 = !{!5292, !5293, !5294, !5295}
!5292 = !DILocalVariable(name: "ptr", arg: 1, scope: !5290, file: !934, line: 27, type: !138)
!5293 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5290, file: !934, line: 27, type: !140)
!5294 = !DILocalVariable(name: "size", arg: 3, scope: !5290, file: !934, line: 27, type: !140)
!5295 = !DILocalVariable(name: "nbytes", scope: !5290, file: !934, line: 29, type: !140)
!5296 = !DILocation(line: 0, scope: !5290)
!5297 = !DILocation(line: 30, column: 7, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5290, file: !934, line: 30, column: 7)
!5299 = !DILocalVariable(name: "ptr", arg: 1, scope: !5300, file: !4345, line: 2057, type: !138)
!5300 = distinct !DISubprogram(name: "rpl_realloc", scope: !4345, file: !4345, line: 2057, type: !4337, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !5301)
!5301 = !{!5299, !5302}
!5302 = !DILocalVariable(name: "size", arg: 2, scope: !5300, file: !4345, line: 2057, type: !140)
!5303 = !DILocation(line: 0, scope: !5300, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 37, column: 10, scope: !5290)
!5305 = !DILocation(line: 2059, column: 24, scope: !5300, inlinedAt: !5304)
!5306 = !DILocation(line: 2059, column: 10, scope: !5300, inlinedAt: !5304)
!5307 = !DILocation(line: 37, column: 3, scope: !5290)
!5308 = !DILocation(line: 32, column: 7, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5298, file: !934, line: 31, column: 5)
!5310 = !DILocation(line: 32, column: 13, scope: !5309)
!5311 = !DILocation(line: 33, column: 7, scope: !5309)
!5312 = !DILocation(line: 38, column: 1, scope: !5290)
!5313 = distinct !DISubprogram(name: "fd_safer", scope: !937, file: !937, line: 37, type: !1632, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5314)
!5314 = !{!5315, !5316, !5319}
!5315 = !DILocalVariable(name: "fd", arg: 1, scope: !5313, file: !937, line: 37, type: !80)
!5316 = !DILocalVariable(name: "f", scope: !5317, file: !937, line: 41, type: !80)
!5317 = distinct !DILexicalBlock(scope: !5318, file: !937, line: 40, column: 5)
!5318 = distinct !DILexicalBlock(scope: !5313, file: !937, line: 39, column: 7)
!5319 = !DILocalVariable(name: "saved_errno", scope: !5317, file: !937, line: 42, type: !80)
!5320 = !DILocation(line: 0, scope: !5313)
!5321 = !DILocation(line: 39, column: 26, scope: !5318)
!5322 = !DILocation(line: 41, column: 15, scope: !5317)
!5323 = !DILocation(line: 0, scope: !5317)
!5324 = !DILocation(line: 42, column: 25, scope: !5317)
!5325 = !DILocation(line: 43, column: 7, scope: !5317)
!5326 = !DILocation(line: 44, column: 13, scope: !5317)
!5327 = !DILocation(line: 46, column: 5, scope: !5317)
!5328 = !DILocation(line: 48, column: 3, scope: !5313)
!5329 = distinct !DISubprogram(name: "hard_locale", scope: !796, file: !796, line: 28, type: !5330, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !5332)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!191, !80}
!5332 = !{!5333, !5334}
!5333 = !DILocalVariable(name: "category", arg: 1, scope: !5329, file: !796, line: 28, type: !80)
!5334 = !DILocalVariable(name: "locale", scope: !5329, file: !796, line: 30, type: !5335)
!5335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5336)
!5336 = !{!5337}
!5337 = !DISubrange(count: 257)
!5338 = !DILocation(line: 0, scope: !5329)
!5339 = !DILocation(line: 30, column: 3, scope: !5329)
!5340 = !DILocation(line: 30, column: 8, scope: !5329)
!5341 = !DILocation(line: 32, column: 7, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5329, file: !796, line: 32, column: 7)
!5343 = !DILocation(line: 32, column: 7, scope: !5329)
!5344 = !DILocalVariable(name: "__s1", arg: 1, scope: !5345, file: !1048, line: 1359, type: !143)
!5345 = distinct !DISubprogram(name: "streq", scope: !1048, file: !1048, line: 1359, type: !1049, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !5346)
!5346 = !{!5344, !5347}
!5347 = !DILocalVariable(name: "__s2", arg: 2, scope: !5345, file: !1048, line: 1359, type: !143)
!5348 = !DILocation(line: 0, scope: !5345, inlinedAt: !5349)
!5349 = distinct !DILocation(line: 35, column: 9, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5329, file: !796, line: 35, column: 7)
!5351 = !DILocation(line: 1361, column: 11, scope: !5345, inlinedAt: !5349)
!5352 = !DILocation(line: 35, column: 29, scope: !5350)
!5353 = !DILocation(line: 0, scope: !5345, inlinedAt: !5354)
!5354 = distinct !DILocation(line: 35, column: 32, scope: !5350)
!5355 = !DILocation(line: 1361, column: 11, scope: !5345, inlinedAt: !5354)
!5356 = !DILocation(line: 1361, column: 10, scope: !5345, inlinedAt: !5354)
!5357 = !DILocation(line: 35, column: 7, scope: !5329)
!5358 = !DILocation(line: 46, column: 3, scope: !5329)
!5359 = !DILocation(line: 47, column: 1, scope: !5329)
!5360 = distinct !DISubprogram(name: "setlocale_null_r", scope: !943, file: !943, line: 154, type: !5361, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942, retainedNodes: !5363)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{!80, !80, !137, !140}
!5363 = !{!5364, !5365, !5366}
!5364 = !DILocalVariable(name: "category", arg: 1, scope: !5360, file: !943, line: 154, type: !80)
!5365 = !DILocalVariable(name: "buf", arg: 2, scope: !5360, file: !943, line: 154, type: !137)
!5366 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5360, file: !943, line: 154, type: !140)
!5367 = !DILocation(line: 0, scope: !5360)
!5368 = !DILocation(line: 159, column: 10, scope: !5360)
!5369 = !DILocation(line: 159, column: 3, scope: !5360)
!5370 = distinct !DISubprogram(name: "setlocale_null", scope: !943, file: !943, line: 186, type: !5371, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942, retainedNodes: !5373)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!143, !80}
!5373 = !{!5374}
!5374 = !DILocalVariable(name: "category", arg: 1, scope: !5370, file: !943, line: 186, type: !80)
!5375 = !DILocation(line: 0, scope: !5370)
!5376 = !DILocation(line: 189, column: 10, scope: !5370)
!5377 = !DILocation(line: 189, column: 3, scope: !5370)
!5378 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !945, file: !945, line: 35, type: !5371, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5379)
!5379 = !{!5380, !5381}
!5380 = !DILocalVariable(name: "category", arg: 1, scope: !5378, file: !945, line: 35, type: !80)
!5381 = !DILocalVariable(name: "result", scope: !5378, file: !945, line: 37, type: !143)
!5382 = !DILocation(line: 0, scope: !5378)
!5383 = !DILocation(line: 37, column: 24, scope: !5378)
!5384 = !DILocation(line: 62, column: 3, scope: !5378)
!5385 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !945, file: !945, line: 66, type: !5361, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5386)
!5386 = !{!5387, !5388, !5389, !5390, !5391}
!5387 = !DILocalVariable(name: "category", arg: 1, scope: !5385, file: !945, line: 66, type: !80)
!5388 = !DILocalVariable(name: "buf", arg: 2, scope: !5385, file: !945, line: 66, type: !137)
!5389 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5385, file: !945, line: 66, type: !140)
!5390 = !DILocalVariable(name: "result", scope: !5385, file: !945, line: 111, type: !143)
!5391 = !DILocalVariable(name: "length", scope: !5392, file: !945, line: 125, type: !140)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !945, line: 124, column: 5)
!5393 = distinct !DILexicalBlock(scope: !5385, file: !945, line: 113, column: 7)
!5394 = !DILocation(line: 0, scope: !5385)
!5395 = !DILocation(line: 0, scope: !5378, inlinedAt: !5396)
!5396 = distinct !DILocation(line: 111, column: 24, scope: !5385)
!5397 = !DILocation(line: 37, column: 24, scope: !5378, inlinedAt: !5396)
!5398 = !DILocation(line: 113, column: 14, scope: !5393)
!5399 = !DILocation(line: 113, column: 7, scope: !5385)
!5400 = !DILocation(line: 116, column: 19, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !945, line: 116, column: 11)
!5402 = distinct !DILexicalBlock(scope: !5393, file: !945, line: 114, column: 5)
!5403 = !DILocation(line: 116, column: 11, scope: !5402)
!5404 = !DILocation(line: 120, column: 16, scope: !5401)
!5405 = !DILocation(line: 120, column: 9, scope: !5401)
!5406 = !DILocation(line: 125, column: 23, scope: !5392)
!5407 = !DILocation(line: 0, scope: !5392)
!5408 = !DILocation(line: 126, column: 18, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5392, file: !945, line: 126, column: 11)
!5410 = !DILocation(line: 126, column: 11, scope: !5392)
!5411 = !DILocation(line: 128, column: 39, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5409, file: !945, line: 127, column: 9)
!5413 = !DILocalVariable(name: "__dest", arg: 1, scope: !5414, file: !2418, line: 26, type: !4614)
!5414 = distinct !DISubprogram(name: "memcpy", scope: !2418, file: !2418, line: 26, type: !4612, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !944, retainedNodes: !5415)
!5415 = !{!5413, !5416, !5417}
!5416 = !DILocalVariable(name: "__src", arg: 2, scope: !5414, file: !2418, line: 26, type: !1183)
!5417 = !DILocalVariable(name: "__len", arg: 3, scope: !5414, file: !2418, line: 26, type: !140)
!5418 = !DILocation(line: 0, scope: !5414, inlinedAt: !5419)
!5419 = distinct !DILocation(line: 128, column: 11, scope: !5412)
!5420 = !DILocation(line: 29, column: 10, scope: !5414, inlinedAt: !5419)
!5421 = !DILocation(line: 129, column: 11, scope: !5412)
!5422 = !DILocation(line: 133, column: 23, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5424, file: !945, line: 133, column: 15)
!5424 = distinct !DILexicalBlock(scope: !5409, file: !945, line: 132, column: 9)
!5425 = !DILocation(line: 133, column: 15, scope: !5424)
!5426 = !DILocation(line: 138, column: 44, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5423, file: !945, line: 134, column: 13)
!5428 = !DILocation(line: 0, scope: !5414, inlinedAt: !5429)
!5429 = distinct !DILocation(line: 138, column: 15, scope: !5427)
!5430 = !DILocation(line: 29, column: 10, scope: !5414, inlinedAt: !5429)
!5431 = !DILocation(line: 139, column: 15, scope: !5427)
!5432 = !DILocation(line: 139, column: 32, scope: !5427)
!5433 = !DILocation(line: 140, column: 13, scope: !5427)
!5434 = !DILocation(line: 0, scope: !5393)
!5435 = !DILocation(line: 145, column: 1, scope: !5385)
!5436 = distinct !DISubprogram(name: "dup_safer", scope: !947, file: !947, line: 31, type: !1632, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !5437)
!5437 = !{!5438}
!5438 = !DILocalVariable(name: "fd", arg: 1, scope: !5436, file: !947, line: 31, type: !80)
!5439 = !DILocation(line: 0, scope: !5436)
!5440 = !DILocation(line: 33, column: 10, scope: !5436)
!5441 = !DILocation(line: 33, column: 3, scope: !5436)
!5442 = distinct !DISubprogram(name: "rpl_fcntl", scope: !800, file: !800, line: 202, type: !1745, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !5443)
!5443 = !{!5444, !5445, !5446, !5457, !5458, !5461, !5463, !5467}
!5444 = !DILocalVariable(name: "fd", arg: 1, scope: !5442, file: !800, line: 202, type: !80)
!5445 = !DILocalVariable(name: "action", arg: 2, scope: !5442, file: !800, line: 202, type: !80)
!5446 = !DILocalVariable(name: "arg", scope: !5442, file: !800, line: 208, type: !5447)
!5447 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1506, line: 22, baseType: !5448)
!5448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !5449, baseType: !5450)
!5449 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!5450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5451, size: 192, elements: !60)
!5451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5452)
!5452 = !{!5453, !5454, !5455, !5456}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5451, file: !5449, line: 208, baseType: !99, size: 32)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5451, file: !5449, line: 208, baseType: !99, size: 32, offset: 32)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5451, file: !5449, line: 208, baseType: !138, size: 64, offset: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5451, file: !5449, line: 208, baseType: !138, size: 64, offset: 128)
!5457 = !DILocalVariable(name: "result", scope: !5442, file: !800, line: 211, type: !80)
!5458 = !DILocalVariable(name: "target", scope: !5459, file: !800, line: 216, type: !80)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !800, line: 215, column: 7)
!5460 = distinct !DILexicalBlock(scope: !5442, file: !800, line: 213, column: 5)
!5461 = !DILocalVariable(name: "target", scope: !5462, file: !800, line: 223, type: !80)
!5462 = distinct !DILexicalBlock(scope: !5460, file: !800, line: 222, column: 7)
!5463 = !DILocalVariable(name: "x", scope: !5464, file: !800, line: 418, type: !80)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !800, line: 417, column: 13)
!5465 = distinct !DILexicalBlock(scope: !5466, file: !800, line: 261, column: 11)
!5466 = distinct !DILexicalBlock(scope: !5460, file: !800, line: 258, column: 7)
!5467 = !DILocalVariable(name: "p", scope: !5468, file: !800, line: 426, type: !138)
!5468 = distinct !DILexicalBlock(scope: !5465, file: !800, line: 425, column: 13)
!5469 = !DILocation(line: 0, scope: !5442)
!5470 = !DILocation(line: 208, column: 3, scope: !5442)
!5471 = !DILocation(line: 208, column: 11, scope: !5442)
!5472 = !DILocation(line: 209, column: 3, scope: !5442)
!5473 = !DILocation(line: 212, column: 3, scope: !5442)
!5474 = !DILocation(line: 216, column: 22, scope: !5459)
!5475 = !DILocation(line: 0, scope: !5459)
!5476 = !DILocalVariable(name: "fd", arg: 1, scope: !5477, file: !800, line: 444, type: !80)
!5477 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !800, file: !800, line: 444, type: !801, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !5478)
!5478 = !{!5476, !5479, !5480}
!5479 = !DILocalVariable(name: "target", arg: 2, scope: !5477, file: !800, line: 444, type: !80)
!5480 = !DILocalVariable(name: "result", scope: !5477, file: !800, line: 446, type: !80)
!5481 = !DILocation(line: 0, scope: !5477, inlinedAt: !5482)
!5482 = distinct !DILocation(line: 217, column: 18, scope: !5459)
!5483 = !DILocation(line: 479, column: 12, scope: !5477, inlinedAt: !5482)
!5484 = !DILocation(line: 223, column: 22, scope: !5462)
!5485 = !DILocation(line: 0, scope: !5462)
!5486 = !DILocation(line: 0, scope: !799, inlinedAt: !5487)
!5487 = distinct !DILocation(line: 224, column: 18, scope: !5462)
!5488 = !DILocation(line: 507, column: 12, scope: !5489, inlinedAt: !5487)
!5489 = distinct !DILexicalBlock(scope: !799, file: !800, line: 507, column: 7)
!5490 = !DILocation(line: 507, column: 9, scope: !5489, inlinedAt: !5487)
!5491 = !DILocation(line: 507, column: 7, scope: !799, inlinedAt: !5487)
!5492 = !DILocation(line: 509, column: 16, scope: !5493, inlinedAt: !5487)
!5493 = distinct !DILexicalBlock(scope: !5489, file: !800, line: 508, column: 5)
!5494 = !DILocation(line: 510, column: 13, scope: !5495, inlinedAt: !5487)
!5495 = distinct !DILexicalBlock(scope: !5493, file: !800, line: 510, column: 11)
!5496 = !DILocation(line: 510, column: 23, scope: !5495, inlinedAt: !5487)
!5497 = !DILocation(line: 510, column: 26, scope: !5495, inlinedAt: !5487)
!5498 = !DILocation(line: 510, column: 32, scope: !5495, inlinedAt: !5487)
!5499 = !DILocation(line: 510, column: 11, scope: !5493, inlinedAt: !5487)
!5500 = !DILocation(line: 512, column: 30, scope: !5501, inlinedAt: !5487)
!5501 = distinct !DILexicalBlock(scope: !5495, file: !800, line: 511, column: 9)
!5502 = !DILocation(line: 528, column: 19, scope: !811, inlinedAt: !5487)
!5503 = !DILocation(line: 0, scope: !5477, inlinedAt: !5504)
!5504 = distinct !DILocation(line: 520, column: 20, scope: !5505, inlinedAt: !5487)
!5505 = distinct !DILexicalBlock(scope: !5495, file: !800, line: 519, column: 9)
!5506 = !DILocation(line: 479, column: 12, scope: !5477, inlinedAt: !5504)
!5507 = !DILocation(line: 521, column: 22, scope: !5508, inlinedAt: !5487)
!5508 = distinct !DILexicalBlock(scope: !5505, file: !800, line: 521, column: 15)
!5509 = !DILocation(line: 521, column: 15, scope: !5505, inlinedAt: !5487)
!5510 = !DILocation(line: 522, column: 32, scope: !5508, inlinedAt: !5487)
!5511 = !DILocation(line: 522, column: 13, scope: !5508, inlinedAt: !5487)
!5512 = !DILocation(line: 0, scope: !5477, inlinedAt: !5513)
!5513 = distinct !DILocation(line: 527, column: 14, scope: !5489, inlinedAt: !5487)
!5514 = !DILocation(line: 479, column: 12, scope: !5477, inlinedAt: !5513)
!5515 = !DILocation(line: 0, scope: !5489, inlinedAt: !5487)
!5516 = !DILocation(line: 528, column: 9, scope: !811, inlinedAt: !5487)
!5517 = !DILocation(line: 530, column: 19, scope: !810, inlinedAt: !5487)
!5518 = !DILocation(line: 0, scope: !810, inlinedAt: !5487)
!5519 = !DILocation(line: 531, column: 17, scope: !814, inlinedAt: !5487)
!5520 = !DILocation(line: 531, column: 21, scope: !814, inlinedAt: !5487)
!5521 = !DILocation(line: 531, column: 54, scope: !814, inlinedAt: !5487)
!5522 = !DILocation(line: 531, column: 24, scope: !814, inlinedAt: !5487)
!5523 = !DILocation(line: 531, column: 68, scope: !814, inlinedAt: !5487)
!5524 = !DILocation(line: 531, column: 11, scope: !810, inlinedAt: !5487)
!5525 = !DILocation(line: 533, column: 29, scope: !813, inlinedAt: !5487)
!5526 = !DILocation(line: 0, scope: !813, inlinedAt: !5487)
!5527 = !DILocation(line: 534, column: 11, scope: !813, inlinedAt: !5487)
!5528 = !DILocation(line: 535, column: 17, scope: !813, inlinedAt: !5487)
!5529 = !DILocation(line: 537, column: 9, scope: !813, inlinedAt: !5487)
!5530 = !DILocation(line: 329, column: 22, scope: !5465)
!5531 = !DILocation(line: 330, column: 13, scope: !5465)
!5532 = !DILocation(line: 418, column: 23, scope: !5464)
!5533 = !DILocation(line: 0, scope: !5464)
!5534 = !DILocation(line: 419, column: 24, scope: !5464)
!5535 = !DILocation(line: 421, column: 13, scope: !5465)
!5536 = !DILocation(line: 426, column: 25, scope: !5468)
!5537 = !DILocation(line: 0, scope: !5468)
!5538 = !DILocation(line: 427, column: 24, scope: !5468)
!5539 = !DILocation(line: 429, column: 13, scope: !5465)
!5540 = !DILocation(line: 0, scope: !5460)
!5541 = !DILocation(line: 438, column: 3, scope: !5442)
!5542 = !DILocation(line: 441, column: 1, scope: !5442)
!5543 = !DILocation(line: 440, column: 3, scope: !5442)
