; ModuleID = 'src/users.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.gl_utmp = type { ptr, ptr, ptr, ptr, %struct.timespec, i32, i32, i16, %struct.anon }
%struct.timespec = type { i64, i64 }
%struct.anon = type { i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.utmp_alloc = type { ptr, i64, i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [112 x i8] c"Output who is currently logged in according to FILE.\0AIf FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [6 x i8] c"users\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !39
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !66
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !68
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !126
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !131
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !133
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !138
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !178
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !180
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !182
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !184
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !189
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !194
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !199
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !201
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !203
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !205
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !216
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !218
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !223
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !228
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !233
@.str.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !238
@.str.19 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !318
@Version = dso_local local_unnamed_addr global ptr @.str.19, align 8, !dbg !321
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !325
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !338
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !330
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !332
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !334
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !336
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !340
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !346
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !377
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !348
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !367
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !369
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !371
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !373
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !375
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !379
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !381
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !386
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !391
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !394
@optind = external local_unnamed_addr global i32, align 4
@.str.1.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !399
@.str.2.43 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !401
@.str.3.44 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !403
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !415
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !421
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !423
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !425
@.str.56 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !456
@.str.1.57 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !459
@.str.2.58 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !461
@.str.3.59 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !466
@.str.4.60 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !468
@.str.5.61 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !470
@.str.6.62 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !472
@.str.7.63 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !474
@.str.8.64 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !476
@.str.9.65 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !478
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.56, ptr @.str.1.57, ptr @.str.2.58, ptr @.str.3.59, ptr @.str.4.60, ptr @.str.5.61, ptr @.str.6.62, ptr @.str.7.63, ptr @.str.8.64, ptr @.str.9.65, ptr null], align 16, !dbg !480
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !493
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !507
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !545
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !552
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !509
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !554
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !497
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !514
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !516
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !518
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !520
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !522
@.str.80 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1, !dbg !560
@.str.1.81 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1, !dbg !563
@.str.2.82 = private unnamed_addr constant [2 x i8] c"~\00", align 1, !dbg !568
@.str.3.86 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1, !dbg !570
@.str.4.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !572
@.str.5.83 = private unnamed_addr constant [29 x i8] c"/var/lib/systemd/random-seed\00", align 1, !dbg !574
@.str.6.84 = private unnamed_addr constant [29 x i8] c"/var/lib/urandom/random-seed\00", align 1, !dbg !580
@.str.7.85 = private unnamed_addr constant [21 x i8] c"/var/lib/random-seed\00", align 1, !dbg !582
@.str.8.88 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1, !dbg !584
@.str.9.89 = private unnamed_addr constant [3 x i8] c"re\00", align 1, !dbg !586
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !588
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !591
@.str.2.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !593
@.str.3.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !595
@.str.4.94 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !597
@.str.5.95 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !599
@.str.6.96 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !604
@.str.7.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !609
@.str.8.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !611
@.str.9.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !616
@.str.10.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !621
@.str.11.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !626
@.str.12.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !631
@.str.13.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !633
@.str.14.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !638
@.str.15.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !643
@.str.16.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !648
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.111 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !653
@.str.18.112 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !655
@.str.19.113 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !657
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !659
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !661
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !663
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !665
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !667
@exit_failure = dso_local global i32 1, align 4, !dbg !675
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !681
@.str.1.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !684
@.str.2.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !686
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !688
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !691
@.str.1.149 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !706

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !818 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !822, metadata !DIExpression()), !dbg !823
  %2 = icmp eq i32 %0, 0, !dbg !824
  br i1 %2, label %8, label %3, !dbg !826

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !827, !tbaa !829
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !827
  %6 = load ptr, ptr @program_name, align 8, !dbg !827, !tbaa !829
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !827
  br label %30, !dbg !827

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !833
  %10 = load ptr, ptr @program_name, align 8, !dbg !833, !tbaa !829
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !833
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !835
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #39, !dbg !835
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !836
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !836
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !837
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !837
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !838, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata !857, metadata !851, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr poison, metadata !850, metadata !DIExpression()), !dbg !855
  tail call void @emit_bug_reporting_address() #39, !dbg !858
  %16 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !859
  call void @llvm.dbg.value(metadata ptr %16, metadata !853, metadata !DIExpression()), !dbg !855
  %17 = icmp eq ptr %16, null, !dbg !860
  br i1 %17, label %25, label %18, !dbg !862

18:                                               ; preds = %8
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #40, !dbg !863
  %20 = icmp eq i32 %19, 0, !dbg !863
  br i1 %20, label %25, label %21, !dbg !864

21:                                               ; preds = %18
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !865
  %23 = load ptr, ptr @stdout, align 8, !dbg !865, !tbaa !829
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !865
  br label %25, !dbg !867

25:                                               ; preds = %8, %18, %21
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !850, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !854, metadata !DIExpression()), !dbg !855
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !868
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5) #39, !dbg !868
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !869
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.49) #39, !dbg !869
  br label %30

30:                                               ; preds = %25, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !870
  unreachable, !dbg !870
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !871 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !875 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !881 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !70 {
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !241, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !242, metadata !DIExpression()), !dbg !884
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !885, !tbaa !886
  %3 = icmp eq i32 %2, -1, !dbg !888
  br i1 %3, label %4, label %16, !dbg !889

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #39, !dbg !890
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !243, metadata !DIExpression()), !dbg !891
  %6 = icmp eq ptr %5, null, !dbg !892
  br i1 %6, label %14, label %7, !dbg !893

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !894, !tbaa !895
  %9 = icmp eq i8 %8, 0, !dbg !894
  br i1 %9, label %14, label %10, !dbg !896

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !897, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !903, metadata !DIExpression()), !dbg !904
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #40, !dbg !906
  %12 = icmp eq i32 %11, 0, !dbg !907
  %13 = zext i1 %12 to i32, !dbg !896
  br label %14, !dbg !896

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !908, !tbaa !886
  br label %16, !dbg !909

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !910
  %18 = icmp eq i32 %17, 0, !dbg !910
  br i1 %18, label %22, label %19, !dbg !912

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !913, !tbaa !829
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !913
  br label %124, !dbg !915

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !246, metadata !DIExpression()), !dbg !884
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #40, !dbg !916
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !917
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !248, metadata !DIExpression()), !dbg !884
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !918
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !249, metadata !DIExpression()), !dbg !884
  %26 = icmp eq ptr %25, null, !dbg !919
  br i1 %26, label %54, label %27, !dbg !920

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !921
  br i1 %28, label %54, label %29, !dbg !922

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !250, metadata !DIExpression()), !dbg !923
  tail call void @llvm.dbg.value(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !923
  %30 = icmp ult ptr %24, %25, !dbg !924
  br i1 %30, label %31, label %54, !dbg !925

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !884
  %33 = load ptr, ptr %32, align 8, !tbaa !829
  br label %34, !dbg !925

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !250, metadata !DIExpression()), !dbg !923
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !254, metadata !DIExpression()), !dbg !923
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !926
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !250, metadata !DIExpression()), !dbg !923
  %38 = load i8, ptr %35, align 1, !dbg !926, !tbaa !895
  %39 = sext i8 %38 to i64, !dbg !926
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !926
  %41 = load i16, ptr %40, align 2, !dbg !926, !tbaa !927
  %42 = freeze i16 %41, !dbg !929
  %43 = lshr i16 %42, 13, !dbg !929
  %44 = and i16 %43, 1, !dbg !929
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !930
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !254, metadata !DIExpression()), !dbg !923
  %47 = icmp ult ptr %37, %25, !dbg !924
  %48 = icmp ult i64 %46, 2, !dbg !931
  %49 = select i1 %47, i1 %48, i1 false, !dbg !931
  br i1 %49, label %34, label %50, !dbg !925, !llvm.loop !932

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !934
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !936
  %53 = zext i1 %51 to i8, !dbg !936
  br label %54, !dbg !936

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !884
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !884
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !246, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !249, metadata !DIExpression()), !dbg !884
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #40, !dbg !937
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !255, metadata !DIExpression()), !dbg !884
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !938
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !256, metadata !DIExpression()), !dbg !884
  br label %59, !dbg !939

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !884
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !884
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !246, metadata !DIExpression()), !dbg !884
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !256, metadata !DIExpression()), !dbg !884
  %62 = load i8, ptr %60, align 1, !dbg !940, !tbaa !895
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !941

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !942
  %65 = load i8, ptr %64, align 1, !dbg !945, !tbaa !895
  %66 = icmp eq i8 %65, 45, !dbg !946
  %67 = select i1 %66, i8 0, i8 %61, !dbg !947
  br label %68, !dbg !947

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !884
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !246, metadata !DIExpression()), !dbg !884
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !948
  %71 = load ptr, ptr %70, align 8, !dbg !948, !tbaa !829
  %72 = sext i8 %62 to i64, !dbg !948
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !948
  %74 = load i16, ptr %73, align 2, !dbg !948, !tbaa !927
  %75 = and i16 %74, 8192, !dbg !948
  %76 = icmp eq i16 %75, 0, !dbg !948
  br i1 %76, label %92, label %77, !dbg !950

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !951
  br i1 %78, label %94, label %79, !dbg !954

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !955
  %81 = load i8, ptr %80, align 1, !dbg !955, !tbaa !895
  %82 = sext i8 %81 to i64, !dbg !955
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !955
  %84 = load i16, ptr %83, align 2, !dbg !955, !tbaa !927
  %85 = and i16 %84, 8192, !dbg !955
  %86 = icmp eq i16 %85, 0, !dbg !955
  br i1 %86, label %87, label %94, !dbg !956

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !957
  %89 = icmp ne i8 %88, 0, !dbg !957
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !959
  br i1 %91, label %92, label %94, !dbg !959

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !960
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !256, metadata !DIExpression()), !dbg !884
  br label %59, !dbg !939, !llvm.loop !961

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !963
  %96 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !829
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !897, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata !857, metadata !903, metadata !DIExpression()), !dbg !982
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !313, metadata !DIExpression()), !dbg !884
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #40, !dbg !984
  %99 = icmp eq i32 %98, 0, !dbg !984
  br i1 %99, label %103, label %100, !dbg !986

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #40, !dbg !987
  %102 = icmp eq i32 %101, 0, !dbg !987
  br i1 %102, label %103, label %106, !dbg !988

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !989
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %104, ptr noundef %55) #39, !dbg !989
  br label %109, !dbg !991

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !992
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.5, i32 noundef %107, ptr noundef %55) #39, !dbg !992
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !994, !tbaa !829
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %110), !dbg !994
  %112 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !829
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %112), !dbg !995
  %114 = ptrtoint ptr %60 to i64, !dbg !996
  %115 = sub i64 %114, %95, !dbg !996
  %116 = load ptr, ptr @stdout, align 8, !dbg !996, !tbaa !829
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !996
  %118 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !829
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %118), !dbg !997
  %120 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !829
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %120), !dbg !998
  %122 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !829
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !999
  br label %124, !dbg !1000

124:                                              ; preds = %109, %19
  ret void, !dbg !1000
}

; Function Attrs: nounwind
declare !dbg !1001 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1005 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1009 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1013 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1015 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1018 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1021 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1024 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1027 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1033 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1034 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1040 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1044, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1045, metadata !DIExpression()), !dbg !1046
  %3 = load ptr, ptr %1, align 8, !dbg !1047, !tbaa !829
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1048
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1049
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1050
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1051
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1052
  %8 = load ptr, ptr @Version, align 8, !dbg !1053, !tbaa !829
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #39, !dbg !1054
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1054
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef %10, ptr noundef null) #39, !dbg !1055
  %11 = load i32, ptr @optind, align 4, !dbg !1056, !tbaa !886
  %12 = sub nsw i32 %0, %11, !dbg !1057
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
  ], !dbg !1058

13:                                               ; preds = %2
  tail call fastcc void @users(ptr noundef nonnull @.str.3, i32 noundef 1), !dbg !1059
  br label %26, !dbg !1061

14:                                               ; preds = %2
  %15 = sext i32 %11 to i64, !dbg !1062
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1062
  %17 = load ptr, ptr %16, align 8, !dbg !1062, !tbaa !829
  tail call fastcc void @users(ptr noundef %17, i32 noundef 0), !dbg !1063
  br label %26, !dbg !1064

18:                                               ; preds = %2
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1065
  %20 = load i32, ptr @optind, align 4, !dbg !1065, !tbaa !886
  %21 = sext i32 %20 to i64, !dbg !1065
  %22 = getelementptr ptr, ptr %1, i64 %21, !dbg !1065
  %23 = getelementptr ptr, ptr %22, i64 1, !dbg !1065
  %24 = load ptr, ptr %23, align 8, !dbg !1065, !tbaa !829
  %25 = tail call ptr @quote(ptr noundef %24) #39, !dbg !1065
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %19, ptr noundef %25) #39, !dbg !1065
  tail call void @usage(i32 noundef 1) #43, !dbg !1066
  unreachable, !dbg !1066

26:                                               ; preds = %14, %13
  ret i32 0, !dbg !1067
}

; Function Attrs: nounwind
declare !dbg !1068 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1071 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1072 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @users(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !1075 {
  %3 = alloca i64, align 8, !DIAssignID !1111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1081, metadata !DIExpression(), metadata !1111, metadata ptr %3, metadata !DIExpression()), !dbg !1112
  %4 = alloca ptr, align 8, !DIAssignID !1113
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1084, metadata !DIExpression(), metadata !1113, metadata ptr %4, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1079, metadata !DIExpression()), !dbg !1112
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1080, metadata !DIExpression()), !dbg !1112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1115
  %5 = or i32 %1, 2, !dbg !1116
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1080, metadata !DIExpression()), !dbg !1112
  %6 = call i32 @read_utmp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #39, !dbg !1117
  %7 = icmp eq i32 %6, 0, !dbg !1119
  br i1 %7, label %12, label %8, !dbg !1120

8:                                                ; preds = %2
  %9 = tail call ptr @__errno_location() #42, !dbg !1121
  %10 = load i32, ptr %9, align 4, !dbg !1121, !tbaa !886
  %11 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1121
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %10, ptr noundef nonnull @.str.50, ptr noundef %11) #39, !dbg !1121
  unreachable, !dbg !1121

12:                                               ; preds = %2
  %13 = load i64, ptr %3, align 8, !dbg !1122, !tbaa !1123
  %14 = load ptr, ptr %4, align 8, !dbg !1125, !tbaa !829
  call void @llvm.dbg.value(metadata i64 %13, metadata !1126, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %14, metadata !1133, metadata !DIExpression()), !dbg !1147
  %15 = call noalias nonnull ptr @xinmalloc(i64 noundef %13, i64 noundef 8) #44, !dbg !1149
  call void @llvm.dbg.value(metadata ptr %15, metadata !1134, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 0, metadata !1135, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %13, metadata !1126, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %14, metadata !1133, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %13, metadata !1126, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1147
  %16 = icmp eq i64 %13, 0, !dbg !1150
  br i1 %16, label %17, label %18, !dbg !1150

17:                                               ; preds = %12
  call void @qsort(ptr noundef nonnull %15, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @userid_compare) #39, !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1140, metadata !DIExpression()), !dbg !1152
  br label %70, !dbg !1153

18:                                               ; preds = %12, %34
  %19 = phi i64 [ %22, %34 ], [ %13, %12 ]
  %20 = phi ptr [ %36, %34 ], [ %14, %12 ]
  %21 = phi i64 [ %35, %34 ], [ 0, %12 ]
  %22 = add nsw i64 %19, -1, !dbg !1154
  call void @llvm.dbg.value(metadata ptr %20, metadata !1133, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %21, metadata !1135, metadata !DIExpression()), !dbg !1147
  %23 = load ptr, ptr %20, align 8, !dbg !1155, !tbaa !1156
  %24 = load i8, ptr %23, align 1, !dbg !1155, !tbaa !895
  %25 = icmp eq i8 %24, 0, !dbg !1155
  br i1 %25, label %34, label %26, !dbg !1155

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 0, i32 7, !dbg !1155
  %28 = load i16, ptr %27, align 8, !dbg !1155, !tbaa !1160
  %29 = icmp eq i16 %28, 7, !dbg !1155
  br i1 %29, label %30, label %34, !dbg !1161

30:                                               ; preds = %26
  %31 = call noalias nonnull ptr @extract_trimmed_name(ptr noundef nonnull %20) #39, !dbg !1162
  call void @llvm.dbg.value(metadata ptr %31, metadata !1136, metadata !DIExpression()), !dbg !1163
  %32 = getelementptr inbounds ptr, ptr %15, i64 %21, !dbg !1164
  store ptr %31, ptr %32, align 8, !dbg !1165, !tbaa !829
  %33 = add nsw i64 %21, 1, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %33, metadata !1135, metadata !DIExpression()), !dbg !1147
  br label %34, !dbg !1167

34:                                               ; preds = %30, %26, %18
  %35 = phi i64 [ %33, %30 ], [ %21, %26 ], [ %21, %18 ], !dbg !1147
  call void @llvm.dbg.value(metadata i64 %35, metadata !1135, metadata !DIExpression()), !dbg !1147
  %36 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 1, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %22, metadata !1126, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %36, metadata !1133, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %22, metadata !1126, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1147
  %37 = icmp eq i64 %22, 0, !dbg !1150
  br i1 %37, label %38, label %18, !dbg !1150, !llvm.loop !1169

38:                                               ; preds = %34
  call void @qsort(ptr noundef nonnull %15, i64 noundef %35, i64 noundef 8, ptr noundef nonnull @userid_compare) #39, !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1140, metadata !DIExpression()), !dbg !1152
  %39 = icmp sgt i64 %35, 0, !dbg !1171
  br i1 %39, label %40, label %70, !dbg !1153

40:                                               ; preds = %38
  %41 = add nsw i64 %35, -1
  br label %42, !dbg !1153

42:                                               ; preds = %61, %40
  %43 = phi i64 [ 0, %40 ], [ %62, %61 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !1140, metadata !DIExpression()), !dbg !1152
  %44 = icmp slt i64 %43, %41, !dbg !1172
  call void @llvm.dbg.value(metadata i8 poison, metadata !1142, metadata !DIExpression()), !dbg !1173
  %45 = getelementptr inbounds ptr, ptr %15, i64 %43, !dbg !1174
  %46 = load ptr, ptr %45, align 8, !dbg !1174, !tbaa !829
  %47 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !829
  %48 = call i32 @fputs_unlocked(ptr noundef %46, ptr noundef %47), !dbg !1174
  %49 = select i1 %44, i32 32, i32 10, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %49, metadata !1176, metadata !DIExpression()), !dbg !1182
  %50 = load ptr, ptr @stdout, align 8, !dbg !1184, !tbaa !829
  %51 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 5, !dbg !1184
  %52 = load ptr, ptr %51, align 8, !dbg !1184, !tbaa !1185
  %53 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 6, !dbg !1184
  %54 = load ptr, ptr %53, align 8, !dbg !1184, !tbaa !1187
  %55 = icmp ult ptr %52, %54, !dbg !1184
  br i1 %55, label %58, label %56, !dbg !1184, !prof !1188

56:                                               ; preds = %42
  %57 = call i32 @__overflow(ptr noundef nonnull %50, i32 noundef %49) #39, !dbg !1184
  br label %61, !dbg !1184

58:                                               ; preds = %42
  %59 = trunc i32 %49 to i8, !dbg !1184
  %60 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1184
  store ptr %60, ptr %51, align 8, !dbg !1184, !tbaa !1185
  store i8 %59, ptr %52, align 1, !dbg !1184, !tbaa !895
  br label %61, !dbg !1184

61:                                               ; preds = %58, %56
  %62 = add nuw nsw i64 %43, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %62, metadata !1140, metadata !DIExpression()), !dbg !1152
  %63 = icmp eq i64 %62, %35, !dbg !1171
  br i1 %63, label %64, label %42, !dbg !1153, !llvm.loop !1190

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %68, %64 ], [ 0, %61 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !1145, metadata !DIExpression()), !dbg !1192
  %66 = getelementptr inbounds ptr, ptr %15, i64 %65, !dbg !1193
  %67 = load ptr, ptr %66, align 8, !dbg !1193, !tbaa !829
  call void @free(ptr noundef %67) #39, !dbg !1195
  %68 = add nuw nsw i64 %65, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %68, metadata !1145, metadata !DIExpression()), !dbg !1192
  %69 = icmp eq i64 %68, %35, !dbg !1197
  br i1 %69, label %70, label %64, !dbg !1198, !llvm.loop !1199

70:                                               ; preds = %64, %17, %38
  call void @free(ptr noundef nonnull %15) #39, !dbg !1201
  %71 = load ptr, ptr %4, align 8, !dbg !1202, !tbaa !829
  call void @free(ptr noundef %71) #39, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1204
  ret void, !dbg !1204
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1205 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @userid_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !dbg !1209 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1213, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1214, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1215, metadata !DIExpression()), !dbg !1217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1216, metadata !DIExpression()), !dbg !1217
  %3 = load ptr, ptr %0, align 8, !dbg !1218, !tbaa !829
  %4 = load ptr, ptr %1, align 8, !dbg !1219, !tbaa !829
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !1220
  ret i32 %5, !dbg !1221
}

; Function Attrs: nofree
declare !dbg !1222 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

declare !dbg !1227 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1230 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1233 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1235, metadata !DIExpression()), !dbg !1236
  store ptr %0, ptr @file_name, align 8, !dbg !1237, !tbaa !829
  ret void, !dbg !1238
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !1239 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1243, metadata !DIExpression()), !dbg !1244
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1245, !tbaa !1246
  ret void, !dbg !1248
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1249 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1254, !tbaa !829
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1255
  %3 = icmp eq i32 %2, 0, !dbg !1256
  br i1 %3, label %22, label %4, !dbg !1257

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1258, !tbaa !1246, !range !1259, !noundef !857
  %6 = icmp eq i8 %5, 0, !dbg !1258
  br i1 %6, label %11, label %7, !dbg !1260

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1261
  %9 = load i32, ptr %8, align 4, !dbg !1261, !tbaa !886
  %10 = icmp eq i32 %9, 32, !dbg !1262
  br i1 %10, label %22, label %11, !dbg !1263

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #39, !dbg !1264
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1251, metadata !DIExpression()), !dbg !1265
  %13 = load ptr, ptr @file_name, align 8, !dbg !1266, !tbaa !829
  %14 = icmp eq ptr %13, null, !dbg !1266
  %15 = tail call ptr @__errno_location() #42, !dbg !1268
  %16 = load i32, ptr %15, align 4, !dbg !1268, !tbaa !886
  br i1 %14, label %19, label %17, !dbg !1269

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1270
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #39, !dbg !1270
  br label %20, !dbg !1270

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #39, !dbg !1271
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1272, !tbaa !886
  tail call void @_exit(i32 noundef %21) #41, !dbg !1273
  unreachable, !dbg !1273

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1274, !tbaa !829
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1276
  %25 = icmp eq i32 %24, 0, !dbg !1277
  br i1 %25, label %28, label %26, !dbg !1278

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1279, !tbaa !886
  tail call void @_exit(i32 noundef %27) #41, !dbg !1280
  unreachable, !dbg !1280

28:                                               ; preds = %22
  ret void, !dbg !1281
}

; Function Attrs: noreturn
declare !dbg !1282 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1284 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1288, metadata !DIExpression()), !dbg !1292
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1289, metadata !DIExpression()), !dbg !1292
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1290, metadata !DIExpression()), !dbg !1292
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1291, metadata !DIExpression()), !dbg !1292
  tail call fastcc void @flush_stdout(), !dbg !1293
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1294, !tbaa !829
  %6 = icmp eq ptr %5, null, !dbg !1294
  br i1 %6, label %8, label %7, !dbg !1296

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1297
  br label %12, !dbg !1297

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1298, !tbaa !829
  %10 = tail call ptr @getprogname() #40, !dbg !1298
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %10) #39, !dbg !1298
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1300
  ret void, !dbg !1301
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1302 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1304, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i32 1, metadata !1306, metadata !DIExpression()), !dbg !1309
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1312
  %2 = icmp slt i32 %1, 0, !dbg !1313
  br i1 %2, label %6, label %3, !dbg !1314

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1315, !tbaa !829
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1315
  br label %6, !dbg !1315

6:                                                ; preds = %3, %0
  ret void, !dbg !1316
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1317 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1323
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1319, metadata !DIExpression()), !dbg !1324
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1320, metadata !DIExpression()), !dbg !1324
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1321, metadata !DIExpression()), !dbg !1324
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1322, metadata !DIExpression()), !dbg !1324
  %6 = load ptr, ptr @stderr, align 8, !dbg !1325, !tbaa !829
  call void @llvm.dbg.value(metadata ptr %6, metadata !1326, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %2, metadata !1366, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata ptr %3, metadata !1367, metadata !DIExpression()), !dbg !1368
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1370
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1371, !tbaa !886
  %9 = add i32 %8, 1, !dbg !1371
  store i32 %9, ptr @error_message_count, align 4, !dbg !1371, !tbaa !886
  %10 = icmp eq i32 %1, 0, !dbg !1372
  br i1 %10, label %20, label %11, !dbg !1374

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1375, metadata !DIExpression(), metadata !1323, metadata ptr %5, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i32 %1, metadata !1378, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1385
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1386
  call void @llvm.dbg.value(metadata ptr %12, metadata !1379, metadata !DIExpression()), !dbg !1383
  %13 = icmp eq ptr %12, null, !dbg !1387
  br i1 %13, label %14, label %16, !dbg !1389

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #39, !dbg !1390
  call void @llvm.dbg.value(metadata ptr %15, metadata !1379, metadata !DIExpression()), !dbg !1383
  br label %16, !dbg !1391

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1383
  call void @llvm.dbg.value(metadata ptr %17, metadata !1379, metadata !DIExpression()), !dbg !1383
  %18 = load ptr, ptr @stderr, align 8, !dbg !1392, !tbaa !829
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %17) #39, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1393
  br label %20, !dbg !1394

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1395, !tbaa !829
  call void @llvm.dbg.value(metadata i32 10, metadata !1396, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata ptr %21, metadata !1401, metadata !DIExpression()), !dbg !1402
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1404
  %23 = load ptr, ptr %22, align 8, !dbg !1404, !tbaa !1185
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1404
  %25 = load ptr, ptr %24, align 8, !dbg !1404, !tbaa !1187
  %26 = icmp ult ptr %23, %25, !dbg !1404
  br i1 %26, label %29, label %27, !dbg !1404, !prof !1188

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1404
  br label %31, !dbg !1404

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1404
  store ptr %30, ptr %22, align 8, !dbg !1404, !tbaa !1185
  store i8 10, ptr %23, align 1, !dbg !1404, !tbaa !895
  br label %31, !dbg !1404

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1405, !tbaa !829
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1405
  %34 = icmp eq i32 %0, 0, !dbg !1406
  br i1 %34, label %36, label %35, !dbg !1408

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1409
  unreachable, !dbg !1409

36:                                               ; preds = %31
  ret void, !dbg !1410
}

declare !dbg !1411 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1414 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1417 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1420 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1424 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1437
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1431, metadata !DIExpression(), metadata !1437, metadata ptr %4, metadata !DIExpression()), !dbg !1438
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1428, metadata !DIExpression()), !dbg !1438
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1429, metadata !DIExpression()), !dbg !1438
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1430, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1439
  call void @llvm.va_start(ptr nonnull %4), !dbg !1440
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1441
  call void @llvm.va_end(ptr nonnull %4), !dbg !1442
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1443
  ret void, !dbg !1443
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !350 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !361, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !362, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !363, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !364, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !365, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !366, metadata !DIExpression()), !dbg !1444
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1445, !tbaa !886
  %8 = icmp eq i32 %7, 0, !dbg !1445
  br i1 %8, label %23, label %9, !dbg !1447

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1448, !tbaa !886
  %11 = icmp eq i32 %10, %3, !dbg !1451
  br i1 %11, label %12, label %22, !dbg !1452

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1453, !tbaa !829
  %14 = icmp eq ptr %13, %2, !dbg !1454
  br i1 %14, label %36, label %15, !dbg !1455

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1456
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1457
  br i1 %18, label %19, label %22, !dbg !1457

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1458
  %21 = icmp eq i32 %20, 0, !dbg !1459
  br i1 %21, label %36, label %22, !dbg !1460

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1461, !tbaa !829
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1462, !tbaa !886
  br label %23, !dbg !1463

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1464
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1465, !tbaa !829
  %25 = icmp eq ptr %24, null, !dbg !1465
  br i1 %25, label %27, label %26, !dbg !1467

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1468
  br label %31, !dbg !1468

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1469, !tbaa !829
  %29 = tail call ptr @getprogname() #40, !dbg !1469
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %29) #39, !dbg !1469
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1471, !tbaa !829
  %33 = icmp eq ptr %2, null, !dbg !1471
  %34 = select i1 %33, ptr @.str.3.33, ptr @.str.2.34, !dbg !1471
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1471
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1472
  br label %36, !dbg !1473

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1473
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1474 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1484
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1483, metadata !DIExpression(), metadata !1484, metadata ptr %6, metadata !DIExpression()), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1478, metadata !DIExpression()), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1479, metadata !DIExpression()), !dbg !1485
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1480, metadata !DIExpression()), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1481, metadata !DIExpression()), !dbg !1485
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1482, metadata !DIExpression()), !dbg !1485
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1486
  call void @llvm.va_start(ptr nonnull %6), !dbg !1487
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1488
  call void @llvm.va_end(ptr nonnull %6), !dbg !1489
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1490
  ret void, !dbg !1490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1491 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1494, !tbaa !829
  ret ptr %1, !dbg !1495
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1496 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1511, metadata !DIExpression(), metadata !1526, metadata ptr %7, metadata !DIExpression()), !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1501, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1502, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1503, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1504, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1505, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1506, metadata !DIExpression()), !dbg !1528
  %8 = load i32, ptr @opterr, align 4, !dbg !1529, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1507, metadata !DIExpression()), !dbg !1528
  store i32 0, ptr @opterr, align 4, !dbg !1530, !tbaa !886
  %9 = icmp eq i32 %0, 2, !dbg !1531
  br i1 %9, label %10, label %15, !dbg !1532

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1533
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1508, metadata !DIExpression()), !dbg !1534
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1535

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #39, !dbg !1536
  br label %15, !dbg !1537

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #39, !dbg !1538
  call void @llvm.va_start(ptr nonnull %7), !dbg !1539
  %14 = load ptr, ptr @stdout, align 8, !dbg !1540, !tbaa !829
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #39, !dbg !1541
  call void @exit(i32 noundef 0) #41, !dbg !1542
  unreachable, !dbg !1542

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1543, !tbaa !886
  store i32 0, ptr @optind, align 4, !dbg !1544, !tbaa !886
  ret void, !dbg !1545
}

; Function Attrs: nounwind
declare !dbg !1546 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1552 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1571
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1566, metadata !DIExpression(), metadata !1571, metadata ptr %8, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1556, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1557, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1558, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1559, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1560, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1573
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1562, metadata !DIExpression()), !dbg !1573
  %9 = load i32, ptr @opterr, align 4, !dbg !1574, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1563, metadata !DIExpression()), !dbg !1573
  store i32 1, ptr @opterr, align 4, !dbg !1575, !tbaa !886
  %10 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1576
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1564, metadata !DIExpression()), !dbg !1573
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1577
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1565, metadata !DIExpression()), !dbg !1573
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1578

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #39, !dbg !1579
  call void @llvm.va_start(ptr nonnull %8), !dbg !1580
  %13 = load ptr, ptr @stdout, align 8, !dbg !1581, !tbaa !829
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1582
  call void @exit(i32 noundef 0) #41, !dbg !1583
  unreachable, !dbg !1583

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1584, !tbaa !886
  br label %16, !dbg !1585

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #39, !dbg !1586
  br label %18, !dbg !1587

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1587, !tbaa !886
  ret void, !dbg !1588
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1589 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1591, metadata !DIExpression()), !dbg !1594
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1595
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1592, metadata !DIExpression()), !dbg !1594
  %3 = icmp eq ptr %2, null, !dbg !1596
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1596
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1596
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1593, metadata !DIExpression()), !dbg !1594
  %6 = ptrtoint ptr %5 to i64, !dbg !1597
  %7 = ptrtoint ptr %0 to i64, !dbg !1597
  %8 = sub i64 %6, %7, !dbg !1597
  %9 = icmp sgt i64 %8, 6, !dbg !1599
  br i1 %9, label %10, label %19, !dbg !1600

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1601
  call void @llvm.dbg.value(metadata ptr %11, metadata !1602, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i64 7, metadata !1608, metadata !DIExpression()), !dbg !1609
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1611
  %13 = icmp eq i32 %12, 0, !dbg !1612
  br i1 %13, label %14, label %19, !dbg !1613

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1591, metadata !DIExpression()), !dbg !1594
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #40, !dbg !1614
  %16 = icmp eq i32 %15, 0, !dbg !1617
  %17 = select i1 %16, i64 3, i64 0, !dbg !1618
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1618
  br label %19, !dbg !1618

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1593, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1591, metadata !DIExpression()), !dbg !1594
  store ptr %20, ptr @program_name, align 8, !dbg !1619, !tbaa !829
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1620, !tbaa !829
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1621, !tbaa !829
  ret void, !dbg !1622
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1623 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !427 {
  %3 = alloca i32, align 4, !DIAssignID !1624
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !1624, metadata ptr %3, metadata !DIExpression()), !dbg !1625
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1626
  call void @llvm.dbg.assign(metadata i1 undef, metadata !442, metadata !DIExpression(), metadata !1626, metadata ptr %4, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !1625
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !435, metadata !DIExpression()), !dbg !1625
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1627
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !436, metadata !DIExpression()), !dbg !1625
  %6 = icmp eq ptr %5, %0, !dbg !1628
  br i1 %6, label %7, label %14, !dbg !1630

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1631
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1632
  call void @llvm.dbg.value(metadata ptr %4, metadata !1633, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 0, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i64 8, metadata !1649, metadata !DIExpression()), !dbg !1650
  store i64 0, ptr %4, align 8, !dbg !1652
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1653
  %9 = icmp eq i64 %8, 2, !dbg !1655
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1656
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1625
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1657
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1625
  ret ptr %15, !dbg !1657
}

; Function Attrs: nounwind
declare !dbg !1658 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1664 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1669, metadata !DIExpression()), !dbg !1672
  %2 = tail call ptr @__errno_location() #42, !dbg !1673
  %3 = load i32, ptr %2, align 4, !dbg !1673, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1670, metadata !DIExpression()), !dbg !1672
  %4 = icmp eq ptr %0, null, !dbg !1674
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1674
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !1675
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1671, metadata !DIExpression()), !dbg !1672
  store i32 %3, ptr %2, align 4, !dbg !1676, !tbaa !886
  ret ptr %6, !dbg !1677
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1678 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1684, metadata !DIExpression()), !dbg !1685
  %2 = icmp eq ptr %0, null, !dbg !1686
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1686
  %4 = load i32, ptr %3, align 8, !dbg !1687, !tbaa !1688
  ret i32 %4, !dbg !1690
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1691 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1695, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1696, metadata !DIExpression()), !dbg !1697
  %3 = icmp eq ptr %0, null, !dbg !1698
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1698
  store i32 %1, ptr %4, align 8, !dbg !1699, !tbaa !1688
  ret void, !dbg !1700
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1701 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1705, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1707, metadata !DIExpression()), !dbg !1713
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1708, metadata !DIExpression()), !dbg !1713
  %4 = icmp eq ptr %0, null, !dbg !1714
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1714
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1715
  %7 = lshr i8 %1, 5, !dbg !1716
  %8 = zext nneg i8 %7 to i64, !dbg !1716
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1717
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1709, metadata !DIExpression()), !dbg !1713
  %10 = and i8 %1, 31, !dbg !1718
  %11 = zext nneg i8 %10 to i32, !dbg !1718
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1711, metadata !DIExpression()), !dbg !1713
  %12 = load i32, ptr %9, align 4, !dbg !1719, !tbaa !886
  %13 = lshr i32 %12, %11, !dbg !1720
  %14 = and i32 %13, 1, !dbg !1721
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1712, metadata !DIExpression()), !dbg !1713
  %15 = xor i32 %13, %2, !dbg !1722
  %16 = and i32 %15, 1, !dbg !1722
  %17 = shl nuw i32 %16, %11, !dbg !1723
  %18 = xor i32 %17, %12, !dbg !1724
  store i32 %18, ptr %9, align 4, !dbg !1724, !tbaa !886
  ret i32 %14, !dbg !1725
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1726 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1730, metadata !DIExpression()), !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1731, metadata !DIExpression()), !dbg !1733
  %3 = icmp eq ptr %0, null, !dbg !1734
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1736
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1730, metadata !DIExpression()), !dbg !1733
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1737
  %6 = load i32, ptr %5, align 4, !dbg !1737, !tbaa !1738
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i32 %1, ptr %5, align 4, !dbg !1739, !tbaa !1738
  ret i32 %6, !dbg !1740
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1741 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1745, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1746, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1747, metadata !DIExpression()), !dbg !1748
  %4 = icmp eq ptr %0, null, !dbg !1749
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1745, metadata !DIExpression()), !dbg !1748
  store i32 10, ptr %5, align 8, !dbg !1752, !tbaa !1688
  %6 = icmp ne ptr %1, null, !dbg !1753
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1755
  br i1 %8, label %10, label %9, !dbg !1755

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1756
  unreachable, !dbg !1756

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1757
  store ptr %1, ptr %11, align 8, !dbg !1758, !tbaa !1759
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1760
  store ptr %2, ptr %12, align 8, !dbg !1761, !tbaa !1762
  ret void, !dbg !1763
}

; Function Attrs: noreturn nounwind
declare !dbg !1764 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1765 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1769, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1770, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1771, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1772, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1773, metadata !DIExpression()), !dbg !1777
  %6 = icmp eq ptr %4, null, !dbg !1778
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1774, metadata !DIExpression()), !dbg !1777
  %8 = tail call ptr @__errno_location() #42, !dbg !1779
  %9 = load i32, ptr %8, align 4, !dbg !1779, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1775, metadata !DIExpression()), !dbg !1777
  %10 = load i32, ptr %7, align 8, !dbg !1780, !tbaa !1688
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1781
  %12 = load i32, ptr %11, align 4, !dbg !1781, !tbaa !1738
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1782
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1783
  %15 = load ptr, ptr %14, align 8, !dbg !1783, !tbaa !1759
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1784
  %17 = load ptr, ptr %16, align 8, !dbg !1784, !tbaa !1762
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1785
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1776, metadata !DIExpression()), !dbg !1777
  store i32 %9, ptr %8, align 4, !dbg !1786, !tbaa !886
  ret i64 %18, !dbg !1787
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1788 {
  %10 = alloca i32, align 4, !DIAssignID !1856
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1857
  %12 = alloca i32, align 4, !DIAssignID !1858
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1859
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1860
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1834, metadata !DIExpression(), metadata !1860, metadata ptr %14, metadata !DIExpression()), !dbg !1861
  %15 = alloca i32, align 4, !DIAssignID !1862
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1837, metadata !DIExpression(), metadata !1862, metadata ptr %15, metadata !DIExpression()), !dbg !1863
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1794, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1796, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1797, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1798, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1799, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1800, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1801, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1802, metadata !DIExpression()), !dbg !1864
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1865
  %17 = icmp eq i64 %16, 1, !dbg !1866
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1803, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1806, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1807, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1864
  %18 = trunc i32 %5 to i8, !dbg !1867
  %19 = lshr i8 %18, 1, !dbg !1867
  %20 = and i8 %19, 1, !dbg !1867
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1809, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1864
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1868

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1869
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1870
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1871
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1872
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1864
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1873
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1874
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1811, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1809, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1808, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1807, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1806, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1797, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1802, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1801, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1798, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1812), !dbg !1875
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1864
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
  ], !dbg !1876

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1798, metadata !DIExpression()), !dbg !1864
  br label %114, !dbg !1877

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1809, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1798, metadata !DIExpression()), !dbg !1864
  %43 = and i8 %37, 1, !dbg !1878
  %44 = icmp eq i8 %43, 0, !dbg !1878
  br i1 %44, label %45, label %114, !dbg !1877

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1880
  br i1 %46, label %114, label %47, !dbg !1883

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1880, !tbaa !895
  br label %114, !dbg !1880

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !531, metadata !DIExpression(), metadata !1858, metadata ptr %12, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !1859, metadata ptr %13, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !528, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32 %29, metadata !529, metadata !DIExpression()), !dbg !1884
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #39, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %49, metadata !530, metadata !DIExpression()), !dbg !1884
  %50 = icmp eq ptr %49, @.str.11.66, !dbg !1889
  br i1 %50, label %51, label %60, !dbg !1891

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1892
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %13, metadata !1894, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr %13, metadata !1902, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 8, metadata !1906, metadata !DIExpression()), !dbg !1907
  store i64 0, ptr %13, align 8, !dbg !1909
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1910
  %53 = icmp eq i64 %52, 3, !dbg !1912
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1913
  %57 = icmp eq i32 %29, 9, !dbg !1913
  %58 = select i1 %57, ptr @.str.10.68, ptr @.str.12.69, !dbg !1913
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1914
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1884
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1801, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.assign(metadata i1 undef, metadata !531, metadata !DIExpression(), metadata !1856, metadata ptr %10, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !532, metadata !DIExpression(), metadata !1857, metadata ptr %11, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !528, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %29, metadata !529, metadata !DIExpression()), !dbg !1915
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #39, !dbg !1917
  call void @llvm.dbg.value(metadata ptr %62, metadata !530, metadata !DIExpression()), !dbg !1915
  %63 = icmp eq ptr %62, @.str.12.69, !dbg !1918
  br i1 %63, label %64, label %73, !dbg !1919

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1920
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1921
  call void @llvm.dbg.value(metadata ptr %11, metadata !1894, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %11, metadata !1902, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 8, metadata !1906, metadata !DIExpression()), !dbg !1924
  store i64 0, ptr %11, align 8, !dbg !1926
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1927
  %66 = icmp eq i64 %65, 3, !dbg !1928
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1929
  %70 = icmp eq i32 %29, 9, !dbg !1929
  %71 = select i1 %70, ptr @.str.10.68, ptr @.str.12.69, !dbg !1929
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1930
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1930
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1802, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1801, metadata !DIExpression()), !dbg !1864
  %76 = and i8 %37, 1, !dbg !1931
  %77 = icmp eq i8 %76, 0, !dbg !1931
  br i1 %77, label %78, label %93, !dbg !1932

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1814, metadata !DIExpression()), !dbg !1933
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1804, metadata !DIExpression()), !dbg !1864
  %79 = load i8, ptr %74, align 1, !dbg !1934, !tbaa !895
  %80 = icmp eq i8 %79, 0, !dbg !1936
  br i1 %80, label %93, label %81, !dbg !1936

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1814, metadata !DIExpression()), !dbg !1933
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1804, metadata !DIExpression()), !dbg !1864
  %85 = icmp ult i64 %84, %40, !dbg !1937
  br i1 %85, label %86, label %88, !dbg !1940

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1937
  store i8 %82, ptr %87, align 1, !dbg !1937, !tbaa !895
  br label %88, !dbg !1937

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1940
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1804, metadata !DIExpression()), !dbg !1864
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1814, metadata !DIExpression()), !dbg !1933
  %91 = load i8, ptr %90, align 1, !dbg !1934, !tbaa !895
  %92 = icmp eq i8 %91, 0, !dbg !1936
  br i1 %92, label %93, label %81, !dbg !1936, !llvm.loop !1942

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1806, metadata !DIExpression()), !dbg !1864
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1807, metadata !DIExpression()), !dbg !1864
  br label %114, !dbg !1946

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1864
  br label %98, !dbg !1947

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1808, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1864
  br label %98, !dbg !1948

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1872
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1809, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1808, metadata !DIExpression()), !dbg !1864
  %101 = and i8 %100, 1, !dbg !1949
  %102 = icmp eq i8 %101, 0, !dbg !1949
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1951
  br label %104, !dbg !1951

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1864
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1867
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1809, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1808, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1798, metadata !DIExpression()), !dbg !1864
  %107 = and i8 %106, 1, !dbg !1952
  %108 = icmp eq i8 %107, 0, !dbg !1952
  br i1 %108, label %109, label %114, !dbg !1954

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1955
  br i1 %110, label %114, label %111, !dbg !1958

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1955, !tbaa !895
  br label %114, !dbg !1955

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1864
  br label %114, !dbg !1959

113:                                              ; preds = %28
  call void @abort() #41, !dbg !1960
  unreachable, !dbg !1960

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1944
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.68, %45 ], [ @.str.10.68, %47 ], [ @.str.10.68, %42 ], [ %34, %28 ], [ @.str.12.69, %109 ], [ @.str.12.69, %111 ], [ @.str.12.69, %104 ], [ @.str.10.68, %41 ], !dbg !1864
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1864
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1864
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1809, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1808, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1807, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1806, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1802, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1801, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1798, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1819, metadata !DIExpression()), !dbg !1961
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
  br label %138, !dbg !1962

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1944
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1869
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1873
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1874
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1963
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1964
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1811, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1797, metadata !DIExpression()), !dbg !1864
  %147 = icmp eq i64 %139, -1, !dbg !1965
  br i1 %147, label %148, label %152, !dbg !1966

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1967
  %150 = load i8, ptr %149, align 1, !dbg !1967, !tbaa !895
  %151 = icmp eq i8 %150, 0, !dbg !1968
  br i1 %151, label %612, label %154, !dbg !1969

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1970
  br i1 %153, label %612, label %154, !dbg !1969

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1971
  br i1 %128, label %155, label %170, !dbg !1972

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1974
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1975
  br i1 %157, label %158, label %160, !dbg !1975

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1976
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %160, !dbg !1977

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1797, metadata !DIExpression()), !dbg !1864
  %162 = icmp ugt i64 %156, %161, !dbg !1978
  br i1 %162, label %170, label %163, !dbg !1979

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %164, metadata !1981, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata ptr %119, metadata !1984, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i64 %120, metadata !1985, metadata !DIExpression()), !dbg !1986
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1988
  %166 = icmp ne i32 %165, 0, !dbg !1989
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1990
  %168 = xor i1 %166, true, !dbg !1990
  %169 = zext i1 %168 to i8, !dbg !1990
  br i1 %167, label %170, label %666, !dbg !1990

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1971
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1821, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1797, metadata !DIExpression()), !dbg !1864
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1991
  %175 = load i8, ptr %174, align 1, !dbg !1991, !tbaa !895
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1826, metadata !DIExpression()), !dbg !1971
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
  ], !dbg !1992

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1993

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1994

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1824, metadata !DIExpression()), !dbg !1971
  %179 = and i8 %144, 1, !dbg !1998
  %180 = icmp eq i8 %179, 0, !dbg !1998
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1998
  br i1 %181, label %182, label %198, !dbg !1998

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2000
  br i1 %183, label %184, label %186, !dbg !2004

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2000
  store i8 39, ptr %185, align 1, !dbg !2000, !tbaa !895
  br label %186, !dbg !2000

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1804, metadata !DIExpression()), !dbg !1864
  %188 = icmp ult i64 %187, %146, !dbg !2005
  br i1 %188, label %189, label %191, !dbg !2008

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2005
  store i8 36, ptr %190, align 1, !dbg !2005, !tbaa !895
  br label %191, !dbg !2005

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1804, metadata !DIExpression()), !dbg !1864
  %193 = icmp ult i64 %192, %146, !dbg !2009
  br i1 %193, label %194, label %196, !dbg !2012

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2009
  store i8 39, ptr %195, align 1, !dbg !2009, !tbaa !895
  br label %196, !dbg !2009

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2012
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %198, !dbg !2013

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1864
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1804, metadata !DIExpression()), !dbg !1864
  %201 = icmp ult i64 %199, %146, !dbg !2014
  br i1 %201, label %202, label %204, !dbg !2017

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2014
  store i8 92, ptr %203, align 1, !dbg !2014, !tbaa !895
  br label %204, !dbg !2014

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2017
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1804, metadata !DIExpression()), !dbg !1864
  br i1 %125, label %206, label %476, !dbg !2018

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2020
  %208 = icmp ult i64 %207, %171, !dbg !2021
  br i1 %208, label %209, label %465, !dbg !2022

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2023
  %211 = load i8, ptr %210, align 1, !dbg !2023, !tbaa !895
  %212 = add i8 %211, -48, !dbg !2024
  %213 = icmp ult i8 %212, 10, !dbg !2024
  br i1 %213, label %214, label %465, !dbg !2024

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2025
  br i1 %215, label %216, label %218, !dbg !2029

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2025
  store i8 48, ptr %217, align 1, !dbg !2025, !tbaa !895
  br label %218, !dbg !2025

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1804, metadata !DIExpression()), !dbg !1864
  %220 = icmp ult i64 %219, %146, !dbg !2030
  br i1 %220, label %221, label %223, !dbg !2033

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2030
  store i8 48, ptr %222, align 1, !dbg !2030, !tbaa !895
  br label %223, !dbg !2030

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1804, metadata !DIExpression()), !dbg !1864
  br label %465, !dbg !2034

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2035

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2036

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2037

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2039

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2041
  %231 = icmp ult i64 %230, %171, !dbg !2042
  br i1 %231, label %232, label %465, !dbg !2043

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2044
  %234 = load i8, ptr %233, align 1, !dbg !2044, !tbaa !895
  %235 = icmp eq i8 %234, 63, !dbg !2045
  br i1 %235, label %236, label %465, !dbg !2046

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2047
  %238 = load i8, ptr %237, align 1, !dbg !2047, !tbaa !895
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
  ], !dbg !2048

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2049

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1819, metadata !DIExpression()), !dbg !1961
  %241 = icmp ult i64 %140, %146, !dbg !2051
  br i1 %241, label %242, label %244, !dbg !2054

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2051
  store i8 63, ptr %243, align 1, !dbg !2051, !tbaa !895
  br label %244, !dbg !2051

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1804, metadata !DIExpression()), !dbg !1864
  %246 = icmp ult i64 %245, %146, !dbg !2055
  br i1 %246, label %247, label %249, !dbg !2058

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2055
  store i8 34, ptr %248, align 1, !dbg !2055, !tbaa !895
  br label %249, !dbg !2055

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1804, metadata !DIExpression()), !dbg !1864
  %251 = icmp ult i64 %250, %146, !dbg !2059
  br i1 %251, label %252, label %254, !dbg !2062

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2059
  store i8 34, ptr %253, align 1, !dbg !2059, !tbaa !895
  br label %254, !dbg !2059

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1804, metadata !DIExpression()), !dbg !1864
  %256 = icmp ult i64 %255, %146, !dbg !2063
  br i1 %256, label %257, label %259, !dbg !2066

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2063
  store i8 63, ptr %258, align 1, !dbg !2063, !tbaa !895
  br label %259, !dbg !2063

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1804, metadata !DIExpression()), !dbg !1864
  br label %465, !dbg !2067

261:                                              ; preds = %170
  br label %272, !dbg !2068

262:                                              ; preds = %170
  br label %272, !dbg !2069

263:                                              ; preds = %170
  br label %270, !dbg !2070

264:                                              ; preds = %170
  br label %270, !dbg !2071

265:                                              ; preds = %170
  br label %272, !dbg !2072

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2073

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2074

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2077

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2079

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2080
  call void @llvm.dbg.label(metadata !1827), !dbg !2081
  br i1 %133, label %272, label %655, !dbg !2082

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2080
  call void @llvm.dbg.label(metadata !1830), !dbg !2084
  br i1 %124, label %520, label %476, !dbg !2085

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2086

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2087, !tbaa !895
  %277 = icmp eq i8 %276, 0, !dbg !2089
  br i1 %277, label %278, label %465, !dbg !2090

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2091
  br i1 %279, label %280, label %465, !dbg !2093

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1825, metadata !DIExpression()), !dbg !1971
  br label %281, !dbg !2094

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1825, metadata !DIExpression()), !dbg !1971
  br i1 %133, label %465, label %655, !dbg !2095

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1825, metadata !DIExpression()), !dbg !1971
  br i1 %132, label %284, label %465, !dbg !2097

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2098

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2101
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2103
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2103
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1805, metadata !DIExpression()), !dbg !1864
  %291 = icmp ult i64 %140, %290, !dbg !2104
  br i1 %291, label %292, label %294, !dbg !2107

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2104
  store i8 39, ptr %293, align 1, !dbg !2104, !tbaa !895
  br label %294, !dbg !2104

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1804, metadata !DIExpression()), !dbg !1864
  %296 = icmp ult i64 %295, %290, !dbg !2108
  br i1 %296, label %297, label %299, !dbg !2111

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2108
  store i8 92, ptr %298, align 1, !dbg !2108, !tbaa !895
  br label %299, !dbg !2108

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2111
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1804, metadata !DIExpression()), !dbg !1864
  %301 = icmp ult i64 %300, %290, !dbg !2112
  br i1 %301, label %302, label %304, !dbg !2115

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2112
  store i8 39, ptr %303, align 1, !dbg !2112, !tbaa !895
  br label %304, !dbg !2112

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %465, !dbg !2116

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2117

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1831, metadata !DIExpression()), !dbg !2118
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !2119
  %309 = load ptr, ptr %308, align 8, !dbg !2119, !tbaa !829
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2119
  %312 = load i16, ptr %311, align 2, !dbg !2119, !tbaa !927
  %313 = and i16 %312, 16384, !dbg !2121
  %314 = icmp ne i16 %313, 0, !dbg !2121
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1833, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2118
  br label %355, !dbg !2122

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %14, metadata !1894, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata ptr %14, metadata !1902, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 8, metadata !1906, metadata !DIExpression()), !dbg !2126
  store i64 0, ptr %14, align 8, !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1833, metadata !DIExpression()), !dbg !2118
  %316 = icmp eq i64 %171, -1, !dbg !2129
  br i1 %316, label %317, label %319, !dbg !2131

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %319, !dbg !2133

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2134
  %321 = sub i64 %320, %145, !dbg !2135
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1841, metadata !DIExpression()), !dbg !1863
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2137

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !2118
  %324 = icmp ult i64 %145, %320, !dbg !2138
  br i1 %324, label %326, label %351, !dbg !2140

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1833, metadata !DIExpression()), !dbg !2118
  br label %351, !dbg !2141

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1831, metadata !DIExpression()), !dbg !2118
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2143
  %330 = load i8, ptr %329, align 1, !dbg !2143, !tbaa !895
  %331 = icmp eq i8 %330, 0, !dbg !2140
  br i1 %331, label %351, label %332, !dbg !2144

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2145
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1831, metadata !DIExpression()), !dbg !2118
  %334 = add i64 %333, %145, !dbg !2146
  %335 = icmp eq i64 %333, %321, !dbg !2138
  br i1 %335, label %351, label %326, !dbg !2140, !llvm.loop !2147

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1842, metadata !DIExpression()), !dbg !2148
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2149
  %339 = and i1 %338, %132, !dbg !2149
  br i1 %339, label %340, label %347, !dbg !2149

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1842, metadata !DIExpression()), !dbg !2148
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2150
  %343 = load i8, ptr %342, align 1, !dbg !2150, !tbaa !895
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2152

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1842, metadata !DIExpression()), !dbg !2148
  %346 = icmp eq i64 %345, %322, !dbg !2154
  br i1 %346, label %347, label %340, !dbg !2155, !llvm.loop !2156

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2158, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %348, metadata !2160, metadata !DIExpression()), !dbg !2168
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !2170
  %350 = icmp ne i32 %349, 0, !dbg !2171
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1831, metadata !DIExpression()), !dbg !2118
  br label %351, !dbg !2172

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1831, metadata !DIExpression()), !dbg !2118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2173
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2174
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1831, metadata !DIExpression()), !dbg !2118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2173
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2174
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1971
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2175
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2175
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1833, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1831, metadata !DIExpression()), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1797, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1825, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1971
  %359 = icmp ult i64 %357, 2, !dbg !2176
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2177
  br i1 %361, label %461, label %362, !dbg !2177

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1850, metadata !DIExpression()), !dbg !2179
  br label %364, !dbg !2180

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1864
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1963
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1961
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1971
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2181
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1821, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1804, metadata !DIExpression()), !dbg !1864
  br i1 %360, label %417, label %371, !dbg !2182

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2187

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1824, metadata !DIExpression()), !dbg !1971
  %373 = and i8 %366, 1, !dbg !2190
  %374 = icmp eq i8 %373, 0, !dbg !2190
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2190
  br i1 %375, label %376, label %392, !dbg !2190

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2192
  br i1 %377, label %378, label %380, !dbg !2196

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2192
  store i8 39, ptr %379, align 1, !dbg !2192, !tbaa !895
  br label %380, !dbg !2192

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2196
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1804, metadata !DIExpression()), !dbg !1864
  %382 = icmp ult i64 %381, %146, !dbg !2197
  br i1 %382, label %383, label %385, !dbg !2200

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2197
  store i8 36, ptr %384, align 1, !dbg !2197, !tbaa !895
  br label %385, !dbg !2197

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1804, metadata !DIExpression()), !dbg !1864
  %387 = icmp ult i64 %386, %146, !dbg !2201
  br i1 %387, label %388, label %390, !dbg !2204

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2201
  store i8 39, ptr %389, align 1, !dbg !2201, !tbaa !895
  br label %390, !dbg !2201

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %392, !dbg !2205

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1864
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1804, metadata !DIExpression()), !dbg !1864
  %395 = icmp ult i64 %393, %146, !dbg !2206
  br i1 %395, label %396, label %398, !dbg !2209

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2206
  store i8 92, ptr %397, align 1, !dbg !2206, !tbaa !895
  br label %398, !dbg !2206

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2209
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1804, metadata !DIExpression()), !dbg !1864
  %400 = icmp ult i64 %399, %146, !dbg !2210
  br i1 %400, label %401, label %405, !dbg !2213

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2210
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2210
  store i8 %403, ptr %404, align 1, !dbg !2210, !tbaa !895
  br label %405, !dbg !2210

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1804, metadata !DIExpression()), !dbg !1864
  %407 = icmp ult i64 %406, %146, !dbg !2214
  br i1 %407, label %408, label %413, !dbg !2217

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2214
  %411 = or disjoint i8 %410, 48, !dbg !2214
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2214
  store i8 %411, ptr %412, align 1, !dbg !2214, !tbaa !895
  br label %413, !dbg !2214

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1804, metadata !DIExpression()), !dbg !1864
  %415 = and i8 %370, 7, !dbg !2218
  %416 = or disjoint i8 %415, 48, !dbg !2219
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1826, metadata !DIExpression()), !dbg !1971
  br label %426, !dbg !2220

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2221
  %419 = icmp eq i8 %418, 0, !dbg !2221
  br i1 %419, label %426, label %420, !dbg !2223

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2224
  br i1 %421, label %422, label %424, !dbg !2228

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2224
  store i8 92, ptr %423, align 1, !dbg !2224, !tbaa !895
  br label %424, !dbg !2224

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1971
  br label %426, !dbg !2229

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1864
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1963
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1971
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1971
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1821, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1804, metadata !DIExpression()), !dbg !1864
  %432 = add i64 %367, 1, !dbg !2230
  %433 = icmp ugt i64 %363, %432, !dbg !2232
  br i1 %433, label %434, label %463, !dbg !2233

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2234
  %436 = icmp ne i8 %435, 0, !dbg !2234
  %437 = and i8 %430, 1, !dbg !2234
  %438 = icmp eq i8 %437, 0, !dbg !2234
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2234
  br i1 %439, label %440, label %451, !dbg !2234

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2237
  br i1 %441, label %442, label %444, !dbg !2241

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2237
  store i8 39, ptr %443, align 1, !dbg !2237, !tbaa !895
  br label %444, !dbg !2237

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1804, metadata !DIExpression()), !dbg !1864
  %446 = icmp ult i64 %445, %146, !dbg !2242
  br i1 %446, label %447, label %449, !dbg !2245

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2242
  store i8 39, ptr %448, align 1, !dbg !2242, !tbaa !895
  br label %449, !dbg !2242

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2245
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %451, !dbg !2246

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2247
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1804, metadata !DIExpression()), !dbg !1864
  %454 = icmp ult i64 %452, %146, !dbg !2248
  br i1 %454, label %455, label %457, !dbg !2251

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2248
  store i8 %431, ptr %456, align 1, !dbg !2248, !tbaa !895
  br label %457, !dbg !2248

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1819, metadata !DIExpression()), !dbg !1961
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2252
  %460 = load i8, ptr %459, align 1, !dbg !2252, !tbaa !895
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1826, metadata !DIExpression()), !dbg !1971
  br label %364, !dbg !2253, !llvm.loop !2254

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1825, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1821, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1825, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1821, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1797, metadata !DIExpression()), !dbg !1864
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2257
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1864
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1869
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1864
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1864
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1961
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1971
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1971
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1971
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1825, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1821, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1797, metadata !DIExpression()), !dbg !1864
  br i1 %126, label %487, label %476, !dbg !2258

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
  br i1 %137, label %488, label %509, !dbg !2260

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2261

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
  %499 = lshr i8 %490, 5, !dbg !2262
  %500 = zext nneg i8 %499 to i64, !dbg !2262
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2263
  %502 = load i32, ptr %501, align 4, !dbg !2263, !tbaa !886
  %503 = and i8 %490, 31, !dbg !2264
  %504 = zext nneg i8 %503 to i32, !dbg !2264
  %505 = shl nuw i32 1, %504, !dbg !2265
  %506 = and i32 %502, %505, !dbg !2265
  %507 = icmp eq i32 %506, 0, !dbg !2265
  %508 = and i1 %172, %507, !dbg !2266
  br i1 %508, label %558, label %520, !dbg !2266

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
  br i1 %172, label %558, label %520, !dbg !2267

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2257
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1864
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1869
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1873
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1963
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2268
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1971
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1971
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1825, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1853), !dbg !2269
  br i1 %131, label %530, label %659, !dbg !2270

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1824, metadata !DIExpression()), !dbg !1971
  %531 = and i8 %525, 1, !dbg !2272
  %532 = icmp eq i8 %531, 0, !dbg !2272
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2272
  br i1 %533, label %534, label %550, !dbg !2272

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2274
  br i1 %535, label %536, label %538, !dbg !2278

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2274
  store i8 39, ptr %537, align 1, !dbg !2274, !tbaa !895
  br label %538, !dbg !2274

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2278
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1804, metadata !DIExpression()), !dbg !1864
  %540 = icmp ult i64 %539, %529, !dbg !2279
  br i1 %540, label %541, label %543, !dbg !2282

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2279
  store i8 36, ptr %542, align 1, !dbg !2279, !tbaa !895
  br label %543, !dbg !2279

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2282
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1804, metadata !DIExpression()), !dbg !1864
  %545 = icmp ult i64 %544, %529, !dbg !2283
  br i1 %545, label %546, label %548, !dbg !2286

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2283
  store i8 39, ptr %547, align 1, !dbg !2283, !tbaa !895
  br label %548, !dbg !2283

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %550, !dbg !2287

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1971
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1804, metadata !DIExpression()), !dbg !1864
  %553 = icmp ult i64 %551, %529, !dbg !2288
  br i1 %553, label %554, label %556, !dbg !2291

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2288
  store i8 92, ptr %555, align 1, !dbg !2288, !tbaa !895
  br label %556, !dbg !2288

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2291
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1825, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1854), !dbg !2292
  br label %585, !dbg !2293

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2257
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1864
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1869
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1873
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1963
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2268
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1971
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1971
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2296
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1826, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1825, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1824, metadata !DIExpression()), !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1797, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.label(metadata !1854), !dbg !2292
  %569 = and i8 %563, 1, !dbg !2293
  %570 = icmp ne i8 %569, 0, !dbg !2293
  %571 = and i8 %565, 1, !dbg !2293
  %572 = icmp eq i8 %571, 0, !dbg !2293
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2293
  br i1 %573, label %574, label %585, !dbg !2293

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2297
  br i1 %575, label %576, label %578, !dbg !2301

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2297
  store i8 39, ptr %577, align 1, !dbg !2297, !tbaa !895
  br label %578, !dbg !2297

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1804, metadata !DIExpression()), !dbg !1864
  %580 = icmp ult i64 %579, %568, !dbg !2302
  br i1 %580, label %581, label %583, !dbg !2305

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2302
  store i8 39, ptr %582, align 1, !dbg !2302, !tbaa !895
  br label %583, !dbg !2302

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1864
  br label %585, !dbg !2306

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1971
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1804, metadata !DIExpression()), !dbg !1864
  %595 = icmp ult i64 %593, %586, !dbg !2307
  br i1 %595, label %596, label %598, !dbg !2310

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2307
  store i8 %587, ptr %597, align 1, !dbg !2307, !tbaa !895
  br label %598, !dbg !2307

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1804, metadata !DIExpression()), !dbg !1864
  %600 = icmp eq i8 %588, 0, !dbg !2311
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2313
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1811, metadata !DIExpression()), !dbg !1864
  br label %602, !dbg !2314

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2257
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1864
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1869
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1873
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1874
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1963
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2268
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1819, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1813, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1811, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1797, metadata !DIExpression()), !dbg !1864
  %611 = add i64 %609, 1, !dbg !2315
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1819, metadata !DIExpression()), !dbg !1961
  br label %138, !dbg !2316, !llvm.loop !2317

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1795, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1811, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1810, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1805, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1804, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1797, metadata !DIExpression()), !dbg !1864
  %613 = icmp eq i64 %140, 0, !dbg !2319
  %614 = and i1 %132, %613, !dbg !2321
  %615 = xor i1 %614, true, !dbg !2321
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2321
  br i1 %616, label %617, label %655, !dbg !2321

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2322
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2322
  br i1 %621, label %622, label %631, !dbg !2322

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2324
  %624 = icmp eq i8 %623, 0, !dbg !2324
  br i1 %624, label %627, label %625, !dbg !2327

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2328
  br label %672, !dbg !2329

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2330
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2332
  br i1 %630, label %28, label %631, !dbg !2332

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2333
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2335
  br i1 %634, label %635, label %650, !dbg !2335

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1806, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1804, metadata !DIExpression()), !dbg !1864
  %636 = load i8, ptr %119, align 1, !dbg !2336, !tbaa !895
  %637 = icmp eq i8 %636, 0, !dbg !2339
  br i1 %637, label %650, label %638, !dbg !2339

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1806, metadata !DIExpression()), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1804, metadata !DIExpression()), !dbg !1864
  %642 = icmp ult i64 %641, %146, !dbg !2340
  br i1 %642, label %643, label %645, !dbg !2343

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2340
  store i8 %639, ptr %644, align 1, !dbg !2340, !tbaa !895
  br label %645, !dbg !2340

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1804, metadata !DIExpression()), !dbg !1864
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1806, metadata !DIExpression()), !dbg !1864
  %648 = load i8, ptr %647, align 1, !dbg !2336, !tbaa !895
  %649 = icmp eq i8 %648, 0, !dbg !2339
  br i1 %649, label %650, label %638, !dbg !2339, !llvm.loop !2345

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1804, metadata !DIExpression()), !dbg !1864
  %652 = icmp ult i64 %651, %146, !dbg !2347
  br i1 %652, label %653, label %672, !dbg !2349

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2350
  store i8 0, ptr %654, align 1, !dbg !2351, !tbaa !895
  br label %672, !dbg !2350

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1855), !dbg !2352
  %657 = icmp eq i8 %123, 0, !dbg !2353
  %658 = select i1 %657, i32 2, i32 4, !dbg !2353
  br label %666, !dbg !2353

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1855), !dbg !2352
  %662 = icmp eq i32 %115, 2, !dbg !2355
  %663 = icmp eq i8 %123, 0, !dbg !2353
  %664 = select i1 %663, i32 2, i32 4, !dbg !2353
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2353
  br label %666, !dbg !2353

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1798, metadata !DIExpression()), !dbg !1864
  %670 = and i32 %5, -3, !dbg !2356
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2357
  br label %672, !dbg !2358

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2359
}

; Function Attrs: nounwind
declare !dbg !2360 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2363 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2366 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2368 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2372, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2373, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr %0, metadata !2376, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %1, metadata !2381, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr null, metadata !2382, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %2, metadata !2383, metadata !DIExpression()), !dbg !2389
  %4 = icmp eq ptr %2, null, !dbg !2391
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2391
  call void @llvm.dbg.value(metadata ptr %5, metadata !2384, metadata !DIExpression()), !dbg !2389
  %6 = tail call ptr @__errno_location() #42, !dbg !2392
  %7 = load i32, ptr %6, align 4, !dbg !2392, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %7, metadata !2385, metadata !DIExpression()), !dbg !2389
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2393
  %9 = load i32, ptr %8, align 4, !dbg !2393, !tbaa !1738
  %10 = or i32 %9, 1, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %10, metadata !2386, metadata !DIExpression()), !dbg !2389
  %11 = load i32, ptr %5, align 8, !dbg !2395, !tbaa !1688
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2396
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2397
  %14 = load ptr, ptr %13, align 8, !dbg !2397, !tbaa !1759
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2398
  %16 = load ptr, ptr %15, align 8, !dbg !2398, !tbaa !1762
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2399
  %18 = add i64 %17, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %18, metadata !2387, metadata !DIExpression()), !dbg !2389
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %19, metadata !2388, metadata !DIExpression()), !dbg !2389
  %20 = load i32, ptr %5, align 8, !dbg !2402, !tbaa !1688
  %21 = load ptr, ptr %13, align 8, !dbg !2403, !tbaa !1759
  %22 = load ptr, ptr %15, align 8, !dbg !2404, !tbaa !1762
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2405
  store i32 %7, ptr %6, align 4, !dbg !2406, !tbaa !886
  ret ptr %19, !dbg !2407
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2377 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2376, metadata !DIExpression()), !dbg !2408
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2381, metadata !DIExpression()), !dbg !2408
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2382, metadata !DIExpression()), !dbg !2408
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2383, metadata !DIExpression()), !dbg !2408
  %5 = icmp eq ptr %3, null, !dbg !2409
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2409
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2384, metadata !DIExpression()), !dbg !2408
  %7 = tail call ptr @__errno_location() #42, !dbg !2410
  %8 = load i32, ptr %7, align 4, !dbg !2410, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2385, metadata !DIExpression()), !dbg !2408
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2411
  %10 = load i32, ptr %9, align 4, !dbg !2411, !tbaa !1738
  %11 = icmp eq ptr %2, null, !dbg !2412
  %12 = zext i1 %11 to i32, !dbg !2412
  %13 = or i32 %10, %12, !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2386, metadata !DIExpression()), !dbg !2408
  %14 = load i32, ptr %6, align 8, !dbg !2414, !tbaa !1688
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2415
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2416
  %17 = load ptr, ptr %16, align 8, !dbg !2416, !tbaa !1759
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2417
  %19 = load ptr, ptr %18, align 8, !dbg !2417, !tbaa !1762
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2418
  %21 = add i64 %20, 1, !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2387, metadata !DIExpression()), !dbg !2408
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !2420
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2388, metadata !DIExpression()), !dbg !2408
  %23 = load i32, ptr %6, align 8, !dbg !2421, !tbaa !1688
  %24 = load ptr, ptr %16, align 8, !dbg !2422, !tbaa !1759
  %25 = load ptr, ptr %18, align 8, !dbg !2423, !tbaa !1762
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2424
  store i32 %8, ptr %7, align 4, !dbg !2425, !tbaa !886
  br i1 %11, label %28, label %27, !dbg !2426

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2427, !tbaa !1123
  br label %28, !dbg !2429

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2430
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2431 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2436, !tbaa !829
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2433, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2434, metadata !DIExpression()), !dbg !2438
  %2 = load i32, ptr @nslots, align 4, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2434, metadata !DIExpression()), !dbg !2438
  %3 = icmp sgt i32 %2, 1, !dbg !2439
  br i1 %3, label %4, label %6, !dbg !2441

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2439
  br label %10, !dbg !2441

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2442
  %8 = load ptr, ptr %7, align 8, !dbg !2442, !tbaa !2444
  %9 = icmp eq ptr %8, @slot0, !dbg !2446
  br i1 %9, label %17, label %16, !dbg !2447

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2434, metadata !DIExpression()), !dbg !2438
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2448
  %13 = load ptr, ptr %12, align 8, !dbg !2448, !tbaa !2444
  tail call void @free(ptr noundef %13) #39, !dbg !2449
  %14 = add nuw nsw i64 %11, 1, !dbg !2450
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2434, metadata !DIExpression()), !dbg !2438
  %15 = icmp eq i64 %14, %5, !dbg !2439
  br i1 %15, label %6, label %10, !dbg !2441, !llvm.loop !2451

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2453
  store i64 256, ptr @slotvec0, align 8, !dbg !2455, !tbaa !2456
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2457, !tbaa !2444
  br label %17, !dbg !2458

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2459
  br i1 %18, label %20, label %19, !dbg !2461

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2462
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2464, !tbaa !829
  br label %20, !dbg !2465

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2466, !tbaa !886
  ret void, !dbg !2467
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2468 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2470, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2471, metadata !DIExpression()), !dbg !2472
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2473
  ret ptr %3, !dbg !2474
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2475 {
  %5 = alloca i64, align 8, !DIAssignID !2495
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2489, metadata !DIExpression(), metadata !2495, metadata ptr %5, metadata !DIExpression()), !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2480, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2481, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2482, metadata !DIExpression()), !dbg !2497
  %6 = tail call ptr @__errno_location() #42, !dbg !2498
  %7 = load i32, ptr %6, align 4, !dbg !2498, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2483, metadata !DIExpression()), !dbg !2497
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2499, !tbaa !829
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2484, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2485, metadata !DIExpression()), !dbg !2497
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2500
  br i1 %9, label %10, label %11, !dbg !2500

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2502
  unreachable, !dbg !2502

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2503, !tbaa !886
  %13 = icmp sgt i32 %12, %0, !dbg !2504
  br i1 %13, label %32, label %14, !dbg !2505

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2506
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2486, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2496
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2507
  %16 = sext i32 %12 to i64, !dbg !2508
  store i64 %16, ptr %5, align 8, !dbg !2509, !tbaa !1123, !DIAssignID !2510
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2489, metadata !DIExpression(), metadata !2510, metadata ptr %5, metadata !DIExpression()), !dbg !2496
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2511
  %18 = add nuw nsw i32 %0, 1, !dbg !2512
  %19 = sub i32 %18, %12, !dbg !2513
  %20 = sext i32 %19 to i64, !dbg !2514
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2515
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2484, metadata !DIExpression()), !dbg !2497
  store ptr %21, ptr @slotvec, align 8, !dbg !2516, !tbaa !829
  br i1 %15, label %22, label %23, !dbg !2517

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2518, !tbaa.struct !2520
  br label %23, !dbg !2521

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2522, !tbaa !886
  %25 = sext i32 %24 to i64, !dbg !2523
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2523
  %27 = load i64, ptr %5, align 8, !dbg !2524, !tbaa !1123
  %28 = sub nsw i64 %27, %25, !dbg !2525
  %29 = shl i64 %28, 4, !dbg !2526
  call void @llvm.dbg.value(metadata ptr %26, metadata !1902, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 %29, metadata !1906, metadata !DIExpression()), !dbg !2527
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2529
  %30 = load i64, ptr %5, align 8, !dbg !2530, !tbaa !1123
  %31 = trunc i64 %30 to i32, !dbg !2530
  store i32 %31, ptr @nslots, align 4, !dbg !2531, !tbaa !886
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2532
  br label %32, !dbg !2533

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2497
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2484, metadata !DIExpression()), !dbg !2497
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2534
  %36 = load i64, ptr %35, align 8, !dbg !2535, !tbaa !2456
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2490, metadata !DIExpression()), !dbg !2536
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2537
  %38 = load ptr, ptr %37, align 8, !dbg !2537, !tbaa !2444
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2492, metadata !DIExpression()), !dbg !2536
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2538
  %40 = load i32, ptr %39, align 4, !dbg !2538, !tbaa !1738
  %41 = or i32 %40, 1, !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2493, metadata !DIExpression()), !dbg !2536
  %42 = load i32, ptr %3, align 8, !dbg !2540, !tbaa !1688
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2541
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2542
  %45 = load ptr, ptr %44, align 8, !dbg !2542, !tbaa !1759
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2543
  %47 = load ptr, ptr %46, align 8, !dbg !2543, !tbaa !1762
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2544
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2494, metadata !DIExpression()), !dbg !2536
  %49 = icmp ugt i64 %36, %48, !dbg !2545
  br i1 %49, label %60, label %50, !dbg !2547

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2548
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2490, metadata !DIExpression()), !dbg !2536
  store i64 %51, ptr %35, align 8, !dbg !2550, !tbaa !2456
  %52 = icmp eq ptr %38, @slot0, !dbg !2551
  br i1 %52, label %54, label %53, !dbg !2553

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2554
  br label %54, !dbg !2554

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !2555
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2492, metadata !DIExpression()), !dbg !2536
  store ptr %55, ptr %37, align 8, !dbg !2556, !tbaa !2444
  %56 = load i32, ptr %3, align 8, !dbg !2557, !tbaa !1688
  %57 = load ptr, ptr %44, align 8, !dbg !2558, !tbaa !1759
  %58 = load ptr, ptr %46, align 8, !dbg !2559, !tbaa !1762
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2560
  br label %60, !dbg !2561

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2536
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2492, metadata !DIExpression()), !dbg !2536
  store i32 %7, ptr %6, align 4, !dbg !2562, !tbaa !886
  ret ptr %61, !dbg !2563
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2564 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2569, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2570, metadata !DIExpression()), !dbg !2571
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2572
  ret ptr %4, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2574 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2470, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %0, metadata !2471, metadata !DIExpression()), !dbg !2578
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2580
  ret ptr %2, !dbg !2581
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2582 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2586, metadata !DIExpression()), !dbg !2588
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2568, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata ptr %0, metadata !2569, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %1, metadata !2570, metadata !DIExpression()), !dbg !2589
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2591
  ret ptr %3, !dbg !2592
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2593 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2601
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2600, metadata !DIExpression(), metadata !2601, metadata ptr %4, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2598, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2603
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %1, metadata !2608, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2613, metadata !DIExpression()), !dbg !2616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2616, !alias.scope !2604, !DIAssignID !2617
  call void @llvm.dbg.assign(metadata i8 0, metadata !2600, metadata !DIExpression(), metadata !2617, metadata ptr %4, metadata !DIExpression()), !dbg !2602
  %5 = icmp eq i32 %1, 10, !dbg !2618
  br i1 %5, label %6, label %7, !dbg !2620

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2621, !noalias !2604
  unreachable, !dbg !2621

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2622, !tbaa !1688, !alias.scope !2604, !DIAssignID !2623
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2623, metadata ptr %4, metadata !DIExpression()), !dbg !2602
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2625
  ret ptr %8, !dbg !2626
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2627 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2636, metadata ptr %5, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2632, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2633, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %1, metadata !2608, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2613, metadata !DIExpression()), !dbg !2645
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2645, !alias.scope !2639, !DIAssignID !2646
  call void @llvm.dbg.assign(metadata i8 0, metadata !2635, metadata !DIExpression(), metadata !2646, metadata ptr %5, metadata !DIExpression()), !dbg !2637
  %6 = icmp eq i32 %1, 10, !dbg !2647
  br i1 %6, label %7, label %8, !dbg !2648

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2649, !noalias !2639
  unreachable, !dbg !2649

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2650, !tbaa !1688, !alias.scope !2639, !DIAssignID !2651
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2651, metadata ptr %5, metadata !DIExpression()), !dbg !2637
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2652
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2653
  ret ptr %9, !dbg !2654
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2655 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2661
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2659, metadata !DIExpression()), !dbg !2662
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2600, metadata !DIExpression(), metadata !2661, metadata ptr %3, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2663
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2666), !dbg !2669
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2613, metadata !DIExpression()), !dbg !2672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2672, !alias.scope !2666, !DIAssignID !2673
  call void @llvm.dbg.assign(metadata i8 0, metadata !2600, metadata !DIExpression(), metadata !2673, metadata ptr %3, metadata !DIExpression()), !dbg !2663
  %4 = icmp eq i32 %0, 10, !dbg !2674
  br i1 %4, label %5, label %6, !dbg !2675

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2676, !noalias !2666
  unreachable, !dbg !2676

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2677, !tbaa !1688, !alias.scope !2666, !DIAssignID !2678
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2678, metadata ptr %3, metadata !DIExpression()), !dbg !2663
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2679
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2680
  ret ptr %7, !dbg !2681
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2682 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2689
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2686, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2687, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2688, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2689, metadata ptr %4, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2631, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %0, metadata !2632, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %1, metadata !2633, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %2, metadata !2634, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2693
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2694), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2613, metadata !DIExpression()), !dbg !2700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2700, !alias.scope !2694, !DIAssignID !2701
  call void @llvm.dbg.assign(metadata i8 0, metadata !2635, metadata !DIExpression(), metadata !2701, metadata ptr %4, metadata !DIExpression()), !dbg !2691
  %5 = icmp eq i32 %0, 10, !dbg !2702
  br i1 %5, label %6, label %7, !dbg !2703

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2704, !noalias !2694
  unreachable, !dbg !2704

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2705, !tbaa !1688, !alias.scope !2694, !DIAssignID !2706
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2706, metadata ptr %4, metadata !DIExpression()), !dbg !2691
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2708
  ret ptr %8, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2710 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2718, metadata ptr %4, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2721, !tbaa.struct !2722, !DIAssignID !2723
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2723, metadata ptr %4, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1705, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1706, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1708, metadata !DIExpression()), !dbg !2724
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2726
  %6 = lshr i8 %2, 5, !dbg !2727
  %7 = zext nneg i8 %6 to i64, !dbg !2727
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2728
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1709, metadata !DIExpression()), !dbg !2724
  %9 = and i8 %2, 31, !dbg !2729
  %10 = zext nneg i8 %9 to i32, !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1711, metadata !DIExpression()), !dbg !2724
  %11 = load i32, ptr %8, align 4, !dbg !2730, !tbaa !886
  %12 = lshr i32 %11, %10, !dbg !2731
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1712, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2724
  %13 = and i32 %12, 1, !dbg !2732
  %14 = xor i32 %13, 1, !dbg !2732
  %15 = shl nuw i32 %14, %10, !dbg !2733
  %16 = xor i32 %15, %11, !dbg !2734
  store i32 %16, ptr %8, align 4, !dbg !2734, !tbaa !886
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2735
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2736
  ret ptr %17, !dbg !2737
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2738 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2744
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2742, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2744, metadata ptr %3, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 -1, metadata !2715, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8 %1, metadata !2716, metadata !DIExpression()), !dbg !2746
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2749, !tbaa.struct !2722, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2750, metadata ptr %3, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %3, metadata !1705, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8 %1, metadata !1708, metadata !DIExpression()), !dbg !2751
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2753
  %5 = lshr i8 %1, 5, !dbg !2754
  %6 = zext nneg i8 %5 to i64, !dbg !2754
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2755
  call void @llvm.dbg.value(metadata ptr %7, metadata !1709, metadata !DIExpression()), !dbg !2751
  %8 = and i8 %1, 31, !dbg !2756
  %9 = zext nneg i8 %8 to i32, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %9, metadata !1711, metadata !DIExpression()), !dbg !2751
  %10 = load i32, ptr %7, align 4, !dbg !2757, !tbaa !886
  %11 = lshr i32 %10, %9, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %11, metadata !1712, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2751
  %12 = and i32 %11, 1, !dbg !2759
  %13 = xor i32 %12, 1, !dbg !2759
  %14 = shl nuw i32 %13, %9, !dbg !2760
  %15 = xor i32 %14, %10, !dbg !2761
  store i32 %15, ptr %7, align 4, !dbg !2761, !tbaa !886
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2762
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2763
  ret ptr %16, !dbg !2764
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2765 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2768
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %0, metadata !2742, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8 58, metadata !2743, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2768, metadata ptr %2, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 -1, metadata !2715, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 58, metadata !2716, metadata !DIExpression()), !dbg !2772
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2775, !tbaa.struct !2722, !DIAssignID !2776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2776, metadata ptr %2, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %2, metadata !1705, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()), !dbg !2777
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2779
  call void @llvm.dbg.value(metadata ptr %3, metadata !1709, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()), !dbg !2777
  %4 = load i32, ptr %3, align 4, !dbg !2780, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %4, metadata !1712, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2777
  %5 = or i32 %4, 67108864, !dbg !2781
  store i32 %5, ptr %3, align 4, !dbg !2781, !tbaa !886
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2782
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2783
  ret ptr %6, !dbg !2784
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2785 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2789
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2787, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2788, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2789, metadata ptr %3, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 58, metadata !2716, metadata !DIExpression()), !dbg !2791
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2794, !tbaa.struct !2722, !DIAssignID !2795
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2717, metadata !DIExpression(), metadata !2795, metadata ptr %3, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %3, metadata !1705, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()), !dbg !2796
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2798
  call void @llvm.dbg.value(metadata ptr %4, metadata !1709, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()), !dbg !2796
  %5 = load i32, ptr %4, align 4, !dbg !2799, !tbaa !886
  call void @llvm.dbg.value(metadata i32 %5, metadata !1712, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2796
  %6 = or i32 %5, 67108864, !dbg !2800
  store i32 %6, ptr %4, align 4, !dbg !2800, !tbaa !886
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2801
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2802
  ret ptr %7, !dbg !2803
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2804 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2810
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2810, metadata ptr %4, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2613, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2806, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2807, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2814
  call void @llvm.dbg.value(metadata i32 %1, metadata !2608, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2613, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2815
  %5 = icmp eq i32 %1, 10, !dbg !2816
  br i1 %5, label %6, label %7, !dbg !2817

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2818, !noalias !2819
  unreachable, !dbg !2818

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2613, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2815
  store i32 %1, ptr %4, align 8, !dbg !2822, !tbaa.struct !2722, !DIAssignID !2823
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2822
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2823, metadata ptr %4, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2824, metadata ptr %8, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1705, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1707, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1708, metadata !DIExpression()), !dbg !2825
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2827
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1709, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1711, metadata !DIExpression()), !dbg !2825
  %10 = load i32, ptr %9, align 4, !dbg !2828, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1712, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2825
  %11 = or i32 %10, 67108864, !dbg !2829
  store i32 %11, ptr %9, align 4, !dbg !2829, !tbaa !886, !DIAssignID !2830
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2830, metadata ptr %9, metadata !DIExpression()), !dbg !2811
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2831
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2832
  ret ptr %12, !dbg !2833
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2834 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2842
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2840, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2841, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2842, metadata ptr %5, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 %0, metadata !2849, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %3, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 -1, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2857, !tbaa.struct !2722, !DIAssignID !2858
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2858, metadata ptr %5, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2859, metadata ptr undef, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %5, metadata !1745, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %1, metadata !1746, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %2, metadata !1747, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %5, metadata !1745, metadata !DIExpression()), !dbg !2860
  store i32 10, ptr %5, align 8, !dbg !2862, !tbaa !1688, !DIAssignID !2863
  call void @llvm.dbg.assign(metadata i32 10, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2863, metadata ptr %5, metadata !DIExpression()), !dbg !2854
  %6 = icmp ne ptr %1, null, !dbg !2864
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2865
  br i1 %8, label %10, label %9, !dbg !2865

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2866
  unreachable, !dbg !2866

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2867
  store ptr %1, ptr %11, align 8, !dbg !2868, !tbaa !1759, !DIAssignID !2869
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2869, metadata ptr %11, metadata !DIExpression()), !dbg !2854
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2870
  store ptr %2, ptr %12, align 8, !dbg !2871, !tbaa !1762, !DIAssignID !2872
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2872, metadata ptr %12, metadata !DIExpression()), !dbg !2854
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2873
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2874
  ret ptr %13, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2845 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2876, metadata ptr %6, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2849, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2852, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2853, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2879, !tbaa.struct !2722, !DIAssignID !2880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2880, metadata ptr %6, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2881, metadata ptr undef, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata ptr %6, metadata !1745, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %1, metadata !1746, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %2, metadata !1747, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %6, metadata !1745, metadata !DIExpression()), !dbg !2882
  store i32 10, ptr %6, align 8, !dbg !2884, !tbaa !1688, !DIAssignID !2885
  call void @llvm.dbg.assign(metadata i32 10, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2885, metadata ptr %6, metadata !DIExpression()), !dbg !2877
  %7 = icmp ne ptr %1, null, !dbg !2886
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2887
  br i1 %9, label %11, label %10, !dbg !2887

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2888
  unreachable, !dbg !2888

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2889
  store ptr %1, ptr %12, align 8, !dbg !2890, !tbaa !1759, !DIAssignID !2891
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2891, metadata ptr %12, metadata !DIExpression()), !dbg !2877
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2892
  store ptr %2, ptr %13, align 8, !dbg !2893, !tbaa !1762, !DIAssignID !2894
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2894, metadata ptr %13, metadata !DIExpression()), !dbg !2877
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2895
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2896
  ret ptr %14, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2898 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2905
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2903, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %1, metadata !2840, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %2, metadata !2841, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2905, metadata ptr %4, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata ptr %1, metadata !2851, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata ptr %2, metadata !2852, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 -1, metadata !2853, metadata !DIExpression()), !dbg !2909
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2912, !tbaa.struct !2722, !DIAssignID !2913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2913, metadata ptr %4, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2914, metadata ptr undef, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata ptr %4, metadata !1745, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %0, metadata !1746, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %1, metadata !1747, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %4, metadata !1745, metadata !DIExpression()), !dbg !2915
  store i32 10, ptr %4, align 8, !dbg !2917, !tbaa !1688, !DIAssignID !2918
  call void @llvm.dbg.assign(metadata i32 10, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2918, metadata ptr %4, metadata !DIExpression()), !dbg !2909
  %5 = icmp ne ptr %0, null, !dbg !2919
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2920
  br i1 %7, label %9, label %8, !dbg !2920

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2921
  unreachable, !dbg !2921

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2922
  store ptr %0, ptr %10, align 8, !dbg !2923, !tbaa !1759, !DIAssignID !2924
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2924, metadata ptr %10, metadata !DIExpression()), !dbg !2909
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2925
  store ptr %1, ptr %11, align 8, !dbg !2926, !tbaa !1762, !DIAssignID !2927
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2927, metadata ptr %11, metadata !DIExpression()), !dbg !2909
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2928
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2929
  ret ptr %12, !dbg !2930
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2931 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2939
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2940
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2936, metadata !DIExpression()), !dbg !2940
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2939, metadata ptr %5, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2849, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %1, metadata !2851, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %2, metadata !2852, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %3, metadata !2853, metadata !DIExpression()), !dbg !2941
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2944, !tbaa.struct !2722, !DIAssignID !2945
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2945, metadata ptr %5, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2946, metadata ptr undef, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata ptr %5, metadata !1745, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %0, metadata !1746, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %1, metadata !1747, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %5, metadata !1745, metadata !DIExpression()), !dbg !2947
  store i32 10, ptr %5, align 8, !dbg !2949, !tbaa !1688, !DIAssignID !2950
  call void @llvm.dbg.assign(metadata i32 10, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2950, metadata ptr %5, metadata !DIExpression()), !dbg !2941
  %6 = icmp ne ptr %0, null, !dbg !2951
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2952
  br i1 %8, label %10, label %9, !dbg !2952

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2953
  unreachable, !dbg !2953

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2954
  store ptr %0, ptr %11, align 8, !dbg !2955, !tbaa !1759, !DIAssignID !2956
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2956, metadata ptr %11, metadata !DIExpression()), !dbg !2941
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2957
  store ptr %1, ptr %12, align 8, !dbg !2958, !tbaa !1762, !DIAssignID !2959
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2959, metadata ptr %12, metadata !DIExpression()), !dbg !2941
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2960
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2961
  ret ptr %13, !dbg !2962
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2963 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()), !dbg !2970
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2968, metadata !DIExpression()), !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2969, metadata !DIExpression()), !dbg !2970
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2971
  ret ptr %4, !dbg !2972
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2973 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 0, metadata !2967, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %0, metadata !2968, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %1, metadata !2969, metadata !DIExpression()), !dbg !2980
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2982
  ret ptr %3, !dbg !2983
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2984 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()), !dbg !2990
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %1, metadata !2968, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 -1, metadata !2969, metadata !DIExpression()), !dbg !2991
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2993
  ret ptr %3, !dbg !2994
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2995 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2999, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 0, metadata !2988, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata ptr %0, metadata !2989, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 0, metadata !2967, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %0, metadata !2968, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 -1, metadata !2969, metadata !DIExpression()), !dbg !3003
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3005
  ret ptr %2, !dbg !3006
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @extract_trimmed_name(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3007 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3037
  %2 = load ptr, ptr %0, align 8, !dbg !3038, !tbaa !1156
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3037
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3035, metadata !DIExpression()), !dbg !3037
  %4 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !3040
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3036, metadata !DIExpression()), !dbg !3037
  br label %5, !dbg !3042

5:                                                ; preds = %8, %1
  %6 = phi ptr [ %4, %1 ], [ %9, %8 ], !dbg !3043
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3036, metadata !DIExpression()), !dbg !3037
  %7 = icmp ult ptr %2, %6, !dbg !3044
  br i1 %7, label %8, label %12, !dbg !3046

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !3047
  %10 = load i8, ptr %9, align 1, !dbg !3047, !tbaa !895
  %11 = icmp eq i8 %10, 32, !dbg !3048
  br i1 %11, label %5, label %12, !dbg !3049, !llvm.loop !3050

12:                                               ; preds = %5, %8
  %13 = ptrtoint ptr %6 to i64, !dbg !3052
  %14 = ptrtoint ptr %2 to i64, !dbg !3052
  %15 = sub i64 %13, %14, !dbg !3052
  %16 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %2, i64 noundef %15) #39, !dbg !3053
  ret ptr %16, !dbg !3054
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @read_utmp(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3055 {
  %5 = alloca [33 x i8], align 16, !DIAssignID !3065
  %6 = alloca %struct.sysinfo, align 8, !DIAssignID !3066
  %7 = alloca %struct.timespec, align 8, !DIAssignID !3067
  %8 = alloca %struct.timespec, align 8, !DIAssignID !3068
  %9 = alloca %struct.stat, align 8, !DIAssignID !3069
  %10 = alloca %struct.utmp_alloc, align 8, !DIAssignID !3070
  %11 = alloca %struct.timespec, align 8, !DIAssignID !3071
  %12 = alloca %struct.utmp_alloc, align 8
  %13 = alloca %struct.timespec, align 8, !DIAssignID !3072
  %14 = alloca %struct.utmp_alloc, align 8
  %15 = alloca %struct.timespec, align 8, !DIAssignID !3073
  %16 = alloca %struct.utmp_alloc, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3074
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3062, metadata !DIExpression()), !dbg !3074
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3063, metadata !DIExpression()), !dbg !3074
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3064, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3075, metadata !DIExpression(), metadata !3070, metadata ptr %10, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3087, metadata !DIExpression(), metadata !3071, metadata ptr %11, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3096, metadata !DIExpression(), metadata !3072, metadata ptr %13, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3099, metadata !DIExpression(), metadata !3073, metadata ptr %15, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %1, metadata !3079, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %3, metadata !3081, metadata !DIExpression()), !dbg !3108
  %17 = and i32 %3, 4, !dbg !3113
  %18 = icmp eq i32 %17, 0, !dbg !3115
  %19 = and i32 %3, 10
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %18, %20, !dbg !3116
  br i1 %21, label %23, label %22, !dbg !3116

22:                                               ; preds = %4
  store i64 0, ptr %1, align 8, !dbg !3117, !tbaa !1123
  store ptr null, ptr %2, align 8, !dbg !3119, !tbaa !829
  br label %353, !dbg !3120

23:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #39, !dbg !3121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false), !dbg !3122, !DIAssignID !3123
  call void @llvm.dbg.assign(metadata i8 0, metadata !3075, metadata !DIExpression(), metadata !3123, metadata ptr %10, metadata !DIExpression()), !dbg !3108
  %24 = tail call i32 @utmpxname(ptr noundef %0) #39, !dbg !3124
  tail call void @setutxent() #39, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3129, metadata !DIExpression()), !dbg !3130
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #40, !dbg !3132
  %26 = icmp eq i32 %25, 0, !dbg !3133
  call void @llvm.dbg.value(metadata i1 %26, metadata !3082, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3108
  call void @llvm.dbg.value(metadata i64 0, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3108
  call void @llvm.dbg.value(metadata i64 0, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3108
  %27 = tail call ptr @getutxent() #39, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %27, metadata !3084, metadata !DIExpression()), !dbg !3108
  %28 = icmp eq ptr %27, null, !dbg !3135
  br i1 %28, label %75, label %29, !dbg !3136

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.timespec, ptr %11, i64 0, i32 1
  br label %31, !dbg !3136

31:                                               ; preds = %70, %29
  %32 = phi ptr [ %27, %29 ], [ %73, %70 ]
  %33 = phi i64 [ 0, %29 ], [ %72, %70 ]
  %34 = phi i64 [ 0, %29 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %34, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %32, metadata !3085, metadata !DIExpression()), !dbg !3110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #39, !dbg !3137
  %35 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 8, !dbg !3138
  %36 = load i32, ptr %35, align 4, !dbg !3139, !tbaa !3140
  %37 = sext i32 %36 to i64, !dbg !3143
  store i64 %37, ptr %11, align 8, !dbg !3144, !tbaa !3145, !DIAssignID !3146
  call void @llvm.dbg.assign(metadata i64 %37, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3146, metadata ptr %11, metadata !DIExpression()), !dbg !3110
  %38 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 8, i32 1, !dbg !3147
  %39 = load i32, ptr %38, align 4, !dbg !3147, !tbaa !3148
  %40 = mul nsw i32 %39, 1000, !dbg !3149
  %41 = sext i32 %40 to i64, !dbg !3150
  store i64 %41, ptr %30, align 8, !dbg !3144, !tbaa !3151, !DIAssignID !3152
  call void @llvm.dbg.assign(metadata i64 %41, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3152, metadata ptr %30, metadata !DIExpression()), !dbg !3110
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #39, !dbg !3153
  %42 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 4, !dbg !3154
  %43 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %42, i64 noundef 32) #40, !dbg !3155
  %44 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 3, !dbg !3156
  %45 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %44, i64 noundef 4) #40, !dbg !3157
  %46 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 2, !dbg !3158
  %47 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %46, i64 noundef 32) #40, !dbg !3159
  %48 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 5, !dbg !3160
  %49 = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %48, i64 noundef 256) #40, !dbg !3161
  %50 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 1, !dbg !3162
  %51 = load i32, ptr %50, align 4, !dbg !3162, !tbaa !3163
  %52 = load i16, ptr %32, align 4, !dbg !3164, !tbaa !3165
  %53 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 7, !dbg !3166
  %54 = load i32, ptr %53, align 4, !dbg !3166, !tbaa !3167
  %55 = sext i32 %54 to i64, !dbg !3168
  %56 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 6, !dbg !3169
  %57 = load i16, ptr %56, align 4, !dbg !3169, !tbaa !3170
  %58 = sext i16 %57 to i32, !dbg !3169
  %59 = getelementptr inbounds %struct.utmpx, ptr %32, i64 0, i32 6, i32 1, !dbg !3171
  %60 = load i16, ptr %59, align 2, !dbg !3171, !tbaa !3172
  %61 = sext i16 %60 to i32, !dbg !3171
  call fastcc void @add_utmp(ptr dead_on_unwind nonnull writable sret(%struct.utmp_alloc) align 8 %12, ptr noundef nonnull byval(%struct.utmp_alloc) align 8 %10, i32 noundef %3, ptr noundef nonnull %42, i64 noundef %43, ptr noundef nonnull %44, i64 noundef %45, ptr noundef nonnull %46, i64 noundef %47, ptr noundef nonnull %48, i64 noundef %49, i32 noundef %51, i16 noundef signext %52, ptr noundef nonnull byval(%struct.timespec) align 8 %11, i64 noundef %55, i32 noundef %58, i32 noundef %61), !dbg !3153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !dbg !3153, !tbaa.struct !3173, !DIAssignID !3174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3075, metadata !DIExpression(), metadata !3174, metadata ptr %10, metadata !DIExpression()), !dbg !3108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #39, !dbg !3153
  br i1 %26, label %62, label %70, !dbg !3175

62:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %42, metadata !3177, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr @.str.1.81, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 9, metadata !3181, metadata !DIExpression()), !dbg !3182
  %63 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %42, ptr noundef nonnull dereferenceable(9) @.str.1.81, i64 9), !dbg !3184
  %64 = icmp eq i32 %63, 0, !dbg !3185
  br i1 %64, label %65, label %70, !dbg !3186

65:                                               ; preds = %62
  call void @llvm.dbg.value(metadata ptr %46, metadata !3177, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr @.str.2.82, metadata !3180, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 2, metadata !3181, metadata !DIExpression()), !dbg !3187
  %66 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %46, ptr noundef nonnull dereferenceable(2) @.str.2.82, i64 2), !dbg !3189
  %67 = icmp eq i32 %66, 0, !dbg !3190
  %68 = select i1 %67, i64 %41, i64 %34, !dbg !3191
  %69 = select i1 %67, i64 %37, i64 %33, !dbg !3191
  br label %70, !dbg !3191

70:                                               ; preds = %65, %62, %31
  %71 = phi i64 [ %34, %62 ], [ %34, %31 ], [ %68, %65 ], !dbg !3108
  %72 = phi i64 [ %33, %62 ], [ %33, %31 ], [ %69, %65 ], !dbg !3108
  call void @llvm.dbg.value(metadata i64 %72, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %71, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #39, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %72, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %71, metadata !3083, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3108
  %73 = tail call ptr @getutxent() #39, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %73, metadata !3084, metadata !DIExpression()), !dbg !3108
  %74 = icmp eq ptr %73, null, !dbg !3135
  br i1 %74, label %75, label %31, !dbg !3136, !llvm.loop !3193

75:                                               ; preds = %70, %23
  %76 = phi i64 [ 0, %23 ], [ %71, %70 ], !dbg !3108
  %77 = phi i64 [ 0, %23 ], [ %72, %70 ], !dbg !3108
  tail call void @endutxent() #39, !dbg !3194
  %78 = select i1 %20, i1 %26, i1 false, !dbg !3195
  br i1 %78, label %79, label %152, !dbg !3195

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.utmp_alloc, ptr %10, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !3196
  call void @llvm.dbg.value(metadata i64 0, metadata !3088, metadata !DIExpression()), !dbg !3198
  %82 = icmp sgt i64 %81, 0, !dbg !3199
  br i1 %82, label %83, label %120, !dbg !3200

83:                                               ; preds = %79
  %84 = load ptr, ptr %10, align 8, !tbaa !3201
  br label %85, !dbg !3200

85:                                               ; preds = %99, %83
  %86 = phi i64 [ 0, %83 ], [ %100, %99 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !3088, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata !DIArgList(ptr %84, i64 %86), metadata !3092, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3202
  %87 = getelementptr inbounds %struct.gl_utmp, ptr %84, i64 %86, i32 7, !dbg !3203
  %88 = load i16, ptr %87, align 8, !dbg !3203, !tbaa !1160
  %89 = icmp eq i16 %88, 2, !dbg !3203
  br i1 %89, label %90, label %99, !dbg !3205

90:                                               ; preds = %85
  call void @llvm.dbg.value(metadata !DIArgList(ptr %84, i64 %86), metadata !3092, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3202
  %91 = getelementptr inbounds %struct.gl_utmp, ptr %84, i64 %86, i32 4, !dbg !3206
  %92 = load i64, ptr %91, align 8, !dbg !3209, !tbaa !3210
  %93 = icmp slt i64 %92, 61, !dbg !3211
  %94 = icmp ne i64 %77, 0
  %95 = select i1 %93, i1 %94, i1 false, !dbg !3212
  br i1 %95, label %96, label %102, !dbg !3212

96:                                               ; preds = %90
  store i64 %77, ptr %91, align 8, !dbg !3213, !tbaa.struct !3214
  %97 = getelementptr inbounds i8, ptr %91, i64 8, !dbg !3213
  store i64 %76, ptr %97, align 8, !dbg !3213, !tbaa.struct !3215
  %98 = load i64, ptr %80, align 8, !tbaa !3196
  br label %102, !dbg !3216

99:                                               ; preds = %85
  %100 = add nuw nsw i64 %86, 1, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %100, metadata !3088, metadata !DIExpression()), !dbg !3198
  %101 = icmp eq i64 %100, %81, !dbg !3199
  br i1 %101, label %102, label %85, !dbg !3200, !llvm.loop !3218

102:                                              ; preds = %99, %96, %90
  %103 = phi i64 [ %81, %90 ], [ %98, %96 ], [ %81, %99 ]
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3220, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression()), !dbg !3232
  %104 = icmp sgt i64 %103, 0, !dbg !3233
  br i1 %104, label %105, label %120, !dbg !3234

105:                                              ; preds = %102
  %106 = load ptr, ptr %10, align 8, !tbaa !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata !DIArgList(ptr %106, i64 0), metadata !3227, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3235
  %107 = getelementptr inbounds %struct.gl_utmp, ptr %106, i64 0, i32 7, !dbg !3236
  %108 = load i16, ptr %107, align 8, !dbg !3236, !tbaa !1160
  %109 = icmp eq i16 %108, 2, !dbg !3236
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3232
  br i1 %109, label %152, label %110

110:                                              ; preds = %105, %114
  %111 = phi i64 [ %112, %114 ], [ 0, %105 ]
  call void @llvm.dbg.value(metadata i64 %111, metadata !3225, metadata !DIExpression()), !dbg !3232
  %112 = add nuw nsw i64 %111, 1, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %112, metadata !3225, metadata !DIExpression()), !dbg !3232
  %113 = icmp eq i64 %112, %103, !dbg !3233
  br i1 %113, label %120, label %114, !dbg !3234, !llvm.loop !3239

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64 %112, metadata !3225, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata !DIArgList(ptr %106, i64 %112), metadata !3227, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3235
  %115 = getelementptr inbounds %struct.gl_utmp, ptr %106, i64 %112, i32 7, !dbg !3236
  %116 = load i16, ptr %115, align 8, !dbg !3236, !tbaa !1160
  %117 = icmp eq i16 %116, 2, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %112, metadata !3225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3232
  br i1 %117, label %118, label %110, !llvm.loop !3241

118:                                              ; preds = %114
  %119 = icmp slt i64 %112, %103
  br i1 %119, label %152, label %120, !dbg !3242

120:                                              ; preds = %110, %118, %102, %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #39, !dbg !3243
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3244, metadata !DIExpression(), metadata !3069, metadata ptr %9, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %13, metadata !3253, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3254, metadata !DIExpression(), metadata !3292, metadata !857, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 0, metadata !3256, metadata !DIExpression()), !dbg !3293
  %121 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 12
  call void @llvm.dbg.value(metadata ptr @.str.5.83, metadata !3257, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #39, !dbg !3294
  %122 = call i32 @stat(ptr noundef nonnull @.str.5.83, ptr noundef nonnull %9) #39, !dbg !3295
  %123 = icmp slt i32 %122, 0, !dbg !3296
  call void @llvm.dbg.value(metadata ptr %9, metadata !3297, metadata !DIExpression()), !dbg !3305
  %124 = load i64, ptr %121, align 8
  call void @llvm.dbg.value(metadata i64 %124, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3307
  call void @llvm.dbg.value(metadata i64 poison, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3307
  %125 = icmp slt i64 %124, 1122334455
  %126 = select i1 %123, i1 true, i1 %125, !dbg !3308
  br i1 %126, label %127, label %146, !dbg !3308

127:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #39, !dbg !3309
  call void @llvm.dbg.value(metadata i64 1, metadata !3256, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr @.str.6.84, metadata !3257, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #39, !dbg !3294
  %128 = call i32 @stat(ptr noundef nonnull @.str.6.84, ptr noundef nonnull %9) #39, !dbg !3295
  %129 = icmp slt i32 %128, 0, !dbg !3296
  call void @llvm.dbg.value(metadata ptr %9, metadata !3297, metadata !DIExpression()), !dbg !3305
  %130 = load i64, ptr %121, align 8
  call void @llvm.dbg.value(metadata i64 %130, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3307
  call void @llvm.dbg.value(metadata i64 poison, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3307
  %131 = icmp slt i64 %130, 1122334455
  %132 = select i1 %129, i1 true, i1 %131, !dbg !3308
  br i1 %132, label %133, label %146, !dbg !3308

133:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #39, !dbg !3309
  call void @llvm.dbg.value(metadata i64 2, metadata !3256, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr @.str.7.85, metadata !3257, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #39, !dbg !3294
  %134 = call i32 @stat(ptr noundef nonnull @.str.7.85, ptr noundef nonnull %9) #39, !dbg !3295
  %135 = icmp slt i32 %134, 0, !dbg !3296
  call void @llvm.dbg.value(metadata ptr %9, metadata !3297, metadata !DIExpression()), !dbg !3305
  %136 = load i64, ptr %121, align 8
  call void @llvm.dbg.value(metadata i64 %136, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3307
  call void @llvm.dbg.value(metadata i64 poison, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3307
  %137 = icmp slt i64 %136, 1122334455
  %138 = select i1 %135, i1 true, i1 %137, !dbg !3308
  br i1 %138, label %139, label %146, !dbg !3308

139:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #39, !dbg !3309
  call void @llvm.dbg.value(metadata i64 3, metadata !3256, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3257, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #39, !dbg !3294
  %140 = call i32 @stat(ptr noundef nonnull @.str.80, ptr noundef nonnull %9) #39, !dbg !3295
  %141 = icmp slt i32 %140, 0, !dbg !3296
  call void @llvm.dbg.value(metadata ptr %9, metadata !3297, metadata !DIExpression()), !dbg !3305
  %142 = load i64, ptr %121, align 8
  call void @llvm.dbg.value(metadata i64 %142, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3307
  call void @llvm.dbg.value(metadata i64 poison, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3307
  %143 = icmp slt i64 %142, 1122334455
  %144 = select i1 %141, i1 true, i1 %143, !dbg !3308
  br i1 %144, label %145, label %146, !dbg !3308

145:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #39, !dbg !3309
  call void @llvm.dbg.value(metadata i64 4, metadata !3256, metadata !DIExpression()), !dbg !3293
  br label %151, !dbg !3310

146:                                              ; preds = %139, %133, %127, %120
  %147 = phi i64 [ %124, %120 ], [ %130, %127 ], [ %136, %133 ], [ %142, %139 ]
  %148 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 12, i32 1, !dbg !3311
  %149 = load i64, ptr %148, align 8, !dbg !3311, !tbaa.struct !3215
  call void @llvm.dbg.value(metadata i64 %149, metadata !3258, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3307
  store i64 %147, ptr %13, align 8, !dbg !3312, !tbaa.struct !3214, !DIAssignID !3315
  call void @llvm.dbg.assign(metadata i64 %147, metadata !3096, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3315, metadata ptr %13, metadata !DIExpression()), !dbg !3111
  %150 = getelementptr inbounds i8, ptr %13, i64 8, !dbg !3312
  store i64 %149, ptr %150, align 8, !dbg !3312, !tbaa.struct !3215, !DIAssignID !3316
  call void @llvm.dbg.assign(metadata i64 %149, metadata !3096, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3316, metadata ptr %150, metadata !DIExpression()), !dbg !3111
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #39, !dbg !3309
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #39, !dbg !3317
  call fastcc void @add_utmp(ptr dead_on_unwind nonnull writable sret(%struct.utmp_alloc) align 8 %14, ptr noundef nonnull byval(%struct.utmp_alloc) align 8 %10, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef signext 2, ptr noundef nonnull byval(%struct.timespec) align 8 %13, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !3317, !tbaa.struct !3173, !DIAssignID !3318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3075, metadata !DIExpression(), metadata !3318, metadata ptr %10, metadata !DIExpression()), !dbg !3108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #39, !dbg !3317
  br label %151, !dbg !3319

151:                                              ; preds = %146, %145
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #39, !dbg !3320
  br label %152, !dbg !3321

152:                                              ; preds = %151, %118, %105, %75
  br i1 %20, label %153, label %324, !dbg !3322

153:                                              ; preds = %152
  call void @llvm.dbg.value(metadata ptr %0, metadata !3126, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3129, metadata !DIExpression()), !dbg !3323
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #40, !dbg !3325
  %155 = icmp eq i32 %154, 0, !dbg !3326
  br i1 %155, label %156, label %324, !dbg !3327

156:                                              ; preds = %153
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3220, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression()), !dbg !3330
  %157 = getelementptr inbounds %struct.utmp_alloc, ptr %10, i64 0, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !3196
  %159 = icmp sgt i64 %158, 0, !dbg !3331
  br i1 %159, label %160, label %175, !dbg !3332

160:                                              ; preds = %156
  %161 = load ptr, ptr %10, align 8, !tbaa !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata !DIArgList(ptr %161, i64 0), metadata !3227, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3333
  %162 = getelementptr inbounds %struct.gl_utmp, ptr %161, i64 0, i32 7, !dbg !3334
  %163 = load i16, ptr %162, align 8, !dbg !3334, !tbaa !1160
  %164 = icmp eq i16 %163, 2, !dbg !3334
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3330
  br i1 %164, label %324, label %165

165:                                              ; preds = %160, %169
  %166 = phi i64 [ %167, %169 ], [ 0, %160 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !3225, metadata !DIExpression()), !dbg !3330
  %167 = add nuw nsw i64 %166, 1, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %167, metadata !3225, metadata !DIExpression()), !dbg !3330
  %168 = icmp eq i64 %167, %158, !dbg !3331
  br i1 %168, label %175, label %169, !dbg !3332, !llvm.loop !3336

169:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i64 %167, metadata !3225, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata !DIArgList(ptr %161, i64 %167), metadata !3227, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3333
  %170 = getelementptr inbounds %struct.gl_utmp, ptr %161, i64 %167, i32 7, !dbg !3334
  %171 = load i16, ptr %170, align 8, !dbg !3334, !tbaa !1160
  %172 = icmp eq i16 %171, 2, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %167, metadata !3225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3330
  br i1 %172, label %173, label %165, !llvm.loop !3338

173:                                              ; preds = %169
  %174 = icmp slt i64 %167, %158
  br i1 %174, label %324, label %175, !dbg !3339

175:                                              ; preds = %165, %173, %156
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #39, !dbg !3340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3341, metadata !DIExpression(), metadata !3067, metadata ptr %7, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3345, metadata !DIExpression(), metadata !3068, metadata ptr %8, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %15, metadata !3344, metadata !DIExpression()), !dbg !3348
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #39, !dbg !3352
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3353, metadata !DIExpression(), metadata !3065, metadata ptr %5, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3407, metadata !DIExpression(), metadata !3066, metadata ptr %6, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata ptr %7, metadata !3358, metadata !DIExpression()), !dbg !3440
  %176 = call i32 @clock_gettime(i32 noundef 7, ptr noundef nonnull %7) #39, !dbg !3441
  %177 = icmp sgt i32 %176, -1, !dbg !3443
  br i1 %177, label %305, label %178, !dbg !3444

178:                                              ; preds = %175
  %179 = call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.8.88, ptr noundef nonnull @.str.9.89) #39, !dbg !3445
  call void @llvm.dbg.value(metadata ptr %179, metadata !3359, metadata !DIExpression()), !dbg !3440
  %180 = icmp eq ptr %179, null, !dbg !3446
  br i1 %180, label %298, label %181, !dbg !3447

181:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %5) #39, !dbg !3448
  %182 = call i64 @fread_unlocked(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 32, ptr noundef nonnull %179), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %182, metadata !3394, metadata !DIExpression()), !dbg !3438
  %183 = call i32 @rpl_fclose(ptr noundef nonnull %179) #39, !dbg !3450
  %184 = icmp eq i64 %182, 0, !dbg !3451
  br i1 %184, label %294, label %185, !dbg !3452

185:                                              ; preds = %181
  %186 = getelementptr inbounds [33 x i8], ptr %5, i64 0, i64 %182, !dbg !3453
  store i8 0, ptr %186, align 1, !dbg !3454, !tbaa !895
  call void @llvm.dbg.value(metadata i64 0, metadata !3395, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata ptr %5, metadata !3400, metadata !DIExpression()), !dbg !3455
  %187 = load i8, ptr %5, align 16, !dbg !3456, !tbaa !895
  %188 = add i8 %187, -48, !dbg !3459
  %189 = icmp ult i8 %188, 10, !dbg !3459
  br i1 %189, label %190, label %294, !dbg !3459

190:                                              ; preds = %185, %190
  %191 = phi i8 [ %199, %190 ], [ %187, %185 ]
  %192 = phi ptr [ %198, %190 ], [ %5, %185 ]
  %193 = phi i64 [ %197, %190 ], [ 0, %185 ]
  call void @llvm.dbg.value(metadata ptr %192, metadata !3400, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %193, metadata !3395, metadata !DIExpression()), !dbg !3455
  %194 = mul nsw i64 %193, 10, !dbg !3460
  %195 = add nsw i8 %191, -48, !dbg !3461
  %196 = zext nneg i8 %195 to i64, !dbg !3461
  %197 = add nsw i64 %194, %196, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %197, metadata !3395, metadata !DIExpression()), !dbg !3455
  %198 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !3463
  call void @llvm.dbg.value(metadata ptr %198, metadata !3400, metadata !DIExpression()), !dbg !3455
  %199 = load i8, ptr %198, align 1, !dbg !3456, !tbaa !895
  %200 = add i8 %199, -48, !dbg !3459
  %201 = icmp ult i8 %200, 10, !dbg !3459
  br i1 %201, label %190, label %202, !dbg !3459, !llvm.loop !3464

202:                                              ; preds = %190
  %203 = icmp ult ptr %5, %198, !dbg !3467
  br i1 %203, label %204, label %294, !dbg !3468

204:                                              ; preds = %202
  call void @llvm.dbg.value(metadata i64 0, metadata !3401, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata ptr %198, metadata !3400, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3455
  %205 = icmp eq i8 %199, 46, !dbg !3470
  br i1 %205, label %206, label %295, !dbg !3471

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, ptr %192, i64 2, !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 0, metadata !3401, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata ptr %207, metadata !3400, metadata !DIExpression()), !dbg !3455
  %208 = load i8, ptr %207, align 1, !dbg !3474, !tbaa !895
  %209 = add i8 %208, -48, !dbg !3476
  %210 = icmp ult i8 %209, 10, !dbg !3476
  %211 = zext i1 %210 to i64, !dbg !3476
  %212 = getelementptr inbounds i8, ptr %207, i64 %211, !dbg !3476
  %213 = select i1 %210, i8 %209, i8 0, !dbg !3476
  %214 = sext i8 %213 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %212, metadata !3400, metadata !DIExpression()), !dbg !3455
  %215 = and i64 %214, 4294967295
  call void @llvm.dbg.value(metadata i32 1, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %215, metadata !3401, metadata !DIExpression()), !dbg !3469
  %216 = mul nuw nsw i64 %215, 10, !dbg !3477
  %217 = load i8, ptr %212, align 1, !dbg !3474, !tbaa !895
  %218 = add i8 %217, -48, !dbg !3476
  %219 = icmp ult i8 %218, 10, !dbg !3476
  %220 = zext i1 %219 to i64, !dbg !3476
  %221 = getelementptr inbounds i8, ptr %212, i64 %220, !dbg !3476
  %222 = select i1 %219, i8 %218, i8 0, !dbg !3476
  %223 = sext i8 %222 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %221, metadata !3400, metadata !DIExpression()), !dbg !3455
  %224 = and i64 %223, 4294967295
  %225 = add nuw nsw i64 %224, %216, !dbg !3478
  call void @llvm.dbg.value(metadata i32 2, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %225, metadata !3401, metadata !DIExpression()), !dbg !3469
  %226 = mul nuw nsw i64 %225, 10, !dbg !3477
  %227 = load i8, ptr %221, align 1, !dbg !3474, !tbaa !895
  %228 = add i8 %227, -48, !dbg !3476
  %229 = icmp ult i8 %228, 10, !dbg !3476
  %230 = zext i1 %229 to i64, !dbg !3476
  %231 = getelementptr inbounds i8, ptr %221, i64 %230, !dbg !3476
  %232 = select i1 %229, i8 %228, i8 0, !dbg !3476
  %233 = sext i8 %232 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %231, metadata !3400, metadata !DIExpression()), !dbg !3455
  %234 = and i64 %233, 4294967295
  %235 = add nuw nsw i64 %226, %234, !dbg !3478
  call void @llvm.dbg.value(metadata i32 3, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %235, metadata !3401, metadata !DIExpression()), !dbg !3469
  %236 = mul nuw nsw i64 %235, 10, !dbg !3477
  %237 = load i8, ptr %231, align 1, !dbg !3474, !tbaa !895
  %238 = add i8 %237, -48, !dbg !3476
  %239 = icmp ult i8 %238, 10, !dbg !3476
  %240 = zext i1 %239 to i64, !dbg !3476
  %241 = getelementptr inbounds i8, ptr %231, i64 %240, !dbg !3476
  %242 = select i1 %239, i8 %238, i8 0, !dbg !3476
  %243 = sext i8 %242 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %241, metadata !3400, metadata !DIExpression()), !dbg !3455
  %244 = and i64 %243, 4294967295
  %245 = add nuw nsw i64 %236, %244, !dbg !3478
  call void @llvm.dbg.value(metadata i32 4, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %245, metadata !3401, metadata !DIExpression()), !dbg !3469
  %246 = mul nuw nsw i64 %245, 10, !dbg !3477
  %247 = load i8, ptr %241, align 1, !dbg !3474, !tbaa !895
  %248 = add i8 %247, -48, !dbg !3476
  %249 = icmp ult i8 %248, 10, !dbg !3476
  %250 = zext i1 %249 to i64, !dbg !3476
  %251 = getelementptr inbounds i8, ptr %241, i64 %250, !dbg !3476
  %252 = select i1 %249, i8 %248, i8 0, !dbg !3476
  %253 = sext i8 %252 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %251, metadata !3400, metadata !DIExpression()), !dbg !3455
  %254 = and i64 %253, 4294967295
  %255 = add nuw nsw i64 %246, %254, !dbg !3478
  call void @llvm.dbg.value(metadata i32 5, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %255, metadata !3401, metadata !DIExpression()), !dbg !3469
  %256 = mul nuw nsw i64 %255, 10, !dbg !3477
  %257 = load i8, ptr %251, align 1, !dbg !3474, !tbaa !895
  %258 = add i8 %257, -48, !dbg !3476
  %259 = icmp ult i8 %258, 10, !dbg !3476
  %260 = zext i1 %259 to i64, !dbg !3476
  %261 = getelementptr inbounds i8, ptr %251, i64 %260, !dbg !3476
  %262 = select i1 %259, i8 %258, i8 0, !dbg !3476
  %263 = sext i8 %262 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %261, metadata !3400, metadata !DIExpression()), !dbg !3455
  %264 = and i64 %263, 4294967295
  %265 = add nuw nsw i64 %256, %264, !dbg !3478
  call void @llvm.dbg.value(metadata i32 6, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %265, metadata !3401, metadata !DIExpression()), !dbg !3469
  %266 = mul nuw nsw i64 %265, 10, !dbg !3477
  %267 = load i8, ptr %261, align 1, !dbg !3474, !tbaa !895
  %268 = add i8 %267, -48, !dbg !3476
  %269 = icmp ult i8 %268, 10, !dbg !3476
  %270 = zext i1 %269 to i64, !dbg !3476
  %271 = getelementptr inbounds i8, ptr %261, i64 %270, !dbg !3476
  %272 = select i1 %269, i8 %268, i8 0, !dbg !3476
  %273 = sext i8 %272 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %271, metadata !3400, metadata !DIExpression()), !dbg !3455
  %274 = and i64 %273, 4294967295
  %275 = add nuw nsw i64 %266, %274, !dbg !3478
  call void @llvm.dbg.value(metadata i32 7, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %275, metadata !3401, metadata !DIExpression()), !dbg !3469
  %276 = mul nuw nsw i64 %275, 10, !dbg !3477
  %277 = load i8, ptr %271, align 1, !dbg !3474, !tbaa !895
  %278 = add i8 %277, -48, !dbg !3476
  %279 = icmp ult i8 %278, 10, !dbg !3476
  %280 = zext i1 %279 to i64, !dbg !3476
  %281 = getelementptr inbounds i8, ptr %271, i64 %280, !dbg !3476
  %282 = select i1 %279, i8 %278, i8 0, !dbg !3476
  %283 = sext i8 %282 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %281, metadata !3400, metadata !DIExpression()), !dbg !3455
  %284 = and i64 %283, 4294967295
  %285 = add nuw nsw i64 %276, %284, !dbg !3478
  call void @llvm.dbg.value(metadata i32 8, metadata !3404, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %285, metadata !3401, metadata !DIExpression()), !dbg !3469
  %286 = mul nuw nsw i64 %285, 10, !dbg !3477
  %287 = load i8, ptr %281, align 1, !dbg !3474, !tbaa !895
  %288 = add i8 %287, -48, !dbg !3476
  %289 = icmp ult i8 %288, 10, !dbg !3476
  %290 = select i1 %289, i8 %288, i8 0, !dbg !3476
  %291 = sext i8 %290 to i64, !dbg !3476
  call void @llvm.dbg.value(metadata !DIArgList(ptr %281, i1 %289), metadata !3400, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3455
  %292 = and i64 %291, 4294967295
  %293 = add nuw nsw i64 %286, %292, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %293, metadata !3401, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 9, metadata !3404, metadata !DIExpression()), !dbg !3473
  br label %295, !dbg !3479

294:                                              ; preds = %202, %185, %181
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #39, !dbg !3480
  br label %298

295:                                              ; preds = %206, %204
  %296 = phi i64 [ 0, %204 ], [ %293, %206 ], !dbg !3481
  call void @llvm.dbg.value(metadata i64 %296, metadata !3401, metadata !DIExpression()), !dbg !3469
  store i64 %197, ptr %7, align 8, !dbg !3479, !tbaa !3145, !DIAssignID !3482
  call void @llvm.dbg.assign(metadata i64 %197, metadata !3341, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3482, metadata ptr %7, metadata !DIExpression()), !dbg !3348
  %297 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3483
  store i64 %296, ptr %297, align 8, !dbg !3484, !tbaa !3151, !DIAssignID !3485
  call void @llvm.dbg.assign(metadata i64 %296, metadata !3341, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3485, metadata ptr %297, metadata !DIExpression()), !dbg !3348
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #39, !dbg !3480
  br label %305

298:                                              ; preds = %294, %178
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #39, !dbg !3486
  %299 = call i32 @sysinfo(ptr noundef nonnull %6) #39, !dbg !3487
  %300 = icmp sgt i32 %299, -1, !dbg !3489
  br i1 %300, label %301, label %304, !dbg !3490

301:                                              ; preds = %298
  %302 = load i64, ptr %6, align 8, !dbg !3491, !tbaa !3493
  store i64 %302, ptr %7, align 8, !dbg !3495, !tbaa !3145, !DIAssignID !3496
  call void @llvm.dbg.assign(metadata i64 %302, metadata !3341, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3496, metadata ptr %7, metadata !DIExpression()), !dbg !3348
  %303 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3497
  store i64 0, ptr %303, align 8, !dbg !3498, !tbaa !3151, !DIAssignID !3499
  call void @llvm.dbg.assign(metadata i64 0, metadata !3341, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3499, metadata ptr %303, metadata !DIExpression()), !dbg !3348
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #39, !dbg !3500
  br label %305, !dbg !3501

304:                                              ; preds = %298
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #39, !dbg !3500
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #39, !dbg !3502
  br label %323, !dbg !3503

305:                                              ; preds = %301, %295, %175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #39, !dbg !3504
  %306 = call i32 @timespec_get(ptr noundef nonnull %8, i32 noundef 1) #39, !dbg !3505
  %307 = icmp eq i32 %306, 0, !dbg !3505
  br i1 %307, label %308, label %309, !dbg !3507

308:                                              ; preds = %305
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #39, !dbg !3508
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #39, !dbg !3502
  br label %323, !dbg !3503

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.timespec, ptr %8, i64 0, i32 1, !dbg !3509
  %311 = load i64, ptr %310, align 8, !dbg !3509, !tbaa !3151
  %312 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3511
  %313 = load i64, ptr %312, align 8, !dbg !3511, !tbaa !3151
  %314 = icmp slt i64 %311, %313, !dbg !3512
  %315 = load i64, ptr %8, align 8, !dbg !3513, !tbaa !3145
  %316 = add nsw i64 %311, 1000000000, !dbg !3514
  %317 = select i1 %314, i64 %316, i64 %311, !dbg !3514
  %318 = sext i1 %314 to i64, !dbg !3514
  %319 = add nsw i64 %315, %318, !dbg !3514
  %320 = load i64, ptr %7, align 8, !dbg !3515, !tbaa !3145
  %321 = sub i64 %319, %320, !dbg !3513
  store i64 %321, ptr %8, align 8, !dbg !3513, !tbaa !3145, !DIAssignID !3516
  call void @llvm.dbg.assign(metadata i64 %321, metadata !3345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3516, metadata ptr %8, metadata !DIExpression()), !dbg !3351
  %322 = sub nsw i64 %317, %313, !dbg !3517
  store i64 %322, ptr %310, align 8, !dbg !3517, !tbaa !3151, !DIAssignID !3518
  call void @llvm.dbg.assign(metadata i64 %322, metadata !3345, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3518, metadata ptr %310, metadata !DIExpression()), !dbg !3351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !dbg !3519, !tbaa.struct !3214, !DIAssignID !3520
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3099, metadata !DIExpression(), metadata !3520, metadata ptr %15, metadata !DIExpression()), !dbg !3112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #39, !dbg !3508
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #39, !dbg !3502
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #39, !dbg !3521
  call fastcc void @add_utmp(ptr dead_on_unwind nonnull writable sret(%struct.utmp_alloc) align 8 %16, ptr noundef nonnull byval(%struct.utmp_alloc) align 8 %10, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef signext 2, ptr noundef nonnull byval(%struct.timespec) align 8 %15, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !dbg !3521, !tbaa.struct !3173, !DIAssignID !3522
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3075, metadata !DIExpression(), metadata !3522, metadata ptr %10, metadata !DIExpression()), !dbg !3108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #39, !dbg !3521
  br label %323, !dbg !3523

323:                                              ; preds = %309, %308, %304
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #39, !dbg !3524
  br label %324, !dbg !3525

324:                                              ; preds = %323, %173, %160, %153, %152
  %325 = load ptr, ptr %10, align 8, !dbg !3526
  call void @llvm.dbg.value(metadata ptr %325, metadata !3531, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3536
  %326 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !3526
  %327 = load i64, ptr %326, align 8, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %327, metadata !3531, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3536
  call void @llvm.dbg.value(metadata i64 poison, metadata !3531, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3536
  %328 = getelementptr inbounds i8, ptr %10, i64 24, !dbg !3526
  %329 = load i64, ptr %328, align 8, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %329, metadata !3531, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3536
  %330 = getelementptr inbounds i8, ptr %325, i64 %329, !dbg !3537
  call void @llvm.dbg.value(metadata ptr %330, metadata !3532, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 0, metadata !3533, metadata !DIExpression()), !dbg !3538
  %331 = icmp sgt i64 %327, 0, !dbg !3539
  br i1 %331, label %332, label %352, !dbg !3541

332:                                              ; preds = %324, %332
  %333 = phi i64 [ %350, %332 ], [ 0, %324 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3533, metadata !DIExpression()), !dbg !3538
  %334 = getelementptr inbounds %struct.gl_utmp, ptr %325, i64 %333, !dbg !3542
  %335 = load ptr, ptr %334, align 8, !dbg !3544, !tbaa !1156, !noalias !3545
  %336 = ptrtoint ptr %335 to i64, !dbg !3548
  %337 = getelementptr inbounds i8, ptr %330, i64 %336, !dbg !3549
  store ptr %337, ptr %334, align 8, !dbg !3550, !tbaa !1156, !noalias !3545
  %338 = getelementptr inbounds %struct.gl_utmp, ptr %325, i64 %333, i32 1, !dbg !3551
  %339 = load ptr, ptr %338, align 8, !dbg !3551, !tbaa !3552, !noalias !3545
  %340 = ptrtoint ptr %339 to i64, !dbg !3553
  %341 = getelementptr inbounds i8, ptr %330, i64 %340, !dbg !3554
  store ptr %341, ptr %338, align 8, !dbg !3555, !tbaa !3552, !noalias !3545
  %342 = getelementptr inbounds %struct.gl_utmp, ptr %325, i64 %333, i32 2, !dbg !3556
  %343 = load ptr, ptr %342, align 8, !dbg !3556, !tbaa !3557, !noalias !3545
  %344 = ptrtoint ptr %343 to i64, !dbg !3558
  %345 = getelementptr inbounds i8, ptr %330, i64 %344, !dbg !3559
  store ptr %345, ptr %342, align 8, !dbg !3560, !tbaa !3557, !noalias !3545
  %346 = getelementptr inbounds %struct.gl_utmp, ptr %325, i64 %333, i32 3, !dbg !3561
  %347 = load ptr, ptr %346, align 8, !dbg !3561, !tbaa !3562, !noalias !3545
  %348 = ptrtoint ptr %347 to i64, !dbg !3563
  %349 = getelementptr inbounds i8, ptr %330, i64 %348, !dbg !3564
  store ptr %349, ptr %346, align 8, !dbg !3565, !tbaa !3562, !noalias !3545
  %350 = add nuw nsw i64 %333, 1, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %350, metadata !3533, metadata !DIExpression()), !dbg !3538
  %351 = icmp eq i64 %350, %327, !dbg !3539
  br i1 %351, label %352, label %332, !dbg !3541, !llvm.loop !3567

352:                                              ; preds = %332, %324
  call void @llvm.dbg.assign(metadata ptr %325, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3569, metadata ptr %10, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.assign(metadata i64 %327, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3570, metadata ptr %326, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.assign(metadata i64 poison, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64), metadata !3571, metadata ptr %10, metadata !DIExpression(DW_OP_plus_uconst, 16)), !dbg !3108
  call void @llvm.dbg.assign(metadata i64 %329, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64), metadata !3572, metadata ptr %328, metadata !DIExpression()), !dbg !3108
  store i64 %327, ptr %1, align 8, !dbg !3573, !tbaa !1123
  store ptr %325, ptr %2, align 8, !dbg !3574, !tbaa !829
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #39, !dbg !3575
  br label %353

353:                                              ; preds = %22, %352
  ret i32 0, !dbg !3576
}

declare !dbg !3577 i32 @utmpxname(ptr noundef) local_unnamed_addr #3

declare !dbg !3581 void @setutxent() local_unnamed_addr #3

declare !dbg !3582 ptr @getutxent() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3586 i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @add_utmp(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.utmp_alloc) align 8 %0, ptr noundef byval(%struct.utmp_alloc) align 8 %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, ptr nocapture noundef readonly %7, i64 noundef %8, ptr nocapture noundef readonly %9, i64 noundef %10, i32 noundef %11, i16 noundef signext %12, ptr nocapture noundef readonly byval(%struct.timespec) align 8 %13, i64 noundef %14, i32 noundef %15, i32 noundef %16) unnamed_addr #10 !dbg !3589 {
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3593, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3594, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3596, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3597, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3598, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3599, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3600, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3601, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3602, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3603, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i16 %12, metadata !3604, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3605, metadata !DIExpression()), !dbg !3624
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3606, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !3607, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !3608, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.dbg.value(metadata i32 72, metadata !3609, metadata !DIExpression()), !dbg !3623
  %18 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 3, !dbg !3625
  %19 = load i64, ptr %18, align 8, !dbg !3625, !tbaa !3626
  %20 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 1, !dbg !3627
  %21 = load i64, ptr %20, align 8, !dbg !3627, !tbaa !3196
  %22 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 2, !dbg !3628
  %23 = load i64, ptr %22, align 8, !dbg !3628, !tbaa !3629
  %24 = mul i64 %21, -72
  %25 = sub i64 %19, %23, !dbg !3630
  %26 = add i64 %25, %24, !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !3610, metadata !DIExpression()), !dbg !3623
  %27 = add i64 %6, %4, !dbg !3632
  %28 = add i64 %27, %8, !dbg !3633
  %29 = add i64 %28, %10, !dbg !3634
  %30 = add i64 %29, 4, !dbg !3634
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !3611, metadata !DIExpression()), !dbg !3623
  %31 = add i64 %29, 76, !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3612, metadata !DIExpression()), !dbg !3623
  %32 = icmp slt i64 %26, %31, !dbg !3636
  br i1 %32, label %33, label %45, !dbg !3637

33:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !3613, metadata !DIExpression()), !dbg !3638
  %34 = load ptr, ptr %1, align 8, !dbg !3639, !tbaa !3201
  %35 = sub nsw i64 %31, %26, !dbg !3640
  %36 = call nonnull ptr @xpalloc(ptr noundef %34, ptr noundef nonnull %18, i64 noundef %35, i64 noundef -1, i64 noundef 1) #39, !dbg !3641
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !3616, metadata !DIExpression()), !dbg !3638
  %37 = load i64, ptr %18, align 8, !dbg !3642, !tbaa !3626
  %38 = load i64, ptr %22, align 8, !dbg !3643, !tbaa !3629
  %39 = sub nsw i64 %37, %38, !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !3617, metadata !DIExpression()), !dbg !3638
  store ptr %36, ptr %1, align 8, !dbg !3645, !tbaa !3201
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !3618, metadata !DIExpression()), !dbg !3638
  %40 = getelementptr inbounds i8, ptr %36, i64 %39, !dbg !3646
  %41 = getelementptr inbounds i8, ptr %36, i64 %25, !dbg !3647
  call void @llvm.dbg.value(metadata ptr %40, metadata !3648, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata ptr %41, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %38, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %40, ptr noundef nonnull align 1 %41, i64 noundef %38, i1 noundef false) #39, !dbg !3657
  %42 = load i64, ptr %20, align 8, !dbg !3658, !tbaa !3196
  %43 = load i64, ptr %18, align 8, !dbg !3659, !tbaa !3626
  %44 = load i64, ptr %22, align 8, !dbg !3660, !tbaa !3629
  br label %45, !dbg !3661

45:                                               ; preds = %33, %17
  %46 = phi i64 [ %44, %33 ], [ %23, %17 ], !dbg !3660
  %47 = phi i64 [ %43, %33 ], [ %19, %17 ], !dbg !3659
  %48 = phi i64 [ %42, %33 ], [ %21, %17 ], !dbg !3658
  %49 = load ptr, ptr %1, align 8, !dbg !3662, !tbaa !3201
  %50 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, !dbg !3663
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !3619, metadata !DIExpression()), !dbg !3623
  %51 = getelementptr inbounds i8, ptr %49, i64 %47, !dbg !3664
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !3620, metadata !DIExpression()), !dbg !3623
  %52 = sub i64 0, %46, !dbg !3665
  %53 = getelementptr inbounds i8, ptr %51, i64 %52, !dbg !3665
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !3621, metadata !DIExpression()), !dbg !3623
  %54 = getelementptr inbounds i8, ptr %53, i64 -1, !dbg !3666
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !3621, metadata !DIExpression()), !dbg !3623
  store i8 0, ptr %54, align 1, !dbg !3667, !tbaa !895
  %55 = sub i64 0, %4, !dbg !3668
  %56 = getelementptr inbounds i8, ptr %54, i64 %55, !dbg !3668
  call void @llvm.dbg.value(metadata ptr %56, metadata !3669, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %3, metadata !3675, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %4, metadata !3676, metadata !DIExpression()), !dbg !3677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %56, ptr noundef nonnull align 1 %3, i64 noundef %4, i1 noundef false) #39, !dbg !3679
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !3621, metadata !DIExpression()), !dbg !3623
  store ptr %56, ptr %50, align 8, !dbg !3680, !tbaa !1156
  %57 = getelementptr inbounds i8, ptr %56, i64 -1, !dbg !3681
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !3621, metadata !DIExpression()), !dbg !3623
  store i8 0, ptr %57, align 1, !dbg !3682, !tbaa !895
  %58 = sub i64 0, %6, !dbg !3683
  %59 = getelementptr inbounds i8, ptr %57, i64 %58, !dbg !3683
  call void @llvm.dbg.value(metadata ptr %59, metadata !3669, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %5, metadata !3675, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %6, metadata !3676, metadata !DIExpression()), !dbg !3684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %59, ptr noundef nonnull align 1 %5, i64 noundef %6, i1 noundef false) #39, !dbg !3686
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !3621, metadata !DIExpression()), !dbg !3623
  %60 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 1, !dbg !3687
  store ptr %59, ptr %60, align 8, !dbg !3688, !tbaa !3552
  %61 = getelementptr inbounds i8, ptr %59, i64 -1, !dbg !3689
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3621, metadata !DIExpression()), !dbg !3623
  store i8 0, ptr %61, align 1, !dbg !3690, !tbaa !895
  %62 = sub i64 0, %8, !dbg !3691
  %63 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !3691
  call void @llvm.dbg.value(metadata ptr %63, metadata !3669, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata ptr %7, metadata !3675, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %8, metadata !3676, metadata !DIExpression()), !dbg !3692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %63, ptr noundef nonnull align 1 %7, i64 noundef %8, i1 noundef false) #39, !dbg !3694
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !3621, metadata !DIExpression()), !dbg !3623
  %64 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 2, !dbg !3695
  store ptr %63, ptr %64, align 8, !dbg !3696, !tbaa !3557
  %65 = getelementptr inbounds i8, ptr %63, i64 -1, !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !3621, metadata !DIExpression()), !dbg !3623
  store i8 0, ptr %65, align 1, !dbg !3698, !tbaa !895
  %66 = sub i64 0, %10, !dbg !3699
  %67 = getelementptr inbounds i8, ptr %65, i64 %66, !dbg !3699
  call void @llvm.dbg.value(metadata ptr %67, metadata !3669, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %9, metadata !3675, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %10, metadata !3676, metadata !DIExpression()), !dbg !3700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %67, ptr noundef nonnull align 1 %9, i64 noundef %10, i1 noundef false) #39, !dbg !3702
  %68 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 3, !dbg !3703
  store ptr %67, ptr %68, align 8, !dbg !3704, !tbaa !3562
  %69 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 4, !dbg !3705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !dbg !3706, !tbaa.struct !3214
  %70 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 5, !dbg !3707
  store i32 %11, ptr %70, align 8, !dbg !3708, !tbaa !3709
  %71 = trunc i64 %14 to i32, !dbg !3710
  %72 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 6, !dbg !3711
  store i32 %71, ptr %72, align 4, !dbg !3712, !tbaa !3713
  %73 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 7, !dbg !3714
  store i16 %12, ptr %73, align 8, !dbg !3715, !tbaa !1160
  %74 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 8, !dbg !3716
  store i32 %15, ptr %74, align 4, !dbg !3717, !tbaa !3718
  %75 = getelementptr inbounds %struct.gl_utmp, ptr %49, i64 %48, i32 8, i32 1, !dbg !3719
  store i32 %16, ptr %75, align 4, !dbg !3720, !tbaa !3721
  call void @llvm.dbg.value(metadata ptr %50, metadata !3722, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 %2, metadata !3727, metadata !DIExpression()), !dbg !3730
  %76 = icmp eq i16 %12, 2, !dbg !3733
  call void @llvm.dbg.value(metadata i1 %76, metadata !3728, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3730
  %77 = and i32 %2, 4, !dbg !3734
  %78 = icmp eq i32 %77, 0, !dbg !3734
  %79 = or i1 %78, %76, !dbg !3736
  br i1 %79, label %80, label %121, !dbg !3736

80:                                               ; preds = %45
  %81 = and i32 %2, 8, !dbg !3737
  %82 = icmp ne i32 %81, 0, !dbg !3737
  %83 = and i1 %82, %76, !dbg !3739
  br i1 %83, label %121, label %84, !dbg !3739

84:                                               ; preds = %80
  %85 = load ptr, ptr %50, align 8, !dbg !3740, !tbaa !1156
  %86 = load i8, ptr %85, align 1, !dbg !3740, !tbaa !895
  %87 = icmp ne i8 %86, 0, !dbg !3740
  %88 = icmp eq i16 %12, 7
  %89 = and i1 %88, %87, !dbg !3740
  call void @llvm.dbg.value(metadata i1 %89, metadata !3729, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3730
  %90 = and i32 %2, 2, !dbg !3741
  %91 = icmp eq i32 %90, 0, !dbg !3741
  %92 = select i1 %91, i1 true, i1 %89, !dbg !3743
  br i1 %92, label %93, label %121, !dbg !3743

93:                                               ; preds = %84
  %94 = and i32 %2, 1, !dbg !3744
  %95 = icmp ne i32 %94, 0, !dbg !3744
  %96 = select i1 %95, i1 %89, i1 false, !dbg !3746
  %97 = icmp sgt i32 %11, 0
  %98 = and i1 %96, %97, !dbg !3746
  br i1 %98, label %99, label %106, !dbg !3746

99:                                               ; preds = %93
  %100 = call i32 @kill(i32 noundef %11, i32 noundef 0) #39, !dbg !3747
  %101 = icmp slt i32 %100, 0, !dbg !3748
  br i1 %101, label %102, label %106, !dbg !3749

102:                                              ; preds = %99
  %103 = tail call ptr @__errno_location() #42, !dbg !3750
  %104 = load i32, ptr %103, align 4, !dbg !3750, !tbaa !886
  %105 = icmp eq i32 %104, 3, !dbg !3751
  br i1 %105, label %121, label %106, !dbg !3752

106:                                              ; preds = %102, %99, %93
  %107 = ptrtoint ptr %51 to i64, !dbg !3753
  %108 = load <2 x ptr>, ptr %50, align 8, !dbg !3755, !tbaa !829
  %109 = ptrtoint <2 x ptr> %108 to <2 x i64>, !dbg !3753
  %110 = insertelement <2 x i64> poison, i64 %107, i64 0, !dbg !3753
  %111 = shufflevector <2 x i64> %110, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !3753
  %112 = sub <2 x i64> %109, %111, !dbg !3753
  %113 = inttoptr <2 x i64> %112 to <2 x ptr>, !dbg !3756
  store <2 x ptr> %113, ptr %50, align 8, !dbg !3757, !tbaa !829
  %114 = load <2 x ptr>, ptr %64, align 8, !dbg !3758, !tbaa !829
  %115 = ptrtoint <2 x ptr> %114 to <2 x i64>, !dbg !3759
  %116 = sub <2 x i64> %115, %111, !dbg !3759
  %117 = inttoptr <2 x i64> %116 to <2 x ptr>, !dbg !3760
  store <2 x ptr> %117, ptr %64, align 8, !dbg !3761, !tbaa !829
  %118 = load <2 x i64>, ptr %20, align 8, !dbg !3762, !tbaa !1123
  %119 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %30, i64 1, !dbg !3762
  %120 = add nsw <2 x i64> %119, %118, !dbg !3762
  store <2 x i64> %120, ptr %20, align 8, !dbg !3762, !tbaa !1123
  br label %121, !dbg !3763

121:                                              ; preds = %102, %84, %80, %45, %106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !3764, !tbaa.struct !3173
  ret void, !dbg !3765
}

declare !dbg !3766 void @endutxent() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3767 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3773 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3780 i32 @sysinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3785 i32 @timespec_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #25

; Function Attrs: nounwind
declare !dbg !3788 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3792 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3831, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3832, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3833, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3834, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3835, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3836, metadata !DIExpression()), !dbg !3837
  %7 = icmp eq ptr %1, null, !dbg !3838
  br i1 %7, label %10, label %8, !dbg !3840

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3841
  br label %12, !dbg !3841

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.91, ptr noundef %2, ptr noundef %3) #39, !dbg !3842
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.3.93, i32 noundef 5) #39, !dbg !3843
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3843
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3844
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.5.95, i32 noundef 5) #39, !dbg !3845
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.96) #39, !dbg !3845
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3846
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
  ], !dbg !3847

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.7.97, i32 noundef 5) #39, !dbg !3848
  %21 = load ptr, ptr %4, align 8, !dbg !3848, !tbaa !829
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3848
  br label %147, !dbg !3850

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.8.98, i32 noundef 5) #39, !dbg !3851
  %25 = load ptr, ptr %4, align 8, !dbg !3851, !tbaa !829
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3851
  %27 = load ptr, ptr %26, align 8, !dbg !3851, !tbaa !829
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3851
  br label %147, !dbg !3852

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.9.99, i32 noundef 5) #39, !dbg !3853
  %31 = load ptr, ptr %4, align 8, !dbg !3853, !tbaa !829
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3853
  %33 = load ptr, ptr %32, align 8, !dbg !3853, !tbaa !829
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3853
  %35 = load ptr, ptr %34, align 8, !dbg !3853, !tbaa !829
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3853
  br label %147, !dbg !3854

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.10.100, i32 noundef 5) #39, !dbg !3855
  %39 = load ptr, ptr %4, align 8, !dbg !3855, !tbaa !829
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3855
  %41 = load ptr, ptr %40, align 8, !dbg !3855, !tbaa !829
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3855
  %43 = load ptr, ptr %42, align 8, !dbg !3855, !tbaa !829
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3855
  %45 = load ptr, ptr %44, align 8, !dbg !3855, !tbaa !829
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3855
  br label %147, !dbg !3856

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.11.101, i32 noundef 5) #39, !dbg !3857
  %49 = load ptr, ptr %4, align 8, !dbg !3857, !tbaa !829
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3857
  %51 = load ptr, ptr %50, align 8, !dbg !3857, !tbaa !829
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3857
  %53 = load ptr, ptr %52, align 8, !dbg !3857, !tbaa !829
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3857
  %55 = load ptr, ptr %54, align 8, !dbg !3857, !tbaa !829
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3857
  %57 = load ptr, ptr %56, align 8, !dbg !3857, !tbaa !829
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3857
  br label %147, !dbg !3858

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.12.102, i32 noundef 5) #39, !dbg !3859
  %61 = load ptr, ptr %4, align 8, !dbg !3859, !tbaa !829
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3859
  %63 = load ptr, ptr %62, align 8, !dbg !3859, !tbaa !829
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3859
  %65 = load ptr, ptr %64, align 8, !dbg !3859, !tbaa !829
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3859
  %67 = load ptr, ptr %66, align 8, !dbg !3859, !tbaa !829
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3859
  %69 = load ptr, ptr %68, align 8, !dbg !3859, !tbaa !829
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3859
  %71 = load ptr, ptr %70, align 8, !dbg !3859, !tbaa !829
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3859
  br label %147, !dbg !3860

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.13.103, i32 noundef 5) #39, !dbg !3861
  %75 = load ptr, ptr %4, align 8, !dbg !3861, !tbaa !829
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3861
  %77 = load ptr, ptr %76, align 8, !dbg !3861, !tbaa !829
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3861
  %79 = load ptr, ptr %78, align 8, !dbg !3861, !tbaa !829
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3861
  %81 = load ptr, ptr %80, align 8, !dbg !3861, !tbaa !829
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3861
  %83 = load ptr, ptr %82, align 8, !dbg !3861, !tbaa !829
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3861
  %85 = load ptr, ptr %84, align 8, !dbg !3861, !tbaa !829
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3861
  %87 = load ptr, ptr %86, align 8, !dbg !3861, !tbaa !829
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3861
  br label %147, !dbg !3862

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.14.104, i32 noundef 5) #39, !dbg !3863
  %91 = load ptr, ptr %4, align 8, !dbg !3863, !tbaa !829
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3863
  %93 = load ptr, ptr %92, align 8, !dbg !3863, !tbaa !829
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3863
  %95 = load ptr, ptr %94, align 8, !dbg !3863, !tbaa !829
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3863
  %97 = load ptr, ptr %96, align 8, !dbg !3863, !tbaa !829
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3863
  %99 = load ptr, ptr %98, align 8, !dbg !3863, !tbaa !829
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3863
  %101 = load ptr, ptr %100, align 8, !dbg !3863, !tbaa !829
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3863
  %103 = load ptr, ptr %102, align 8, !dbg !3863, !tbaa !829
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3863
  %105 = load ptr, ptr %104, align 8, !dbg !3863, !tbaa !829
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3863
  br label %147, !dbg !3864

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.15.105, i32 noundef 5) #39, !dbg !3865
  %109 = load ptr, ptr %4, align 8, !dbg !3865, !tbaa !829
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3865
  %111 = load ptr, ptr %110, align 8, !dbg !3865, !tbaa !829
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3865
  %113 = load ptr, ptr %112, align 8, !dbg !3865, !tbaa !829
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3865
  %115 = load ptr, ptr %114, align 8, !dbg !3865, !tbaa !829
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3865
  %117 = load ptr, ptr %116, align 8, !dbg !3865, !tbaa !829
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3865
  %119 = load ptr, ptr %118, align 8, !dbg !3865, !tbaa !829
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3865
  %121 = load ptr, ptr %120, align 8, !dbg !3865, !tbaa !829
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3865
  %123 = load ptr, ptr %122, align 8, !dbg !3865, !tbaa !829
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3865
  %125 = load ptr, ptr %124, align 8, !dbg !3865, !tbaa !829
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3865
  br label %147, !dbg !3866

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.16.106, i32 noundef 5) #39, !dbg !3867
  %129 = load ptr, ptr %4, align 8, !dbg !3867, !tbaa !829
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3867
  %131 = load ptr, ptr %130, align 8, !dbg !3867, !tbaa !829
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3867
  %133 = load ptr, ptr %132, align 8, !dbg !3867, !tbaa !829
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3867
  %135 = load ptr, ptr %134, align 8, !dbg !3867, !tbaa !829
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3867
  %137 = load ptr, ptr %136, align 8, !dbg !3867, !tbaa !829
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3867
  %139 = load ptr, ptr %138, align 8, !dbg !3867, !tbaa !829
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3867
  %141 = load ptr, ptr %140, align 8, !dbg !3867, !tbaa !829
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3867
  %143 = load ptr, ptr %142, align 8, !dbg !3867, !tbaa !829
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3867
  %145 = load ptr, ptr %144, align 8, !dbg !3867, !tbaa !829
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3867
  br label %147, !dbg !3868

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3869
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3870 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3875, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3876, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3877, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3878, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3879, metadata !DIExpression()), !dbg !3880
  br label %6, !dbg !3881

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3879, metadata !DIExpression()), !dbg !3880
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3884
  %9 = load ptr, ptr %8, align 8, !dbg !3884, !tbaa !829
  %10 = icmp eq ptr %9, null, !dbg !3886
  %11 = add i64 %7, 1, !dbg !3887
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3879, metadata !DIExpression()), !dbg !3880
  br i1 %10, label %12, label %6, !dbg !3886, !llvm.loop !3888

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3890
  ret void, !dbg !3891
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3892 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3909, metadata !DIExpression(), metadata !3911, metadata ptr %6, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3903, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3904, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3905, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3906, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3907, metadata !DIExpression()), !dbg !3912
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3908, metadata !DIExpression()), !dbg !3912
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3908, metadata !DIExpression()), !dbg !3912
  %10 = icmp ult i32 %9, 41, !dbg !3914
  br i1 %10, label %11, label %16, !dbg !3914

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3914
  %13 = zext nneg i32 %9 to i64, !dbg !3914
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3914
  %15 = add nuw nsw i32 %9, 8, !dbg !3914
  store i32 %15, ptr %4, align 8, !dbg !3914
  br label %19, !dbg !3914

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3914
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3914
  store ptr %18, ptr %7, align 8, !dbg !3914
  br label %19, !dbg !3914

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3914
  %22 = load ptr, ptr %21, align 8, !dbg !3914
  store ptr %22, ptr %6, align 16, !dbg !3917, !tbaa !829
  %23 = icmp eq ptr %22, null, !dbg !3918
  br i1 %23, label %128, label %24, !dbg !3919

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3908, metadata !DIExpression()), !dbg !3912
  %25 = icmp ult i32 %20, 41, !dbg !3914
  br i1 %25, label %29, label %26, !dbg !3914

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3914
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3914
  store ptr %28, ptr %7, align 8, !dbg !3914
  br label %34, !dbg !3914

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3914
  %31 = zext nneg i32 %20 to i64, !dbg !3914
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3914
  %33 = add nuw nsw i32 %20, 8, !dbg !3914
  store i32 %33, ptr %4, align 8, !dbg !3914
  br label %34, !dbg !3914

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3914
  %37 = load ptr, ptr %36, align 8, !dbg !3914
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3920
  store ptr %37, ptr %38, align 8, !dbg !3917, !tbaa !829
  %39 = icmp eq ptr %37, null, !dbg !3918
  br i1 %39, label %128, label %40, !dbg !3919

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3908, metadata !DIExpression()), !dbg !3912
  %41 = icmp ult i32 %35, 41, !dbg !3914
  br i1 %41, label %45, label %42, !dbg !3914

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3914
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3914
  store ptr %44, ptr %7, align 8, !dbg !3914
  br label %50, !dbg !3914

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3914
  %47 = zext nneg i32 %35 to i64, !dbg !3914
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3914
  %49 = add nuw nsw i32 %35, 8, !dbg !3914
  store i32 %49, ptr %4, align 8, !dbg !3914
  br label %50, !dbg !3914

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3914
  %53 = load ptr, ptr %52, align 8, !dbg !3914
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3920
  store ptr %53, ptr %54, align 16, !dbg !3917, !tbaa !829
  %55 = icmp eq ptr %53, null, !dbg !3918
  br i1 %55, label %128, label %56, !dbg !3919

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3908, metadata !DIExpression()), !dbg !3912
  %57 = icmp ult i32 %51, 41, !dbg !3914
  br i1 %57, label %61, label %58, !dbg !3914

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3914
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3914
  store ptr %60, ptr %7, align 8, !dbg !3914
  br label %66, !dbg !3914

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3914
  %63 = zext nneg i32 %51 to i64, !dbg !3914
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3914
  %65 = add nuw nsw i32 %51, 8, !dbg !3914
  store i32 %65, ptr %4, align 8, !dbg !3914
  br label %66, !dbg !3914

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3914
  %69 = load ptr, ptr %68, align 8, !dbg !3914
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3920
  store ptr %69, ptr %70, align 8, !dbg !3917, !tbaa !829
  %71 = icmp eq ptr %69, null, !dbg !3918
  br i1 %71, label %128, label %72, !dbg !3919

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3908, metadata !DIExpression()), !dbg !3912
  %73 = icmp ult i32 %67, 41, !dbg !3914
  br i1 %73, label %77, label %74, !dbg !3914

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3914
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3914
  store ptr %76, ptr %7, align 8, !dbg !3914
  br label %82, !dbg !3914

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3914
  %79 = zext nneg i32 %67 to i64, !dbg !3914
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3914
  %81 = add nuw nsw i32 %67, 8, !dbg !3914
  store i32 %81, ptr %4, align 8, !dbg !3914
  br label %82, !dbg !3914

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3914
  %85 = load ptr, ptr %84, align 8, !dbg !3914
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3920
  store ptr %85, ptr %86, align 16, !dbg !3917, !tbaa !829
  %87 = icmp eq ptr %85, null, !dbg !3918
  br i1 %87, label %128, label %88, !dbg !3919

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3908, metadata !DIExpression()), !dbg !3912
  %89 = icmp ult i32 %83, 41, !dbg !3914
  br i1 %89, label %93, label %90, !dbg !3914

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3914
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3914
  store ptr %92, ptr %7, align 8, !dbg !3914
  br label %98, !dbg !3914

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3914
  %95 = zext nneg i32 %83 to i64, !dbg !3914
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3914
  %97 = add nuw nsw i32 %83, 8, !dbg !3914
  store i32 %97, ptr %4, align 8, !dbg !3914
  br label %98, !dbg !3914

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3914
  %100 = load ptr, ptr %99, align 8, !dbg !3914
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3920
  store ptr %100, ptr %101, align 8, !dbg !3917, !tbaa !829
  %102 = icmp eq ptr %100, null, !dbg !3918
  br i1 %102, label %128, label %103, !dbg !3919

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3908, metadata !DIExpression()), !dbg !3912
  %104 = load ptr, ptr %7, align 8, !dbg !3914
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3914
  store ptr %105, ptr %7, align 8, !dbg !3914
  %106 = load ptr, ptr %104, align 8, !dbg !3914
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3920
  store ptr %106, ptr %107, align 16, !dbg !3917, !tbaa !829
  %108 = icmp eq ptr %106, null, !dbg !3918
  br i1 %108, label %128, label %109, !dbg !3919

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3908, metadata !DIExpression()), !dbg !3912
  %110 = load ptr, ptr %7, align 8, !dbg !3914
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3914
  store ptr %111, ptr %7, align 8, !dbg !3914
  %112 = load ptr, ptr %110, align 8, !dbg !3914
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3920
  store ptr %112, ptr %113, align 8, !dbg !3917, !tbaa !829
  %114 = icmp eq ptr %112, null, !dbg !3918
  br i1 %114, label %128, label %115, !dbg !3919

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3908, metadata !DIExpression()), !dbg !3912
  %116 = load ptr, ptr %7, align 8, !dbg !3914
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3914
  store ptr %117, ptr %7, align 8, !dbg !3914
  %118 = load ptr, ptr %116, align 8, !dbg !3914
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3920
  store ptr %118, ptr %119, align 16, !dbg !3917, !tbaa !829
  %120 = icmp eq ptr %118, null, !dbg !3918
  br i1 %120, label %128, label %121, !dbg !3919

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3908, metadata !DIExpression()), !dbg !3912
  %122 = load ptr, ptr %7, align 8, !dbg !3914
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3914
  store ptr %123, ptr %7, align 8, !dbg !3914
  %124 = load ptr, ptr %122, align 8, !dbg !3914
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3920
  store ptr %124, ptr %125, align 8, !dbg !3917, !tbaa !829
  %126 = icmp eq ptr %124, null, !dbg !3918
  %127 = select i1 %126, i64 9, i64 10, !dbg !3919
  br label %128, !dbg !3919

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3921
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3922
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3923
  ret void, !dbg !3923
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3924 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3932, metadata !DIExpression(), metadata !3937, metadata ptr %5, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3930, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3931, metadata !DIExpression()), !dbg !3938
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3939
  call void @llvm.va_start(ptr nonnull %5), !dbg !3940
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3941
  call void @llvm.va_end(ptr nonnull %5), !dbg !3942
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3943
  ret void, !dbg !3943
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3944 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3945, !tbaa !829
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %1), !dbg !3945
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.17.111, i32 noundef 5) #39, !dbg !3946
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.112) #39, !dbg !3946
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.19.113, i32 noundef 5) #39, !dbg !3947
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #39, !dbg !3947
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.22.114, i32 noundef 5) #39, !dbg !3948
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #39, !dbg !3948
  ret void, !dbg !3949
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3956, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %2, metadata !3963, metadata !DIExpression()), !dbg !3964
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3966
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !3972
  %5 = icmp eq ptr %4, null, !dbg !3974
  br i1 %5, label %6, label %7, !dbg !3976

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3977
  unreachable, !dbg !3977

7:                                                ; preds = %3
  ret ptr %4, !dbg !3978
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3960 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3963, metadata !DIExpression()), !dbg !3979
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !3981
  %5 = icmp eq ptr %4, null, !dbg !3983
  br i1 %5, label %6, label %7, !dbg !3984

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3985
  unreachable, !dbg !3985

7:                                                ; preds = %3
  ret ptr %4, !dbg !3986
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3987 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !3992
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3993
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !3994
  %3 = icmp eq ptr %2, null, !dbg !3996
  br i1 %3, label %4, label %5, !dbg !3997

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3998
  unreachable, !dbg !3998

5:                                                ; preds = %1
  ret ptr %2, !dbg !3999
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4000 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4001 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %0, metadata !4007, metadata !DIExpression()), !dbg !4011
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4013
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4014
  %3 = icmp eq ptr %2, null, !dbg !4016
  br i1 %3, label %4, label %5, !dbg !4017

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4018
  unreachable, !dbg !4018

5:                                                ; preds = %1
  ret ptr %2, !dbg !4019
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4020 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !4026
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4028
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4029
  %3 = icmp eq ptr %2, null, !dbg !4031
  br i1 %3, label %4, label %5, !dbg !4032

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4033
  unreachable, !dbg !4033

5:                                                ; preds = %1
  ret ptr %2, !dbg !4034
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4035 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4047
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4049
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4050
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4051
  %5 = icmp eq ptr %4, null, !dbg !4053
  br i1 %5, label %6, label %7, !dbg !4054

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4055
  unreachable, !dbg !4055

7:                                                ; preds = %2
  ret ptr %4, !dbg !4056
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4057 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4058 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4062, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %0, metadata !4065, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 %1, metadata !4068, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4071
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4073
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4074
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4075
  %5 = icmp eq ptr %4, null, !dbg !4077
  br i1 %5, label %6, label %7, !dbg !4078

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4079
  unreachable, !dbg !4079

7:                                                ; preds = %2
  ret ptr %4, !dbg !4080
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4081 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4085, metadata !DIExpression()), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4086, metadata !DIExpression()), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr %0, metadata !4089, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %1, metadata !4092, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %2, metadata !4093, metadata !DIExpression()), !dbg !4094
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4096
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4097
  %5 = icmp eq ptr %4, null, !dbg !4099
  br i1 %5, label %6, label %7, !dbg !4100

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4101
  unreachable, !dbg !4101

7:                                                ; preds = %3
  ret ptr %4, !dbg !4102
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4103 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4107, metadata !DIExpression()), !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr null, metadata !3959, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3962, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3963, metadata !DIExpression()), !dbg !4110
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4112
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4113
  %4 = icmp eq ptr %3, null, !dbg !4115
  br i1 %4, label %5, label %6, !dbg !4116

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4117
  unreachable, !dbg !4117

6:                                                ; preds = %2
  ret ptr %3, !dbg !4118
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4119 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4123, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr null, metadata !4085, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %0, metadata !4086, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %1, metadata !4087, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr null, metadata !4089, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %0, metadata !4092, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %1, metadata !4093, metadata !DIExpression()), !dbg !4128
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4130
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4131
  %4 = icmp eq ptr %3, null, !dbg !4133
  br i1 %4, label %5, label %6, !dbg !4134

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4135
  unreachable, !dbg !4135

6:                                                ; preds = %2
  ret ptr %3, !dbg !4136
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4141, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %0, metadata !762, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %1, metadata !763, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 1, metadata !764, metadata !DIExpression()), !dbg !4144
  %3 = load i64, ptr %1, align 8, !dbg !4146, !tbaa !1123
  call void @llvm.dbg.value(metadata i64 %3, metadata !765, metadata !DIExpression()), !dbg !4144
  %4 = icmp eq ptr %0, null, !dbg !4147
  br i1 %4, label %5, label %8, !dbg !4149

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4150
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4153
  br label %15, !dbg !4153

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4154
  %10 = add nuw i64 %9, 1, !dbg !4154
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4154
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4154
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %13, metadata !765, metadata !DIExpression()), !dbg !4144
  br i1 %12, label %14, label %15, !dbg !4157

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4158
  unreachable, !dbg !4158

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4144
  call void @llvm.dbg.value(metadata i64 %16, metadata !765, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %16, metadata !3962, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 1, metadata !3963, metadata !DIExpression()), !dbg !4159
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4161
  call void @llvm.dbg.value(metadata ptr %17, metadata !3967, metadata !DIExpression()), !dbg !4162
  %18 = icmp eq ptr %17, null, !dbg !4164
  br i1 %18, label %19, label %20, !dbg !4165

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4166
  unreachable, !dbg !4166

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !762, metadata !DIExpression()), !dbg !4144
  store i64 %16, ptr %1, align 8, !dbg !4167, !tbaa !1123
  ret ptr %17, !dbg !4168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !762, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !763, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !764, metadata !DIExpression()), !dbg !4169
  %4 = load i64, ptr %1, align 8, !dbg !4170, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !765, metadata !DIExpression()), !dbg !4169
  %5 = icmp eq ptr %0, null, !dbg !4171
  br i1 %5, label %6, label %13, !dbg !4172

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4173
  br i1 %7, label %8, label %20, !dbg !4174

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !765, metadata !DIExpression()), !dbg !4169
  %10 = icmp ugt i64 %2, 128, !dbg !4177
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4178
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !765, metadata !DIExpression()), !dbg !4169
  br label %20, !dbg !4179

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4180
  %15 = add nuw i64 %14, 1, !dbg !4180
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4180
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4180
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !765, metadata !DIExpression()), !dbg !4169
  br i1 %17, label %19, label %20, !dbg !4181

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4182
  unreachable, !dbg !4182

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4169
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !765, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %21, metadata !3962, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %2, metadata !3963, metadata !DIExpression()), !dbg !4183
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4185
  call void @llvm.dbg.value(metadata ptr %22, metadata !3967, metadata !DIExpression()), !dbg !4186
  %23 = icmp eq ptr %22, null, !dbg !4188
  br i1 %23, label %24, label %25, !dbg !4189

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4190
  unreachable, !dbg !4190

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !762, metadata !DIExpression()), !dbg !4169
  store i64 %21, ptr %1, align 8, !dbg !4191, !tbaa !1123
  ret ptr %22, !dbg !4192
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !769 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !779, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !780, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !781, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !782, metadata !DIExpression()), !dbg !4193
  %6 = load i64, ptr %1, align 8, !dbg !4194, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !783, metadata !DIExpression()), !dbg !4193
  %7 = ashr i64 %6, 1, !dbg !4195
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4195
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4195
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4195
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !784, metadata !DIExpression()), !dbg !4193
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !784, metadata !DIExpression()), !dbg !4193
  %12 = icmp sgt i64 %3, -1, !dbg !4198
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4200
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !784, metadata !DIExpression()), !dbg !4193
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4201
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4201
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !785, metadata !DIExpression()), !dbg !4193
  %18 = icmp slt i64 %17, 128, !dbg !4201
  %19 = select i1 %18, i64 128, i64 0, !dbg !4201
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !786, metadata !DIExpression()), !dbg !4193
  %21 = icmp eq i64 %20, 0, !dbg !4202
  br i1 %21, label %26, label %22, !dbg !4204

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4205
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !784, metadata !DIExpression()), !dbg !4193
  %24 = srem i64 %20, %4, !dbg !4207
  %25 = sub nsw i64 %20, %24, !dbg !4208
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !785, metadata !DIExpression()), !dbg !4193
  br label %26, !dbg !4209

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4193
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !785, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !784, metadata !DIExpression()), !dbg !4193
  %29 = icmp eq ptr %0, null, !dbg !4210
  br i1 %29, label %30, label %31, !dbg !4212

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4213, !tbaa !1123
  br label %31, !dbg !4214

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4215
  %33 = icmp slt i64 %32, %2, !dbg !4217
  br i1 %33, label %34, label %46, !dbg !4218

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4219
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4219
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !784, metadata !DIExpression()), !dbg !4193
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4220
  br i1 %40, label %45, label %41, !dbg !4220

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4221
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4221
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4221
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !785, metadata !DIExpression()), !dbg !4193
  br i1 %43, label %45, label %46, !dbg !4222

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !4223
  unreachable, !dbg !4223

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4193
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !785, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !784, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %48, metadata !4040, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %48, metadata !4046, metadata !DIExpression()), !dbg !4226
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4228
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #46, !dbg !4229
  call void @llvm.dbg.value(metadata ptr %50, metadata !3967, metadata !DIExpression()), !dbg !4230
  %51 = icmp eq ptr %50, null, !dbg !4232
  br i1 %51, label %52, label %53, !dbg !4233

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !4234
  unreachable, !dbg !4234

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !778, metadata !DIExpression()), !dbg !4193
  store i64 %47, ptr %1, align 8, !dbg !4235, !tbaa !1123
  ret ptr %50, !dbg !4236
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4237 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 1, metadata !4244, metadata !DIExpression()), !dbg !4245
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !4247
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4248
  %3 = icmp eq ptr %2, null, !dbg !4250
  br i1 %3, label %4, label %5, !dbg !4251

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4252
  unreachable, !dbg !4252

5:                                                ; preds = %1
  ret ptr %2, !dbg !4253
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4254 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4242 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4255
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4255
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !4256
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4257
  %4 = icmp eq ptr %3, null, !dbg !4259
  br i1 %4, label %5, label %6, !dbg !4260

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4261
  unreachable, !dbg !4261

6:                                                ; preds = %2
  ret ptr %3, !dbg !4262
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4263 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 1, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 1, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 1, metadata !4276, metadata !DIExpression()), !dbg !4277
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !4279
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4280
  %3 = icmp eq ptr %2, null, !dbg !4282
  br i1 %3, label %4, label %5, !dbg !4283

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4284
  unreachable, !dbg !4284

5:                                                ; preds = %1
  ret ptr %2, !dbg !4285
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4268 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4286
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4270, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4287
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4290
  %4 = icmp eq ptr %3, null, !dbg !4292
  br i1 %4, label %5, label %6, !dbg !4293

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4294
  unreachable, !dbg !4294

6:                                                ; preds = %2
  ret ptr %3, !dbg !4295
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4296 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4302
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !4303
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4306
  %4 = icmp eq ptr %3, null, !dbg !4308
  br i1 %4, label %5, label %6, !dbg !4309

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4310
  unreachable, !dbg !4310

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4311, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata ptr %0, metadata !4314, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4316
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4318
  ret ptr %3, !dbg !4319
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4320 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4324, metadata !DIExpression()), !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4325, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata i64 %1, metadata !4007, metadata !DIExpression()), !dbg !4329
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4331
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4332
  %4 = icmp eq ptr %3, null, !dbg !4334
  br i1 %4, label %5, label %6, !dbg !4335

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4336
  unreachable, !dbg !4336

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4311, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata ptr %0, metadata !4314, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4339
  ret ptr %3, !dbg !4340
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4341 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4345, metadata !DIExpression()), !dbg !4348
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4346, metadata !DIExpression()), !dbg !4348
  %3 = add nsw i64 %1, 1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %3, metadata !4005, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 %3, metadata !4007, metadata !DIExpression()), !dbg !4352
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4354
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4355
  %5 = icmp eq ptr %4, null, !dbg !4357
  br i1 %5, label %6, label %7, !dbg !4358

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4359
  unreachable, !dbg !4359

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4347, metadata !DIExpression()), !dbg !4348
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4360
  store i8 0, ptr %8, align 1, !dbg !4361, !tbaa !895
  call void @llvm.dbg.value(metadata ptr %4, metadata !4311, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata ptr %0, metadata !4314, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4362
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4364
  ret ptr %4, !dbg !4365
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4366 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4368, metadata !DIExpression()), !dbg !4369
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4370
  %3 = add i64 %2, 1, !dbg !4371
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %3, metadata !4301, metadata !DIExpression()), !dbg !4372
  call void @llvm.dbg.value(metadata i64 %3, metadata !3991, metadata !DIExpression()), !dbg !4374
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4376
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4377
  %5 = icmp eq ptr %4, null, !dbg !4379
  br i1 %5, label %6, label %7, !dbg !4380

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4381
  unreachable, !dbg !4381

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4311, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata ptr %0, metadata !4314, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %3, metadata !4315, metadata !DIExpression()), !dbg !4382
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4384
  ret ptr %4, !dbg !4385
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4386 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4391, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4388, metadata !DIExpression()), !dbg !4392
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.129, ptr noundef nonnull @.str.2.130, i32 noundef 5) #39, !dbg !4391
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.131, ptr noundef %2) #39, !dbg !4391
  %3 = icmp eq i32 %1, 0, !dbg !4391
  tail call void @llvm.assume(i1 %3), !dbg !4391
  tail call void @abort() #41, !dbg !4393
  unreachable, !dbg !4393
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4394 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !4456
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4437, metadata !DIExpression(), metadata !4456, metadata ptr %3, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4432, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4433, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4434, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4435, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4436, metadata !DIExpression()), !dbg !4457
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #39, !dbg !4458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4441, metadata !DIExpression()), !dbg !4459
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4443, metadata !DIExpression()), !dbg !4459
  br label %4, !dbg !4460

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !4457
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4459
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4457
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4461
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4462
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4434, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4435, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4443, metadata !DIExpression()), !dbg !4459
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4441, metadata !DIExpression()), !dbg !4459
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !4436, metadata !DIExpression()), !dbg !4457
  %11 = load i8, ptr %6, align 1, !dbg !4462, !tbaa !895
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4463

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4434, metadata !DIExpression()), !dbg !4457
  %13 = icmp slt i64 %7, 80, !dbg !4464
  br i1 %13, label %14, label %43, !dbg !4467

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4468
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4459
  store i8 114, ptr %10, align 1, !dbg !4469, !tbaa !895
  br label %43, !dbg !4470

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4434, metadata !DIExpression()), !dbg !4457
  %17 = or i32 %8, 576, !dbg !4471
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4435, metadata !DIExpression()), !dbg !4457
  %18 = icmp slt i64 %7, 80, !dbg !4472
  br i1 %18, label %19, label %43, !dbg !4474

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4475
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4459
  store i8 119, ptr %10, align 1, !dbg !4476, !tbaa !895
  br label %43, !dbg !4477

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4434, metadata !DIExpression()), !dbg !4457
  %22 = or i32 %8, 1088, !dbg !4478
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4435, metadata !DIExpression()), !dbg !4457
  %23 = icmp slt i64 %7, 80, !dbg !4479
  br i1 %23, label %24, label %43, !dbg !4481

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4482
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4459
  store i8 97, ptr %10, align 1, !dbg !4483, !tbaa !895
  br label %43, !dbg !4484

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4435, metadata !DIExpression()), !dbg !4457
  %27 = icmp slt i64 %7, 80, !dbg !4485
  br i1 %27, label %28, label %43, !dbg !4487

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4488
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4459
  store i8 98, ptr %10, align 1, !dbg !4489, !tbaa !895
  br label %43, !dbg !4490

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4434, metadata !DIExpression()), !dbg !4457
  %31 = icmp slt i64 %7, 80, !dbg !4491
  br i1 %31, label %32, label %43, !dbg !4493

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4494
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4459
  store i8 43, ptr %10, align 1, !dbg !4495, !tbaa !895
  br label %43, !dbg !4496

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4497
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4435, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4436, metadata !DIExpression()), !dbg !4457
  br label %43, !dbg !4498

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4435, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4436, metadata !DIExpression()), !dbg !4457
  br label %43, !dbg !4500

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #40, !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4444, metadata !DIExpression()), !dbg !4502
  %40 = sub nsw i64 80, %7, !dbg !4503
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4505
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4444, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata ptr %10, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr %6, metadata !4509, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %41, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #39, !dbg !4513
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4514
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4443, metadata !DIExpression()), !dbg !4459
  br label %49, !dbg !4515

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !4457
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4457
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4434, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4435, metadata !DIExpression()), !dbg !4457
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4443, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4459
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !4436, metadata !DIExpression()), !dbg !4457
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4516
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4441, metadata !DIExpression()), !dbg !4459
  br label %4, !dbg !4517, !llvm.loop !4518

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4459
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !4443, metadata !DIExpression()), !dbg !4459
  store i8 0, ptr %50, align 1, !dbg !4520, !tbaa !895
  %51 = and i8 %5, 1, !dbg !4521
  %52 = icmp eq i8 %51, 0, !dbg !4521
  br i1 %52, label %64, label %53, !dbg !4522

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !4523
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #39, !dbg !4524
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !4449, metadata !DIExpression()), !dbg !4525
  %56 = icmp slt i32 %55, 0, !dbg !4526
  br i1 %56, label %66, label %57, !dbg !4528

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #39, !dbg !4529
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !4452, metadata !DIExpression()), !dbg !4525
  %59 = icmp eq ptr %58, null, !dbg !4530
  br i1 %59, label %60, label %66, !dbg !4531

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #42, !dbg !4532
  %62 = load i32, ptr %61, align 4, !dbg !4532, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !4453, metadata !DIExpression()), !dbg !4533
  %63 = tail call i32 @close(i32 noundef %55) #39, !dbg !4534
  store i32 %62, ptr %61, align 4, !dbg !4535, !tbaa !886
  br label %66, !dbg !4536

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4537, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata ptr %1, metadata !4540, metadata !DIExpression()), !dbg !4541
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4543
  br label %66, !dbg !4544

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !4457
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #39, !dbg !4545
  ret ptr %67, !dbg !4545
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4546 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !4549 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

declare !dbg !4552 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4553 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4556 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4594, metadata !DIExpression()), !dbg !4599
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4600
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4595, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4599
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4601, metadata !DIExpression()), !dbg !4604
  %3 = load i32, ptr %0, align 8, !dbg !4606, !tbaa !4607
  %4 = and i32 %3, 32, !dbg !4608
  %5 = icmp eq i32 %4, 0, !dbg !4608
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4599
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4609
  %7 = icmp eq i32 %6, 0, !dbg !4610
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4599
  br i1 %5, label %8, label %18, !dbg !4611

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4613
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4599
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4614
  %11 = xor i1 %7, true, !dbg !4614
  %12 = sext i1 %11 to i32, !dbg !4614
  br i1 %10, label %21, label %13, !dbg !4614

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4615
  %15 = load i32, ptr %14, align 4, !dbg !4615, !tbaa !886
  %16 = icmp ne i32 %15, 9, !dbg !4616
  %17 = sext i1 %16 to i32, !dbg !4617
  br label %21, !dbg !4617

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4618

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4620
  store i32 0, ptr %20, align 4, !dbg !4622, !tbaa !886
  br label %21, !dbg !4620

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4599
  ret i32 %22, !dbg !4623
}

; Function Attrs: nounwind
declare !dbg !4624 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4628 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4666, metadata !DIExpression()), !dbg !4670
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4667, metadata !DIExpression()), !dbg !4670
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4671
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4668, metadata !DIExpression()), !dbg !4670
  %3 = icmp slt i32 %2, 0, !dbg !4672
  br i1 %3, label %4, label %6, !dbg !4674

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4675
  br label %24, !dbg !4676

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4677
  %8 = icmp eq i32 %7, 0, !dbg !4677
  br i1 %8, label %13, label %9, !dbg !4679

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4680
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4681
  %12 = icmp eq i64 %11, -1, !dbg !4682
  br i1 %12, label %16, label %13, !dbg !4683

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4684
  %15 = icmp eq i32 %14, 0, !dbg !4684
  br i1 %15, label %16, label %18, !dbg !4685

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4667, metadata !DIExpression()), !dbg !4670
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4669, metadata !DIExpression()), !dbg !4670
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4686
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4669, metadata !DIExpression()), !dbg !4670
  br label %24, !dbg !4687

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4688
  %20 = load i32, ptr %19, align 4, !dbg !4688, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4667, metadata !DIExpression()), !dbg !4670
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4669, metadata !DIExpression()), !dbg !4670
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4686
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4669, metadata !DIExpression()), !dbg !4670
  %22 = icmp eq i32 %20, 0, !dbg !4689
  br i1 %22, label %24, label %23, !dbg !4687

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4691, !tbaa !886
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4669, metadata !DIExpression()), !dbg !4670
  br label %24, !dbg !4693

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4670
  ret i32 %25, !dbg !4694
}

; Function Attrs: nofree nounwind
declare !dbg !4695 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !4696 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !4697 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4698 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4701 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4739, metadata !DIExpression()), !dbg !4740
  %2 = icmp eq ptr %0, null, !dbg !4741
  br i1 %2, label %6, label %3, !dbg !4743

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4744
  %5 = icmp eq i32 %4, 0, !dbg !4744
  br i1 %5, label %6, label %8, !dbg !4745

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4746
  br label %16, !dbg !4747

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4748, metadata !DIExpression()), !dbg !4753
  %9 = load i32, ptr %0, align 8, !dbg !4755, !tbaa !4607
  %10 = and i32 %9, 256, !dbg !4757
  %11 = icmp eq i32 %10, 0, !dbg !4757
  br i1 %11, label %14, label %12, !dbg !4758

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4759
  br label %14, !dbg !4759

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4760
  br label %16, !dbg !4761

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4740
  ret i32 %17, !dbg !4762
}

; Function Attrs: nofree nounwind
declare !dbg !4763 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4764 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4803, metadata !DIExpression()), !dbg !4809
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4804, metadata !DIExpression()), !dbg !4809
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4805, metadata !DIExpression()), !dbg !4809
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4810
  %5 = load ptr, ptr %4, align 8, !dbg !4810, !tbaa !4811
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4812
  %7 = load ptr, ptr %6, align 8, !dbg !4812, !tbaa !4813
  %8 = icmp eq ptr %5, %7, !dbg !4814
  br i1 %8, label %9, label %27, !dbg !4815

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4816
  %11 = load ptr, ptr %10, align 8, !dbg !4816, !tbaa !1185
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4817
  %13 = load ptr, ptr %12, align 8, !dbg !4817, !tbaa !4818
  %14 = icmp eq ptr %11, %13, !dbg !4819
  br i1 %14, label %15, label %27, !dbg !4820

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4821
  %17 = load ptr, ptr %16, align 8, !dbg !4821, !tbaa !4822
  %18 = icmp eq ptr %17, null, !dbg !4823
  br i1 %18, label %19, label %27, !dbg !4824

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4825
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4826
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4806, metadata !DIExpression()), !dbg !4827
  %22 = icmp eq i64 %21, -1, !dbg !4828
  br i1 %22, label %29, label %23, !dbg !4830

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4831, !tbaa !4607
  %25 = and i32 %24, -17, !dbg !4831
  store i32 %25, ptr %0, align 8, !dbg !4831, !tbaa !4607
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4832
  store i64 %21, ptr %26, align 8, !dbg !4833, !tbaa !4834
  br label %29, !dbg !4835

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4836
  br label %29, !dbg !4837

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4809
  ret i32 %30, !dbg !4838
}

; Function Attrs: nofree nounwind
declare !dbg !4839 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4842 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4847, metadata !DIExpression()), !dbg !4852
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4848, metadata !DIExpression()), !dbg !4852
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4849, metadata !DIExpression()), !dbg !4852
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4850, metadata !DIExpression()), !dbg !4852
  %5 = icmp eq ptr %1, null, !dbg !4853
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4855
  %7 = select i1 %5, ptr @.str.144, ptr %1, !dbg !4855
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4855
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4849, metadata !DIExpression()), !dbg !4852
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4848, metadata !DIExpression()), !dbg !4852
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4847, metadata !DIExpression()), !dbg !4852
  %9 = icmp eq ptr %3, null, !dbg !4856
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4858
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4850, metadata !DIExpression()), !dbg !4852
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4859
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4851, metadata !DIExpression()), !dbg !4852
  %12 = icmp ult i64 %11, -3, !dbg !4860
  br i1 %12, label %13, label %17, !dbg !4862

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4863
  %15 = icmp eq i32 %14, 0, !dbg !4863
  br i1 %15, label %16, label %29, !dbg !4864

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4865, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata ptr %10, metadata !4872, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 0, metadata !4875, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i64 8, metadata !4876, metadata !DIExpression()), !dbg !4877
  store i64 0, ptr %10, align 1, !dbg !4879
  br label %29, !dbg !4880

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4881
  br i1 %18, label %19, label %20, !dbg !4883

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4884
  unreachable, !dbg !4884

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4885

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4887
  br i1 %23, label %29, label %24, !dbg !4888

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4889
  br i1 %25, label %29, label %26, !dbg !4892

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4893, !tbaa !895
  %28 = zext i8 %27 to i32, !dbg !4894
  store i32 %28, ptr %6, align 4, !dbg !4895, !tbaa !886
  br label %29, !dbg !4896

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4852
  ret i64 %30, !dbg !4897
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4898 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4904 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4906, metadata !DIExpression()), !dbg !4910
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4907, metadata !DIExpression()), !dbg !4910
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4908, metadata !DIExpression()), !dbg !4910
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4911
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4909, metadata !DIExpression()), !dbg !4910
  br i1 %5, label %6, label %8, !dbg !4913

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4914
  store i32 12, ptr %7, align 4, !dbg !4916, !tbaa !886
  br label %12, !dbg !4917

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4909, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata ptr %0, metadata !4918, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i64 %9, metadata !4921, metadata !DIExpression()), !dbg !4922
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4924
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4925
  br label %12, !dbg !4926

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4910
  ret ptr %13, !dbg !4927
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4928 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4933, metadata !DIExpression(), metadata !4937, metadata ptr %2, metadata !DIExpression()), !dbg !4938
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4932, metadata !DIExpression()), !dbg !4938
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4939
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4940
  %4 = icmp eq i32 %3, 0, !dbg !4940
  br i1 %4, label %5, label %12, !dbg !4942

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4943, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata !857, metadata !4946, metadata !DIExpression()), !dbg !4947
  %6 = load i16, ptr %2, align 16, !dbg !4950
  %7 = icmp eq i16 %6, 67, !dbg !4950
  br i1 %7, label %11, label %8, !dbg !4951

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4943, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata ptr @.str.1.149, metadata !4946, metadata !DIExpression()), !dbg !4952
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.149, i64 6), !dbg !4954
  %10 = icmp eq i32 %9, 0, !dbg !4955
  br i1 %10, label %11, label %12, !dbg !4956

11:                                               ; preds = %8, %5
  br label %12, !dbg !4957

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4938
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4958
  ret i1 %13, !dbg !4958
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4959 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4963, metadata !DIExpression()), !dbg !4966
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4964, metadata !DIExpression()), !dbg !4966
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4965, metadata !DIExpression()), !dbg !4966
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4967
  ret i32 %4, !dbg !4968
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4969 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4973, metadata !DIExpression()), !dbg !4974
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4975
  ret ptr %2, !dbg !4976
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4977 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4979, metadata !DIExpression()), !dbg !4981
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4982
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4980, metadata !DIExpression()), !dbg !4981
  ret ptr %2, !dbg !4983
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4984 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4986, metadata !DIExpression()), !dbg !4993
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4987, metadata !DIExpression()), !dbg !4993
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4988, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata i32 %0, metadata !4979, metadata !DIExpression()), !dbg !4994
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4996
  call void @llvm.dbg.value(metadata ptr %4, metadata !4980, metadata !DIExpression()), !dbg !4994
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4989, metadata !DIExpression()), !dbg !4993
  %5 = icmp eq ptr %4, null, !dbg !4997
  br i1 %5, label %6, label %9, !dbg !4998

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4999
  br i1 %7, label %19, label %8, !dbg !5002

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5003, !tbaa !895
  br label %19, !dbg !5004

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5005
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4990, metadata !DIExpression()), !dbg !5006
  %11 = icmp ult i64 %10, %2, !dbg !5007
  br i1 %11, label %12, label %14, !dbg !5009

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5010
  call void @llvm.dbg.value(metadata ptr %1, metadata !5012, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata ptr %4, metadata !5015, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i64 %13, metadata !5016, metadata !DIExpression()), !dbg !5017
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !5019
  br label %19, !dbg !5020

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5021
  br i1 %15, label %19, label %16, !dbg !5024

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5025
  call void @llvm.dbg.value(metadata ptr %1, metadata !5012, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata ptr %4, metadata !5015, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %17, metadata !5016, metadata !DIExpression()), !dbg !5027
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5029
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5030
  store i8 0, ptr %18, align 1, !dbg !5031, !tbaa !895
  br label %19, !dbg !5032

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5033
  ret i32 %20, !dbg !5034
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!76, !323, !327, !342, !677, !709, !396, !417, !431, !482, !711, !747, !669, !753, !788, !790, !792, !794, !796, !798, !693, !800, !802, !806, !808}
!llvm.ident = !{!810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810, !810}
!llvm.module.flags = !{!811, !812, !813, !814, !815, !816, !817}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/users.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2e4916078fe75a2e005e9df4bd6e108b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 896, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 112)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 6)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 50)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 62)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 1)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 10)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 24)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !19, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 17)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 16)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !58, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !70, file: !71, line: 575, type: !117, isLocal: true, isDefinition: true)
!70 = distinct !DISubprogram(name: "oputs_", scope: !71, file: !71, line: 573, type: !72, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !240)
!71 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!72 = !DISubroutineType(cc: DW_CC_nocall, types: !73)
!73 = !{null, !74, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/users.o -MD -MP -MF src/.deps/users.Tpo -c src/users.c -o src/.users.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !115, globals: !125, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78, !86, !101}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 305, baseType: !80, size: 32, elements: !81)
!79 = !DIFile(filename: "./lib/readutmp.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dbf57f6f8baa17fafca98ee518780aad")
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!83 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!84 = !DIEnumerator(name: "READ_UTMP_BOOT_TIME", value: 4)
!85 = !DIEnumerator(name: "READ_UTMP_NO_BOOT_TIME", value: 8)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 46, baseType: !80, size: 32, elements: !88)
!87 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!89 = !DIEnumerator(name: "_ISupper", value: 256)
!90 = !DIEnumerator(name: "_ISlower", value: 512)
!91 = !DIEnumerator(name: "_ISalpha", value: 1024)
!92 = !DIEnumerator(name: "_ISdigit", value: 2048)
!93 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!94 = !DIEnumerator(name: "_ISspace", value: 8192)
!95 = !DIEnumerator(name: "_ISprint", value: 16384)
!96 = !DIEnumerator(name: "_ISgraph", value: 32768)
!97 = !DIEnumerator(name: "_ISblank", value: 1)
!98 = !DIEnumerator(name: "_IScntrl", value: 2)
!99 = !DIEnumerator(name: "_ISpunct", value: 4)
!100 = !DIEnumerator(name: "_ISalnum", value: 8)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !102, line: 42, baseType: !80, size: 32, elements: !103)
!102 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!104 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!105 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!106 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!107 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!108 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!109 = !DIEnumerator(name: "c_quoting_style", value: 5)
!110 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!111 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!112 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!113 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!114 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!115 = !{!74, !116, !117, !118, !119, !122, !123}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 18, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!125 = !{!0, !7, !12, !17, !22, !24, !29, !34, !39, !44, !49, !54, !56, !61, !66, !68, !126, !131, !133, !138, !140, !145, !147, !149, !154, !156, !158, !160, !165, !170, !172, !174, !176, !178, !180, !182, !184, !189, !194, !199, !201, !203, !205, !207, !209, !214, !216, !218, !223, !228, !233, !238}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !71, line: 585, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 5)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !71, line: 586, type: !128, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !71, line: 595, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 4)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !71, line: 620, type: !26, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !71, line: 648, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 2)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !71, line: 648, type: !128, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !71, line: 649, type: !135, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !71, line: 649, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 3)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !71, line: 650, type: !128, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !71, line: 651, type: !26, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !71, line: 651, type: !26, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !71, line: 652, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 7)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !71, line: 653, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 8)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !71, line: 654, type: !46, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !71, line: 655, type: !46, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !71, line: 656, type: !46, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !71, line: 657, type: !46, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !71, line: 663, type: !162, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !71, line: 664, type: !46, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !71, line: 669, type: !58, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !71, line: 669, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 40)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !71, line: 676, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 15)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !71, line: 676, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 61)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !71, line: 679, type: !151, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !71, line: 683, type: !128, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !71, line: 688, type: !128, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !71, line: 691, type: !167, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !71, line: 839, type: !63, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !71, line: 840, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 22)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !71, line: 841, type: !191, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !71, line: 862, type: !135, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !71, line: 868, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 71)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !71, line: 875, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 27)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !71, line: 877, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 51)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !71, line: 877, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 12)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !151, isLocal: true, isDefinition: true)
!240 = !{!241, !242, !243, !246, !248, !249, !250, !254, !255, !256, !257, !259, !312, !313, !314, !316, !317}
!241 = !DILocalVariable(name: "program", arg: 1, scope: !70, file: !71, line: 573, type: !74)
!242 = !DILocalVariable(name: "option", arg: 2, scope: !70, file: !71, line: 573, type: !74)
!243 = !DILocalVariable(name: "term", scope: !244, file: !71, line: 585, type: !74)
!244 = distinct !DILexicalBlock(scope: !245, file: !71, line: 582, column: 5)
!245 = distinct !DILexicalBlock(scope: !70, file: !71, line: 581, column: 7)
!246 = !DILocalVariable(name: "double_space", scope: !70, file: !71, line: 594, type: !247)
!247 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!248 = !DILocalVariable(name: "first_word", scope: !70, file: !71, line: 595, type: !74)
!249 = !DILocalVariable(name: "option_text", scope: !70, file: !71, line: 596, type: !74)
!250 = !DILocalVariable(name: "s", scope: !251, file: !71, line: 608, type: !74)
!251 = distinct !DILexicalBlock(scope: !252, file: !71, line: 605, column: 5)
!252 = distinct !DILexicalBlock(scope: !253, file: !71, line: 604, column: 12)
!253 = distinct !DILexicalBlock(scope: !70, file: !71, line: 597, column: 7)
!254 = !DILocalVariable(name: "spaces", scope: !251, file: !71, line: 609, type: !119)
!255 = !DILocalVariable(name: "anchor_len", scope: !70, file: !71, line: 620, type: !119)
!256 = !DILocalVariable(name: "desc_text", scope: !70, file: !71, line: 625, type: !74)
!257 = !DILocalVariable(name: "__ptr", scope: !258, file: !71, line: 644, type: !74)
!258 = distinct !DILexicalBlock(scope: !70, file: !71, line: 644, column: 3)
!259 = !DILocalVariable(name: "__stream", scope: !258, file: !71, line: 644, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !281, !283, !284, !285, !289, !290, !292, !293, !296, !298, !301, !304, !305, !306, !307, !308}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !263, file: !264, line: 51, baseType: !117, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !263, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !263, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !263, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !263, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !263, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !263, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !263, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !263, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !263, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !263, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !263, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !263, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !264, line: 36, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !263, file: !264, line: 70, baseType: !282, size: 64, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !263, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !263, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !263, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !287, line: 152, baseType: !288)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!288 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !263, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !263, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!291 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !263, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !263, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !264, line: 43, baseType: null)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !263, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !287, line: 153, baseType: !288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !263, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !264, line: 37, flags: DIFlagFwdDecl)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !263, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !264, line: 38, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !263, file: !264, line: 93, baseType: !282, size: 64, offset: 1344)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !263, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !263, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !263, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !263, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 20)
!312 = !DILocalVariable(name: "__cnt", scope: !258, file: !71, line: 644, type: !119)
!313 = !DILocalVariable(name: "url_program", scope: !70, file: !71, line: 648, type: !74)
!314 = !DILocalVariable(name: "__ptr", scope: !315, file: !71, line: 686, type: !74)
!315 = distinct !DILexicalBlock(scope: !70, file: !71, line: 686, column: 3)
!316 = !DILocalVariable(name: "__stream", scope: !315, file: !71, line: 686, type: !260)
!317 = !DILocalVariable(name: "__cnt", scope: !315, file: !71, line: 686, type: !119)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !320, line: 3, type: !191, isLocal: true, isDefinition: true)
!320 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "Version", scope: !323, file: !320, line: 3, type: !74, isLocal: false, isDefinition: true)
!323 = distinct !DICompileUnit(language: DW_LANG_C11, file: !320, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !324, splitDebugInlining: false, nameTableKind: None)
!324 = !{!318, !321}
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "file_name", scope: !327, file: !328, line: 45, type: !74, isLocal: true, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C11, file: !328, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !329, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!329 = !{!330, !332, !334, !336, !325, !338}
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !328, line: 121, type: !162, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !328, line: 121, type: !235, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !328, line: 123, type: !162, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !328, line: 126, type: !151, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !327, file: !328, line: 55, type: !247, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !342, file: !343, line: 66, type: !388, isLocal: false, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C11, file: !343, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, globals: !345, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!344 = !{!116, !122}
!345 = !{!346, !348, !367, !369, !371, !373, !340, !375, !377, !379, !381, !386}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !343, line: 272, type: !128, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "old_file_name", scope: !350, file: !343, line: 304, type: !74, isLocal: true, isDefinition: true)
!350 = distinct !DISubprogram(name: "verror_at_line", scope: !343, file: !343, line: 298, type: !351, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !360)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !117, !117, !74, !80, !74, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !355)
!355 = !{!356, !357, !358, !359}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !354, file: !343, baseType: !80, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !354, file: !343, baseType: !80, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !354, file: !343, baseType: !116, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !354, file: !343, baseType: !116, size: 64, offset: 128)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DILocalVariable(name: "status", arg: 1, scope: !350, file: !343, line: 298, type: !117)
!362 = !DILocalVariable(name: "errnum", arg: 2, scope: !350, file: !343, line: 298, type: !117)
!363 = !DILocalVariable(name: "file_name", arg: 3, scope: !350, file: !343, line: 298, type: !74)
!364 = !DILocalVariable(name: "line_number", arg: 4, scope: !350, file: !343, line: 298, type: !80)
!365 = !DILocalVariable(name: "message", arg: 5, scope: !350, file: !343, line: 298, type: !74)
!366 = !DILocalVariable(name: "args", arg: 6, scope: !350, file: !343, line: 298, type: !353)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "old_line_number", scope: !350, file: !343, line: 305, type: !80, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !343, line: 338, type: !135, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !167, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !142, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "error_message_count", scope: !342, file: !343, line: 69, type: !80, isLocal: false, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !342, file: !343, line: 295, type: !117, isLocal: false, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !162, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 21)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !343, line: 214, type: !128, isLocal: true, isDefinition: true)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null}
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !393, line: 60, type: !142, isLocal: true, isDefinition: true)
!393 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "long_options", scope: !396, file: !393, line: 34, type: !405, isLocal: true, isDefinition: true)
!396 = distinct !DICompileUnit(language: DW_LANG_C11, file: !393, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, globals: !398, splitDebugInlining: false, nameTableKind: None)
!397 = !{!116}
!398 = !{!391, !399, !401, !403, !394}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !393, line: 112, type: !41, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !393, line: 36, type: !128, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !393, line: 37, type: !167, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 768, elements: !152)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !408, line: 50, size: 256, elements: !409)
!408 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!409 = !{!410, !411, !412, !414}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !408, line: 52, baseType: !74, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !407, file: !408, line: 55, baseType: !117, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !407, file: !408, line: 56, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !408, line: 57, baseType: !117, size: 32, offset: 192)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "program_name", scope: !417, file: !418, line: 31, type: !74, isLocal: false, isDefinition: true)
!417 = distinct !DICompileUnit(language: DW_LANG_C11, file: !418, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !419, globals: !420, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!419 = !{!116, !124}
!420 = !{!415, !421, !423}
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !418, line: 46, type: !167, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !418, line: 49, type: !135, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "utf07FF", scope: !427, file: !428, line: 46, type: !455, isLocal: true, isDefinition: true)
!427 = distinct !DISubprogram(name: "proper_name_lite", scope: !428, file: !428, line: 38, type: !429, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !433)
!428 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!429 = !DISubroutineType(types: !430)
!430 = !{!74, !74, !74}
!431 = distinct !DICompileUnit(language: DW_LANG_C11, file: !428, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !432, splitDebugInlining: false, nameTableKind: None)
!432 = !{!425}
!433 = !{!434, !435, !436, !437, !442}
!434 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !427, file: !428, line: 38, type: !74)
!435 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !427, file: !428, line: 38, type: !74)
!436 = !DILocalVariable(name: "translation", scope: !427, file: !428, line: 40, type: !74)
!437 = !DILocalVariable(name: "w", scope: !427, file: !428, line: 47, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !439, line: 37, baseType: !440)
!439 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !287, line: 57, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !287, line: 42, baseType: !80)
!442 = !DILocalVariable(name: "mbs", scope: !427, file: !428, line: 48, type: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !445)
!444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !447, file: !446, line: 15, baseType: !117, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !447, file: !446, line: 20, baseType: !451, size: 32, offset: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !446, line: 16, size: 32, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !451, file: !446, line: 18, baseType: !80, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !451, file: !446, line: 19, baseType: !135, size: 32)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 16, elements: !143)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !458, line: 78, type: !167, isLocal: true, isDefinition: true)
!458 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !458, line: 79, type: !26, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !458, line: 80, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 13)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !458, line: 81, type: !463, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !458, line: 82, type: !309, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !458, line: 83, type: !142, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !458, line: 84, type: !167, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !458, line: 85, type: !162, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !458, line: 86, type: !162, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !458, line: 87, type: !167, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !482, file: !458, line: 76, type: !556, isLocal: false, isDefinition: true)
!482 = distinct !DICompileUnit(language: DW_LANG_C11, file: !458, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !483, retainedTypes: !491, globals: !492, splitDebugInlining: false, nameTableKind: None)
!483 = !{!484, !486, !86}
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !485, line: 42, baseType: !80, size: 32, elements: !103)
!485 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !485, line: 254, baseType: !80, size: 32, elements: !487)
!487 = !{!488, !489, !490}
!488 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!489 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!490 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!491 = !{!116, !117, !118, !119}
!492 = !{!456, !459, !461, !466, !468, !470, !472, !474, !476, !478, !480, !493, !497, !507, !509, !514, !516, !518, !520, !522, !545, !552, !554}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !482, file: !458, line: 92, type: !495, isLocal: false, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 320, elements: !47)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !482, file: !458, line: 1040, type: !499, isLocal: false, isDefinition: true)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !458, line: 56, size: 448, elements: !500)
!500 = !{!501, !502, !503, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !499, file: !458, line: 59, baseType: !484, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !458, line: 62, baseType: !117, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !499, file: !458, line: 66, baseType: !504, size: 256, offset: 64)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !168)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !499, file: !458, line: 69, baseType: !74, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !499, file: !458, line: 72, baseType: !74, size: 64, offset: 384)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !482, file: !458, line: 107, type: !499, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "slot0", scope: !482, file: !458, line: 831, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 256)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !458, line: 321, type: !142, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !458, line: 357, type: !142, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !458, line: 358, type: !142, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !458, line: 199, type: !162, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "quote", scope: !524, file: !458, line: 228, type: !543, isLocal: true, isDefinition: true)
!524 = distinct !DISubprogram(name: "gettext_quote", scope: !458, file: !458, line: 197, type: !525, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!74, !74, !484}
!527 = !{!528, !529, !530, !531, !532}
!528 = !DILocalVariable(name: "msgid", arg: 1, scope: !524, file: !458, line: 197, type: !74)
!529 = !DILocalVariable(name: "s", arg: 2, scope: !524, file: !458, line: 197, type: !484)
!530 = !DILocalVariable(name: "translation", scope: !524, file: !458, line: 199, type: !74)
!531 = !DILocalVariable(name: "w", scope: !524, file: !458, line: 229, type: !438)
!532 = !DILocalVariable(name: "mbs", scope: !524, file: !458, line: 230, type: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !535, file: !446, line: 15, baseType: !117, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !535, file: !446, line: 20, baseType: !539, size: 32, offset: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !446, line: 16, size: 32, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !539, file: !446, line: 18, baseType: !80, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !539, file: !446, line: 19, baseType: !135, size: 32)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !544)
!544 = !{!144, !137}
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "slotvec", scope: !482, file: !458, line: 834, type: !547, isLocal: true, isDefinition: true)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !458, line: 823, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !548, file: !458, line: 825, baseType: !119, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !548, file: !458, line: 826, baseType: !124, size: 64, offset: 64)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "nslots", scope: !482, file: !458, line: 832, type: !117, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "slotvec0", scope: !482, file: !458, line: 833, type: !548, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 704, elements: !558)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!558 = !{!559}
!559 = !DISubrange(count: 11)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !562, line: 347, type: !19, isLocal: true, isDefinition: true)
!562 = !DIFile(filename: "lib/readutmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "da68be8ee1104a39b5ac94d0be1eef81")
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !562, line: 398, type: !565, isLocal: true, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 9)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !562, line: 399, type: !142, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !562, line: 446, type: !162, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !562, line: 447, type: !41, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !576, line: 98, type: !577, isLocal: true, isDefinition: true)
!576 = !DIFile(filename: "lib/boot-time-aux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "56a7f792a9c98183f316974c092e6a70")
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 29)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !576, line: 99, type: !577, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !576, line: 100, type: !383, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !576, line: 40, type: !463, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !576, line: 40, type: !151, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !590, line: 67, type: !235, isLocal: true, isDefinition: true)
!590 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !590, line: 69, type: !162, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !590, line: 83, type: !162, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !590, line: 83, type: !135, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !590, line: 85, type: !142, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !590, line: 88, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 171)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !590, line: 88, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 34)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !590, line: 105, type: !63, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !590, line: 109, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 23)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !590, line: 113, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 28)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !590, line: 120, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 32)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !590, line: 127, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 36)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !590, line: 134, type: !186, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !590, line: 142, type: !635, isLocal: true, isDefinition: true)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 44)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !590, line: 150, type: !640, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 48)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !590, line: 159, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 52)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !590, line: 170, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 60)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !590, line: 248, type: !309, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !590, line: 248, type: !211, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !590, line: 254, type: !309, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !590, line: 254, type: !19, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !590, line: 254, type: !186, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !590, line: 259, type: !3, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !590, line: 259, type: !577, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !669, file: !670, line: 26, type: !672, isLocal: false, isDefinition: true)
!669 = distinct !DICompileUnit(language: DW_LANG_C11, file: !670, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !671, splitDebugInlining: false, nameTableKind: None)
!670 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!671 = !{!667}
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 47)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "exit_failure", scope: !677, file: !678, line: 24, type: !680, isLocal: false, isDefinition: true)
!677 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !679, splitDebugInlining: false, nameTableKind: None)
!678 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!679 = !{!675}
!680 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !683, line: 34, type: !151, isLocal: true, isDefinition: true)
!683 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !683, line: 34, type: !162, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !683, line: 34, type: !58, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !690, line: 108, type: !41, isLocal: true, isDefinition: true)
!690 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "internal_state", scope: !693, file: !690, line: 97, type: !696, isLocal: true, isDefinition: true)
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !694, globals: !695, splitDebugInlining: false, nameTableKind: None)
!694 = !{!116, !119, !122}
!695 = !{!688, !691}
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !446, line: 21, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 13, size: 64, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !698, file: !446, line: 15, baseType: !117, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !698, file: !446, line: 20, baseType: !702, size: 32, offset: 32)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !446, line: 16, size: 32, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !702, file: !446, line: 18, baseType: !80, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !702, file: !446, line: 19, baseType: !135, size: 32)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !708, line: 35, type: !26, isLocal: true, isDefinition: true)
!708 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !562, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-readutmp.o -MD -MP -MF lib/.deps/libcoreutils_a-readutmp.Tpo -c lib/readutmp.c -o lib/.libcoreutils_a-readutmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !712, retainedTypes: !715, globals: !746, splitDebugInlining: false, nameTableKind: None)
!712 = !{!713}
!713 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !714, line: 305, baseType: !80, size: 32, elements: !81)
!714 = !DIFile(filename: "lib/readutmp.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dbf57f6f8baa17fafca98ee518780aad")
!715 = !{!116, !124, !716, !744, !119}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !719, line: 55, size: 3072, elements: !720)
!719 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "d076be7f45ef793a8c3c4dd5282b1b1a")
!720 = !{!721, !723, !725, !726, !727, !728, !729, !734, !736, !741, !743}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !718, file: !719, line: 57, baseType: !722, size: 16)
!722 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !718, file: !719, line: 58, baseType: !724, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !287, line: 154, baseType: !117)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !718, file: !719, line: 59, baseType: !623, size: 256, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !718, file: !719, line: 61, baseType: !135, size: 32, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !718, file: !719, line: 63, baseType: !623, size: 256, offset: 352)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !718, file: !719, line: 65, baseType: !511, size: 2048, offset: 608)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !718, file: !719, line: 67, baseType: !730, size: 32, offset: 2656)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !719, line: 42, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !730, file: !719, line: 45, baseType: !722, size: 16)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !730, file: !719, line: 46, baseType: !722, size: 16, offset: 16)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !718, file: !719, line: 74, baseType: !735, size: 32, offset: 2688)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !287, line: 41, baseType: !117)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !718, file: !719, line: 79, baseType: !737, size: 64, offset: 2720)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !719, line: 75, size: 64, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !737, file: !719, line: 77, baseType: !735, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !737, file: !719, line: 78, baseType: !735, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !718, file: !719, line: 84, baseType: !742, size: 128, offset: 2784)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 128, elements: !136)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !718, file: !719, line: 85, baseType: !309, size: 160, offset: 2912)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !745, line: 87, baseType: !288)
!745 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!746 = !{!560, !563, !568, !570, !572, !574, !580, !582, !584, !586}
!747 = distinct !DICompileUnit(language: DW_LANG_C11, file: !590, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !748, retainedTypes: !397, globals: !752, splitDebugInlining: false, nameTableKind: None)
!748 = !{!749}
!749 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !590, line: 40, baseType: !80, size: 32, elements: !750)
!750 = !{!751}
!751 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!752 = !{!588, !591, !593, !595, !597, !599, !604, !609, !611, !616, !621, !626, !631, !633, !638, !643, !648, !653, !655, !657, !659, !661, !663, !665}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !755, retainedTypes: !787, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!755 = !{!756, !768}
!756 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !757, file: !754, line: 188, baseType: !80, size: 32, elements: !766)
!757 = distinct !DISubprogram(name: "x2nrealloc", scope: !754, file: !754, line: 176, type: !758, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !761)
!758 = !DISubroutineType(types: !759)
!759 = !{!116, !116, !760, !119}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!761 = !{!762, !763, !764, !765}
!762 = !DILocalVariable(name: "p", arg: 1, scope: !757, file: !754, line: 176, type: !116)
!763 = !DILocalVariable(name: "pn", arg: 2, scope: !757, file: !754, line: 176, type: !760)
!764 = !DILocalVariable(name: "s", arg: 3, scope: !757, file: !754, line: 176, type: !119)
!765 = !DILocalVariable(name: "n", scope: !757, file: !754, line: 178, type: !119)
!766 = !{!767}
!767 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!768 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !769, file: !754, line: 228, baseType: !80, size: 32, elements: !766)
!769 = distinct !DISubprogram(name: "xpalloc", scope: !754, file: !754, line: 223, type: !770, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !777)
!770 = !DISubroutineType(types: !771)
!771 = !{!116, !116, !772, !773, !775, !773}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !774, line: 130, baseType: !775)
!774 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !776, line: 18, baseType: !288)
!776 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786}
!778 = !DILocalVariable(name: "pa", arg: 1, scope: !769, file: !754, line: 223, type: !116)
!779 = !DILocalVariable(name: "pn", arg: 2, scope: !769, file: !754, line: 223, type: !772)
!780 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !769, file: !754, line: 223, type: !773)
!781 = !DILocalVariable(name: "n_max", arg: 4, scope: !769, file: !754, line: 223, type: !775)
!782 = !DILocalVariable(name: "s", arg: 5, scope: !769, file: !754, line: 223, type: !773)
!783 = !DILocalVariable(name: "n0", scope: !769, file: !754, line: 230, type: !773)
!784 = !DILocalVariable(name: "n", scope: !769, file: !754, line: 237, type: !773)
!785 = !DILocalVariable(name: "nbytes", scope: !769, file: !754, line: 248, type: !773)
!786 = !DILocalVariable(name: "adjusted_nbytes", scope: !769, file: !754, line: 252, type: !773)
!787 = !{!124, !116}
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !789, splitDebugInlining: false, nameTableKind: None)
!789 = !{!681, !684, !686}
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !795, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!795 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !799, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!799 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !803, splitDebugInlining: false, nameTableKind: None)
!803 = !{!804, !706}
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !708, line: 35, type: !142, isLocal: true, isDefinition: true)
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!810 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!811 = !{i32 7, !"Dwarf Version", i32 5}
!812 = !{i32 2, !"Debug Info Version", i32 3}
!813 = !{i32 1, !"wchar_size", i32 4}
!814 = !{i32 8, !"PIC Level", i32 2}
!815 = !{i32 7, !"PIE Level", i32 2}
!816 = !{i32 7, !"uwtable", i32 2}
!817 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!818 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !819, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !117}
!821 = !{!822}
!822 = !DILocalVariable(name: "status", arg: 1, scope: !818, file: !2, line: 96, type: !117)
!823 = !DILocation(line: 0, scope: !818)
!824 = !DILocation(line: 98, column: 14, scope: !825)
!825 = distinct !DILexicalBlock(scope: !818, file: !2, line: 98, column: 7)
!826 = !DILocation(line: 98, column: 7, scope: !818)
!827 = !DILocation(line: 99, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !2, line: 99, column: 5)
!829 = !{!830, !830, i64 0}
!830 = !{!"any pointer", !831, i64 0}
!831 = !{!"omnipotent char", !832, i64 0}
!832 = !{!"Simple C/C++ TBAA"}
!833 = !DILocation(line: 102, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !2, line: 101, column: 5)
!835 = !DILocation(line: 103, column: 7, scope: !834)
!836 = !DILocation(line: 109, column: 7, scope: !834)
!837 = !DILocation(line: 110, column: 7, scope: !834)
!838 = !DILocalVariable(name: "program", arg: 1, scope: !839, file: !71, line: 836, type: !74)
!839 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !71, file: !71, line: 836, type: !840, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !74}
!842 = !{!838, !843, !850, !851, !853, !854}
!843 = !DILocalVariable(name: "infomap", scope: !839, file: !71, line: 838, type: !844)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 896, elements: !163)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !839, file: !71, line: 838, size: 128, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !846, file: !71, line: 838, baseType: !74, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !846, file: !71, line: 838, baseType: !74, size: 64, offset: 64)
!850 = !DILocalVariable(name: "node", scope: !839, file: !71, line: 848, type: !74)
!851 = !DILocalVariable(name: "map_prog", scope: !839, file: !71, line: 849, type: !852)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!853 = !DILocalVariable(name: "lc_messages", scope: !839, file: !71, line: 861, type: !74)
!854 = !DILocalVariable(name: "url_program", scope: !839, file: !71, line: 874, type: !74)
!855 = !DILocation(line: 0, scope: !839, inlinedAt: !856)
!856 = distinct !DILocation(line: 111, column: 7, scope: !834)
!857 = !{}
!858 = !DILocation(line: 857, column: 3, scope: !839, inlinedAt: !856)
!859 = !DILocation(line: 861, column: 29, scope: !839, inlinedAt: !856)
!860 = !DILocation(line: 862, column: 7, scope: !861, inlinedAt: !856)
!861 = distinct !DILexicalBlock(scope: !839, file: !71, line: 862, column: 7)
!862 = !DILocation(line: 862, column: 19, scope: !861, inlinedAt: !856)
!863 = !DILocation(line: 862, column: 22, scope: !861, inlinedAt: !856)
!864 = !DILocation(line: 862, column: 7, scope: !839, inlinedAt: !856)
!865 = !DILocation(line: 868, column: 7, scope: !866, inlinedAt: !856)
!866 = distinct !DILexicalBlock(scope: !861, file: !71, line: 863, column: 5)
!867 = !DILocation(line: 870, column: 5, scope: !866, inlinedAt: !856)
!868 = !DILocation(line: 875, column: 3, scope: !839, inlinedAt: !856)
!869 = !DILocation(line: 877, column: 3, scope: !839, inlinedAt: !856)
!870 = !DILocation(line: 113, column: 3, scope: !818)
!871 = !DISubprogram(name: "dcgettext", scope: !872, file: !872, line: 51, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!873 = !DISubroutineType(types: !874)
!874 = !{!124, !74, !74, !117}
!875 = !DISubprogram(name: "__fprintf_chk", scope: !876, file: !876, line: 93, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!877 = !DISubroutineType(types: !878)
!878 = !{!117, !879, !117, !880, null}
!879 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !260)
!880 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!881 = !DISubprogram(name: "__printf_chk", scope: !876, file: !876, line: 95, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DISubroutineType(types: !883)
!883 = !{!117, !117, !880, null}
!884 = !DILocation(line: 0, scope: !70)
!885 = !DILocation(line: 581, column: 7, scope: !245)
!886 = !{!887, !887, i64 0}
!887 = !{!"int", !831, i64 0}
!888 = !DILocation(line: 581, column: 19, scope: !245)
!889 = !DILocation(line: 581, column: 7, scope: !70)
!890 = !DILocation(line: 585, column: 26, scope: !244)
!891 = !DILocation(line: 0, scope: !244)
!892 = !DILocation(line: 586, column: 23, scope: !244)
!893 = !DILocation(line: 586, column: 28, scope: !244)
!894 = !DILocation(line: 586, column: 32, scope: !244)
!895 = !{!831, !831, i64 0}
!896 = !DILocation(line: 586, column: 38, scope: !244)
!897 = !DILocalVariable(name: "__s1", arg: 1, scope: !898, file: !899, line: 1359, type: !74)
!898 = distinct !DISubprogram(name: "streq", scope: !899, file: !899, line: 1359, type: !900, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !902)
!899 = !DIFile(filename: "./lib/string.h", directory: "/src")
!900 = !DISubroutineType(types: !901)
!901 = !{!247, !74, !74}
!902 = !{!897, !903}
!903 = !DILocalVariable(name: "__s2", arg: 2, scope: !898, file: !899, line: 1359, type: !74)
!904 = !DILocation(line: 0, scope: !898, inlinedAt: !905)
!905 = distinct !DILocation(line: 586, column: 41, scope: !244)
!906 = !DILocation(line: 1361, column: 11, scope: !898, inlinedAt: !905)
!907 = !DILocation(line: 1361, column: 10, scope: !898, inlinedAt: !905)
!908 = !DILocation(line: 586, column: 19, scope: !244)
!909 = !DILocation(line: 587, column: 5, scope: !244)
!910 = !DILocation(line: 588, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !70, file: !71, line: 588, column: 7)
!912 = !DILocation(line: 588, column: 7, scope: !70)
!913 = !DILocation(line: 590, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !71, line: 589, column: 5)
!915 = !DILocation(line: 591, column: 7, scope: !914)
!916 = !DILocation(line: 595, column: 37, scope: !70)
!917 = !DILocation(line: 595, column: 35, scope: !70)
!918 = !DILocation(line: 596, column: 29, scope: !70)
!919 = !DILocation(line: 597, column: 8, scope: !253)
!920 = !DILocation(line: 597, column: 7, scope: !70)
!921 = !DILocation(line: 604, column: 24, scope: !252)
!922 = !DILocation(line: 604, column: 12, scope: !253)
!923 = !DILocation(line: 0, scope: !251)
!924 = !DILocation(line: 610, column: 16, scope: !251)
!925 = !DILocation(line: 610, column: 7, scope: !251)
!926 = !DILocation(line: 611, column: 21, scope: !251)
!927 = !{!928, !928, i64 0}
!928 = !{!"short", !831, i64 0}
!929 = !DILocation(line: 611, column: 19, scope: !251)
!930 = !DILocation(line: 611, column: 16, scope: !251)
!931 = !DILocation(line: 610, column: 30, scope: !251)
!932 = distinct !{!932, !925, !926, !933}
!933 = !{!"llvm.loop.mustprogress"}
!934 = !DILocation(line: 612, column: 18, scope: !935)
!935 = distinct !DILexicalBlock(scope: !251, file: !71, line: 612, column: 11)
!936 = !DILocation(line: 612, column: 11, scope: !251)
!937 = !DILocation(line: 620, column: 23, scope: !70)
!938 = !DILocation(line: 625, column: 39, scope: !70)
!939 = !DILocation(line: 626, column: 3, scope: !70)
!940 = !DILocation(line: 626, column: 10, scope: !70)
!941 = !DILocation(line: 626, column: 21, scope: !70)
!942 = !DILocation(line: 628, column: 44, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !71, line: 628, column: 11)
!944 = distinct !DILexicalBlock(scope: !70, file: !71, line: 627, column: 5)
!945 = !DILocation(line: 628, column: 32, scope: !943)
!946 = !DILocation(line: 628, column: 49, scope: !943)
!947 = !DILocation(line: 628, column: 11, scope: !944)
!948 = !DILocation(line: 630, column: 11, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !71, line: 630, column: 11)
!950 = !DILocation(line: 630, column: 11, scope: !944)
!951 = !DILocation(line: 632, column: 26, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !71, line: 632, column: 15)
!953 = distinct !DILexicalBlock(scope: !949, file: !71, line: 631, column: 9)
!954 = !DILocation(line: 632, column: 34, scope: !952)
!955 = !DILocation(line: 632, column: 37, scope: !952)
!956 = !DILocation(line: 632, column: 15, scope: !953)
!957 = !DILocation(line: 636, column: 16, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !71, line: 636, column: 15)
!959 = !DILocation(line: 636, column: 29, scope: !958)
!960 = !DILocation(line: 640, column: 16, scope: !944)
!961 = distinct !{!961, !939, !962, !933}
!962 = !DILocation(line: 641, column: 5, scope: !70)
!963 = !DILocation(line: 644, column: 3, scope: !70)
!964 = !DILocation(line: 0, scope: !898, inlinedAt: !965)
!965 = distinct !DILocation(line: 648, column: 31, scope: !70)
!966 = !DILocation(line: 0, scope: !898, inlinedAt: !967)
!967 = distinct !DILocation(line: 649, column: 31, scope: !70)
!968 = !DILocation(line: 0, scope: !898, inlinedAt: !969)
!969 = distinct !DILocation(line: 650, column: 31, scope: !70)
!970 = !DILocation(line: 0, scope: !898, inlinedAt: !971)
!971 = distinct !DILocation(line: 651, column: 31, scope: !70)
!972 = !DILocation(line: 0, scope: !898, inlinedAt: !973)
!973 = distinct !DILocation(line: 652, column: 31, scope: !70)
!974 = !DILocation(line: 0, scope: !898, inlinedAt: !975)
!975 = distinct !DILocation(line: 653, column: 31, scope: !70)
!976 = !DILocation(line: 0, scope: !898, inlinedAt: !977)
!977 = distinct !DILocation(line: 654, column: 31, scope: !70)
!978 = !DILocation(line: 0, scope: !898, inlinedAt: !979)
!979 = distinct !DILocation(line: 655, column: 31, scope: !70)
!980 = !DILocation(line: 0, scope: !898, inlinedAt: !981)
!981 = distinct !DILocation(line: 656, column: 31, scope: !70)
!982 = !DILocation(line: 0, scope: !898, inlinedAt: !983)
!983 = distinct !DILocation(line: 657, column: 31, scope: !70)
!984 = !DILocation(line: 663, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !70, file: !71, line: 663, column: 7)
!986 = !DILocation(line: 664, column: 7, scope: !985)
!987 = !DILocation(line: 664, column: 10, scope: !985)
!988 = !DILocation(line: 663, column: 7, scope: !70)
!989 = !DILocation(line: 669, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !985, file: !71, line: 665, column: 5)
!991 = !DILocation(line: 671, column: 5, scope: !990)
!992 = !DILocation(line: 676, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !985, file: !71, line: 673, column: 5)
!994 = !DILocation(line: 679, column: 3, scope: !70)
!995 = !DILocation(line: 683, column: 3, scope: !70)
!996 = !DILocation(line: 686, column: 3, scope: !70)
!997 = !DILocation(line: 688, column: 3, scope: !70)
!998 = !DILocation(line: 691, column: 3, scope: !70)
!999 = !DILocation(line: 695, column: 3, scope: !70)
!1000 = !DILocation(line: 696, column: 1, scope: !70)
!1001 = !DISubprogram(name: "setlocale", scope: !1002, file: !1002, line: 122, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!124, !117, !74}
!1005 = !DISubprogram(name: "strncmp", scope: !1006, file: !1006, line: 159, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!117, !74, !74, !119}
!1009 = !DISubprogram(name: "fputs_unlocked", scope: !1010, file: !1010, line: 691, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!117, !880, !879}
!1013 = !DISubprogram(name: "exit", scope: !1014, file: !1014, line: 624, type: !819, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1014 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1015 = !DISubprogram(name: "getenv", scope: !1014, file: !1014, line: 641, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!124, !74}
!1018 = !DISubprogram(name: "strcmp", scope: !1006, file: !1006, line: 156, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!117, !74, !74}
!1021 = !DISubprogram(name: "strspn", scope: !1006, file: !1006, line: 297, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!121, !74, !74}
!1024 = !DISubprogram(name: "strchr", scope: !1006, file: !1006, line: 246, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!124, !74, !117}
!1027 = !DISubprogram(name: "__ctype_b_loc", scope: !87, file: !87, line: 79, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1033 = !DISubprogram(name: "strcspn", scope: !1006, file: !1006, line: 293, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubprogram(name: "fwrite_unlocked", scope: !1010, file: !1010, line: 704, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!119, !1037, !119, !119, !879}
!1037 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1040 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 117, type: !1041, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!117, !117, !123}
!1043 = !{!1044, !1045}
!1044 = !DILocalVariable(name: "argc", arg: 1, scope: !1040, file: !2, line: 117, type: !117)
!1045 = !DILocalVariable(name: "argv", arg: 2, scope: !1040, file: !2, line: 117, type: !123)
!1046 = !DILocation(line: 0, scope: !1040)
!1047 = !DILocation(line: 120, column: 21, scope: !1040)
!1048 = !DILocation(line: 120, column: 3, scope: !1040)
!1049 = !DILocation(line: 121, column: 3, scope: !1040)
!1050 = !DILocation(line: 122, column: 3, scope: !1040)
!1051 = !DILocation(line: 123, column: 3, scope: !1040)
!1052 = !DILocation(line: 125, column: 3, scope: !1040)
!1053 = !DILocation(line: 128, column: 36, scope: !1040)
!1054 = !DILocation(line: 128, column: 58, scope: !1040)
!1055 = !DILocation(line: 127, column: 3, scope: !1040)
!1056 = !DILocation(line: 131, column: 18, scope: !1040)
!1057 = !DILocation(line: 131, column: 16, scope: !1040)
!1058 = !DILocation(line: 131, column: 3, scope: !1040)
!1059 = !DILocation(line: 134, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 132, column: 5)
!1061 = !DILocation(line: 135, column: 7, scope: !1060)
!1062 = !DILocation(line: 138, column: 14, scope: !1060)
!1063 = !DILocation(line: 138, column: 7, scope: !1060)
!1064 = !DILocation(line: 139, column: 7, scope: !1060)
!1065 = !DILocation(line: 142, column: 7, scope: !1060)
!1066 = !DILocation(line: 143, column: 7, scope: !1060)
!1067 = !DILocation(line: 146, column: 3, scope: !1040)
!1068 = !DISubprogram(name: "bindtextdomain", scope: !872, file: !872, line: 86, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!124, !74, !74}
!1071 = !DISubprogram(name: "textdomain", scope: !872, file: !872, line: 82, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubprogram(name: "atexit", scope: !1014, file: !1014, line: 602, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!117, !388}
!1075 = distinct !DISubprogram(name: "users", scope: !2, file: !2, line: 82, type: !1076, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !74, !117}
!1078 = !{!1079, !1080, !1081, !1084}
!1079 = !DILocalVariable(name: "filename", arg: 1, scope: !1075, file: !2, line: 82, type: !74)
!1080 = !DILocalVariable(name: "options", arg: 2, scope: !1075, file: !2, line: 82, type: !117)
!1081 = !DILocalVariable(name: "n_users", scope: !1075, file: !2, line: 84, type: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1083, line: 130, baseType: !775)
!1083 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1084 = !DILocalVariable(name: "utmp_buf", scope: !1075, file: !2, line: 85, type: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !79, line: 92, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !79, line: 65, size: 576, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1101, !1104, !1105, !1106}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !1087, file: !79, line: 69, baseType: !124, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !1087, file: !79, line: 70, baseType: !124, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !1087, file: !79, line: 71, baseType: !124, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !1087, file: !79, line: 72, baseType: !124, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !1087, file: !79, line: 74, baseType: !1094, size: 128, offset: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1095, line: 11, size: 128, elements: !1096)
!1095 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1096 = !{!1097, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1094, file: !1095, line: 16, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !287, line: 160, baseType: !288)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1094, file: !1095, line: 21, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !287, line: 197, baseType: !288)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !1087, file: !79, line: 75, baseType: !1102, size: 32, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1103, line: 97, baseType: !724)
!1103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !1087, file: !79, line: 76, baseType: !1102, size: 32, offset: 416)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !1087, file: !79, line: 77, baseType: !722, size: 16, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !1087, file: !79, line: 79, baseType: !1107, size: 64, offset: 480)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !79, line: 79, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !1107, file: !79, line: 79, baseType: !117, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !1107, file: !79, line: 79, baseType: !117, size: 32, offset: 32)
!1111 = distinct !DIAssignID()
!1112 = !DILocation(line: 0, scope: !1075)
!1113 = distinct !DIAssignID()
!1114 = !DILocation(line: 84, column: 3, scope: !1075)
!1115 = !DILocation(line: 85, column: 3, scope: !1075)
!1116 = !DILocation(line: 86, column: 11, scope: !1075)
!1117 = !DILocation(line: 87, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 87, column: 7)
!1119 = !DILocation(line: 87, column: 58, scope: !1118)
!1120 = !DILocation(line: 87, column: 7, scope: !1075)
!1121 = !DILocation(line: 88, column: 5, scope: !1118)
!1122 = !DILocation(line: 90, column: 23, scope: !1075)
!1123 = !{!1124, !1124, i64 0}
!1124 = !{!"long", !831, i64 0}
!1125 = !DILocation(line: 90, column: 32, scope: !1075)
!1126 = !DILocalVariable(name: "n", arg: 1, scope: !1127, file: !2, line: 45, type: !1082)
!1127 = distinct !DISubprogram(name: "list_entries_users", scope: !2, file: !2, line: 45, type: !1128, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1132)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !1082, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1132 = !{!1126, !1133, !1134, !1135, !1136, !1140, !1142, !1145}
!1133 = !DILocalVariable(name: "this", arg: 2, scope: !1127, file: !2, line: 45, type: !1130)
!1134 = !DILocalVariable(name: "u", scope: !1127, file: !2, line: 47, type: !123)
!1135 = !DILocalVariable(name: "n_entries", scope: !1127, file: !2, line: 48, type: !1082)
!1136 = !DILocalVariable(name: "trimmed_name", scope: !1137, file: !2, line: 54, type: !124)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 53, column: 9)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 52, column: 11)
!1139 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 51, column: 5)
!1140 = !DILocalVariable(name: "i", scope: !1141, file: !2, line: 66, type: !1082)
!1141 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 66, column: 3)
!1142 = !DILocalVariable(name: "c", scope: !1143, file: !2, line: 68, type: !4)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 67, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 66, column: 3)
!1145 = !DILocalVariable(name: "i", scope: !1146, file: !2, line: 73, type: !1082)
!1146 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 73, column: 3)
!1147 = !DILocation(line: 0, scope: !1127, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 90, column: 3, scope: !1075)
!1149 = !DILocation(line: 47, column: 14, scope: !1127, inlinedAt: !1148)
!1150 = !DILocation(line: 50, column: 3, scope: !1127, inlinedAt: !1148)
!1151 = !DILocation(line: 64, column: 3, scope: !1127, inlinedAt: !1148)
!1152 = !DILocation(line: 0, scope: !1141, inlinedAt: !1148)
!1153 = !DILocation(line: 66, column: 3, scope: !1141, inlinedAt: !1148)
!1154 = !DILocation(line: 50, column: 11, scope: !1127, inlinedAt: !1148)
!1155 = !DILocation(line: 52, column: 11, scope: !1138, inlinedAt: !1148)
!1156 = !{!1157, !830, i64 0}
!1157 = !{!"gl_utmp", !830, i64 0, !830, i64 8, !830, i64 16, !830, i64 24, !1158, i64 32, !887, i64 48, !887, i64 52, !928, i64 56, !1159, i64 60}
!1158 = !{!"timespec", !1124, i64 0, !1124, i64 8}
!1159 = !{!"", !887, i64 0, !887, i64 4}
!1160 = !{!1157, !928, i64 56}
!1161 = !DILocation(line: 52, column: 11, scope: !1139, inlinedAt: !1148)
!1162 = !DILocation(line: 56, column: 26, scope: !1137, inlinedAt: !1148)
!1163 = !DILocation(line: 0, scope: !1137, inlinedAt: !1148)
!1164 = !DILocation(line: 58, column: 11, scope: !1137, inlinedAt: !1148)
!1165 = !DILocation(line: 58, column: 24, scope: !1137, inlinedAt: !1148)
!1166 = !DILocation(line: 59, column: 11, scope: !1137, inlinedAt: !1148)
!1167 = !DILocation(line: 60, column: 9, scope: !1137, inlinedAt: !1148)
!1168 = !DILocation(line: 61, column: 11, scope: !1139, inlinedAt: !1148)
!1169 = distinct !{!1169, !1150, !1170, !933}
!1170 = !DILocation(line: 62, column: 5, scope: !1127, inlinedAt: !1148)
!1171 = !DILocation(line: 66, column: 23, scope: !1144, inlinedAt: !1148)
!1172 = !DILocation(line: 68, column: 19, scope: !1143, inlinedAt: !1148)
!1173 = !DILocation(line: 0, scope: !1143, inlinedAt: !1148)
!1174 = !DILocation(line: 69, column: 7, scope: !1143, inlinedAt: !1148)
!1175 = !DILocation(line: 68, column: 16, scope: !1143, inlinedAt: !1148)
!1176 = !DILocalVariable(name: "__c", arg: 1, scope: !1177, file: !1178, line: 108, type: !117)
!1177 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1178, file: !1178, line: 108, type: !1179, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1181)
!1178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!117, !117}
!1181 = !{!1176}
!1182 = !DILocation(line: 0, scope: !1177, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 70, column: 7, scope: !1143, inlinedAt: !1148)
!1184 = !DILocation(line: 110, column: 10, scope: !1177, inlinedAt: !1183)
!1185 = !{!1186, !830, i64 40}
!1186 = !{!"_IO_FILE", !887, i64 0, !830, i64 8, !830, i64 16, !830, i64 24, !830, i64 32, !830, i64 40, !830, i64 48, !830, i64 56, !830, i64 64, !830, i64 72, !830, i64 80, !830, i64 88, !830, i64 96, !830, i64 104, !887, i64 112, !887, i64 116, !1124, i64 120, !928, i64 128, !831, i64 130, !831, i64 131, !830, i64 136, !1124, i64 144, !830, i64 152, !830, i64 160, !830, i64 168, !830, i64 176, !1124, i64 184, !887, i64 192, !831, i64 196}
!1187 = !{!1186, !830, i64 48}
!1188 = !{!"branch_weights", i32 2000, i32 1}
!1189 = !DILocation(line: 66, column: 37, scope: !1144, inlinedAt: !1148)
!1190 = distinct !{!1190, !1153, !1191, !933}
!1191 = !DILocation(line: 71, column: 5, scope: !1141, inlinedAt: !1148)
!1192 = !DILocation(line: 0, scope: !1146, inlinedAt: !1148)
!1193 = !DILocation(line: 74, column: 11, scope: !1194, inlinedAt: !1148)
!1194 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 73, column: 3)
!1195 = !DILocation(line: 74, column: 5, scope: !1194, inlinedAt: !1148)
!1196 = !DILocation(line: 73, column: 37, scope: !1194, inlinedAt: !1148)
!1197 = !DILocation(line: 73, column: 23, scope: !1194, inlinedAt: !1148)
!1198 = !DILocation(line: 73, column: 3, scope: !1146, inlinedAt: !1148)
!1199 = distinct !{!1199, !1198, !1200, !933}
!1200 = !DILocation(line: 74, column: 15, scope: !1146, inlinedAt: !1148)
!1201 = !DILocation(line: 75, column: 3, scope: !1127, inlinedAt: !1148)
!1202 = !DILocation(line: 92, column: 9, scope: !1075)
!1203 = !DILocation(line: 92, column: 3, scope: !1075)
!1204 = !DILocation(line: 93, column: 1, scope: !1075)
!1205 = !DISubprogram(name: "__errno_location", scope: !1206, file: !1206, line: 37, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!413}
!1209 = distinct !DISubprogram(name: "userid_compare", scope: !2, file: !2, line: 37, type: !1210, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!117, !1038, !1038}
!1212 = !{!1213, !1214, !1215, !1216}
!1213 = !DILocalVariable(name: "v_a", arg: 1, scope: !1209, file: !2, line: 37, type: !1038)
!1214 = !DILocalVariable(name: "v_b", arg: 2, scope: !1209, file: !2, line: 37, type: !1038)
!1215 = !DILocalVariable(name: "a", scope: !1209, file: !2, line: 39, type: !123)
!1216 = !DILocalVariable(name: "b", scope: !1209, file: !2, line: 40, type: !123)
!1217 = !DILocation(line: 0, scope: !1209)
!1218 = !DILocation(line: 41, column: 18, scope: !1209)
!1219 = !DILocation(line: 41, column: 22, scope: !1209)
!1220 = !DILocation(line: 41, column: 10, scope: !1209)
!1221 = !DILocation(line: 41, column: 3, scope: !1209)
!1222 = !DISubprogram(name: "qsort", scope: !1014, file: !1014, line: 838, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !116, !119, !119, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1014, line: 816, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1227 = !DISubprogram(name: "__overflow", scope: !1010, file: !1010, line: 886, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!117, !260, !117}
!1230 = !DISubprogram(name: "free", scope: !1014, file: !1014, line: 555, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !116}
!1233 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !328, file: !328, line: 50, type: !840, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1234)
!1234 = !{!1235}
!1235 = !DILocalVariable(name: "file", arg: 1, scope: !1233, file: !328, line: 50, type: !74)
!1236 = !DILocation(line: 0, scope: !1233)
!1237 = !DILocation(line: 52, column: 13, scope: !1233)
!1238 = !DILocation(line: 53, column: 1, scope: !1233)
!1239 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !328, file: !328, line: 87, type: !1240, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !247}
!1242 = !{!1243}
!1243 = !DILocalVariable(name: "ignore", arg: 1, scope: !1239, file: !328, line: 87, type: !247)
!1244 = !DILocation(line: 0, scope: !1239)
!1245 = !DILocation(line: 89, column: 16, scope: !1239)
!1246 = !{!1247, !1247, i64 0}
!1247 = !{!"_Bool", !831, i64 0}
!1248 = !DILocation(line: 90, column: 1, scope: !1239)
!1249 = distinct !DISubprogram(name: "close_stdout", scope: !328, file: !328, line: 116, type: !389, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1250)
!1250 = !{!1251}
!1251 = !DILocalVariable(name: "write_error", scope: !1252, file: !328, line: 121, type: !74)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !328, line: 120, column: 5)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !328, line: 118, column: 7)
!1254 = !DILocation(line: 118, column: 21, scope: !1253)
!1255 = !DILocation(line: 118, column: 7, scope: !1253)
!1256 = !DILocation(line: 118, column: 29, scope: !1253)
!1257 = !DILocation(line: 119, column: 7, scope: !1253)
!1258 = !DILocation(line: 119, column: 12, scope: !1253)
!1259 = !{i8 0, i8 2}
!1260 = !DILocation(line: 119, column: 25, scope: !1253)
!1261 = !DILocation(line: 119, column: 28, scope: !1253)
!1262 = !DILocation(line: 119, column: 34, scope: !1253)
!1263 = !DILocation(line: 118, column: 7, scope: !1249)
!1264 = !DILocation(line: 121, column: 33, scope: !1252)
!1265 = !DILocation(line: 0, scope: !1252)
!1266 = !DILocation(line: 122, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1252, file: !328, line: 122, column: 11)
!1268 = !DILocation(line: 0, scope: !1267)
!1269 = !DILocation(line: 122, column: 11, scope: !1252)
!1270 = !DILocation(line: 123, column: 9, scope: !1267)
!1271 = !DILocation(line: 126, column: 9, scope: !1267)
!1272 = !DILocation(line: 128, column: 14, scope: !1252)
!1273 = !DILocation(line: 128, column: 7, scope: !1252)
!1274 = !DILocation(line: 133, column: 42, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1249, file: !328, line: 133, column: 7)
!1276 = !DILocation(line: 133, column: 28, scope: !1275)
!1277 = !DILocation(line: 133, column: 50, scope: !1275)
!1278 = !DILocation(line: 133, column: 7, scope: !1249)
!1279 = !DILocation(line: 134, column: 12, scope: !1275)
!1280 = !DILocation(line: 134, column: 5, scope: !1275)
!1281 = !DILocation(line: 135, column: 1, scope: !1249)
!1282 = !DISubprogram(name: "_exit", scope: !1283, file: !1283, line: 624, type: !819, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1283 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1284 = distinct !DISubprogram(name: "verror", scope: !343, file: !343, line: 251, type: !1285, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !117, !117, !74, !353}
!1287 = !{!1288, !1289, !1290, !1291}
!1288 = !DILocalVariable(name: "status", arg: 1, scope: !1284, file: !343, line: 251, type: !117)
!1289 = !DILocalVariable(name: "errnum", arg: 2, scope: !1284, file: !343, line: 251, type: !117)
!1290 = !DILocalVariable(name: "message", arg: 3, scope: !1284, file: !343, line: 251, type: !74)
!1291 = !DILocalVariable(name: "args", arg: 4, scope: !1284, file: !343, line: 251, type: !353)
!1292 = !DILocation(line: 0, scope: !1284)
!1293 = !DILocation(line: 261, column: 3, scope: !1284)
!1294 = !DILocation(line: 265, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1284, file: !343, line: 265, column: 7)
!1296 = !DILocation(line: 265, column: 7, scope: !1284)
!1297 = !DILocation(line: 266, column: 5, scope: !1295)
!1298 = !DILocation(line: 272, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !343, line: 268, column: 5)
!1300 = !DILocation(line: 276, column: 3, scope: !1284)
!1301 = !DILocation(line: 282, column: 1, scope: !1284)
!1302 = distinct !DISubprogram(name: "flush_stdout", scope: !343, file: !343, line: 163, type: !389, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1303)
!1303 = !{!1304}
!1304 = !DILocalVariable(name: "stdout_fd", scope: !1302, file: !343, line: 166, type: !117)
!1305 = !DILocation(line: 0, scope: !1302)
!1306 = !DILocalVariable(name: "fd", arg: 1, scope: !1307, file: !343, line: 145, type: !117)
!1307 = distinct !DISubprogram(name: "is_open", scope: !343, file: !343, line: 145, type: !1179, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1308)
!1308 = !{!1306}
!1309 = !DILocation(line: 0, scope: !1307, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 182, column: 25, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1302, file: !343, line: 182, column: 7)
!1312 = !DILocation(line: 157, column: 15, scope: !1307, inlinedAt: !1310)
!1313 = !DILocation(line: 157, column: 12, scope: !1307, inlinedAt: !1310)
!1314 = !DILocation(line: 182, column: 7, scope: !1302)
!1315 = !DILocation(line: 184, column: 5, scope: !1311)
!1316 = !DILocation(line: 185, column: 1, scope: !1302)
!1317 = distinct !DISubprogram(name: "error_tail", scope: !343, file: !343, line: 219, type: !1285, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1318)
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DILocalVariable(name: "status", arg: 1, scope: !1317, file: !343, line: 219, type: !117)
!1320 = !DILocalVariable(name: "errnum", arg: 2, scope: !1317, file: !343, line: 219, type: !117)
!1321 = !DILocalVariable(name: "message", arg: 3, scope: !1317, file: !343, line: 219, type: !74)
!1322 = !DILocalVariable(name: "args", arg: 4, scope: !1317, file: !343, line: 219, type: !353)
!1323 = distinct !DIAssignID()
!1324 = !DILocation(line: 0, scope: !1317)
!1325 = !DILocation(line: 229, column: 13, scope: !1317)
!1326 = !DILocalVariable(name: "__stream", arg: 1, scope: !1327, file: !876, line: 132, type: !1330)
!1327 = distinct !DISubprogram(name: "vfprintf", scope: !876, file: !876, line: 132, type: !1328, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1365)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!117, !1330, !880, !353}
!1330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1333, file: !264, line: 51, baseType: !117, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1333, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1333, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1333, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1333, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1333, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1333, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1333, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1333, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1333, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1333, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1333, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1333, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1333, file: !264, line: 70, baseType: !1349, size: 64, offset: 832)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1333, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1333, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1333, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1333, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1333, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1333, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1333, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1333, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1333, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1333, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1333, file: !264, line: 93, baseType: !1349, size: 64, offset: 1344)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1333, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1333, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1333, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1333, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!1365 = !{!1326, !1366, !1367}
!1366 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1327, file: !876, line: 133, type: !880)
!1367 = !DILocalVariable(name: "__ap", arg: 3, scope: !1327, file: !876, line: 133, type: !353)
!1368 = !DILocation(line: 0, scope: !1327, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 229, column: 3, scope: !1317)
!1370 = !DILocation(line: 135, column: 10, scope: !1327, inlinedAt: !1369)
!1371 = !DILocation(line: 232, column: 3, scope: !1317)
!1372 = !DILocation(line: 233, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1317, file: !343, line: 233, column: 7)
!1374 = !DILocation(line: 233, column: 7, scope: !1317)
!1375 = !DILocalVariable(name: "errbuf", scope: !1376, file: !343, line: 193, type: !1380)
!1376 = distinct !DISubprogram(name: "print_errno_message", scope: !343, file: !343, line: 188, type: !819, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1377)
!1377 = !{!1378, !1379, !1375}
!1378 = !DILocalVariable(name: "errnum", arg: 1, scope: !1376, file: !343, line: 188, type: !117)
!1379 = !DILocalVariable(name: "s", scope: !1376, file: !343, line: 190, type: !74)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 1024)
!1383 = !DILocation(line: 0, scope: !1376, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 234, column: 5, scope: !1373)
!1385 = !DILocation(line: 193, column: 3, scope: !1376, inlinedAt: !1384)
!1386 = !DILocation(line: 195, column: 7, scope: !1376, inlinedAt: !1384)
!1387 = !DILocation(line: 207, column: 9, scope: !1388, inlinedAt: !1384)
!1388 = distinct !DILexicalBlock(scope: !1376, file: !343, line: 207, column: 7)
!1389 = !DILocation(line: 207, column: 7, scope: !1376, inlinedAt: !1384)
!1390 = !DILocation(line: 208, column: 9, scope: !1388, inlinedAt: !1384)
!1391 = !DILocation(line: 208, column: 5, scope: !1388, inlinedAt: !1384)
!1392 = !DILocation(line: 214, column: 3, scope: !1376, inlinedAt: !1384)
!1393 = !DILocation(line: 216, column: 1, scope: !1376, inlinedAt: !1384)
!1394 = !DILocation(line: 234, column: 5, scope: !1373)
!1395 = !DILocation(line: 238, column: 3, scope: !1317)
!1396 = !DILocalVariable(name: "__c", arg: 1, scope: !1397, file: !1178, line: 101, type: !117)
!1397 = distinct !DISubprogram(name: "putc_unlocked", scope: !1178, file: !1178, line: 101, type: !1398, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!117, !117, !1331}
!1400 = !{!1396, !1401}
!1401 = !DILocalVariable(name: "__stream", arg: 2, scope: !1397, file: !1178, line: 101, type: !1331)
!1402 = !DILocation(line: 0, scope: !1397, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 238, column: 3, scope: !1317)
!1404 = !DILocation(line: 103, column: 10, scope: !1397, inlinedAt: !1403)
!1405 = !DILocation(line: 240, column: 3, scope: !1317)
!1406 = !DILocation(line: 241, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1317, file: !343, line: 241, column: 7)
!1408 = !DILocation(line: 241, column: 7, scope: !1317)
!1409 = !DILocation(line: 242, column: 5, scope: !1407)
!1410 = !DILocation(line: 243, column: 1, scope: !1317)
!1411 = !DISubprogram(name: "__vfprintf_chk", scope: !876, file: !876, line: 96, type: !1412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!117, !1330, !117, !880, !353}
!1414 = !DISubprogram(name: "strerror_r", scope: !1006, file: !1006, line: 444, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!124, !117, !124, !119}
!1417 = !DISubprogram(name: "fflush_unlocked", scope: !1010, file: !1010, line: 239, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!117, !1331}
!1420 = !DISubprogram(name: "fcntl", scope: !1421, file: !1421, line: 149, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1421 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!117, !117, !117, null}
!1424 = distinct !DISubprogram(name: "error", scope: !343, file: !343, line: 285, type: !1425, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !117, !117, !74, null}
!1427 = !{!1428, !1429, !1430, !1431}
!1428 = !DILocalVariable(name: "status", arg: 1, scope: !1424, file: !343, line: 285, type: !117)
!1429 = !DILocalVariable(name: "errnum", arg: 2, scope: !1424, file: !343, line: 285, type: !117)
!1430 = !DILocalVariable(name: "message", arg: 3, scope: !1424, file: !343, line: 285, type: !74)
!1431 = !DILocalVariable(name: "ap", scope: !1424, file: !343, line: 287, type: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1010, line: 52, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1434, line: 12, baseType: !1435)
!1434 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !343, baseType: !1436)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 192, elements: !42)
!1437 = distinct !DIAssignID()
!1438 = !DILocation(line: 0, scope: !1424)
!1439 = !DILocation(line: 287, column: 3, scope: !1424)
!1440 = !DILocation(line: 288, column: 3, scope: !1424)
!1441 = !DILocation(line: 289, column: 3, scope: !1424)
!1442 = !DILocation(line: 290, column: 3, scope: !1424)
!1443 = !DILocation(line: 291, column: 1, scope: !1424)
!1444 = !DILocation(line: 0, scope: !350)
!1445 = !DILocation(line: 302, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !350, file: !343, line: 302, column: 7)
!1447 = !DILocation(line: 302, column: 7, scope: !350)
!1448 = !DILocation(line: 307, column: 11, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !343, line: 307, column: 11)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !343, line: 303, column: 5)
!1451 = !DILocation(line: 307, column: 27, scope: !1449)
!1452 = !DILocation(line: 308, column: 11, scope: !1449)
!1453 = !DILocation(line: 308, column: 28, scope: !1449)
!1454 = !DILocation(line: 308, column: 25, scope: !1449)
!1455 = !DILocation(line: 309, column: 15, scope: !1449)
!1456 = !DILocation(line: 309, column: 33, scope: !1449)
!1457 = !DILocation(line: 310, column: 19, scope: !1449)
!1458 = !DILocation(line: 311, column: 22, scope: !1449)
!1459 = !DILocation(line: 311, column: 56, scope: !1449)
!1460 = !DILocation(line: 307, column: 11, scope: !1450)
!1461 = !DILocation(line: 316, column: 21, scope: !1450)
!1462 = !DILocation(line: 317, column: 23, scope: !1450)
!1463 = !DILocation(line: 318, column: 5, scope: !1450)
!1464 = !DILocation(line: 327, column: 3, scope: !350)
!1465 = !DILocation(line: 331, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !350, file: !343, line: 331, column: 7)
!1467 = !DILocation(line: 331, column: 7, scope: !350)
!1468 = !DILocation(line: 332, column: 5, scope: !1466)
!1469 = !DILocation(line: 338, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !343, line: 334, column: 5)
!1471 = !DILocation(line: 346, column: 3, scope: !350)
!1472 = !DILocation(line: 350, column: 3, scope: !350)
!1473 = !DILocation(line: 356, column: 1, scope: !350)
!1474 = distinct !DISubprogram(name: "error_at_line", scope: !343, file: !343, line: 359, type: !1475, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !117, !117, !74, !80, !74, null}
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483}
!1478 = !DILocalVariable(name: "status", arg: 1, scope: !1474, file: !343, line: 359, type: !117)
!1479 = !DILocalVariable(name: "errnum", arg: 2, scope: !1474, file: !343, line: 359, type: !117)
!1480 = !DILocalVariable(name: "file_name", arg: 3, scope: !1474, file: !343, line: 359, type: !74)
!1481 = !DILocalVariable(name: "line_number", arg: 4, scope: !1474, file: !343, line: 360, type: !80)
!1482 = !DILocalVariable(name: "message", arg: 5, scope: !1474, file: !343, line: 360, type: !74)
!1483 = !DILocalVariable(name: "ap", scope: !1474, file: !343, line: 362, type: !1432)
!1484 = distinct !DIAssignID()
!1485 = !DILocation(line: 0, scope: !1474)
!1486 = !DILocation(line: 362, column: 3, scope: !1474)
!1487 = !DILocation(line: 363, column: 3, scope: !1474)
!1488 = !DILocation(line: 364, column: 3, scope: !1474)
!1489 = !DILocation(line: 366, column: 3, scope: !1474)
!1490 = !DILocation(line: 367, column: 1, scope: !1474)
!1491 = distinct !DISubprogram(name: "getprogname", scope: !710, file: !710, line: 54, type: !1492, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!74}
!1494 = !DILocation(line: 58, column: 10, scope: !1491)
!1495 = !DILocation(line: 58, column: 3, scope: !1491)
!1496 = distinct !DISubprogram(name: "parse_long_options", scope: !393, file: !393, line: 45, type: !1497, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1500)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !117, !123, !74, !74, !74, !1499, null}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1511}
!1501 = !DILocalVariable(name: "argc", arg: 1, scope: !1496, file: !393, line: 45, type: !117)
!1502 = !DILocalVariable(name: "argv", arg: 2, scope: !1496, file: !393, line: 46, type: !123)
!1503 = !DILocalVariable(name: "command_name", arg: 3, scope: !1496, file: !393, line: 47, type: !74)
!1504 = !DILocalVariable(name: "package", arg: 4, scope: !1496, file: !393, line: 48, type: !74)
!1505 = !DILocalVariable(name: "version", arg: 5, scope: !1496, file: !393, line: 49, type: !74)
!1506 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1496, file: !393, line: 50, type: !1499)
!1507 = !DILocalVariable(name: "saved_opterr", scope: !1496, file: !393, line: 53, type: !117)
!1508 = !DILocalVariable(name: "c", scope: !1509, file: !393, line: 60, type: !117)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !393, line: 59, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1496, file: !393, line: 58, column: 7)
!1511 = !DILocalVariable(name: "authors", scope: !1512, file: !393, line: 71, type: !1516)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !393, line: 70, column: 15)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !393, line: 64, column: 13)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !393, line: 62, column: 9)
!1515 = distinct !DILexicalBlock(scope: !1509, file: !393, line: 61, column: 11)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1010, line: 52, baseType: !1517)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1434, line: 12, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !393, baseType: !1519)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, size: 192, elements: !42)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1525}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1520, file: !393, line: 71, baseType: !80, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1520, file: !393, line: 71, baseType: !80, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1520, file: !393, line: 71, baseType: !116, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1520, file: !393, line: 71, baseType: !116, size: 64, offset: 128)
!1526 = distinct !DIAssignID()
!1527 = !DILocation(line: 0, scope: !1512)
!1528 = !DILocation(line: 0, scope: !1496)
!1529 = !DILocation(line: 53, column: 22, scope: !1496)
!1530 = !DILocation(line: 56, column: 10, scope: !1496)
!1531 = !DILocation(line: 58, column: 12, scope: !1510)
!1532 = !DILocation(line: 58, column: 7, scope: !1496)
!1533 = !DILocation(line: 60, column: 15, scope: !1509)
!1534 = !DILocation(line: 0, scope: !1509)
!1535 = !DILocation(line: 61, column: 11, scope: !1509)
!1536 = !DILocation(line: 66, column: 15, scope: !1513)
!1537 = !DILocation(line: 67, column: 15, scope: !1513)
!1538 = !DILocation(line: 71, column: 17, scope: !1512)
!1539 = !DILocation(line: 72, column: 17, scope: !1512)
!1540 = !DILocation(line: 73, column: 33, scope: !1512)
!1541 = !DILocation(line: 73, column: 17, scope: !1512)
!1542 = !DILocation(line: 74, column: 17, scope: !1512)
!1543 = !DILocation(line: 85, column: 10, scope: !1496)
!1544 = !DILocation(line: 89, column: 10, scope: !1496)
!1545 = !DILocation(line: 90, column: 1, scope: !1496)
!1546 = !DISubprogram(name: "getopt_long", scope: !408, file: !408, line: 66, type: !1547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!117, !117, !1549, !74, !1551, !413}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1552 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !393, file: !393, line: 98, type: !1553, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !117, !123, !74, !74, !74, !247, !1499, null}
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1556 = !DILocalVariable(name: "argc", arg: 1, scope: !1552, file: !393, line: 98, type: !117)
!1557 = !DILocalVariable(name: "argv", arg: 2, scope: !1552, file: !393, line: 99, type: !123)
!1558 = !DILocalVariable(name: "command_name", arg: 3, scope: !1552, file: !393, line: 100, type: !74)
!1559 = !DILocalVariable(name: "package", arg: 4, scope: !1552, file: !393, line: 101, type: !74)
!1560 = !DILocalVariable(name: "version", arg: 5, scope: !1552, file: !393, line: 102, type: !74)
!1561 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1552, file: !393, line: 103, type: !247)
!1562 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1552, file: !393, line: 104, type: !1499)
!1563 = !DILocalVariable(name: "saved_opterr", scope: !1552, file: !393, line: 107, type: !117)
!1564 = !DILocalVariable(name: "optstring", scope: !1552, file: !393, line: 112, type: !74)
!1565 = !DILocalVariable(name: "c", scope: !1552, file: !393, line: 114, type: !117)
!1566 = !DILocalVariable(name: "authors", scope: !1567, file: !393, line: 125, type: !1516)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !393, line: 124, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !393, line: 118, column: 9)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !393, line: 116, column: 5)
!1570 = distinct !DILexicalBlock(scope: !1552, file: !393, line: 115, column: 7)
!1571 = distinct !DIAssignID()
!1572 = !DILocation(line: 0, scope: !1567)
!1573 = !DILocation(line: 0, scope: !1552)
!1574 = !DILocation(line: 107, column: 22, scope: !1552)
!1575 = !DILocation(line: 110, column: 10, scope: !1552)
!1576 = !DILocation(line: 112, column: 27, scope: !1552)
!1577 = !DILocation(line: 114, column: 11, scope: !1552)
!1578 = !DILocation(line: 115, column: 7, scope: !1552)
!1579 = !DILocation(line: 125, column: 13, scope: !1567)
!1580 = !DILocation(line: 126, column: 13, scope: !1567)
!1581 = !DILocation(line: 127, column: 29, scope: !1567)
!1582 = !DILocation(line: 127, column: 13, scope: !1567)
!1583 = !DILocation(line: 128, column: 13, scope: !1567)
!1584 = !DILocation(line: 132, column: 26, scope: !1568)
!1585 = !DILocation(line: 133, column: 11, scope: !1568)
!1586 = !DILocation(line: 0, scope: !1568)
!1587 = !DILocation(line: 138, column: 10, scope: !1552)
!1588 = !DILocation(line: 139, column: 1, scope: !1552)
!1589 = distinct !DISubprogram(name: "set_program_name", scope: !418, file: !418, line: 37, type: !840, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DILocalVariable(name: "argv0", arg: 1, scope: !1589, file: !418, line: 37, type: !74)
!1592 = !DILocalVariable(name: "slash", scope: !1589, file: !418, line: 44, type: !74)
!1593 = !DILocalVariable(name: "base", scope: !1589, file: !418, line: 45, type: !74)
!1594 = !DILocation(line: 0, scope: !1589)
!1595 = !DILocation(line: 44, column: 23, scope: !1589)
!1596 = !DILocation(line: 45, column: 22, scope: !1589)
!1597 = !DILocation(line: 46, column: 17, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1589, file: !418, line: 46, column: 7)
!1599 = !DILocation(line: 46, column: 9, scope: !1598)
!1600 = !DILocation(line: 46, column: 25, scope: !1598)
!1601 = !DILocation(line: 46, column: 40, scope: !1598)
!1602 = !DILocalVariable(name: "__s1", arg: 1, scope: !1603, file: !899, line: 974, type: !1038)
!1603 = distinct !DISubprogram(name: "memeq", scope: !899, file: !899, line: 974, type: !1604, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!247, !1038, !1038, !119}
!1606 = !{!1602, !1607, !1608}
!1607 = !DILocalVariable(name: "__s2", arg: 2, scope: !1603, file: !899, line: 974, type: !1038)
!1608 = !DILocalVariable(name: "__n", arg: 3, scope: !1603, file: !899, line: 974, type: !119)
!1609 = !DILocation(line: 0, scope: !1603, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 46, column: 28, scope: !1598)
!1611 = !DILocation(line: 976, column: 11, scope: !1603, inlinedAt: !1610)
!1612 = !DILocation(line: 976, column: 10, scope: !1603, inlinedAt: !1610)
!1613 = !DILocation(line: 46, column: 7, scope: !1589)
!1614 = !DILocation(line: 49, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !418, line: 49, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1598, file: !418, line: 47, column: 5)
!1617 = !DILocation(line: 49, column: 36, scope: !1615)
!1618 = !DILocation(line: 49, column: 11, scope: !1616)
!1619 = !DILocation(line: 65, column: 16, scope: !1589)
!1620 = !DILocation(line: 71, column: 27, scope: !1589)
!1621 = !DILocation(line: 74, column: 33, scope: !1589)
!1622 = !DILocation(line: 76, column: 1, scope: !1589)
!1623 = !DISubprogram(name: "strrchr", scope: !1006, file: !1006, line: 273, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = distinct !DIAssignID()
!1625 = !DILocation(line: 0, scope: !427)
!1626 = distinct !DIAssignID()
!1627 = !DILocation(line: 40, column: 29, scope: !427)
!1628 = !DILocation(line: 41, column: 19, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !427, file: !428, line: 41, column: 7)
!1630 = !DILocation(line: 41, column: 7, scope: !427)
!1631 = !DILocation(line: 47, column: 3, scope: !427)
!1632 = !DILocation(line: 48, column: 3, scope: !427)
!1633 = !DILocalVariable(name: "ps", arg: 1, scope: !1634, file: !1635, line: 1135, type: !1638)
!1634 = distinct !DISubprogram(name: "mbszero", scope: !1635, file: !1635, line: 1135, type: !1636, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1639)
!1635 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1639 = !{!1633}
!1640 = !DILocation(line: 0, scope: !1634, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 48, column: 18, scope: !427)
!1642 = !DILocalVariable(name: "__dest", arg: 1, scope: !1643, file: !1644, line: 57, type: !116)
!1643 = distinct !DISubprogram(name: "memset", scope: !1644, file: !1644, line: 57, type: !1645, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !1647)
!1644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!116, !116, !117, !119}
!1647 = !{!1642, !1648, !1649}
!1648 = !DILocalVariable(name: "__ch", arg: 2, scope: !1643, file: !1644, line: 57, type: !117)
!1649 = !DILocalVariable(name: "__len", arg: 3, scope: !1643, file: !1644, line: 57, type: !119)
!1650 = !DILocation(line: 0, scope: !1643, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 1137, column: 3, scope: !1634, inlinedAt: !1641)
!1652 = !DILocation(line: 59, column: 10, scope: !1643, inlinedAt: !1651)
!1653 = !DILocation(line: 49, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !427, file: !428, line: 49, column: 7)
!1655 = !DILocation(line: 49, column: 39, scope: !1654)
!1656 = !DILocation(line: 49, column: 44, scope: !1654)
!1657 = !DILocation(line: 54, column: 1, scope: !427)
!1658 = !DISubprogram(name: "mbrtoc32", scope: !439, file: !439, line: 57, type: !1659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!119, !1661, !880, !119, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1638)
!1664 = distinct !DISubprogram(name: "clone_quoting_options", scope: !458, file: !458, line: 113, type: !1665, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1668)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1667, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1668 = !{!1669, !1670, !1671}
!1669 = !DILocalVariable(name: "o", arg: 1, scope: !1664, file: !458, line: 113, type: !1667)
!1670 = !DILocalVariable(name: "saved_errno", scope: !1664, file: !458, line: 115, type: !117)
!1671 = !DILocalVariable(name: "p", scope: !1664, file: !458, line: 116, type: !1667)
!1672 = !DILocation(line: 0, scope: !1664)
!1673 = !DILocation(line: 115, column: 21, scope: !1664)
!1674 = !DILocation(line: 116, column: 40, scope: !1664)
!1675 = !DILocation(line: 116, column: 31, scope: !1664)
!1676 = !DILocation(line: 118, column: 9, scope: !1664)
!1677 = !DILocation(line: 119, column: 3, scope: !1664)
!1678 = distinct !DISubprogram(name: "get_quoting_style", scope: !458, file: !458, line: 124, type: !1679, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1683)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!484, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!1683 = !{!1684}
!1684 = !DILocalVariable(name: "o", arg: 1, scope: !1678, file: !458, line: 124, type: !1681)
!1685 = !DILocation(line: 0, scope: !1678)
!1686 = !DILocation(line: 126, column: 11, scope: !1678)
!1687 = !DILocation(line: 126, column: 46, scope: !1678)
!1688 = !{!1689, !887, i64 0}
!1689 = !{!"quoting_options", !887, i64 0, !887, i64 4, !831, i64 8, !830, i64 40, !830, i64 48}
!1690 = !DILocation(line: 126, column: 3, scope: !1678)
!1691 = distinct !DISubprogram(name: "set_quoting_style", scope: !458, file: !458, line: 132, type: !1692, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !1667, !484}
!1694 = !{!1695, !1696}
!1695 = !DILocalVariable(name: "o", arg: 1, scope: !1691, file: !458, line: 132, type: !1667)
!1696 = !DILocalVariable(name: "s", arg: 2, scope: !1691, file: !458, line: 132, type: !484)
!1697 = !DILocation(line: 0, scope: !1691)
!1698 = !DILocation(line: 134, column: 4, scope: !1691)
!1699 = !DILocation(line: 134, column: 45, scope: !1691)
!1700 = !DILocation(line: 135, column: 1, scope: !1691)
!1701 = distinct !DISubprogram(name: "set_char_quoting", scope: !458, file: !458, line: 143, type: !1702, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!117, !1667, !4, !117}
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1711, !1712}
!1705 = !DILocalVariable(name: "o", arg: 1, scope: !1701, file: !458, line: 143, type: !1667)
!1706 = !DILocalVariable(name: "c", arg: 2, scope: !1701, file: !458, line: 143, type: !4)
!1707 = !DILocalVariable(name: "i", arg: 3, scope: !1701, file: !458, line: 143, type: !117)
!1708 = !DILocalVariable(name: "uc", scope: !1701, file: !458, line: 145, type: !122)
!1709 = !DILocalVariable(name: "p", scope: !1701, file: !458, line: 146, type: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1711 = !DILocalVariable(name: "shift", scope: !1701, file: !458, line: 148, type: !117)
!1712 = !DILocalVariable(name: "r", scope: !1701, file: !458, line: 149, type: !80)
!1713 = !DILocation(line: 0, scope: !1701)
!1714 = !DILocation(line: 147, column: 6, scope: !1701)
!1715 = !DILocation(line: 147, column: 41, scope: !1701)
!1716 = !DILocation(line: 147, column: 62, scope: !1701)
!1717 = !DILocation(line: 147, column: 57, scope: !1701)
!1718 = !DILocation(line: 148, column: 15, scope: !1701)
!1719 = !DILocation(line: 149, column: 21, scope: !1701)
!1720 = !DILocation(line: 149, column: 24, scope: !1701)
!1721 = !DILocation(line: 149, column: 34, scope: !1701)
!1722 = !DILocation(line: 150, column: 19, scope: !1701)
!1723 = !DILocation(line: 150, column: 24, scope: !1701)
!1724 = !DILocation(line: 150, column: 6, scope: !1701)
!1725 = !DILocation(line: 151, column: 3, scope: !1701)
!1726 = distinct !DISubprogram(name: "set_quoting_flags", scope: !458, file: !458, line: 159, type: !1727, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!117, !1667, !117}
!1729 = !{!1730, !1731, !1732}
!1730 = !DILocalVariable(name: "o", arg: 1, scope: !1726, file: !458, line: 159, type: !1667)
!1731 = !DILocalVariable(name: "i", arg: 2, scope: !1726, file: !458, line: 159, type: !117)
!1732 = !DILocalVariable(name: "r", scope: !1726, file: !458, line: 163, type: !117)
!1733 = !DILocation(line: 0, scope: !1726)
!1734 = !DILocation(line: 161, column: 8, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1726, file: !458, line: 161, column: 7)
!1736 = !DILocation(line: 161, column: 7, scope: !1726)
!1737 = !DILocation(line: 163, column: 14, scope: !1726)
!1738 = !{!1689, !887, i64 4}
!1739 = !DILocation(line: 164, column: 12, scope: !1726)
!1740 = !DILocation(line: 165, column: 3, scope: !1726)
!1741 = distinct !DISubprogram(name: "set_custom_quoting", scope: !458, file: !458, line: 169, type: !1742, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1667, !74, !74}
!1744 = !{!1745, !1746, !1747}
!1745 = !DILocalVariable(name: "o", arg: 1, scope: !1741, file: !458, line: 169, type: !1667)
!1746 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1741, file: !458, line: 170, type: !74)
!1747 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1741, file: !458, line: 170, type: !74)
!1748 = !DILocation(line: 0, scope: !1741)
!1749 = !DILocation(line: 172, column: 8, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1741, file: !458, line: 172, column: 7)
!1751 = !DILocation(line: 172, column: 7, scope: !1741)
!1752 = !DILocation(line: 174, column: 12, scope: !1741)
!1753 = !DILocation(line: 175, column: 8, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1741, file: !458, line: 175, column: 7)
!1755 = !DILocation(line: 175, column: 19, scope: !1754)
!1756 = !DILocation(line: 176, column: 5, scope: !1754)
!1757 = !DILocation(line: 177, column: 6, scope: !1741)
!1758 = !DILocation(line: 177, column: 17, scope: !1741)
!1759 = !{!1689, !830, i64 40}
!1760 = !DILocation(line: 178, column: 6, scope: !1741)
!1761 = !DILocation(line: 178, column: 18, scope: !1741)
!1762 = !{!1689, !830, i64 48}
!1763 = !DILocation(line: 179, column: 1, scope: !1741)
!1764 = !DISubprogram(name: "abort", scope: !1014, file: !1014, line: 598, type: !389, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1765 = distinct !DISubprogram(name: "quotearg_buffer", scope: !458, file: !458, line: 774, type: !1766, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!119, !124, !119, !74, !119, !1681}
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776}
!1769 = !DILocalVariable(name: "buffer", arg: 1, scope: !1765, file: !458, line: 774, type: !124)
!1770 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1765, file: !458, line: 774, type: !119)
!1771 = !DILocalVariable(name: "arg", arg: 3, scope: !1765, file: !458, line: 775, type: !74)
!1772 = !DILocalVariable(name: "argsize", arg: 4, scope: !1765, file: !458, line: 775, type: !119)
!1773 = !DILocalVariable(name: "o", arg: 5, scope: !1765, file: !458, line: 776, type: !1681)
!1774 = !DILocalVariable(name: "p", scope: !1765, file: !458, line: 778, type: !1681)
!1775 = !DILocalVariable(name: "saved_errno", scope: !1765, file: !458, line: 779, type: !117)
!1776 = !DILocalVariable(name: "r", scope: !1765, file: !458, line: 780, type: !119)
!1777 = !DILocation(line: 0, scope: !1765)
!1778 = !DILocation(line: 778, column: 37, scope: !1765)
!1779 = !DILocation(line: 779, column: 21, scope: !1765)
!1780 = !DILocation(line: 781, column: 43, scope: !1765)
!1781 = !DILocation(line: 781, column: 53, scope: !1765)
!1782 = !DILocation(line: 781, column: 63, scope: !1765)
!1783 = !DILocation(line: 782, column: 43, scope: !1765)
!1784 = !DILocation(line: 782, column: 58, scope: !1765)
!1785 = !DILocation(line: 780, column: 14, scope: !1765)
!1786 = !DILocation(line: 783, column: 9, scope: !1765)
!1787 = !DILocation(line: 784, column: 3, scope: !1765)
!1788 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !458, file: !458, line: 251, type: !1789, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1793)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!119, !124, !119, !74, !119, !484, !117, !1791, !74, !74}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1819, !1821, !1824, !1825, !1826, !1827, !1830, !1831, !1833, !1834, !1837, !1841, !1842, !1850, !1853, !1854, !1855}
!1794 = !DILocalVariable(name: "buffer", arg: 1, scope: !1788, file: !458, line: 251, type: !124)
!1795 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1788, file: !458, line: 251, type: !119)
!1796 = !DILocalVariable(name: "arg", arg: 3, scope: !1788, file: !458, line: 252, type: !74)
!1797 = !DILocalVariable(name: "argsize", arg: 4, scope: !1788, file: !458, line: 252, type: !119)
!1798 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1788, file: !458, line: 253, type: !484)
!1799 = !DILocalVariable(name: "flags", arg: 6, scope: !1788, file: !458, line: 253, type: !117)
!1800 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1788, file: !458, line: 254, type: !1791)
!1801 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1788, file: !458, line: 255, type: !74)
!1802 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1788, file: !458, line: 256, type: !74)
!1803 = !DILocalVariable(name: "unibyte_locale", scope: !1788, file: !458, line: 258, type: !247)
!1804 = !DILocalVariable(name: "len", scope: !1788, file: !458, line: 260, type: !119)
!1805 = !DILocalVariable(name: "orig_buffersize", scope: !1788, file: !458, line: 261, type: !119)
!1806 = !DILocalVariable(name: "quote_string", scope: !1788, file: !458, line: 262, type: !74)
!1807 = !DILocalVariable(name: "quote_string_len", scope: !1788, file: !458, line: 263, type: !119)
!1808 = !DILocalVariable(name: "backslash_escapes", scope: !1788, file: !458, line: 264, type: !247)
!1809 = !DILocalVariable(name: "elide_outer_quotes", scope: !1788, file: !458, line: 265, type: !247)
!1810 = !DILocalVariable(name: "encountered_single_quote", scope: !1788, file: !458, line: 266, type: !247)
!1811 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1788, file: !458, line: 267, type: !247)
!1812 = !DILabel(scope: !1788, name: "process_input", file: !458, line: 308)
!1813 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1788, file: !458, line: 309, type: !247)
!1814 = !DILocalVariable(name: "lq", scope: !1815, file: !458, line: 361, type: !74)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !458, line: 361, column: 11)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !458, line: 360, column: 13)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !458, line: 333, column: 7)
!1818 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 312, column: 5)
!1819 = !DILocalVariable(name: "i", scope: !1820, file: !458, line: 395, type: !119)
!1820 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 395, column: 3)
!1821 = !DILocalVariable(name: "is_right_quote", scope: !1822, file: !458, line: 397, type: !247)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !458, line: 396, column: 5)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !458, line: 395, column: 3)
!1824 = !DILocalVariable(name: "escaping", scope: !1822, file: !458, line: 398, type: !247)
!1825 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1822, file: !458, line: 399, type: !247)
!1826 = !DILocalVariable(name: "c", scope: !1822, file: !458, line: 417, type: !122)
!1827 = !DILabel(scope: !1828, name: "c_and_shell_escape", file: !458, line: 502)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 478, column: 9)
!1829 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 419, column: 9)
!1830 = !DILabel(scope: !1828, name: "c_escape", file: !458, line: 507)
!1831 = !DILocalVariable(name: "m", scope: !1832, file: !458, line: 598, type: !119)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 596, column: 11)
!1833 = !DILocalVariable(name: "printable", scope: !1832, file: !458, line: 600, type: !247)
!1834 = !DILocalVariable(name: "mbs", scope: !1835, file: !458, line: 609, type: !533)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !458, line: 608, column: 15)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !458, line: 602, column: 17)
!1837 = !DILocalVariable(name: "w", scope: !1838, file: !458, line: 618, type: !438)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !458, line: 617, column: 19)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !458, line: 616, column: 17)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !458, line: 616, column: 17)
!1841 = !DILocalVariable(name: "bytes", scope: !1838, file: !458, line: 619, type: !119)
!1842 = !DILocalVariable(name: "j", scope: !1843, file: !458, line: 648, type: !119)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !458, line: 648, column: 29)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !458, line: 647, column: 27)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !458, line: 645, column: 29)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !458, line: 636, column: 23)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !458, line: 628, column: 30)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !458, line: 623, column: 30)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !458, line: 621, column: 25)
!1850 = !DILocalVariable(name: "ilim", scope: !1851, file: !458, line: 674, type: !119)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !458, line: 671, column: 15)
!1852 = distinct !DILexicalBlock(scope: !1832, file: !458, line: 670, column: 17)
!1853 = !DILabel(scope: !1822, name: "store_escape", file: !458, line: 709)
!1854 = !DILabel(scope: !1822, name: "store_c", file: !458, line: 712)
!1855 = !DILabel(scope: !1788, name: "force_outer_quoting_style", file: !458, line: 753)
!1856 = distinct !DIAssignID()
!1857 = distinct !DIAssignID()
!1858 = distinct !DIAssignID()
!1859 = distinct !DIAssignID()
!1860 = distinct !DIAssignID()
!1861 = !DILocation(line: 0, scope: !1835)
!1862 = distinct !DIAssignID()
!1863 = !DILocation(line: 0, scope: !1838)
!1864 = !DILocation(line: 0, scope: !1788)
!1865 = !DILocation(line: 258, column: 25, scope: !1788)
!1866 = !DILocation(line: 258, column: 36, scope: !1788)
!1867 = !DILocation(line: 265, column: 8, scope: !1788)
!1868 = !DILocation(line: 267, column: 3, scope: !1788)
!1869 = !DILocation(line: 261, column: 10, scope: !1788)
!1870 = !DILocation(line: 262, column: 15, scope: !1788)
!1871 = !DILocation(line: 263, column: 10, scope: !1788)
!1872 = !DILocation(line: 264, column: 8, scope: !1788)
!1873 = !DILocation(line: 266, column: 8, scope: !1788)
!1874 = !DILocation(line: 267, column: 8, scope: !1788)
!1875 = !DILocation(line: 308, column: 2, scope: !1788)
!1876 = !DILocation(line: 311, column: 3, scope: !1788)
!1877 = !DILocation(line: 318, column: 11, scope: !1818)
!1878 = !DILocation(line: 318, column: 12, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1818, file: !458, line: 318, column: 11)
!1880 = !DILocation(line: 319, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !458, line: 319, column: 9)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !458, line: 319, column: 9)
!1883 = !DILocation(line: 319, column: 9, scope: !1882)
!1884 = !DILocation(line: 0, scope: !524, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 357, column: 26, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !458, line: 335, column: 11)
!1887 = distinct !DILexicalBlock(scope: !1817, file: !458, line: 334, column: 13)
!1888 = !DILocation(line: 199, column: 29, scope: !524, inlinedAt: !1885)
!1889 = !DILocation(line: 201, column: 19, scope: !1890, inlinedAt: !1885)
!1890 = distinct !DILexicalBlock(scope: !524, file: !458, line: 201, column: 7)
!1891 = !DILocation(line: 201, column: 7, scope: !524, inlinedAt: !1885)
!1892 = !DILocation(line: 229, column: 3, scope: !524, inlinedAt: !1885)
!1893 = !DILocation(line: 230, column: 3, scope: !524, inlinedAt: !1885)
!1894 = !DILocalVariable(name: "ps", arg: 1, scope: !1895, file: !1635, line: 1135, type: !1898)
!1895 = distinct !DISubprogram(name: "mbszero", scope: !1635, file: !1635, line: 1135, type: !1896, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1899)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!1899 = !{!1894}
!1900 = !DILocation(line: 0, scope: !1895, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 230, column: 18, scope: !524, inlinedAt: !1885)
!1902 = !DILocalVariable(name: "__dest", arg: 1, scope: !1903, file: !1644, line: 57, type: !116)
!1903 = distinct !DISubprogram(name: "memset", scope: !1644, file: !1644, line: 57, type: !1645, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1904)
!1904 = !{!1902, !1905, !1906}
!1905 = !DILocalVariable(name: "__ch", arg: 2, scope: !1903, file: !1644, line: 57, type: !117)
!1906 = !DILocalVariable(name: "__len", arg: 3, scope: !1903, file: !1644, line: 57, type: !119)
!1907 = !DILocation(line: 0, scope: !1903, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 1137, column: 3, scope: !1895, inlinedAt: !1901)
!1909 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !1908)
!1910 = !DILocation(line: 231, column: 7, scope: !1911, inlinedAt: !1885)
!1911 = distinct !DILexicalBlock(scope: !524, file: !458, line: 231, column: 7)
!1912 = !DILocation(line: 231, column: 40, scope: !1911, inlinedAt: !1885)
!1913 = !DILocation(line: 231, column: 45, scope: !1911, inlinedAt: !1885)
!1914 = !DILocation(line: 235, column: 1, scope: !524, inlinedAt: !1885)
!1915 = !DILocation(line: 0, scope: !524, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 358, column: 27, scope: !1886)
!1917 = !DILocation(line: 199, column: 29, scope: !524, inlinedAt: !1916)
!1918 = !DILocation(line: 201, column: 19, scope: !1890, inlinedAt: !1916)
!1919 = !DILocation(line: 201, column: 7, scope: !524, inlinedAt: !1916)
!1920 = !DILocation(line: 229, column: 3, scope: !524, inlinedAt: !1916)
!1921 = !DILocation(line: 230, column: 3, scope: !524, inlinedAt: !1916)
!1922 = !DILocation(line: 0, scope: !1895, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 230, column: 18, scope: !524, inlinedAt: !1916)
!1924 = !DILocation(line: 0, scope: !1903, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 1137, column: 3, scope: !1895, inlinedAt: !1923)
!1926 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !1925)
!1927 = !DILocation(line: 231, column: 7, scope: !1911, inlinedAt: !1916)
!1928 = !DILocation(line: 231, column: 40, scope: !1911, inlinedAt: !1916)
!1929 = !DILocation(line: 231, column: 45, scope: !1911, inlinedAt: !1916)
!1930 = !DILocation(line: 235, column: 1, scope: !524, inlinedAt: !1916)
!1931 = !DILocation(line: 360, column: 14, scope: !1816)
!1932 = !DILocation(line: 360, column: 13, scope: !1817)
!1933 = !DILocation(line: 0, scope: !1815)
!1934 = !DILocation(line: 361, column: 45, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1815, file: !458, line: 361, column: 11)
!1936 = !DILocation(line: 361, column: 11, scope: !1815)
!1937 = !DILocation(line: 362, column: 13, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !458, line: 362, column: 13)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !458, line: 362, column: 13)
!1940 = !DILocation(line: 362, column: 13, scope: !1939)
!1941 = !DILocation(line: 361, column: 52, scope: !1935)
!1942 = distinct !{!1942, !1936, !1943, !933}
!1943 = !DILocation(line: 362, column: 13, scope: !1815)
!1944 = !DILocation(line: 260, column: 10, scope: !1788)
!1945 = !DILocation(line: 365, column: 28, scope: !1817)
!1946 = !DILocation(line: 367, column: 7, scope: !1818)
!1947 = !DILocation(line: 370, column: 7, scope: !1818)
!1948 = !DILocation(line: 373, column: 7, scope: !1818)
!1949 = !DILocation(line: 376, column: 12, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1818, file: !458, line: 376, column: 11)
!1951 = !DILocation(line: 376, column: 11, scope: !1818)
!1952 = !DILocation(line: 381, column: 12, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1818, file: !458, line: 381, column: 11)
!1954 = !DILocation(line: 381, column: 11, scope: !1818)
!1955 = !DILocation(line: 382, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !458, line: 382, column: 9)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !458, line: 382, column: 9)
!1958 = !DILocation(line: 382, column: 9, scope: !1957)
!1959 = !DILocation(line: 389, column: 7, scope: !1818)
!1960 = !DILocation(line: 392, column: 7, scope: !1818)
!1961 = !DILocation(line: 0, scope: !1820)
!1962 = !DILocation(line: 395, column: 8, scope: !1820)
!1963 = !DILocation(line: 309, column: 8, scope: !1788)
!1964 = !DILocation(line: 395, scope: !1820)
!1965 = !DILocation(line: 395, column: 34, scope: !1823)
!1966 = !DILocation(line: 395, column: 26, scope: !1823)
!1967 = !DILocation(line: 395, column: 48, scope: !1823)
!1968 = !DILocation(line: 395, column: 55, scope: !1823)
!1969 = !DILocation(line: 395, column: 3, scope: !1820)
!1970 = !DILocation(line: 395, column: 67, scope: !1823)
!1971 = !DILocation(line: 0, scope: !1822)
!1972 = !DILocation(line: 402, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 401, column: 11)
!1974 = !DILocation(line: 404, column: 17, scope: !1973)
!1975 = !DILocation(line: 405, column: 39, scope: !1973)
!1976 = !DILocation(line: 409, column: 32, scope: !1973)
!1977 = !DILocation(line: 405, column: 19, scope: !1973)
!1978 = !DILocation(line: 405, column: 15, scope: !1973)
!1979 = !DILocation(line: 410, column: 11, scope: !1973)
!1980 = !DILocation(line: 410, column: 25, scope: !1973)
!1981 = !DILocalVariable(name: "__s1", arg: 1, scope: !1982, file: !899, line: 974, type: !1038)
!1982 = distinct !DISubprogram(name: "memeq", scope: !899, file: !899, line: 974, type: !1604, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1983)
!1983 = !{!1981, !1984, !1985}
!1984 = !DILocalVariable(name: "__s2", arg: 2, scope: !1982, file: !899, line: 974, type: !1038)
!1985 = !DILocalVariable(name: "__n", arg: 3, scope: !1982, file: !899, line: 974, type: !119)
!1986 = !DILocation(line: 0, scope: !1982, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 410, column: 14, scope: !1973)
!1988 = !DILocation(line: 976, column: 11, scope: !1982, inlinedAt: !1987)
!1989 = !DILocation(line: 976, column: 10, scope: !1982, inlinedAt: !1987)
!1990 = !DILocation(line: 401, column: 11, scope: !1822)
!1991 = !DILocation(line: 417, column: 25, scope: !1822)
!1992 = !DILocation(line: 418, column: 7, scope: !1822)
!1993 = !DILocation(line: 421, column: 15, scope: !1829)
!1994 = !DILocation(line: 423, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !458, line: 423, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !458, line: 422, column: 13)
!1997 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 421, column: 15)
!1998 = !DILocation(line: 423, column: 15, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !458, line: 423, column: 15)
!2000 = !DILocation(line: 423, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !458, line: 423, column: 15)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !458, line: 423, column: 15)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !458, line: 423, column: 15)
!2004 = !DILocation(line: 423, column: 15, scope: !2002)
!2005 = !DILocation(line: 423, column: 15, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !458, line: 423, column: 15)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !458, line: 423, column: 15)
!2008 = !DILocation(line: 423, column: 15, scope: !2007)
!2009 = !DILocation(line: 423, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !458, line: 423, column: 15)
!2011 = distinct !DILexicalBlock(scope: !2003, file: !458, line: 423, column: 15)
!2012 = !DILocation(line: 423, column: 15, scope: !2011)
!2013 = !DILocation(line: 423, column: 15, scope: !2003)
!2014 = !DILocation(line: 423, column: 15, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !458, line: 423, column: 15)
!2016 = distinct !DILexicalBlock(scope: !1995, file: !458, line: 423, column: 15)
!2017 = !DILocation(line: 423, column: 15, scope: !2016)
!2018 = !DILocation(line: 431, column: 19, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1996, file: !458, line: 430, column: 19)
!2020 = !DILocation(line: 431, column: 24, scope: !2019)
!2021 = !DILocation(line: 431, column: 28, scope: !2019)
!2022 = !DILocation(line: 431, column: 38, scope: !2019)
!2023 = !DILocation(line: 431, column: 48, scope: !2019)
!2024 = !DILocation(line: 431, column: 59, scope: !2019)
!2025 = !DILocation(line: 433, column: 19, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !458, line: 433, column: 19)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !458, line: 433, column: 19)
!2028 = distinct !DILexicalBlock(scope: !2019, file: !458, line: 432, column: 17)
!2029 = !DILocation(line: 433, column: 19, scope: !2027)
!2030 = !DILocation(line: 434, column: 19, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !458, line: 434, column: 19)
!2032 = distinct !DILexicalBlock(scope: !2028, file: !458, line: 434, column: 19)
!2033 = !DILocation(line: 434, column: 19, scope: !2032)
!2034 = !DILocation(line: 435, column: 17, scope: !2028)
!2035 = !DILocation(line: 442, column: 20, scope: !1997)
!2036 = !DILocation(line: 447, column: 11, scope: !1829)
!2037 = !DILocation(line: 450, column: 19, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 448, column: 13)
!2039 = !DILocation(line: 456, column: 19, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2038, file: !458, line: 455, column: 19)
!2041 = !DILocation(line: 456, column: 24, scope: !2040)
!2042 = !DILocation(line: 456, column: 28, scope: !2040)
!2043 = !DILocation(line: 456, column: 38, scope: !2040)
!2044 = !DILocation(line: 456, column: 41, scope: !2040)
!2045 = !DILocation(line: 456, column: 52, scope: !2040)
!2046 = !DILocation(line: 455, column: 19, scope: !2038)
!2047 = !DILocation(line: 457, column: 25, scope: !2040)
!2048 = !DILocation(line: 457, column: 17, scope: !2040)
!2049 = !DILocation(line: 464, column: 25, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2040, file: !458, line: 458, column: 19)
!2051 = !DILocation(line: 468, column: 21, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !458, line: 468, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !458, line: 468, column: 21)
!2054 = !DILocation(line: 468, column: 21, scope: !2053)
!2055 = !DILocation(line: 469, column: 21, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !458, line: 469, column: 21)
!2057 = distinct !DILexicalBlock(scope: !2050, file: !458, line: 469, column: 21)
!2058 = !DILocation(line: 469, column: 21, scope: !2057)
!2059 = !DILocation(line: 470, column: 21, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !458, line: 470, column: 21)
!2061 = distinct !DILexicalBlock(scope: !2050, file: !458, line: 470, column: 21)
!2062 = !DILocation(line: 470, column: 21, scope: !2061)
!2063 = !DILocation(line: 471, column: 21, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !458, line: 471, column: 21)
!2065 = distinct !DILexicalBlock(scope: !2050, file: !458, line: 471, column: 21)
!2066 = !DILocation(line: 471, column: 21, scope: !2065)
!2067 = !DILocation(line: 472, column: 21, scope: !2050)
!2068 = !DILocation(line: 482, column: 33, scope: !1828)
!2069 = !DILocation(line: 483, column: 33, scope: !1828)
!2070 = !DILocation(line: 485, column: 33, scope: !1828)
!2071 = !DILocation(line: 486, column: 33, scope: !1828)
!2072 = !DILocation(line: 487, column: 33, scope: !1828)
!2073 = !DILocation(line: 490, column: 17, scope: !1828)
!2074 = !DILocation(line: 492, column: 21, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !458, line: 491, column: 15)
!2076 = distinct !DILexicalBlock(scope: !1828, file: !458, line: 490, column: 17)
!2077 = !DILocation(line: 499, column: 35, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1828, file: !458, line: 499, column: 17)
!2079 = !DILocation(line: 499, column: 57, scope: !2078)
!2080 = !DILocation(line: 0, scope: !1828)
!2081 = !DILocation(line: 502, column: 11, scope: !1828)
!2082 = !DILocation(line: 504, column: 17, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1828, file: !458, line: 503, column: 17)
!2084 = !DILocation(line: 507, column: 11, scope: !1828)
!2085 = !DILocation(line: 508, column: 17, scope: !1828)
!2086 = !DILocation(line: 517, column: 15, scope: !1829)
!2087 = !DILocation(line: 517, column: 40, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 517, column: 15)
!2089 = !DILocation(line: 517, column: 47, scope: !2088)
!2090 = !DILocation(line: 517, column: 18, scope: !2088)
!2091 = !DILocation(line: 521, column: 17, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 521, column: 15)
!2093 = !DILocation(line: 521, column: 15, scope: !1829)
!2094 = !DILocation(line: 525, column: 11, scope: !1829)
!2095 = !DILocation(line: 537, column: 15, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 536, column: 15)
!2097 = !DILocation(line: 544, column: 15, scope: !1829)
!2098 = !DILocation(line: 546, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !458, line: 545, column: 13)
!2100 = distinct !DILexicalBlock(scope: !1829, file: !458, line: 544, column: 15)
!2101 = !DILocation(line: 549, column: 19, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !458, line: 549, column: 19)
!2103 = !DILocation(line: 549, column: 30, scope: !2102)
!2104 = !DILocation(line: 558, column: 15, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !458, line: 558, column: 15)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !458, line: 558, column: 15)
!2107 = !DILocation(line: 558, column: 15, scope: !2106)
!2108 = !DILocation(line: 559, column: 15, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !458, line: 559, column: 15)
!2110 = distinct !DILexicalBlock(scope: !2099, file: !458, line: 559, column: 15)
!2111 = !DILocation(line: 559, column: 15, scope: !2110)
!2112 = !DILocation(line: 560, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !458, line: 560, column: 15)
!2114 = distinct !DILexicalBlock(scope: !2099, file: !458, line: 560, column: 15)
!2115 = !DILocation(line: 560, column: 15, scope: !2114)
!2116 = !DILocation(line: 562, column: 13, scope: !2099)
!2117 = !DILocation(line: 602, column: 17, scope: !1832)
!2118 = !DILocation(line: 0, scope: !1832)
!2119 = !DILocation(line: 605, column: 29, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !1836, file: !458, line: 603, column: 15)
!2121 = !DILocation(line: 605, column: 27, scope: !2120)
!2122 = !DILocation(line: 606, column: 15, scope: !2120)
!2123 = !DILocation(line: 609, column: 17, scope: !1835)
!2124 = !DILocation(line: 0, scope: !1895, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 609, column: 32, scope: !1835)
!2126 = !DILocation(line: 0, scope: !1903, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 1137, column: 3, scope: !1895, inlinedAt: !2125)
!2128 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !2127)
!2129 = !DILocation(line: 613, column: 29, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1835, file: !458, line: 613, column: 21)
!2131 = !DILocation(line: 613, column: 21, scope: !1835)
!2132 = !DILocation(line: 614, column: 29, scope: !2130)
!2133 = !DILocation(line: 614, column: 19, scope: !2130)
!2134 = !DILocation(line: 618, column: 21, scope: !1838)
!2135 = !DILocation(line: 620, column: 54, scope: !1838)
!2136 = !DILocation(line: 619, column: 36, scope: !1838)
!2137 = !DILocation(line: 621, column: 25, scope: !1838)
!2138 = !DILocation(line: 631, column: 38, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1847, file: !458, line: 629, column: 23)
!2140 = !DILocation(line: 631, column: 48, scope: !2139)
!2141 = !DILocation(line: 626, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1848, file: !458, line: 624, column: 23)
!2143 = !DILocation(line: 631, column: 51, scope: !2139)
!2144 = !DILocation(line: 631, column: 25, scope: !2139)
!2145 = !DILocation(line: 632, column: 28, scope: !2139)
!2146 = !DILocation(line: 631, column: 34, scope: !2139)
!2147 = distinct !{!2147, !2144, !2145, !933}
!2148 = !DILocation(line: 0, scope: !1843)
!2149 = !DILocation(line: 646, column: 29, scope: !1845)
!2150 = !DILocation(line: 649, column: 39, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1843, file: !458, line: 648, column: 29)
!2152 = !DILocation(line: 649, column: 31, scope: !2151)
!2153 = !DILocation(line: 648, column: 60, scope: !2151)
!2154 = !DILocation(line: 648, column: 50, scope: !2151)
!2155 = !DILocation(line: 648, column: 29, scope: !1843)
!2156 = distinct !{!2156, !2155, !2157, !933}
!2157 = !DILocation(line: 654, column: 33, scope: !1843)
!2158 = !DILocation(line: 657, column: 43, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1846, file: !458, line: 657, column: 29)
!2160 = !DILocalVariable(name: "wc", arg: 1, scope: !2161, file: !2162, line: 865, type: !2165)
!2161 = distinct !DISubprogram(name: "c32isprint", scope: !2162, file: !2162, line: 865, type: !2163, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2167)
!2162 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!117, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2166, line: 20, baseType: !80)
!2166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2167 = !{!2160}
!2168 = !DILocation(line: 0, scope: !2161, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 657, column: 31, scope: !2159)
!2170 = !DILocation(line: 871, column: 10, scope: !2161, inlinedAt: !2169)
!2171 = !DILocation(line: 657, column: 31, scope: !2159)
!2172 = !DILocation(line: 664, column: 23, scope: !1838)
!2173 = !DILocation(line: 665, column: 19, scope: !1839)
!2174 = !DILocation(line: 666, column: 15, scope: !1836)
!2175 = !DILocation(line: 0, scope: !1836)
!2176 = !DILocation(line: 670, column: 19, scope: !1852)
!2177 = !DILocation(line: 670, column: 23, scope: !1852)
!2178 = !DILocation(line: 674, column: 33, scope: !1851)
!2179 = !DILocation(line: 0, scope: !1851)
!2180 = !DILocation(line: 676, column: 17, scope: !1851)
!2181 = !DILocation(line: 398, column: 12, scope: !1822)
!2182 = !DILocation(line: 678, column: 43, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !458, line: 678, column: 25)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !458, line: 677, column: 19)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !458, line: 676, column: 17)
!2186 = distinct !DILexicalBlock(scope: !1851, file: !458, line: 676, column: 17)
!2187 = !DILocation(line: 680, column: 25, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !458, line: 680, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2183, file: !458, line: 679, column: 23)
!2190 = !DILocation(line: 680, column: 25, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !458, line: 680, column: 25)
!2192 = !DILocation(line: 680, column: 25, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !458, line: 680, column: 25)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !458, line: 680, column: 25)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !458, line: 680, column: 25)
!2196 = !DILocation(line: 680, column: 25, scope: !2194)
!2197 = !DILocation(line: 680, column: 25, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !458, line: 680, column: 25)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !458, line: 680, column: 25)
!2200 = !DILocation(line: 680, column: 25, scope: !2199)
!2201 = !DILocation(line: 680, column: 25, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !458, line: 680, column: 25)
!2203 = distinct !DILexicalBlock(scope: !2195, file: !458, line: 680, column: 25)
!2204 = !DILocation(line: 680, column: 25, scope: !2203)
!2205 = !DILocation(line: 680, column: 25, scope: !2195)
!2206 = !DILocation(line: 680, column: 25, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !458, line: 680, column: 25)
!2208 = distinct !DILexicalBlock(scope: !2188, file: !458, line: 680, column: 25)
!2209 = !DILocation(line: 680, column: 25, scope: !2208)
!2210 = !DILocation(line: 681, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !458, line: 681, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2189, file: !458, line: 681, column: 25)
!2213 = !DILocation(line: 681, column: 25, scope: !2212)
!2214 = !DILocation(line: 682, column: 25, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !458, line: 682, column: 25)
!2216 = distinct !DILexicalBlock(scope: !2189, file: !458, line: 682, column: 25)
!2217 = !DILocation(line: 682, column: 25, scope: !2216)
!2218 = !DILocation(line: 683, column: 38, scope: !2189)
!2219 = !DILocation(line: 683, column: 33, scope: !2189)
!2220 = !DILocation(line: 684, column: 23, scope: !2189)
!2221 = !DILocation(line: 685, column: 30, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2183, file: !458, line: 685, column: 30)
!2223 = !DILocation(line: 685, column: 30, scope: !2183)
!2224 = !DILocation(line: 687, column: 25, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !458, line: 687, column: 25)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !458, line: 687, column: 25)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !458, line: 686, column: 23)
!2228 = !DILocation(line: 687, column: 25, scope: !2226)
!2229 = !DILocation(line: 689, column: 23, scope: !2227)
!2230 = !DILocation(line: 690, column: 35, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2184, file: !458, line: 690, column: 25)
!2232 = !DILocation(line: 690, column: 30, scope: !2231)
!2233 = !DILocation(line: 690, column: 25, scope: !2184)
!2234 = !DILocation(line: 692, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !458, line: 692, column: 21)
!2236 = distinct !DILexicalBlock(scope: !2184, file: !458, line: 692, column: 21)
!2237 = !DILocation(line: 692, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !458, line: 692, column: 21)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !458, line: 692, column: 21)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !458, line: 692, column: 21)
!2241 = !DILocation(line: 692, column: 21, scope: !2239)
!2242 = !DILocation(line: 692, column: 21, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !458, line: 692, column: 21)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !458, line: 692, column: 21)
!2245 = !DILocation(line: 692, column: 21, scope: !2244)
!2246 = !DILocation(line: 692, column: 21, scope: !2240)
!2247 = !DILocation(line: 0, scope: !2184)
!2248 = !DILocation(line: 693, column: 21, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !458, line: 693, column: 21)
!2250 = distinct !DILexicalBlock(scope: !2184, file: !458, line: 693, column: 21)
!2251 = !DILocation(line: 693, column: 21, scope: !2250)
!2252 = !DILocation(line: 694, column: 25, scope: !2184)
!2253 = !DILocation(line: 676, column: 17, scope: !2185)
!2254 = distinct !{!2254, !2255, !2256}
!2255 = !DILocation(line: 676, column: 17, scope: !2186)
!2256 = !DILocation(line: 695, column: 19, scope: !2186)
!2257 = !DILocation(line: 409, column: 30, scope: !1973)
!2258 = !DILocation(line: 702, column: 34, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 702, column: 11)
!2260 = !DILocation(line: 704, column: 14, scope: !2259)
!2261 = !DILocation(line: 705, column: 14, scope: !2259)
!2262 = !DILocation(line: 705, column: 35, scope: !2259)
!2263 = !DILocation(line: 705, column: 17, scope: !2259)
!2264 = !DILocation(line: 705, column: 47, scope: !2259)
!2265 = !DILocation(line: 705, column: 65, scope: !2259)
!2266 = !DILocation(line: 706, column: 11, scope: !2259)
!2267 = !DILocation(line: 702, column: 11, scope: !1822)
!2268 = !DILocation(line: 395, column: 15, scope: !1820)
!2269 = !DILocation(line: 709, column: 5, scope: !1822)
!2270 = !DILocation(line: 710, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 710, column: 7)
!2272 = !DILocation(line: 710, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2271, file: !458, line: 710, column: 7)
!2274 = !DILocation(line: 710, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !458, line: 710, column: 7)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !458, line: 710, column: 7)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !458, line: 710, column: 7)
!2278 = !DILocation(line: 710, column: 7, scope: !2276)
!2279 = !DILocation(line: 710, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !458, line: 710, column: 7)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !458, line: 710, column: 7)
!2282 = !DILocation(line: 710, column: 7, scope: !2281)
!2283 = !DILocation(line: 710, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !458, line: 710, column: 7)
!2285 = distinct !DILexicalBlock(scope: !2277, file: !458, line: 710, column: 7)
!2286 = !DILocation(line: 710, column: 7, scope: !2285)
!2287 = !DILocation(line: 710, column: 7, scope: !2277)
!2288 = !DILocation(line: 710, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !458, line: 710, column: 7)
!2290 = distinct !DILexicalBlock(scope: !2271, file: !458, line: 710, column: 7)
!2291 = !DILocation(line: 710, column: 7, scope: !2290)
!2292 = !DILocation(line: 712, column: 5, scope: !1822)
!2293 = !DILocation(line: 713, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !458, line: 713, column: 7)
!2295 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 713, column: 7)
!2296 = !DILocation(line: 417, column: 21, scope: !1822)
!2297 = !DILocation(line: 713, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !458, line: 713, column: 7)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !458, line: 713, column: 7)
!2300 = distinct !DILexicalBlock(scope: !2294, file: !458, line: 713, column: 7)
!2301 = !DILocation(line: 713, column: 7, scope: !2299)
!2302 = !DILocation(line: 713, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !458, line: 713, column: 7)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !458, line: 713, column: 7)
!2305 = !DILocation(line: 713, column: 7, scope: !2304)
!2306 = !DILocation(line: 713, column: 7, scope: !2300)
!2307 = !DILocation(line: 714, column: 7, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !458, line: 714, column: 7)
!2309 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 714, column: 7)
!2310 = !DILocation(line: 714, column: 7, scope: !2309)
!2311 = !DILocation(line: 716, column: 13, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !1822, file: !458, line: 716, column: 11)
!2313 = !DILocation(line: 716, column: 11, scope: !1822)
!2314 = !DILocation(line: 718, column: 5, scope: !1823)
!2315 = !DILocation(line: 395, column: 82, scope: !1823)
!2316 = !DILocation(line: 395, column: 3, scope: !1823)
!2317 = distinct !{!2317, !1969, !2318, !933}
!2318 = !DILocation(line: 718, column: 5, scope: !1820)
!2319 = !DILocation(line: 720, column: 11, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 720, column: 7)
!2321 = !DILocation(line: 720, column: 16, scope: !2320)
!2322 = !DILocation(line: 728, column: 51, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 728, column: 7)
!2324 = !DILocation(line: 731, column: 11, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !458, line: 731, column: 11)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !458, line: 730, column: 5)
!2327 = !DILocation(line: 731, column: 11, scope: !2326)
!2328 = !DILocation(line: 732, column: 16, scope: !2325)
!2329 = !DILocation(line: 732, column: 9, scope: !2325)
!2330 = !DILocation(line: 736, column: 18, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !458, line: 736, column: 16)
!2332 = !DILocation(line: 736, column: 29, scope: !2331)
!2333 = !DILocation(line: 745, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 745, column: 7)
!2335 = !DILocation(line: 745, column: 20, scope: !2334)
!2336 = !DILocation(line: 746, column: 12, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !458, line: 746, column: 5)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !458, line: 746, column: 5)
!2339 = !DILocation(line: 746, column: 5, scope: !2338)
!2340 = !DILocation(line: 747, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !458, line: 747, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2337, file: !458, line: 747, column: 7)
!2343 = !DILocation(line: 747, column: 7, scope: !2342)
!2344 = !DILocation(line: 746, column: 39, scope: !2337)
!2345 = distinct !{!2345, !2339, !2346, !933}
!2346 = !DILocation(line: 747, column: 7, scope: !2338)
!2347 = !DILocation(line: 749, column: 11, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 749, column: 7)
!2349 = !DILocation(line: 749, column: 7, scope: !1788)
!2350 = !DILocation(line: 750, column: 5, scope: !2348)
!2351 = !DILocation(line: 750, column: 17, scope: !2348)
!2352 = !DILocation(line: 753, column: 2, scope: !1788)
!2353 = !DILocation(line: 756, column: 51, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !1788, file: !458, line: 756, column: 7)
!2355 = !DILocation(line: 756, column: 21, scope: !2354)
!2356 = !DILocation(line: 760, column: 42, scope: !1788)
!2357 = !DILocation(line: 758, column: 10, scope: !1788)
!2358 = !DILocation(line: 758, column: 3, scope: !1788)
!2359 = !DILocation(line: 762, column: 1, scope: !1788)
!2360 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1014, file: !1014, line: 98, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!119}
!2363 = !DISubprogram(name: "strlen", scope: !1006, file: !1006, line: 407, type: !2364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!121, !74}
!2366 = !DISubprogram(name: "iswprint", scope: !2367, file: !2367, line: 120, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2368 = distinct !DISubprogram(name: "quotearg_alloc", scope: !458, file: !458, line: 788, type: !2369, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!124, !74, !119, !1681}
!2371 = !{!2372, !2373, !2374}
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2368, file: !458, line: 788, type: !74)
!2373 = !DILocalVariable(name: "argsize", arg: 2, scope: !2368, file: !458, line: 788, type: !119)
!2374 = !DILocalVariable(name: "o", arg: 3, scope: !2368, file: !458, line: 789, type: !1681)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocalVariable(name: "arg", arg: 1, scope: !2377, file: !458, line: 801, type: !74)
!2377 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !458, file: !458, line: 801, type: !2378, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!124, !74, !119, !760, !1681}
!2380 = !{!2376, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388}
!2381 = !DILocalVariable(name: "argsize", arg: 2, scope: !2377, file: !458, line: 801, type: !119)
!2382 = !DILocalVariable(name: "size", arg: 3, scope: !2377, file: !458, line: 801, type: !760)
!2383 = !DILocalVariable(name: "o", arg: 4, scope: !2377, file: !458, line: 802, type: !1681)
!2384 = !DILocalVariable(name: "p", scope: !2377, file: !458, line: 804, type: !1681)
!2385 = !DILocalVariable(name: "saved_errno", scope: !2377, file: !458, line: 805, type: !117)
!2386 = !DILocalVariable(name: "flags", scope: !2377, file: !458, line: 807, type: !117)
!2387 = !DILocalVariable(name: "bufsize", scope: !2377, file: !458, line: 808, type: !119)
!2388 = !DILocalVariable(name: "buf", scope: !2377, file: !458, line: 812, type: !124)
!2389 = !DILocation(line: 0, scope: !2377, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 791, column: 10, scope: !2368)
!2391 = !DILocation(line: 804, column: 37, scope: !2377, inlinedAt: !2390)
!2392 = !DILocation(line: 805, column: 21, scope: !2377, inlinedAt: !2390)
!2393 = !DILocation(line: 807, column: 18, scope: !2377, inlinedAt: !2390)
!2394 = !DILocation(line: 807, column: 24, scope: !2377, inlinedAt: !2390)
!2395 = !DILocation(line: 808, column: 72, scope: !2377, inlinedAt: !2390)
!2396 = !DILocation(line: 809, column: 56, scope: !2377, inlinedAt: !2390)
!2397 = !DILocation(line: 810, column: 49, scope: !2377, inlinedAt: !2390)
!2398 = !DILocation(line: 811, column: 49, scope: !2377, inlinedAt: !2390)
!2399 = !DILocation(line: 808, column: 20, scope: !2377, inlinedAt: !2390)
!2400 = !DILocation(line: 811, column: 62, scope: !2377, inlinedAt: !2390)
!2401 = !DILocation(line: 812, column: 15, scope: !2377, inlinedAt: !2390)
!2402 = !DILocation(line: 813, column: 60, scope: !2377, inlinedAt: !2390)
!2403 = !DILocation(line: 815, column: 32, scope: !2377, inlinedAt: !2390)
!2404 = !DILocation(line: 815, column: 47, scope: !2377, inlinedAt: !2390)
!2405 = !DILocation(line: 813, column: 3, scope: !2377, inlinedAt: !2390)
!2406 = !DILocation(line: 816, column: 9, scope: !2377, inlinedAt: !2390)
!2407 = !DILocation(line: 791, column: 3, scope: !2368)
!2408 = !DILocation(line: 0, scope: !2377)
!2409 = !DILocation(line: 804, column: 37, scope: !2377)
!2410 = !DILocation(line: 805, column: 21, scope: !2377)
!2411 = !DILocation(line: 807, column: 18, scope: !2377)
!2412 = !DILocation(line: 807, column: 27, scope: !2377)
!2413 = !DILocation(line: 807, column: 24, scope: !2377)
!2414 = !DILocation(line: 808, column: 72, scope: !2377)
!2415 = !DILocation(line: 809, column: 56, scope: !2377)
!2416 = !DILocation(line: 810, column: 49, scope: !2377)
!2417 = !DILocation(line: 811, column: 49, scope: !2377)
!2418 = !DILocation(line: 808, column: 20, scope: !2377)
!2419 = !DILocation(line: 811, column: 62, scope: !2377)
!2420 = !DILocation(line: 812, column: 15, scope: !2377)
!2421 = !DILocation(line: 813, column: 60, scope: !2377)
!2422 = !DILocation(line: 815, column: 32, scope: !2377)
!2423 = !DILocation(line: 815, column: 47, scope: !2377)
!2424 = !DILocation(line: 813, column: 3, scope: !2377)
!2425 = !DILocation(line: 816, column: 9, scope: !2377)
!2426 = !DILocation(line: 817, column: 7, scope: !2377)
!2427 = !DILocation(line: 818, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2377, file: !458, line: 817, column: 7)
!2429 = !DILocation(line: 818, column: 5, scope: !2428)
!2430 = !DILocation(line: 819, column: 3, scope: !2377)
!2431 = distinct !DISubprogram(name: "quotearg_free", scope: !458, file: !458, line: 837, type: !389, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2432)
!2432 = !{!2433, !2434}
!2433 = !DILocalVariable(name: "sv", scope: !2431, file: !458, line: 839, type: !547)
!2434 = !DILocalVariable(name: "i", scope: !2435, file: !458, line: 840, type: !117)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !458, line: 840, column: 3)
!2436 = !DILocation(line: 839, column: 24, scope: !2431)
!2437 = !DILocation(line: 0, scope: !2431)
!2438 = !DILocation(line: 0, scope: !2435)
!2439 = !DILocation(line: 840, column: 21, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2435, file: !458, line: 840, column: 3)
!2441 = !DILocation(line: 840, column: 3, scope: !2435)
!2442 = !DILocation(line: 842, column: 13, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2431, file: !458, line: 842, column: 7)
!2444 = !{!2445, !830, i64 8}
!2445 = !{!"slotvec", !1124, i64 0, !830, i64 8}
!2446 = !DILocation(line: 842, column: 17, scope: !2443)
!2447 = !DILocation(line: 842, column: 7, scope: !2431)
!2448 = !DILocation(line: 841, column: 17, scope: !2440)
!2449 = !DILocation(line: 841, column: 5, scope: !2440)
!2450 = !DILocation(line: 840, column: 32, scope: !2440)
!2451 = distinct !{!2451, !2441, !2452, !933}
!2452 = !DILocation(line: 841, column: 20, scope: !2435)
!2453 = !DILocation(line: 844, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2443, file: !458, line: 843, column: 5)
!2455 = !DILocation(line: 845, column: 21, scope: !2454)
!2456 = !{!2445, !1124, i64 0}
!2457 = !DILocation(line: 846, column: 20, scope: !2454)
!2458 = !DILocation(line: 847, column: 5, scope: !2454)
!2459 = !DILocation(line: 848, column: 10, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2431, file: !458, line: 848, column: 7)
!2461 = !DILocation(line: 848, column: 7, scope: !2431)
!2462 = !DILocation(line: 850, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !458, line: 849, column: 5)
!2464 = !DILocation(line: 851, column: 15, scope: !2463)
!2465 = !DILocation(line: 852, column: 5, scope: !2463)
!2466 = !DILocation(line: 853, column: 10, scope: !2431)
!2467 = !DILocation(line: 854, column: 1, scope: !2431)
!2468 = distinct !DISubprogram(name: "quotearg_n", scope: !458, file: !458, line: 919, type: !1003, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2469)
!2469 = !{!2470, !2471}
!2470 = !DILocalVariable(name: "n", arg: 1, scope: !2468, file: !458, line: 919, type: !117)
!2471 = !DILocalVariable(name: "arg", arg: 2, scope: !2468, file: !458, line: 919, type: !74)
!2472 = !DILocation(line: 0, scope: !2468)
!2473 = !DILocation(line: 921, column: 10, scope: !2468)
!2474 = !DILocation(line: 921, column: 3, scope: !2468)
!2475 = distinct !DISubprogram(name: "quotearg_n_options", scope: !458, file: !458, line: 866, type: !2476, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!124, !117, !74, !119, !1681}
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2489, !2490, !2492, !2493, !2494}
!2479 = !DILocalVariable(name: "n", arg: 1, scope: !2475, file: !458, line: 866, type: !117)
!2480 = !DILocalVariable(name: "arg", arg: 2, scope: !2475, file: !458, line: 866, type: !74)
!2481 = !DILocalVariable(name: "argsize", arg: 3, scope: !2475, file: !458, line: 866, type: !119)
!2482 = !DILocalVariable(name: "options", arg: 4, scope: !2475, file: !458, line: 867, type: !1681)
!2483 = !DILocalVariable(name: "saved_errno", scope: !2475, file: !458, line: 869, type: !117)
!2484 = !DILocalVariable(name: "sv", scope: !2475, file: !458, line: 871, type: !547)
!2485 = !DILocalVariable(name: "nslots_max", scope: !2475, file: !458, line: 873, type: !117)
!2486 = !DILocalVariable(name: "preallocated", scope: !2487, file: !458, line: 879, type: !247)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !458, line: 878, column: 5)
!2488 = distinct !DILexicalBlock(scope: !2475, file: !458, line: 877, column: 7)
!2489 = !DILocalVariable(name: "new_nslots", scope: !2487, file: !458, line: 880, type: !773)
!2490 = !DILocalVariable(name: "size", scope: !2491, file: !458, line: 891, type: !119)
!2491 = distinct !DILexicalBlock(scope: !2475, file: !458, line: 890, column: 3)
!2492 = !DILocalVariable(name: "val", scope: !2491, file: !458, line: 892, type: !124)
!2493 = !DILocalVariable(name: "flags", scope: !2491, file: !458, line: 894, type: !117)
!2494 = !DILocalVariable(name: "qsize", scope: !2491, file: !458, line: 895, type: !119)
!2495 = distinct !DIAssignID()
!2496 = !DILocation(line: 0, scope: !2487)
!2497 = !DILocation(line: 0, scope: !2475)
!2498 = !DILocation(line: 869, column: 21, scope: !2475)
!2499 = !DILocation(line: 871, column: 24, scope: !2475)
!2500 = !DILocation(line: 874, column: 17, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2475, file: !458, line: 874, column: 7)
!2502 = !DILocation(line: 875, column: 5, scope: !2501)
!2503 = !DILocation(line: 877, column: 7, scope: !2488)
!2504 = !DILocation(line: 877, column: 14, scope: !2488)
!2505 = !DILocation(line: 877, column: 7, scope: !2475)
!2506 = !DILocation(line: 879, column: 31, scope: !2487)
!2507 = !DILocation(line: 880, column: 7, scope: !2487)
!2508 = !DILocation(line: 880, column: 26, scope: !2487)
!2509 = !DILocation(line: 880, column: 13, scope: !2487)
!2510 = distinct !DIAssignID()
!2511 = !DILocation(line: 882, column: 31, scope: !2487)
!2512 = !DILocation(line: 883, column: 33, scope: !2487)
!2513 = !DILocation(line: 883, column: 42, scope: !2487)
!2514 = !DILocation(line: 883, column: 31, scope: !2487)
!2515 = !DILocation(line: 882, column: 22, scope: !2487)
!2516 = !DILocation(line: 882, column: 15, scope: !2487)
!2517 = !DILocation(line: 884, column: 11, scope: !2487)
!2518 = !DILocation(line: 885, column: 15, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2487, file: !458, line: 884, column: 11)
!2520 = !{i64 0, i64 8, !1123, i64 8, i64 8, !829}
!2521 = !DILocation(line: 885, column: 9, scope: !2519)
!2522 = !DILocation(line: 886, column: 20, scope: !2487)
!2523 = !DILocation(line: 886, column: 18, scope: !2487)
!2524 = !DILocation(line: 886, column: 32, scope: !2487)
!2525 = !DILocation(line: 886, column: 43, scope: !2487)
!2526 = !DILocation(line: 886, column: 53, scope: !2487)
!2527 = !DILocation(line: 0, scope: !1903, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 886, column: 7, scope: !2487)
!2529 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !2528)
!2530 = !DILocation(line: 887, column: 16, scope: !2487)
!2531 = !DILocation(line: 887, column: 14, scope: !2487)
!2532 = !DILocation(line: 888, column: 5, scope: !2488)
!2533 = !DILocation(line: 888, column: 5, scope: !2487)
!2534 = !DILocation(line: 891, column: 19, scope: !2491)
!2535 = !DILocation(line: 891, column: 25, scope: !2491)
!2536 = !DILocation(line: 0, scope: !2491)
!2537 = !DILocation(line: 892, column: 23, scope: !2491)
!2538 = !DILocation(line: 894, column: 26, scope: !2491)
!2539 = !DILocation(line: 894, column: 32, scope: !2491)
!2540 = !DILocation(line: 896, column: 55, scope: !2491)
!2541 = !DILocation(line: 897, column: 55, scope: !2491)
!2542 = !DILocation(line: 898, column: 55, scope: !2491)
!2543 = !DILocation(line: 899, column: 55, scope: !2491)
!2544 = !DILocation(line: 895, column: 20, scope: !2491)
!2545 = !DILocation(line: 901, column: 14, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2491, file: !458, line: 901, column: 9)
!2547 = !DILocation(line: 901, column: 9, scope: !2491)
!2548 = !DILocation(line: 903, column: 35, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !458, line: 902, column: 7)
!2550 = !DILocation(line: 903, column: 20, scope: !2549)
!2551 = !DILocation(line: 904, column: 17, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !458, line: 904, column: 13)
!2553 = !DILocation(line: 904, column: 13, scope: !2549)
!2554 = !DILocation(line: 905, column: 11, scope: !2552)
!2555 = !DILocation(line: 906, column: 27, scope: !2549)
!2556 = !DILocation(line: 906, column: 19, scope: !2549)
!2557 = !DILocation(line: 907, column: 69, scope: !2549)
!2558 = !DILocation(line: 909, column: 44, scope: !2549)
!2559 = !DILocation(line: 910, column: 44, scope: !2549)
!2560 = !DILocation(line: 907, column: 9, scope: !2549)
!2561 = !DILocation(line: 911, column: 7, scope: !2549)
!2562 = !DILocation(line: 913, column: 11, scope: !2491)
!2563 = !DILocation(line: 914, column: 5, scope: !2491)
!2564 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !458, file: !458, line: 925, type: !2565, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!124, !117, !74, !119}
!2567 = !{!2568, !2569, !2570}
!2568 = !DILocalVariable(name: "n", arg: 1, scope: !2564, file: !458, line: 925, type: !117)
!2569 = !DILocalVariable(name: "arg", arg: 2, scope: !2564, file: !458, line: 925, type: !74)
!2570 = !DILocalVariable(name: "argsize", arg: 3, scope: !2564, file: !458, line: 925, type: !119)
!2571 = !DILocation(line: 0, scope: !2564)
!2572 = !DILocation(line: 927, column: 10, scope: !2564)
!2573 = !DILocation(line: 927, column: 3, scope: !2564)
!2574 = distinct !DISubprogram(name: "quotearg", scope: !458, file: !458, line: 931, type: !1016, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2575)
!2575 = !{!2576}
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !458, line: 931, type: !74)
!2577 = !DILocation(line: 0, scope: !2574)
!2578 = !DILocation(line: 0, scope: !2468, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 933, column: 10, scope: !2574)
!2580 = !DILocation(line: 921, column: 10, scope: !2468, inlinedAt: !2579)
!2581 = !DILocation(line: 933, column: 3, scope: !2574)
!2582 = distinct !DISubprogram(name: "quotearg_mem", scope: !458, file: !458, line: 937, type: !2583, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!124, !74, !119}
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "arg", arg: 1, scope: !2582, file: !458, line: 937, type: !74)
!2587 = !DILocalVariable(name: "argsize", arg: 2, scope: !2582, file: !458, line: 937, type: !119)
!2588 = !DILocation(line: 0, scope: !2582)
!2589 = !DILocation(line: 0, scope: !2564, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 939, column: 10, scope: !2582)
!2591 = !DILocation(line: 927, column: 10, scope: !2564, inlinedAt: !2590)
!2592 = !DILocation(line: 939, column: 3, scope: !2582)
!2593 = distinct !DISubprogram(name: "quotearg_n_style", scope: !458, file: !458, line: 943, type: !2594, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!124, !117, !484, !74}
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DILocalVariable(name: "n", arg: 1, scope: !2593, file: !458, line: 943, type: !117)
!2598 = !DILocalVariable(name: "s", arg: 2, scope: !2593, file: !458, line: 943, type: !484)
!2599 = !DILocalVariable(name: "arg", arg: 3, scope: !2593, file: !458, line: 943, type: !74)
!2600 = !DILocalVariable(name: "o", scope: !2593, file: !458, line: 945, type: !1682)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !2593)
!2603 = !DILocation(line: 945, column: 3, scope: !2593)
!2604 = !{!2605}
!2605 = distinct !{!2605, !2606, !"quoting_options_from_style: argument 0"}
!2606 = distinct !{!2606, !"quoting_options_from_style"}
!2607 = !DILocation(line: 945, column: 36, scope: !2593)
!2608 = !DILocalVariable(name: "style", arg: 1, scope: !2609, file: !458, line: 183, type: !484)
!2609 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !458, file: !458, line: 183, type: !2610, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!499, !484}
!2612 = !{!2608, !2613}
!2613 = !DILocalVariable(name: "o", scope: !2609, file: !458, line: 185, type: !499)
!2614 = !DILocation(line: 0, scope: !2609, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 945, column: 36, scope: !2593)
!2616 = !DILocation(line: 185, column: 26, scope: !2609, inlinedAt: !2615)
!2617 = distinct !DIAssignID()
!2618 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2615)
!2619 = distinct !DILexicalBlock(scope: !2609, file: !458, line: 186, column: 7)
!2620 = !DILocation(line: 186, column: 7, scope: !2609, inlinedAt: !2615)
!2621 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2615)
!2622 = !DILocation(line: 188, column: 11, scope: !2609, inlinedAt: !2615)
!2623 = distinct !DIAssignID()
!2624 = !DILocation(line: 946, column: 10, scope: !2593)
!2625 = !DILocation(line: 947, column: 1, scope: !2593)
!2626 = !DILocation(line: 946, column: 3, scope: !2593)
!2627 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !458, file: !458, line: 950, type: !2628, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!124, !117, !484, !74, !119}
!2630 = !{!2631, !2632, !2633, !2634, !2635}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !458, line: 950, type: !117)
!2632 = !DILocalVariable(name: "s", arg: 2, scope: !2627, file: !458, line: 950, type: !484)
!2633 = !DILocalVariable(name: "arg", arg: 3, scope: !2627, file: !458, line: 951, type: !74)
!2634 = !DILocalVariable(name: "argsize", arg: 4, scope: !2627, file: !458, line: 951, type: !119)
!2635 = !DILocalVariable(name: "o", scope: !2627, file: !458, line: 953, type: !1682)
!2636 = distinct !DIAssignID()
!2637 = !DILocation(line: 0, scope: !2627)
!2638 = !DILocation(line: 953, column: 3, scope: !2627)
!2639 = !{!2640}
!2640 = distinct !{!2640, !2641, !"quoting_options_from_style: argument 0"}
!2641 = distinct !{!2641, !"quoting_options_from_style"}
!2642 = !DILocation(line: 953, column: 36, scope: !2627)
!2643 = !DILocation(line: 0, scope: !2609, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 953, column: 36, scope: !2627)
!2645 = !DILocation(line: 185, column: 26, scope: !2609, inlinedAt: !2644)
!2646 = distinct !DIAssignID()
!2647 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2644)
!2648 = !DILocation(line: 186, column: 7, scope: !2609, inlinedAt: !2644)
!2649 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2644)
!2650 = !DILocation(line: 188, column: 11, scope: !2609, inlinedAt: !2644)
!2651 = distinct !DIAssignID()
!2652 = !DILocation(line: 954, column: 10, scope: !2627)
!2653 = !DILocation(line: 955, column: 1, scope: !2627)
!2654 = !DILocation(line: 954, column: 3, scope: !2627)
!2655 = distinct !DISubprogram(name: "quotearg_style", scope: !458, file: !458, line: 958, type: !2656, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!124, !484, !74}
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "s", arg: 1, scope: !2655, file: !458, line: 958, type: !484)
!2660 = !DILocalVariable(name: "arg", arg: 2, scope: !2655, file: !458, line: 958, type: !74)
!2661 = distinct !DIAssignID()
!2662 = !DILocation(line: 0, scope: !2655)
!2663 = !DILocation(line: 0, scope: !2593, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 960, column: 10, scope: !2655)
!2665 = !DILocation(line: 945, column: 3, scope: !2593, inlinedAt: !2664)
!2666 = !{!2667}
!2667 = distinct !{!2667, !2668, !"quoting_options_from_style: argument 0"}
!2668 = distinct !{!2668, !"quoting_options_from_style"}
!2669 = !DILocation(line: 945, column: 36, scope: !2593, inlinedAt: !2664)
!2670 = !DILocation(line: 0, scope: !2609, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 945, column: 36, scope: !2593, inlinedAt: !2664)
!2672 = !DILocation(line: 185, column: 26, scope: !2609, inlinedAt: !2671)
!2673 = distinct !DIAssignID()
!2674 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2671)
!2675 = !DILocation(line: 186, column: 7, scope: !2609, inlinedAt: !2671)
!2676 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2671)
!2677 = !DILocation(line: 188, column: 11, scope: !2609, inlinedAt: !2671)
!2678 = distinct !DIAssignID()
!2679 = !DILocation(line: 946, column: 10, scope: !2593, inlinedAt: !2664)
!2680 = !DILocation(line: 947, column: 1, scope: !2593, inlinedAt: !2664)
!2681 = !DILocation(line: 960, column: 3, scope: !2655)
!2682 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !458, file: !458, line: 964, type: !2683, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!124, !484, !74, !119}
!2685 = !{!2686, !2687, !2688}
!2686 = !DILocalVariable(name: "s", arg: 1, scope: !2682, file: !458, line: 964, type: !484)
!2687 = !DILocalVariable(name: "arg", arg: 2, scope: !2682, file: !458, line: 964, type: !74)
!2688 = !DILocalVariable(name: "argsize", arg: 3, scope: !2682, file: !458, line: 964, type: !119)
!2689 = distinct !DIAssignID()
!2690 = !DILocation(line: 0, scope: !2682)
!2691 = !DILocation(line: 0, scope: !2627, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 966, column: 10, scope: !2682)
!2693 = !DILocation(line: 953, column: 3, scope: !2627, inlinedAt: !2692)
!2694 = !{!2695}
!2695 = distinct !{!2695, !2696, !"quoting_options_from_style: argument 0"}
!2696 = distinct !{!2696, !"quoting_options_from_style"}
!2697 = !DILocation(line: 953, column: 36, scope: !2627, inlinedAt: !2692)
!2698 = !DILocation(line: 0, scope: !2609, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 953, column: 36, scope: !2627, inlinedAt: !2692)
!2700 = !DILocation(line: 185, column: 26, scope: !2609, inlinedAt: !2699)
!2701 = distinct !DIAssignID()
!2702 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2699)
!2703 = !DILocation(line: 186, column: 7, scope: !2609, inlinedAt: !2699)
!2704 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2699)
!2705 = !DILocation(line: 188, column: 11, scope: !2609, inlinedAt: !2699)
!2706 = distinct !DIAssignID()
!2707 = !DILocation(line: 954, column: 10, scope: !2627, inlinedAt: !2692)
!2708 = !DILocation(line: 955, column: 1, scope: !2627, inlinedAt: !2692)
!2709 = !DILocation(line: 966, column: 3, scope: !2682)
!2710 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !458, file: !458, line: 970, type: !2711, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!124, !74, !119, !4}
!2713 = !{!2714, !2715, !2716, !2717}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !458, line: 970, type: !74)
!2715 = !DILocalVariable(name: "argsize", arg: 2, scope: !2710, file: !458, line: 970, type: !119)
!2716 = !DILocalVariable(name: "ch", arg: 3, scope: !2710, file: !458, line: 970, type: !4)
!2717 = !DILocalVariable(name: "options", scope: !2710, file: !458, line: 972, type: !499)
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 0, scope: !2710)
!2720 = !DILocation(line: 972, column: 3, scope: !2710)
!2721 = !DILocation(line: 973, column: 13, scope: !2710)
!2722 = !{i64 0, i64 4, !886, i64 4, i64 4, !886, i64 8, i64 32, !895, i64 40, i64 8, !829, i64 48, i64 8, !829}
!2723 = distinct !DIAssignID()
!2724 = !DILocation(line: 0, scope: !1701, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 974, column: 3, scope: !2710)
!2726 = !DILocation(line: 147, column: 41, scope: !1701, inlinedAt: !2725)
!2727 = !DILocation(line: 147, column: 62, scope: !1701, inlinedAt: !2725)
!2728 = !DILocation(line: 147, column: 57, scope: !1701, inlinedAt: !2725)
!2729 = !DILocation(line: 148, column: 15, scope: !1701, inlinedAt: !2725)
!2730 = !DILocation(line: 149, column: 21, scope: !1701, inlinedAt: !2725)
!2731 = !DILocation(line: 149, column: 24, scope: !1701, inlinedAt: !2725)
!2732 = !DILocation(line: 150, column: 19, scope: !1701, inlinedAt: !2725)
!2733 = !DILocation(line: 150, column: 24, scope: !1701, inlinedAt: !2725)
!2734 = !DILocation(line: 150, column: 6, scope: !1701, inlinedAt: !2725)
!2735 = !DILocation(line: 975, column: 10, scope: !2710)
!2736 = !DILocation(line: 976, column: 1, scope: !2710)
!2737 = !DILocation(line: 975, column: 3, scope: !2710)
!2738 = distinct !DISubprogram(name: "quotearg_char", scope: !458, file: !458, line: 979, type: !2739, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!124, !74, !4}
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "arg", arg: 1, scope: !2738, file: !458, line: 979, type: !74)
!2743 = !DILocalVariable(name: "ch", arg: 2, scope: !2738, file: !458, line: 979, type: !4)
!2744 = distinct !DIAssignID()
!2745 = !DILocation(line: 0, scope: !2738)
!2746 = !DILocation(line: 0, scope: !2710, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 981, column: 10, scope: !2738)
!2748 = !DILocation(line: 972, column: 3, scope: !2710, inlinedAt: !2747)
!2749 = !DILocation(line: 973, column: 13, scope: !2710, inlinedAt: !2747)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 0, scope: !1701, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 974, column: 3, scope: !2710, inlinedAt: !2747)
!2753 = !DILocation(line: 147, column: 41, scope: !1701, inlinedAt: !2752)
!2754 = !DILocation(line: 147, column: 62, scope: !1701, inlinedAt: !2752)
!2755 = !DILocation(line: 147, column: 57, scope: !1701, inlinedAt: !2752)
!2756 = !DILocation(line: 148, column: 15, scope: !1701, inlinedAt: !2752)
!2757 = !DILocation(line: 149, column: 21, scope: !1701, inlinedAt: !2752)
!2758 = !DILocation(line: 149, column: 24, scope: !1701, inlinedAt: !2752)
!2759 = !DILocation(line: 150, column: 19, scope: !1701, inlinedAt: !2752)
!2760 = !DILocation(line: 150, column: 24, scope: !1701, inlinedAt: !2752)
!2761 = !DILocation(line: 150, column: 6, scope: !1701, inlinedAt: !2752)
!2762 = !DILocation(line: 975, column: 10, scope: !2710, inlinedAt: !2747)
!2763 = !DILocation(line: 976, column: 1, scope: !2710, inlinedAt: !2747)
!2764 = !DILocation(line: 981, column: 3, scope: !2738)
!2765 = distinct !DISubprogram(name: "quotearg_colon", scope: !458, file: !458, line: 985, type: !1016, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2766)
!2766 = !{!2767}
!2767 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !458, line: 985, type: !74)
!2768 = distinct !DIAssignID()
!2769 = !DILocation(line: 0, scope: !2765)
!2770 = !DILocation(line: 0, scope: !2738, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 987, column: 10, scope: !2765)
!2772 = !DILocation(line: 0, scope: !2710, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 981, column: 10, scope: !2738, inlinedAt: !2771)
!2774 = !DILocation(line: 972, column: 3, scope: !2710, inlinedAt: !2773)
!2775 = !DILocation(line: 973, column: 13, scope: !2710, inlinedAt: !2773)
!2776 = distinct !DIAssignID()
!2777 = !DILocation(line: 0, scope: !1701, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 974, column: 3, scope: !2710, inlinedAt: !2773)
!2779 = !DILocation(line: 147, column: 57, scope: !1701, inlinedAt: !2778)
!2780 = !DILocation(line: 149, column: 21, scope: !1701, inlinedAt: !2778)
!2781 = !DILocation(line: 150, column: 6, scope: !1701, inlinedAt: !2778)
!2782 = !DILocation(line: 975, column: 10, scope: !2710, inlinedAt: !2773)
!2783 = !DILocation(line: 976, column: 1, scope: !2710, inlinedAt: !2773)
!2784 = !DILocation(line: 987, column: 3, scope: !2765)
!2785 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !458, file: !458, line: 991, type: !2583, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2786)
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "arg", arg: 1, scope: !2785, file: !458, line: 991, type: !74)
!2788 = !DILocalVariable(name: "argsize", arg: 2, scope: !2785, file: !458, line: 991, type: !119)
!2789 = distinct !DIAssignID()
!2790 = !DILocation(line: 0, scope: !2785)
!2791 = !DILocation(line: 0, scope: !2710, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 993, column: 10, scope: !2785)
!2793 = !DILocation(line: 972, column: 3, scope: !2710, inlinedAt: !2792)
!2794 = !DILocation(line: 973, column: 13, scope: !2710, inlinedAt: !2792)
!2795 = distinct !DIAssignID()
!2796 = !DILocation(line: 0, scope: !1701, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 974, column: 3, scope: !2710, inlinedAt: !2792)
!2798 = !DILocation(line: 147, column: 57, scope: !1701, inlinedAt: !2797)
!2799 = !DILocation(line: 149, column: 21, scope: !1701, inlinedAt: !2797)
!2800 = !DILocation(line: 150, column: 6, scope: !1701, inlinedAt: !2797)
!2801 = !DILocation(line: 975, column: 10, scope: !2710, inlinedAt: !2792)
!2802 = !DILocation(line: 976, column: 1, scope: !2710, inlinedAt: !2792)
!2803 = !DILocation(line: 993, column: 3, scope: !2785)
!2804 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !458, file: !458, line: 997, type: !2594, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2805)
!2805 = !{!2806, !2807, !2808, !2809}
!2806 = !DILocalVariable(name: "n", arg: 1, scope: !2804, file: !458, line: 997, type: !117)
!2807 = !DILocalVariable(name: "s", arg: 2, scope: !2804, file: !458, line: 997, type: !484)
!2808 = !DILocalVariable(name: "arg", arg: 3, scope: !2804, file: !458, line: 997, type: !74)
!2809 = !DILocalVariable(name: "options", scope: !2804, file: !458, line: 999, type: !499)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 0, scope: !2804)
!2812 = !DILocation(line: 185, column: 26, scope: !2609, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1000, column: 13, scope: !2804)
!2814 = !DILocation(line: 999, column: 3, scope: !2804)
!2815 = !DILocation(line: 0, scope: !2609, inlinedAt: !2813)
!2816 = !DILocation(line: 186, column: 13, scope: !2619, inlinedAt: !2813)
!2817 = !DILocation(line: 186, column: 7, scope: !2609, inlinedAt: !2813)
!2818 = !DILocation(line: 187, column: 5, scope: !2619, inlinedAt: !2813)
!2819 = !{!2820}
!2820 = distinct !{!2820, !2821, !"quoting_options_from_style: argument 0"}
!2821 = distinct !{!2821, !"quoting_options_from_style"}
!2822 = !DILocation(line: 1000, column: 13, scope: !2804)
!2823 = distinct !DIAssignID()
!2824 = distinct !DIAssignID()
!2825 = !DILocation(line: 0, scope: !1701, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1001, column: 3, scope: !2804)
!2827 = !DILocation(line: 147, column: 57, scope: !1701, inlinedAt: !2826)
!2828 = !DILocation(line: 149, column: 21, scope: !1701, inlinedAt: !2826)
!2829 = !DILocation(line: 150, column: 6, scope: !1701, inlinedAt: !2826)
!2830 = distinct !DIAssignID()
!2831 = !DILocation(line: 1002, column: 10, scope: !2804)
!2832 = !DILocation(line: 1003, column: 1, scope: !2804)
!2833 = !DILocation(line: 1002, column: 3, scope: !2804)
!2834 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !458, file: !458, line: 1006, type: !2835, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!124, !117, !74, !74, !74}
!2837 = !{!2838, !2839, !2840, !2841}
!2838 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !458, line: 1006, type: !117)
!2839 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2834, file: !458, line: 1006, type: !74)
!2840 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2834, file: !458, line: 1007, type: !74)
!2841 = !DILocalVariable(name: "arg", arg: 4, scope: !2834, file: !458, line: 1007, type: !74)
!2842 = distinct !DIAssignID()
!2843 = !DILocation(line: 0, scope: !2834)
!2844 = !DILocalVariable(name: "o", scope: !2845, file: !458, line: 1018, type: !499)
!2845 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !458, file: !458, line: 1014, type: !2846, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!124, !117, !74, !74, !74, !119}
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2844}
!2849 = !DILocalVariable(name: "n", arg: 1, scope: !2845, file: !458, line: 1014, type: !117)
!2850 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2845, file: !458, line: 1014, type: !74)
!2851 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2845, file: !458, line: 1015, type: !74)
!2852 = !DILocalVariable(name: "arg", arg: 4, scope: !2845, file: !458, line: 1016, type: !74)
!2853 = !DILocalVariable(name: "argsize", arg: 5, scope: !2845, file: !458, line: 1016, type: !119)
!2854 = !DILocation(line: 0, scope: !2845, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1009, column: 10, scope: !2834)
!2856 = !DILocation(line: 1018, column: 3, scope: !2845, inlinedAt: !2855)
!2857 = !DILocation(line: 1018, column: 30, scope: !2845, inlinedAt: !2855)
!2858 = distinct !DIAssignID()
!2859 = distinct !DIAssignID()
!2860 = !DILocation(line: 0, scope: !1741, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 1019, column: 3, scope: !2845, inlinedAt: !2855)
!2862 = !DILocation(line: 174, column: 12, scope: !1741, inlinedAt: !2861)
!2863 = distinct !DIAssignID()
!2864 = !DILocation(line: 175, column: 8, scope: !1754, inlinedAt: !2861)
!2865 = !DILocation(line: 175, column: 19, scope: !1754, inlinedAt: !2861)
!2866 = !DILocation(line: 176, column: 5, scope: !1754, inlinedAt: !2861)
!2867 = !DILocation(line: 177, column: 6, scope: !1741, inlinedAt: !2861)
!2868 = !DILocation(line: 177, column: 17, scope: !1741, inlinedAt: !2861)
!2869 = distinct !DIAssignID()
!2870 = !DILocation(line: 178, column: 6, scope: !1741, inlinedAt: !2861)
!2871 = !DILocation(line: 178, column: 18, scope: !1741, inlinedAt: !2861)
!2872 = distinct !DIAssignID()
!2873 = !DILocation(line: 1020, column: 10, scope: !2845, inlinedAt: !2855)
!2874 = !DILocation(line: 1021, column: 1, scope: !2845, inlinedAt: !2855)
!2875 = !DILocation(line: 1009, column: 3, scope: !2834)
!2876 = distinct !DIAssignID()
!2877 = !DILocation(line: 0, scope: !2845)
!2878 = !DILocation(line: 1018, column: 3, scope: !2845)
!2879 = !DILocation(line: 1018, column: 30, scope: !2845)
!2880 = distinct !DIAssignID()
!2881 = distinct !DIAssignID()
!2882 = !DILocation(line: 0, scope: !1741, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 1019, column: 3, scope: !2845)
!2884 = !DILocation(line: 174, column: 12, scope: !1741, inlinedAt: !2883)
!2885 = distinct !DIAssignID()
!2886 = !DILocation(line: 175, column: 8, scope: !1754, inlinedAt: !2883)
!2887 = !DILocation(line: 175, column: 19, scope: !1754, inlinedAt: !2883)
!2888 = !DILocation(line: 176, column: 5, scope: !1754, inlinedAt: !2883)
!2889 = !DILocation(line: 177, column: 6, scope: !1741, inlinedAt: !2883)
!2890 = !DILocation(line: 177, column: 17, scope: !1741, inlinedAt: !2883)
!2891 = distinct !DIAssignID()
!2892 = !DILocation(line: 178, column: 6, scope: !1741, inlinedAt: !2883)
!2893 = !DILocation(line: 178, column: 18, scope: !1741, inlinedAt: !2883)
!2894 = distinct !DIAssignID()
!2895 = !DILocation(line: 1020, column: 10, scope: !2845)
!2896 = !DILocation(line: 1021, column: 1, scope: !2845)
!2897 = !DILocation(line: 1020, column: 3, scope: !2845)
!2898 = distinct !DISubprogram(name: "quotearg_custom", scope: !458, file: !458, line: 1024, type: !2899, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!124, !74, !74, !74}
!2901 = !{!2902, !2903, !2904}
!2902 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2898, file: !458, line: 1024, type: !74)
!2903 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2898, file: !458, line: 1024, type: !74)
!2904 = !DILocalVariable(name: "arg", arg: 3, scope: !2898, file: !458, line: 1025, type: !74)
!2905 = distinct !DIAssignID()
!2906 = !DILocation(line: 0, scope: !2898)
!2907 = !DILocation(line: 0, scope: !2834, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 1027, column: 10, scope: !2898)
!2909 = !DILocation(line: 0, scope: !2845, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 1009, column: 10, scope: !2834, inlinedAt: !2908)
!2911 = !DILocation(line: 1018, column: 3, scope: !2845, inlinedAt: !2910)
!2912 = !DILocation(line: 1018, column: 30, scope: !2845, inlinedAt: !2910)
!2913 = distinct !DIAssignID()
!2914 = distinct !DIAssignID()
!2915 = !DILocation(line: 0, scope: !1741, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 1019, column: 3, scope: !2845, inlinedAt: !2910)
!2917 = !DILocation(line: 174, column: 12, scope: !1741, inlinedAt: !2916)
!2918 = distinct !DIAssignID()
!2919 = !DILocation(line: 175, column: 8, scope: !1754, inlinedAt: !2916)
!2920 = !DILocation(line: 175, column: 19, scope: !1754, inlinedAt: !2916)
!2921 = !DILocation(line: 176, column: 5, scope: !1754, inlinedAt: !2916)
!2922 = !DILocation(line: 177, column: 6, scope: !1741, inlinedAt: !2916)
!2923 = !DILocation(line: 177, column: 17, scope: !1741, inlinedAt: !2916)
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 178, column: 6, scope: !1741, inlinedAt: !2916)
!2926 = !DILocation(line: 178, column: 18, scope: !1741, inlinedAt: !2916)
!2927 = distinct !DIAssignID()
!2928 = !DILocation(line: 1020, column: 10, scope: !2845, inlinedAt: !2910)
!2929 = !DILocation(line: 1021, column: 1, scope: !2845, inlinedAt: !2910)
!2930 = !DILocation(line: 1027, column: 3, scope: !2898)
!2931 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !458, file: !458, line: 1031, type: !2932, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!124, !74, !74, !74, !119}
!2934 = !{!2935, !2936, !2937, !2938}
!2935 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2931, file: !458, line: 1031, type: !74)
!2936 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2931, file: !458, line: 1031, type: !74)
!2937 = !DILocalVariable(name: "arg", arg: 3, scope: !2931, file: !458, line: 1032, type: !74)
!2938 = !DILocalVariable(name: "argsize", arg: 4, scope: !2931, file: !458, line: 1032, type: !119)
!2939 = distinct !DIAssignID()
!2940 = !DILocation(line: 0, scope: !2931)
!2941 = !DILocation(line: 0, scope: !2845, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1034, column: 10, scope: !2931)
!2943 = !DILocation(line: 1018, column: 3, scope: !2845, inlinedAt: !2942)
!2944 = !DILocation(line: 1018, column: 30, scope: !2845, inlinedAt: !2942)
!2945 = distinct !DIAssignID()
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 0, scope: !1741, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 1019, column: 3, scope: !2845, inlinedAt: !2942)
!2949 = !DILocation(line: 174, column: 12, scope: !1741, inlinedAt: !2948)
!2950 = distinct !DIAssignID()
!2951 = !DILocation(line: 175, column: 8, scope: !1754, inlinedAt: !2948)
!2952 = !DILocation(line: 175, column: 19, scope: !1754, inlinedAt: !2948)
!2953 = !DILocation(line: 176, column: 5, scope: !1754, inlinedAt: !2948)
!2954 = !DILocation(line: 177, column: 6, scope: !1741, inlinedAt: !2948)
!2955 = !DILocation(line: 177, column: 17, scope: !1741, inlinedAt: !2948)
!2956 = distinct !DIAssignID()
!2957 = !DILocation(line: 178, column: 6, scope: !1741, inlinedAt: !2948)
!2958 = !DILocation(line: 178, column: 18, scope: !1741, inlinedAt: !2948)
!2959 = distinct !DIAssignID()
!2960 = !DILocation(line: 1020, column: 10, scope: !2845, inlinedAt: !2942)
!2961 = !DILocation(line: 1021, column: 1, scope: !2845, inlinedAt: !2942)
!2962 = !DILocation(line: 1034, column: 3, scope: !2931)
!2963 = distinct !DISubprogram(name: "quote_n_mem", scope: !458, file: !458, line: 1049, type: !2964, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!74, !117, !74, !119}
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "n", arg: 1, scope: !2963, file: !458, line: 1049, type: !117)
!2968 = !DILocalVariable(name: "arg", arg: 2, scope: !2963, file: !458, line: 1049, type: !74)
!2969 = !DILocalVariable(name: "argsize", arg: 3, scope: !2963, file: !458, line: 1049, type: !119)
!2970 = !DILocation(line: 0, scope: !2963)
!2971 = !DILocation(line: 1051, column: 10, scope: !2963)
!2972 = !DILocation(line: 1051, column: 3, scope: !2963)
!2973 = distinct !DISubprogram(name: "quote_mem", scope: !458, file: !458, line: 1055, type: !2974, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!74, !74, !119}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "arg", arg: 1, scope: !2973, file: !458, line: 1055, type: !74)
!2978 = !DILocalVariable(name: "argsize", arg: 2, scope: !2973, file: !458, line: 1055, type: !119)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 0, scope: !2963, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 1057, column: 10, scope: !2973)
!2982 = !DILocation(line: 1051, column: 10, scope: !2963, inlinedAt: !2981)
!2983 = !DILocation(line: 1057, column: 3, scope: !2973)
!2984 = distinct !DISubprogram(name: "quote_n", scope: !458, file: !458, line: 1061, type: !2985, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!74, !117, !74}
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !458, line: 1061, type: !117)
!2989 = !DILocalVariable(name: "arg", arg: 2, scope: !2984, file: !458, line: 1061, type: !74)
!2990 = !DILocation(line: 0, scope: !2984)
!2991 = !DILocation(line: 0, scope: !2963, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 1063, column: 10, scope: !2984)
!2993 = !DILocation(line: 1051, column: 10, scope: !2963, inlinedAt: !2992)
!2994 = !DILocation(line: 1063, column: 3, scope: !2984)
!2995 = distinct !DISubprogram(name: "quote", scope: !458, file: !458, line: 1067, type: !2996, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!74, !74}
!2998 = !{!2999}
!2999 = !DILocalVariable(name: "arg", arg: 1, scope: !2995, file: !458, line: 1067, type: !74)
!3000 = !DILocation(line: 0, scope: !2995)
!3001 = !DILocation(line: 0, scope: !2984, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 1069, column: 10, scope: !2995)
!3003 = !DILocation(line: 0, scope: !2963, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 1063, column: 10, scope: !2984, inlinedAt: !3002)
!3005 = !DILocation(line: 1051, column: 10, scope: !2963, inlinedAt: !3004)
!3006 = !DILocation(line: 1069, column: 3, scope: !2995)
!3007 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !562, file: !562, line: 156, type: !3008, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3032)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!124, !3010}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !714, line: 92, baseType: !3013)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !714, line: 65, size: 576, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3024, !3025, !3026, !3027}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !3013, file: !714, line: 69, baseType: !124, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !3013, file: !714, line: 70, baseType: !124, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !3013, file: !714, line: 71, baseType: !124, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !3013, file: !714, line: 72, baseType: !124, size: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !3013, file: !714, line: 74, baseType: !3020, size: 128, offset: 256)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1095, line: 11, size: 128, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3020, file: !1095, line: 16, baseType: !1098, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3020, file: !1095, line: 21, baseType: !1100, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !3013, file: !714, line: 75, baseType: !1102, size: 32, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !3013, file: !714, line: 76, baseType: !1102, size: 32, offset: 416)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !3013, file: !714, line: 77, baseType: !722, size: 16, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !3013, file: !714, line: 79, baseType: !3028, size: 64, offset: 480)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !714, line: 79, size: 64, elements: !3029)
!3029 = !{!3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !3028, file: !714, line: 79, baseType: !117, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !3028, file: !714, line: 79, baseType: !117, size: 32, offset: 32)
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DILocalVariable(name: "ut", arg: 1, scope: !3007, file: !562, line: 156, type: !3010)
!3034 = !DILocalVariable(name: "name", scope: !3007, file: !562, line: 158, type: !74)
!3035 = !DILocalVariable(name: "len", scope: !3007, file: !562, line: 159, type: !773)
!3036 = !DILocalVariable(name: "p", scope: !3007, file: !562, line: 160, type: !74)
!3037 = !DILocation(line: 0, scope: !3007)
!3038 = !DILocation(line: 158, column: 26, scope: !3007)
!3039 = !DILocation(line: 159, column: 15, scope: !3007)
!3040 = !DILocation(line: 161, column: 17, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3007, file: !562, line: 161, column: 3)
!3042 = !DILocation(line: 161, column: 8, scope: !3041)
!3043 = !DILocation(line: 161, scope: !3041)
!3044 = !DILocation(line: 161, column: 29, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3041, file: !562, line: 161, column: 3)
!3046 = !DILocation(line: 161, column: 33, scope: !3045)
!3047 = !DILocation(line: 161, column: 36, scope: !3045)
!3048 = !DILocation(line: 161, column: 42, scope: !3045)
!3049 = !DILocation(line: 161, column: 3, scope: !3041)
!3050 = distinct !{!3050, !3049, !3051, !933}
!3051 = !DILocation(line: 162, column: 5, scope: !3041)
!3052 = !DILocation(line: 163, column: 29, scope: !3007)
!3053 = !DILocation(line: 163, column: 10, scope: !3007)
!3054 = !DILocation(line: 163, column: 3, scope: !3007)
!3055 = distinct !DISubprogram(name: "read_utmp", scope: !562, file: !562, line: 977, type: !3056, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3060)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!117, !74, !772, !3058, !117}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DILocalVariable(name: "file", arg: 1, scope: !3055, file: !562, line: 977, type: !74)
!3062 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3055, file: !562, line: 977, type: !772)
!3063 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3055, file: !562, line: 977, type: !3058)
!3064 = !DILocalVariable(name: "options", arg: 4, scope: !3055, file: !562, line: 978, type: !117)
!3065 = distinct !DIAssignID()
!3066 = distinct !DIAssignID()
!3067 = distinct !DIAssignID()
!3068 = distinct !DIAssignID()
!3069 = distinct !DIAssignID()
!3070 = distinct !DIAssignID()
!3071 = distinct !DIAssignID()
!3072 = distinct !DIAssignID()
!3073 = distinct !DIAssignID()
!3074 = !DILocation(line: 0, scope: !3055)
!3075 = !DILocalVariable(name: "a", scope: !3076, file: !562, line: 332, type: !3102)
!3076 = distinct !DISubprogram(name: "read_utmp_from_file", scope: !562, file: !562, line: 320, type: !3056, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3075, !3082, !3083, !3084, !3085, !3087, !3088, !3092, !3096, !3099}
!3078 = !DILocalVariable(name: "file", arg: 1, scope: !3076, file: !562, line: 320, type: !74)
!3079 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3076, file: !562, line: 320, type: !772)
!3080 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3076, file: !562, line: 320, type: !3058)
!3081 = !DILocalVariable(name: "options", arg: 4, scope: !3076, file: !562, line: 321, type: !117)
!3082 = !DILocalVariable(name: "file_is_utmp", scope: !3076, file: !562, line: 347, type: !247)
!3083 = !DILocalVariable(name: "runlevel_ts", scope: !3076, file: !562, line: 349, type: !3020)
!3084 = !DILocalVariable(name: "entry", scope: !3076, file: !562, line: 352, type: !1038)
!3085 = !DILocalVariable(name: "ut", scope: !3086, file: !562, line: 356, type: !716)
!3086 = distinct !DILexicalBlock(scope: !3076, file: !562, line: 355, column: 5)
!3087 = !DILocalVariable(name: "ts", scope: !3086, file: !562, line: 358, type: !3020)
!3088 = !DILocalVariable(name: "i", scope: !3089, file: !562, line: 429, type: !773)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !562, line: 429, column: 7)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !562, line: 428, column: 5)
!3091 = distinct !DILexicalBlock(scope: !3076, file: !562, line: 426, column: 7)
!3092 = !DILocalVariable(name: "ut", scope: !3093, file: !562, line: 431, type: !3095)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !562, line: 430, column: 9)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !562, line: 429, column: 7)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3096 = !DILocalVariable(name: "boot_time", scope: !3097, file: !562, line: 443, type: !3020)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !562, line: 441, column: 9)
!3098 = distinct !DILexicalBlock(scope: !3090, file: !562, line: 440, column: 11)
!3099 = !DILocalVariable(name: "boot_time", scope: !3100, file: !562, line: 592, type: !3020)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !562, line: 591, column: 5)
!3101 = distinct !DILexicalBlock(scope: !3076, file: !562, line: 588, column: 7)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmp_alloc", file: !562, line: 202, size: 256, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "utmp", scope: !3102, file: !562, line: 208, baseType: !3095, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "filled", scope: !3102, file: !562, line: 211, baseType: !773, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "string_bytes", scope: !3102, file: !562, line: 214, baseType: !773, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_bytes", scope: !3102, file: !562, line: 218, baseType: !773, size: 64, offset: 192)
!3108 = !DILocation(line: 0, scope: !3076, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 986, column: 10, scope: !3055)
!3110 = !DILocation(line: 0, scope: !3086, inlinedAt: !3109)
!3111 = !DILocation(line: 0, scope: !3097, inlinedAt: !3109)
!3112 = !DILocation(line: 0, scope: !3100, inlinedAt: !3109)
!3113 = !DILocation(line: 323, column: 16, scope: !3114, inlinedAt: !3109)
!3114 = distinct !DILexicalBlock(scope: !3076, file: !562, line: 323, column: 7)
!3115 = !DILocation(line: 323, column: 39, scope: !3114, inlinedAt: !3109)
!3116 = !DILocation(line: 324, column: 7, scope: !3114, inlinedAt: !3109)
!3117 = !DILocation(line: 327, column: 18, scope: !3118, inlinedAt: !3109)
!3118 = distinct !DILexicalBlock(scope: !3114, file: !562, line: 325, column: 5)
!3119 = !DILocation(line: 328, column: 17, scope: !3118, inlinedAt: !3109)
!3120 = !DILocation(line: 329, column: 7, scope: !3118, inlinedAt: !3109)
!3121 = !DILocation(line: 332, column: 3, scope: !3076, inlinedAt: !3109)
!3122 = !DILocation(line: 332, column: 21, scope: !3076, inlinedAt: !3109)
!3123 = distinct !DIAssignID()
!3124 = !DILocation(line: 342, column: 3, scope: !3076, inlinedAt: !3109)
!3125 = !DILocation(line: 344, column: 3, scope: !3076, inlinedAt: !3109)
!3126 = !DILocalVariable(name: "__s1", arg: 1, scope: !3127, file: !899, line: 1359, type: !74)
!3127 = distinct !DISubprogram(name: "streq", scope: !899, file: !899, line: 1359, type: !900, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3128)
!3128 = !{!3126, !3129}
!3129 = !DILocalVariable(name: "__s2", arg: 2, scope: !3127, file: !899, line: 1359, type: !74)
!3130 = !DILocation(line: 0, scope: !3127, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 347, column: 23, scope: !3076, inlinedAt: !3109)
!3132 = !DILocation(line: 1361, column: 11, scope: !3127, inlinedAt: !3131)
!3133 = !DILocation(line: 1361, column: 10, scope: !3127, inlinedAt: !3131)
!3134 = !DILocation(line: 354, column: 19, scope: !3076, inlinedAt: !3109)
!3135 = !DILocation(line: 354, column: 36, scope: !3076, inlinedAt: !3109)
!3136 = !DILocation(line: 354, column: 3, scope: !3076, inlinedAt: !3109)
!3137 = !DILocation(line: 358, column: 7, scope: !3086, inlinedAt: !3109)
!3138 = !DILocation(line: 360, column: 25, scope: !3086, inlinedAt: !3109)
!3139 = !DILocation(line: 360, column: 31, scope: !3086, inlinedAt: !3109)
!3140 = !{!3141, !887, i64 340}
!3141 = !{!"utmpx", !928, i64 0, !887, i64 4, !831, i64 8, !831, i64 40, !831, i64 44, !831, i64 76, !3142, i64 332, !887, i64 336, !1159, i64 340, !831, i64 348, !831, i64 364}
!3142 = !{!"__exit_status", !928, i64 0, !928, i64 2}
!3143 = !DILocation(line: 360, column: 21, scope: !3086, inlinedAt: !3109)
!3144 = !DILocation(line: 360, column: 9, scope: !3086, inlinedAt: !3109)
!3145 = !{!1158, !1124, i64 0}
!3146 = distinct !DIAssignID()
!3147 = !DILocation(line: 360, column: 60, scope: !3086, inlinedAt: !3109)
!3148 = !{!3141, !887, i64 344}
!3149 = !DILocation(line: 360, column: 68, scope: !3086, inlinedAt: !3109)
!3150 = !DILocation(line: 360, column: 50, scope: !3086, inlinedAt: !3109)
!3151 = !{!1158, !1124, i64 8}
!3152 = distinct !DIAssignID()
!3153 = !DILocation(line: 365, column: 11, scope: !3086, inlinedAt: !3109)
!3154 = !DILocation(line: 366, column: 21, scope: !3086, inlinedAt: !3109)
!3155 = !DILocation(line: 366, column: 35, scope: !3086, inlinedAt: !3109)
!3156 = !DILocation(line: 368, column: 25, scope: !3086, inlinedAt: !3109)
!3157 = !DILocation(line: 368, column: 32, scope: !3086, inlinedAt: !3109)
!3158 = !DILocation(line: 372, column: 25, scope: !3086, inlinedAt: !3109)
!3159 = !DILocation(line: 372, column: 34, scope: !3086, inlinedAt: !3109)
!3160 = !DILocation(line: 374, column: 25, scope: !3086, inlinedAt: !3109)
!3161 = !DILocation(line: 374, column: 34, scope: !3086, inlinedAt: !3109)
!3162 = !DILocation(line: 379, column: 25, scope: !3086, inlinedAt: !3109)
!3163 = !{!3141, !887, i64 4}
!3164 = !DILocation(line: 384, column: 25, scope: !3086, inlinedAt: !3109)
!3165 = !{!3141, !928, i64 0}
!3166 = !DILocation(line: 390, column: 25, scope: !3086, inlinedAt: !3109)
!3167 = !{!3141, !887, i64 336}
!3168 = !DILocation(line: 390, column: 21, scope: !3086, inlinedAt: !3109)
!3169 = !DILocation(line: 394, column: 21, scope: !3086, inlinedAt: !3109)
!3170 = !{!3141, !928, i64 332}
!3171 = !DILocation(line: 394, column: 49, scope: !3086, inlinedAt: !3109)
!3172 = !{!3141, !928, i64 334}
!3173 = !{i64 0, i64 8, !829, i64 8, i64 8, !1123, i64 16, i64 8, !1123, i64 24, i64 8, !1123}
!3174 = distinct !DIAssignID()
!3175 = !DILocation(line: 398, column: 11, scope: !3176, inlinedAt: !3109)
!3176 = distinct !DILexicalBlock(scope: !3086, file: !562, line: 397, column: 11)
!3177 = !DILocalVariable(name: "__s1", arg: 1, scope: !3178, file: !899, line: 974, type: !1038)
!3178 = distinct !DISubprogram(name: "memeq", scope: !899, file: !899, line: 974, type: !1604, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3179)
!3179 = !{!3177, !3180, !3181}
!3180 = !DILocalVariable(name: "__s2", arg: 2, scope: !3178, file: !899, line: 974, type: !1038)
!3181 = !DILocalVariable(name: "__n", arg: 3, scope: !3178, file: !899, line: 974, type: !119)
!3182 = !DILocation(line: 0, scope: !3178, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 398, column: 14, scope: !3176, inlinedAt: !3109)
!3184 = !DILocation(line: 976, column: 11, scope: !3178, inlinedAt: !3183)
!3185 = !DILocation(line: 976, column: 10, scope: !3178, inlinedAt: !3183)
!3186 = !DILocation(line: 399, column: 11, scope: !3176, inlinedAt: !3109)
!3187 = !DILocation(line: 0, scope: !3178, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 399, column: 14, scope: !3176, inlinedAt: !3109)
!3189 = !DILocation(line: 976, column: 11, scope: !3178, inlinedAt: !3188)
!3190 = !DILocation(line: 976, column: 10, scope: !3178, inlinedAt: !3188)
!3191 = !DILocation(line: 397, column: 11, scope: !3086, inlinedAt: !3109)
!3192 = !DILocation(line: 408, column: 5, scope: !3076, inlinedAt: !3109)
!3193 = distinct !{!3193, !3136, !3192, !933}
!3194 = !DILocation(line: 410, column: 3, scope: !3076, inlinedAt: !3109)
!3195 = !DILocation(line: 427, column: 7, scope: !3091, inlinedAt: !3109)
!3196 = !{!3197, !1124, i64 8}
!3197 = !{!"utmp_alloc", !830, i64 0, !1124, i64 8, !1124, i64 16, !1124, i64 24}
!3198 = !DILocation(line: 0, scope: !3089, inlinedAt: !3109)
!3199 = !DILocation(line: 429, column: 27, scope: !3094, inlinedAt: !3109)
!3200 = !DILocation(line: 429, column: 7, scope: !3089, inlinedAt: !3109)
!3201 = !{!3197, !830, i64 0}
!3202 = !DILocation(line: 0, scope: !3093, inlinedAt: !3109)
!3203 = !DILocation(line: 432, column: 15, scope: !3204, inlinedAt: !3109)
!3204 = distinct !DILexicalBlock(scope: !3093, file: !562, line: 432, column: 15)
!3205 = !DILocation(line: 432, column: 15, scope: !3093, inlinedAt: !3109)
!3206 = !DILocation(line: 435, column: 23, scope: !3207, inlinedAt: !3109)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !562, line: 435, column: 19)
!3208 = distinct !DILexicalBlock(scope: !3204, file: !562, line: 433, column: 13)
!3209 = !DILocation(line: 435, column: 29, scope: !3207, inlinedAt: !3109)
!3210 = !{!1157, !1124, i64 32}
!3211 = !DILocation(line: 435, column: 36, scope: !3207, inlinedAt: !3109)
!3212 = !DILocation(line: 435, column: 42, scope: !3207, inlinedAt: !3109)
!3213 = !DILocation(line: 436, column: 29, scope: !3207, inlinedAt: !3109)
!3214 = !{i64 0, i64 8, !1123, i64 8, i64 8, !1123}
!3215 = !{i64 0, i64 8, !1123}
!3216 = !DILocation(line: 436, column: 17, scope: !3207, inlinedAt: !3109)
!3217 = !DILocation(line: 429, column: 40, scope: !3094, inlinedAt: !3109)
!3218 = distinct !{!3218, !3200, !3219, !933}
!3219 = !DILocation(line: 439, column: 9, scope: !3089, inlinedAt: !3109)
!3220 = !DILocalVariable(name: "a", arg: 1, scope: !3221, file: !562, line: 302, type: !3102)
!3221 = distinct !DISubprogram(name: "have_boot_time", scope: !562, file: !562, line: 302, type: !3222, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!247, !3102}
!3224 = !{!3220, !3225, !3227}
!3225 = !DILocalVariable(name: "i", scope: !3226, file: !562, line: 304, type: !773)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !562, line: 304, column: 3)
!3227 = !DILocalVariable(name: "ut", scope: !3228, file: !562, line: 306, type: !3095)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !562, line: 305, column: 5)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !562, line: 304, column: 3)
!3230 = !DILocation(line: 302, column: 35, scope: !3221, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 440, column: 12, scope: !3098, inlinedAt: !3109)
!3232 = !DILocation(line: 0, scope: !3226, inlinedAt: !3231)
!3233 = !DILocation(line: 304, column: 23, scope: !3229, inlinedAt: !3231)
!3234 = !DILocation(line: 304, column: 3, scope: !3226, inlinedAt: !3231)
!3235 = !DILocation(line: 0, scope: !3228, inlinedAt: !3231)
!3236 = !DILocation(line: 307, column: 11, scope: !3237, inlinedAt: !3231)
!3237 = distinct !DILexicalBlock(scope: !3228, file: !562, line: 307, column: 11)
!3238 = !DILocation(line: 304, column: 36, scope: !3229, inlinedAt: !3231)
!3239 = distinct !{!3239, !3234, !3240, !933}
!3240 = !DILocation(line: 309, column: 5, scope: !3226, inlinedAt: !3231)
!3241 = distinct !{!3241, !3234, !3240, !933}
!3242 = !DILocation(line: 440, column: 11, scope: !3090, inlinedAt: !3109)
!3243 = !DILocation(line: 443, column: 11, scope: !3097, inlinedAt: !3109)
!3244 = !DILocalVariable(name: "statbuf", scope: !3245, file: !576, line: 108, type: !3261)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !576, line: 106, column: 5)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !576, line: 105, column: 3)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !576, line: 105, column: 3)
!3248 = distinct !DISubprogram(name: "get_linux_boot_time_fallback", scope: !576, file: !576, line: 87, type: !3249, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3252)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!117, !3251}
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3252 = !{!3253, !3254, !3256, !3257, !3244, !3258}
!3253 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3248, file: !576, line: 87, type: !3251)
!3254 = !DILocalVariable(name: "boot_touched_files", scope: !3248, file: !576, line: 96, type: !3255)
!3255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 256, elements: !136)
!3256 = !DILocalVariable(name: "i", scope: !3247, file: !576, line: 105, type: !773)
!3257 = !DILocalVariable(name: "filename", scope: !3245, file: !576, line: 107, type: !74)
!3258 = !DILocalVariable(name: "boot_time", scope: !3259, file: !576, line: 111, type: !3020)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !576, line: 110, column: 9)
!3260 = distinct !DILexicalBlock(scope: !3245, file: !576, line: 109, column: 11)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3262, line: 26, size: 1152, elements: !3263)
!3262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!3263 = !{!3264, !3266, !3268, !3270, !3272, !3274, !3276, !3277, !3278, !3279, !3281, !3283, !3284, !3285, !3286}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3261, file: !3262, line: 31, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !287, line: 145, baseType: !121)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3261, file: !3262, line: 36, baseType: !3267, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !287, line: 148, baseType: !121)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3261, file: !3262, line: 44, baseType: !3269, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !287, line: 151, baseType: !121)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3261, file: !3262, line: 45, baseType: !3271, size: 32, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !287, line: 150, baseType: !80)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3261, file: !3262, line: 47, baseType: !3273, size: 32, offset: 224)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !287, line: 146, baseType: !80)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3261, file: !3262, line: 48, baseType: !3275, size: 32, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !287, line: 147, baseType: !80)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3261, file: !3262, line: 50, baseType: !117, size: 32, offset: 288)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3261, file: !3262, line: 52, baseType: !3265, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3261, file: !3262, line: 57, baseType: !286, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3261, file: !3262, line: 61, baseType: !3280, size: 64, offset: 448)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !287, line: 175, baseType: !288)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3261, file: !3262, line: 63, baseType: !3282, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !287, line: 180, baseType: !288)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3261, file: !3262, line: 74, baseType: !3020, size: 128, offset: 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3261, file: !3262, line: 75, baseType: !3020, size: 128, offset: 704)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3261, file: !3262, line: 76, baseType: !3020, size: 128, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3261, file: !3262, line: 89, baseType: !3287, size: 192, offset: 960)
!3287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 192, elements: !152)
!3288 = !DILocation(line: 0, scope: !3245, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 444, column: 15, scope: !3290, inlinedAt: !3109)
!3290 = distinct !DILexicalBlock(scope: !3097, file: !562, line: 444, column: 15)
!3291 = !DILocation(line: 0, scope: !3248, inlinedAt: !3289)
!3292 = distinct !DIAssignID()
!3293 = !DILocation(line: 0, scope: !3247, inlinedAt: !3289)
!3294 = !DILocation(line: 108, column: 7, scope: !3245, inlinedAt: !3289)
!3295 = !DILocation(line: 109, column: 11, scope: !3260, inlinedAt: !3289)
!3296 = !DILocation(line: 109, column: 37, scope: !3260, inlinedAt: !3289)
!3297 = !DILocalVariable(name: "st", arg: 1, scope: !3298, file: !3299, line: 169, type: !3302)
!3298 = distinct !DISubprogram(name: "get_stat_mtime", scope: !3299, file: !3299, line: 169, type: !3300, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3304)
!3299 = !DIFile(filename: "lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!3020, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3304 = !{!3297}
!3305 = !DILocation(line: 0, scope: !3298, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 111, column: 39, scope: !3259, inlinedAt: !3289)
!3307 = !DILocation(line: 0, scope: !3259, inlinedAt: !3289)
!3308 = !DILocation(line: 109, column: 11, scope: !3245, inlinedAt: !3289)
!3309 = !DILocation(line: 122, column: 5, scope: !3246, inlinedAt: !3289)
!3310 = !DILocation(line: 444, column: 15, scope: !3097, inlinedAt: !3109)
!3311 = !DILocation(line: 172, column: 10, scope: !3298, inlinedAt: !3306)
!3312 = !DILocation(line: 118, column: 30, scope: !3313, inlinedAt: !3289)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !576, line: 117, column: 13)
!3314 = distinct !DILexicalBlock(scope: !3259, file: !576, line: 116, column: 15)
!3315 = distinct !DIAssignID()
!3316 = distinct !DIAssignID()
!3317 = !DILocation(line: 445, column: 17, scope: !3290, inlinedAt: !3109)
!3318 = distinct !DIAssignID()
!3319 = !DILocation(line: 445, column: 13, scope: !3290, inlinedAt: !3109)
!3320 = !DILocation(line: 451, column: 9, scope: !3098, inlinedAt: !3109)
!3321 = !DILocation(line: 451, column: 9, scope: !3097, inlinedAt: !3109)
!3322 = !DILocation(line: 589, column: 7, scope: !3101, inlinedAt: !3109)
!3323 = !DILocation(line: 0, scope: !3127, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 589, column: 10, scope: !3101, inlinedAt: !3109)
!3325 = !DILocation(line: 1361, column: 11, scope: !3127, inlinedAt: !3324)
!3326 = !DILocation(line: 1361, column: 10, scope: !3127, inlinedAt: !3324)
!3327 = !DILocation(line: 590, column: 7, scope: !3101, inlinedAt: !3109)
!3328 = !DILocation(line: 302, column: 35, scope: !3221, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 590, column: 11, scope: !3101, inlinedAt: !3109)
!3330 = !DILocation(line: 0, scope: !3226, inlinedAt: !3329)
!3331 = !DILocation(line: 304, column: 23, scope: !3229, inlinedAt: !3329)
!3332 = !DILocation(line: 304, column: 3, scope: !3226, inlinedAt: !3329)
!3333 = !DILocation(line: 0, scope: !3228, inlinedAt: !3329)
!3334 = !DILocation(line: 307, column: 11, scope: !3237, inlinedAt: !3329)
!3335 = !DILocation(line: 304, column: 36, scope: !3229, inlinedAt: !3329)
!3336 = distinct !{!3336, !3332, !3337, !933}
!3337 = !DILocation(line: 309, column: 5, scope: !3226, inlinedAt: !3329)
!3338 = distinct !{!3338, !3332, !3337, !933}
!3339 = !DILocation(line: 588, column: 7, scope: !3076, inlinedAt: !3109)
!3340 = !DILocation(line: 592, column: 7, scope: !3100, inlinedAt: !3109)
!3341 = !DILocalVariable(name: "uptime", scope: !3342, file: !576, line: 136, type: !3020)
!3342 = distinct !DISubprogram(name: "get_linux_boot_time_final_fallback", scope: !576, file: !576, line: 134, type: !3249, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3343)
!3343 = !{!3344, !3341, !3345}
!3344 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3342, file: !576, line: 134, type: !3251)
!3345 = !DILocalVariable(name: "result", scope: !3346, file: !576, line: 139, type: !3020)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !576, line: 138, column: 5)
!3347 = distinct !DILexicalBlock(scope: !3342, file: !576, line: 137, column: 7)
!3348 = !DILocation(line: 0, scope: !3342, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 593, column: 11, scope: !3350, inlinedAt: !3109)
!3350 = distinct !DILexicalBlock(scope: !3100, file: !562, line: 593, column: 11)
!3351 = !DILocation(line: 0, scope: !3346, inlinedAt: !3349)
!3352 = !DILocation(line: 136, column: 3, scope: !3342, inlinedAt: !3349)
!3353 = !DILocalVariable(name: "buf", scope: !3354, file: !576, line: 43, type: !3435)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !576, line: 42, column: 5)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !576, line: 41, column: 7)
!3356 = distinct !DISubprogram(name: "get_linux_uptime", scope: !576, file: !576, line: 27, type: !3249, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3357)
!3357 = !{!3358, !3359, !3353, !3394, !3395, !3400, !3401, !3404, !3407}
!3358 = !DILocalVariable(name: "p_uptime", arg: 1, scope: !3356, file: !576, line: 27, type: !3251)
!3359 = !DILocalVariable(name: "fp", scope: !3356, file: !576, line: 40, type: !3360)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3362, file: !264, line: 51, baseType: !117, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3362, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3362, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3362, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3362, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3362, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3362, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3362, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3362, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3362, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3362, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3362, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3362, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3362, file: !264, line: 70, baseType: !3378, size: 64, offset: 832)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3362, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3362, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3362, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3362, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3362, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3362, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3362, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3362, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3362, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3362, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3362, file: !264, line: 93, baseType: !3378, size: 64, offset: 1344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3362, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3362, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3362, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3362, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3394 = !DILocalVariable(name: "n", scope: !3354, file: !576, line: 44, type: !119)
!3395 = !DILocalVariable(name: "s", scope: !3396, file: !576, line: 50, type: !3398)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !576, line: 47, column: 9)
!3397 = distinct !DILexicalBlock(scope: !3354, file: !576, line: 46, column: 11)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !3399, line: 10, baseType: !1098)
!3399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!3400 = !DILocalVariable(name: "p", scope: !3396, file: !576, line: 51, type: !124)
!3401 = !DILocalVariable(name: "ns", scope: !3402, file: !576, line: 56, type: !288)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !576, line: 55, column: 13)
!3403 = distinct !DILexicalBlock(scope: !3396, file: !576, line: 54, column: 15)
!3404 = !DILocalVariable(name: "i", scope: !3405, file: !576, line: 58, type: !117)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !576, line: 58, column: 17)
!3406 = distinct !DILexicalBlock(scope: !3402, file: !576, line: 57, column: 19)
!3407 = !DILocalVariable(name: "info", scope: !3356, file: !576, line: 70, type: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !3409, line: 8, size: 896, elements: !3410)
!3409 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!3410 = !{!3411, !3414, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3426, !3427, !3428, !3429, !3431}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !3408, file: !3409, line: 9, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !3413, line: 15, baseType: !288)
!3413 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "", checksumkind: CSK_MD5, checksum: "dfd772b670921419860c9b47bcd28ff0")
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !3408, file: !3409, line: 10, baseType: !3415, size: 192, offset: 64)
!3415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3416, size: 192, elements: !152)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !3413, line: 16, baseType: !121)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !3408, file: !3409, line: 11, baseType: !3416, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !3408, file: !3409, line: 12, baseType: !3416, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !3408, file: !3409, line: 13, baseType: !3416, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !3408, file: !3409, line: 14, baseType: !3416, size: 64, offset: 448)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !3408, file: !3409, line: 15, baseType: !3416, size: 64, offset: 512)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !3408, file: !3409, line: 16, baseType: !3416, size: 64, offset: 576)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !3408, file: !3409, line: 17, baseType: !3424, size: 16, offset: 640)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !3425, line: 24, baseType: !118)
!3425 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3408, file: !3409, line: 18, baseType: !3424, size: 16, offset: 656)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !3408, file: !3409, line: 19, baseType: !3416, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !3408, file: !3409, line: 20, baseType: !3416, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !3408, file: !3409, line: 21, baseType: !3430, size: 32, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !3425, line: 27, baseType: !80)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !3408, file: !3409, line: 22, baseType: !3432, offset: 864)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !3433)
!3433 = !{!3434}
!3434 = !DISubrange(count: 0)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !3436)
!3436 = !{!3437}
!3437 = !DISubrange(count: 33)
!3438 = !DILocation(line: 0, scope: !3354, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 137, column: 7, scope: !3347, inlinedAt: !3349)
!3440 = !DILocation(line: 0, scope: !3356, inlinedAt: !3439)
!3441 = !DILocation(line: 33, column: 7, scope: !3442, inlinedAt: !3439)
!3442 = distinct !DILexicalBlock(scope: !3356, file: !576, line: 33, column: 7)
!3443 = !DILocation(line: 33, column: 48, scope: !3442, inlinedAt: !3439)
!3444 = !DILocation(line: 33, column: 7, scope: !3356, inlinedAt: !3439)
!3445 = !DILocation(line: 40, column: 14, scope: !3356, inlinedAt: !3439)
!3446 = !DILocation(line: 41, column: 10, scope: !3355, inlinedAt: !3439)
!3447 = !DILocation(line: 41, column: 7, scope: !3356, inlinedAt: !3439)
!3448 = !DILocation(line: 43, column: 7, scope: !3354, inlinedAt: !3439)
!3449 = !DILocation(line: 44, column: 18, scope: !3354, inlinedAt: !3439)
!3450 = !DILocation(line: 45, column: 7, scope: !3354, inlinedAt: !3439)
!3451 = !DILocation(line: 46, column: 13, scope: !3397, inlinedAt: !3439)
!3452 = !DILocation(line: 46, column: 11, scope: !3354, inlinedAt: !3439)
!3453 = !DILocation(line: 48, column: 11, scope: !3396, inlinedAt: !3439)
!3454 = !DILocation(line: 48, column: 18, scope: !3396, inlinedAt: !3439)
!3455 = !DILocation(line: 0, scope: !3396, inlinedAt: !3439)
!3456 = !DILocation(line: 52, column: 32, scope: !3457, inlinedAt: !3439)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !576, line: 52, column: 11)
!3458 = distinct !DILexicalBlock(scope: !3396, file: !576, line: 52, column: 11)
!3459 = !DILocation(line: 52, column: 35, scope: !3457, inlinedAt: !3439)
!3460 = !DILocation(line: 53, column: 20, scope: !3457, inlinedAt: !3439)
!3461 = !DILocation(line: 53, column: 30, scope: !3457, inlinedAt: !3439)
!3462 = !DILocation(line: 53, column: 24, scope: !3457, inlinedAt: !3439)
!3463 = !DILocation(line: 52, column: 50, scope: !3457, inlinedAt: !3439)
!3464 = distinct !{!3464, !3465, !3466, !933}
!3465 = !DILocation(line: 52, column: 11, scope: !3458, inlinedAt: !3439)
!3466 = !DILocation(line: 53, column: 35, scope: !3458, inlinedAt: !3439)
!3467 = !DILocation(line: 54, column: 19, scope: !3403, inlinedAt: !3439)
!3468 = !DILocation(line: 54, column: 15, scope: !3396, inlinedAt: !3439)
!3469 = !DILocation(line: 0, scope: !3402, inlinedAt: !3439)
!3470 = !DILocation(line: 57, column: 24, scope: !3406, inlinedAt: !3439)
!3471 = !DILocation(line: 57, column: 19, scope: !3402, inlinedAt: !3439)
!3472 = !DILocation(line: 57, column: 21, scope: !3406, inlinedAt: !3439)
!3473 = !DILocation(line: 0, scope: !3405, inlinedAt: !3439)
!3474 = !DILocation(line: 59, column: 42, scope: !3475, inlinedAt: !3439)
!3475 = distinct !DILexicalBlock(scope: !3405, file: !576, line: 58, column: 17)
!3476 = !DILocation(line: 59, column: 45, scope: !3475, inlinedAt: !3439)
!3477 = !DILocation(line: 59, column: 27, scope: !3475, inlinedAt: !3439)
!3478 = !DILocation(line: 59, column: 32, scope: !3475, inlinedAt: !3439)
!3479 = !DILocation(line: 60, column: 32, scope: !3402, inlinedAt: !3439)
!3480 = !DILocation(line: 65, column: 5, scope: !3355, inlinedAt: !3439)
!3481 = !DILocation(line: 56, column: 20, scope: !3402, inlinedAt: !3439)
!3482 = distinct !DIAssignID()
!3483 = !DILocation(line: 61, column: 25, scope: !3402, inlinedAt: !3439)
!3484 = !DILocation(line: 61, column: 33, scope: !3402, inlinedAt: !3439)
!3485 = distinct !DIAssignID()
!3486 = !DILocation(line: 70, column: 3, scope: !3356, inlinedAt: !3439)
!3487 = !DILocation(line: 71, column: 7, scope: !3488, inlinedAt: !3439)
!3488 = distinct !DILexicalBlock(scope: !3356, file: !576, line: 71, column: 7)
!3489 = !DILocation(line: 71, column: 23, scope: !3488, inlinedAt: !3439)
!3490 = !DILocation(line: 71, column: 7, scope: !3356, inlinedAt: !3439)
!3491 = !DILocation(line: 73, column: 31, scope: !3492, inlinedAt: !3439)
!3492 = distinct !DILexicalBlock(scope: !3488, file: !576, line: 72, column: 5)
!3493 = !{!3494, !1124, i64 0}
!3494 = !{!"sysinfo", !1124, i64 0, !831, i64 8, !1124, i64 32, !1124, i64 40, !1124, i64 48, !1124, i64 56, !1124, i64 64, !1124, i64 72, !928, i64 80, !928, i64 82, !1124, i64 88, !1124, i64 96, !887, i64 104, !831, i64 108}
!3495 = !DILocation(line: 73, column: 24, scope: !3492, inlinedAt: !3439)
!3496 = distinct !DIAssignID()
!3497 = !DILocation(line: 74, column: 17, scope: !3492, inlinedAt: !3439)
!3498 = !DILocation(line: 74, column: 25, scope: !3492, inlinedAt: !3439)
!3499 = distinct !DIAssignID()
!3500 = !DILocation(line: 80, column: 1, scope: !3356, inlinedAt: !3439)
!3501 = !DILocation(line: 137, column: 7, scope: !3342, inlinedAt: !3349)
!3502 = !DILocation(line: 169, column: 1, scope: !3342, inlinedAt: !3349)
!3503 = !DILocation(line: 593, column: 11, scope: !3100, inlinedAt: !3109)
!3504 = !DILocation(line: 139, column: 7, scope: !3346, inlinedAt: !3349)
!3505 = !DILocation(line: 145, column: 13, scope: !3506, inlinedAt: !3349)
!3506 = distinct !DILexicalBlock(scope: !3346, file: !576, line: 145, column: 11)
!3507 = !DILocation(line: 145, column: 11, scope: !3346, inlinedAt: !3349)
!3508 = !DILocation(line: 167, column: 5, scope: !3347, inlinedAt: !3349)
!3509 = !DILocation(line: 158, column: 18, scope: !3510, inlinedAt: !3349)
!3510 = distinct !DILexicalBlock(scope: !3346, file: !576, line: 158, column: 11)
!3511 = !DILocation(line: 158, column: 35, scope: !3510, inlinedAt: !3349)
!3512 = !DILocation(line: 158, column: 26, scope: !3510, inlinedAt: !3349)
!3513 = !DILocation(line: 163, column: 21, scope: !3346, inlinedAt: !3349)
!3514 = !DILocation(line: 158, column: 11, scope: !3346, inlinedAt: !3349)
!3515 = !DILocation(line: 163, column: 31, scope: !3346, inlinedAt: !3349)
!3516 = distinct !DIAssignID()
!3517 = !DILocation(line: 164, column: 22, scope: !3346, inlinedAt: !3349)
!3518 = distinct !DIAssignID()
!3519 = !DILocation(line: 165, column: 22, scope: !3346, inlinedAt: !3349)
!3520 = distinct !DIAssignID()
!3521 = !DILocation(line: 594, column: 13, scope: !3350, inlinedAt: !3109)
!3522 = distinct !DIAssignID()
!3523 = !DILocation(line: 594, column: 9, scope: !3350, inlinedAt: !3109)
!3524 = !DILocation(line: 600, column: 5, scope: !3101, inlinedAt: !3109)
!3525 = !DILocation(line: 600, column: 5, scope: !3100, inlinedAt: !3109)
!3526 = !DILocation(line: 286, column: 32, scope: !3527, inlinedAt: !3535)
!3527 = distinct !DISubprogram(name: "finish_utmp", scope: !562, file: !562, line: 284, type: !3528, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!3102, !3102}
!3530 = !{!3531, !3532, !3533}
!3531 = !DILocalVariable(name: "a", arg: 1, scope: !3527, file: !562, line: 284, type: !3102)
!3532 = !DILocalVariable(name: "stringlim", scope: !3527, file: !562, line: 286, type: !124)
!3533 = !DILocalVariable(name: "i", scope: !3534, file: !562, line: 288, type: !773)
!3534 = distinct !DILexicalBlock(scope: !3527, file: !562, line: 288, column: 3)
!3535 = distinct !DILocation(line: 688, column: 7, scope: !3076, inlinedAt: !3109)
!3536 = !DILocation(line: 0, scope: !3527, inlinedAt: !3535)
!3537 = !DILocation(line: 286, column: 37, scope: !3527, inlinedAt: !3535)
!3538 = !DILocation(line: 0, scope: !3534, inlinedAt: !3535)
!3539 = !DILocation(line: 288, column: 23, scope: !3540, inlinedAt: !3535)
!3540 = distinct !DILexicalBlock(scope: !3534, file: !562, line: 288, column: 3)
!3541 = !DILocation(line: 288, column: 3, scope: !3534, inlinedAt: !3535)
!3542 = !DILocation(line: 290, column: 38, scope: !3543, inlinedAt: !3535)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !562, line: 289, column: 5)
!3544 = !DILocation(line: 290, column: 48, scope: !3543, inlinedAt: !3535)
!3545 = !{!3546}
!3546 = distinct !{!3546, !3547, !"finish_utmp: argument 0"}
!3547 = distinct !{!3547, !"finish_utmp"}
!3548 = !DILocation(line: 290, column: 27, scope: !3543, inlinedAt: !3535)
!3549 = !DILocation(line: 290, column: 56, scope: !3543, inlinedAt: !3535)
!3550 = !DILocation(line: 290, column: 25, scope: !3543, inlinedAt: !3535)
!3551 = !DILocation(line: 291, column: 48, scope: !3543, inlinedAt: !3535)
!3552 = !{!1157, !830, i64 8}
!3553 = !DILocation(line: 291, column: 27, scope: !3543, inlinedAt: !3535)
!3554 = !DILocation(line: 291, column: 56, scope: !3543, inlinedAt: !3535)
!3555 = !DILocation(line: 291, column: 25, scope: !3543, inlinedAt: !3535)
!3556 = !DILocation(line: 292, column: 48, scope: !3543, inlinedAt: !3535)
!3557 = !{!1157, !830, i64 16}
!3558 = !DILocation(line: 292, column: 27, scope: !3543, inlinedAt: !3535)
!3559 = !DILocation(line: 292, column: 56, scope: !3543, inlinedAt: !3535)
!3560 = !DILocation(line: 292, column: 25, scope: !3543, inlinedAt: !3535)
!3561 = !DILocation(line: 293, column: 48, scope: !3543, inlinedAt: !3535)
!3562 = !{!1157, !830, i64 24}
!3563 = !DILocation(line: 293, column: 27, scope: !3543, inlinedAt: !3535)
!3564 = !DILocation(line: 293, column: 56, scope: !3543, inlinedAt: !3535)
!3565 = !DILocation(line: 293, column: 25, scope: !3543, inlinedAt: !3535)
!3566 = !DILocation(line: 288, column: 36, scope: !3540, inlinedAt: !3535)
!3567 = distinct !{!3567, !3541, !3568, !933}
!3568 = !DILocation(line: 294, column: 5, scope: !3534, inlinedAt: !3535)
!3569 = distinct !DIAssignID()
!3570 = distinct !DIAssignID()
!3571 = distinct !DIAssignID()
!3572 = distinct !DIAssignID()
!3573 = !DILocation(line: 690, column: 14, scope: !3076, inlinedAt: !3109)
!3574 = !DILocation(line: 691, column: 13, scope: !3076, inlinedAt: !3109)
!3575 = !DILocation(line: 694, column: 1, scope: !3076, inlinedAt: !3109)
!3576 = !DILocation(line: 986, column: 3, scope: !3055)
!3577 = !DISubprogram(name: "utmpxname", scope: !3578, file: !3578, line: 93, type: !3579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3578 = !DIFile(filename: "/usr/include/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "59d83f2bbda77647297a040029d18d89")
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!117, !74}
!3581 = !DISubprogram(name: "setutxent", scope: !3578, file: !3578, line: 53, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3582 = !DISubprogram(name: "getutxent", scope: !3578, file: !3578, line: 65, type: !3583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!3586 = !DISubprogram(name: "strnlen", scope: !1006, file: !1006, line: 413, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!119, !74, !119}
!3589 = distinct !DISubprogram(name: "add_utmp", scope: !562, file: !562, line: 227, type: !3590, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!3102, !3102, !117, !74, !773, !74, !773, !74, !773, !74, !773, !1102, !722, !3020, !288, !117, !117}
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3616, !3617, !3618, !3619, !3620, !3621}
!3593 = !DILocalVariable(name: "a", arg: 1, scope: !3589, file: !562, line: 227, type: !3102)
!3594 = !DILocalVariable(name: "options", arg: 2, scope: !3589, file: !562, line: 227, type: !117)
!3595 = !DILocalVariable(name: "user", arg: 3, scope: !3589, file: !562, line: 228, type: !74)
!3596 = !DILocalVariable(name: "user_len", arg: 4, scope: !3589, file: !562, line: 228, type: !773)
!3597 = !DILocalVariable(name: "id", arg: 5, scope: !3589, file: !562, line: 229, type: !74)
!3598 = !DILocalVariable(name: "id_len", arg: 6, scope: !3589, file: !562, line: 229, type: !773)
!3599 = !DILocalVariable(name: "line", arg: 7, scope: !3589, file: !562, line: 230, type: !74)
!3600 = !DILocalVariable(name: "line_len", arg: 8, scope: !3589, file: !562, line: 230, type: !773)
!3601 = !DILocalVariable(name: "host", arg: 9, scope: !3589, file: !562, line: 231, type: !74)
!3602 = !DILocalVariable(name: "host_len", arg: 10, scope: !3589, file: !562, line: 231, type: !773)
!3603 = !DILocalVariable(name: "pid", arg: 11, scope: !3589, file: !562, line: 232, type: !1102)
!3604 = !DILocalVariable(name: "type", arg: 12, scope: !3589, file: !562, line: 232, type: !722)
!3605 = !DILocalVariable(name: "ts", arg: 13, scope: !3589, file: !562, line: 232, type: !3020)
!3606 = !DILocalVariable(name: "session", arg: 14, scope: !3589, file: !562, line: 232, type: !288)
!3607 = !DILocalVariable(name: "termination", arg: 15, scope: !3589, file: !562, line: 233, type: !117)
!3608 = !DILocalVariable(name: "exit", arg: 16, scope: !3589, file: !562, line: 233, type: !117)
!3609 = !DILocalVariable(name: "entry_bytes", scope: !3589, file: !562, line: 235, type: !117)
!3610 = !DILocalVariable(name: "avail", scope: !3589, file: !562, line: 236, type: !773)
!3611 = !DILocalVariable(name: "needed_string_bytes", scope: !3589, file: !562, line: 237, type: !773)
!3612 = !DILocalVariable(name: "needed", scope: !3589, file: !562, line: 239, type: !773)
!3613 = !DILocalVariable(name: "old_string_offset", scope: !3614, file: !562, line: 242, type: !773)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !562, line: 241, column: 5)
!3615 = distinct !DILexicalBlock(scope: !3589, file: !562, line: 240, column: 7)
!3616 = !DILocalVariable(name: "new", scope: !3614, file: !562, line: 243, type: !116)
!3617 = !DILocalVariable(name: "new_string_offset", scope: !3614, file: !562, line: 244, type: !773)
!3618 = !DILocalVariable(name: "q", scope: !3614, file: !562, line: 246, type: !124)
!3619 = !DILocalVariable(name: "ut", scope: !3589, file: !562, line: 249, type: !3095)
!3620 = !DILocalVariable(name: "stringlim", scope: !3589, file: !562, line: 250, type: !124)
!3621 = !DILocalVariable(name: "p", scope: !3589, file: !562, line: 251, type: !124)
!3622 = !DILocation(line: 227, column: 29, scope: !3589)
!3623 = !DILocation(line: 0, scope: !3589)
!3624 = !DILocation(line: 232, column: 50, scope: !3589)
!3625 = !DILocation(line: 236, column: 19, scope: !3589)
!3626 = !{!3197, !1124, i64 24}
!3627 = !DILocation(line: 236, column: 50, scope: !3589)
!3628 = !DILocation(line: 236, column: 61, scope: !3589)
!3629 = !{!3197, !1124, i64 16}
!3630 = !DILocation(line: 236, column: 57, scope: !3589)
!3631 = !DILocation(line: 236, column: 31, scope: !3589)
!3632 = !DILocation(line: 238, column: 20, scope: !3589)
!3633 = !DILocation(line: 238, column: 35, scope: !3589)
!3634 = !DILocation(line: 238, column: 52, scope: !3589)
!3635 = !DILocation(line: 239, column: 30, scope: !3589)
!3636 = !DILocation(line: 240, column: 13, scope: !3615)
!3637 = !DILocation(line: 240, column: 7, scope: !3589)
!3638 = !DILocation(line: 0, scope: !3614)
!3639 = !DILocation(line: 243, column: 30, scope: !3614)
!3640 = !DILocation(line: 243, column: 59, scope: !3614)
!3641 = !DILocation(line: 243, column: 19, scope: !3614)
!3642 = !DILocation(line: 244, column: 35, scope: !3614)
!3643 = !DILocation(line: 244, column: 51, scope: !3614)
!3644 = !DILocation(line: 244, column: 47, scope: !3614)
!3645 = !DILocation(line: 245, column: 14, scope: !3614)
!3646 = !DILocation(line: 247, column: 18, scope: !3614)
!3647 = !DILocation(line: 247, column: 41, scope: !3614)
!3648 = !DILocalVariable(name: "__dest", arg: 1, scope: !3649, file: !1644, line: 34, type: !116)
!3649 = distinct !DISubprogram(name: "memmove", scope: !1644, file: !1644, line: 34, type: !3650, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!116, !116, !1038, !119}
!3652 = !{!3648, !3653, !3654}
!3653 = !DILocalVariable(name: "__src", arg: 2, scope: !3649, file: !1644, line: 34, type: !1038)
!3654 = !DILocalVariable(name: "__len", arg: 3, scope: !3649, file: !1644, line: 34, type: !119)
!3655 = !DILocation(line: 0, scope: !3649, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 247, column: 7, scope: !3614)
!3657 = !DILocation(line: 36, column: 10, scope: !3649, inlinedAt: !3656)
!3658 = !DILocation(line: 249, column: 34, scope: !3589)
!3659 = !DILocation(line: 250, column: 41, scope: !3589)
!3660 = !DILocation(line: 251, column: 27, scope: !3589)
!3661 = !DILocation(line: 248, column: 5, scope: !3614)
!3662 = !DILocation(line: 249, column: 27, scope: !3589)
!3663 = !DILocation(line: 249, column: 25, scope: !3589)
!3664 = !DILocation(line: 250, column: 37, scope: !3589)
!3665 = !DILocation(line: 251, column: 23, scope: !3589)
!3666 = !DILocation(line: 252, column: 4, scope: !3589)
!3667 = !DILocation(line: 252, column: 8, scope: !3589)
!3668 = !DILocation(line: 253, column: 31, scope: !3589)
!3669 = !DILocalVariable(name: "__dest", arg: 1, scope: !3670, file: !1644, line: 26, type: !3673)
!3670 = distinct !DISubprogram(name: "memcpy", scope: !1644, file: !1644, line: 26, type: !3671, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3674)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!116, !3673, !1037, !119}
!3673 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!3674 = !{!3669, !3675, !3676}
!3675 = !DILocalVariable(name: "__src", arg: 2, scope: !3670, file: !1644, line: 26, type: !1037)
!3676 = !DILocalVariable(name: "__len", arg: 3, scope: !3670, file: !1644, line: 26, type: !119)
!3677 = !DILocation(line: 0, scope: !3670, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 253, column: 21, scope: !3589)
!3679 = !DILocation(line: 29, column: 10, scope: !3670, inlinedAt: !3678)
!3680 = !DILocation(line: 253, column: 15, scope: !3589)
!3681 = !DILocation(line: 254, column: 4, scope: !3589)
!3682 = !DILocation(line: 254, column: 8, scope: !3589)
!3683 = !DILocation(line: 255, column: 31, scope: !3589)
!3684 = !DILocation(line: 0, scope: !3670, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 255, column: 21, scope: !3589)
!3686 = !DILocation(line: 29, column: 10, scope: !3670, inlinedAt: !3685)
!3687 = !DILocation(line: 255, column: 7, scope: !3589)
!3688 = !DILocation(line: 255, column: 15, scope: !3589)
!3689 = !DILocation(line: 256, column: 4, scope: !3589)
!3690 = !DILocation(line: 256, column: 8, scope: !3589)
!3691 = !DILocation(line: 257, column: 31, scope: !3589)
!3692 = !DILocation(line: 0, scope: !3670, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 257, column: 21, scope: !3589)
!3694 = !DILocation(line: 29, column: 10, scope: !3670, inlinedAt: !3693)
!3695 = !DILocation(line: 257, column: 7, scope: !3589)
!3696 = !DILocation(line: 257, column: 15, scope: !3589)
!3697 = !DILocation(line: 258, column: 4, scope: !3589)
!3698 = !DILocation(line: 258, column: 8, scope: !3589)
!3699 = !DILocation(line: 259, column: 31, scope: !3589)
!3700 = !DILocation(line: 0, scope: !3670, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 259, column: 21, scope: !3589)
!3702 = !DILocation(line: 29, column: 10, scope: !3670, inlinedAt: !3701)
!3703 = !DILocation(line: 259, column: 7, scope: !3589)
!3704 = !DILocation(line: 259, column: 15, scope: !3589)
!3705 = !DILocation(line: 260, column: 7, scope: !3589)
!3706 = !DILocation(line: 260, column: 15, scope: !3589)
!3707 = !DILocation(line: 261, column: 7, scope: !3589)
!3708 = !DILocation(line: 261, column: 14, scope: !3589)
!3709 = !{!1157, !887, i64 48}
!3710 = !DILocation(line: 262, column: 20, scope: !3589)
!3711 = !DILocation(line: 262, column: 7, scope: !3589)
!3712 = !DILocation(line: 262, column: 18, scope: !3589)
!3713 = !{!1157, !887, i64 52}
!3714 = !DILocation(line: 263, column: 7, scope: !3589)
!3715 = !DILocation(line: 263, column: 15, scope: !3589)
!3716 = !DILocation(line: 264, column: 7, scope: !3589)
!3717 = !DILocation(line: 264, column: 29, scope: !3589)
!3718 = !{!1157, !887, i64 60}
!3719 = !DILocation(line: 265, column: 15, scope: !3589)
!3720 = !DILocation(line: 265, column: 22, scope: !3589)
!3721 = !{!1157, !887, i64 64}
!3722 = !DILocalVariable(name: "ut", arg: 1, scope: !3723, file: !562, line: 171, type: !3010)
!3723 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !562, file: !562, line: 171, type: !3724, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!247, !3010, !117}
!3726 = !{!3722, !3727, !3728, !3729}
!3727 = !DILocalVariable(name: "options", arg: 2, scope: !3723, file: !562, line: 171, type: !117)
!3728 = !DILocalVariable(name: "boot_time", scope: !3723, file: !562, line: 180, type: !247)
!3729 = !DILocalVariable(name: "user_proc", scope: !3723, file: !562, line: 186, type: !247)
!3730 = !DILocation(line: 0, scope: !3723, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 266, column: 7, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3589, file: !562, line: 266, column: 7)
!3733 = !DILocation(line: 180, column: 20, scope: !3723, inlinedAt: !3731)
!3734 = !DILocation(line: 181, column: 16, scope: !3735, inlinedAt: !3731)
!3735 = distinct !DILexicalBlock(scope: !3723, file: !562, line: 181, column: 7)
!3736 = !DILocation(line: 181, column: 39, scope: !3735, inlinedAt: !3731)
!3737 = !DILocation(line: 183, column: 16, scope: !3738, inlinedAt: !3731)
!3738 = distinct !DILexicalBlock(scope: !3723, file: !562, line: 183, column: 7)
!3739 = !DILocation(line: 183, column: 42, scope: !3738, inlinedAt: !3731)
!3740 = !DILocation(line: 186, column: 20, scope: !3723, inlinedAt: !3731)
!3741 = !DILocation(line: 187, column: 16, scope: !3742, inlinedAt: !3731)
!3742 = distinct !DILexicalBlock(scope: !3723, file: !562, line: 187, column: 7)
!3743 = !DILocation(line: 187, column: 42, scope: !3742, inlinedAt: !3731)
!3744 = !DILocation(line: 190, column: 16, scope: !3745, inlinedAt: !3731)
!3745 = distinct !DILexicalBlock(scope: !3723, file: !562, line: 190, column: 7)
!3746 = !DILocation(line: 191, column: 7, scope: !3745, inlinedAt: !3731)
!3747 = !DILocation(line: 193, column: 11, scope: !3745, inlinedAt: !3731)
!3748 = !DILocation(line: 193, column: 33, scope: !3745, inlinedAt: !3731)
!3749 = !DILocation(line: 193, column: 37, scope: !3745, inlinedAt: !3731)
!3750 = !DILocation(line: 193, column: 40, scope: !3745, inlinedAt: !3731)
!3751 = !DILocation(line: 193, column: 46, scope: !3745, inlinedAt: !3731)
!3752 = !DILocation(line: 190, column: 7, scope: !3723, inlinedAt: !3731)
!3753 = !DILocation(line: 272, column: 54, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3732, file: !562, line: 267, column: 5)
!3755 = !DILocation(line: 272, column: 46, scope: !3754)
!3756 = !DILocation(line: 272, column: 21, scope: !3754)
!3757 = !DILocation(line: 272, column: 19, scope: !3754)
!3758 = !DILocation(line: 274, column: 46, scope: !3754)
!3759 = !DILocation(line: 274, column: 54, scope: !3754)
!3760 = !DILocation(line: 274, column: 21, scope: !3754)
!3761 = !DILocation(line: 274, column: 19, scope: !3754)
!3762 = !DILocation(line: 276, column: 15, scope: !3754)
!3763 = !DILocation(line: 278, column: 5, scope: !3754)
!3764 = !DILocation(line: 279, column: 10, scope: !3589)
!3765 = !DILocation(line: 280, column: 1, scope: !3589)
!3766 = !DISubprogram(name: "endutxent", scope: !3578, file: !3578, line: 59, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3767 = !DISubprogram(name: "stat", scope: !3768, file: !3768, line: 205, type: !3769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!117, !880, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3772)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3773 = !DISubprogram(name: "clock_gettime", scope: !3774, file: !3774, line: 279, type: !3775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3774 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!117, !3777, !3251}
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3778, line: 7, baseType: !3779)
!3778 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !287, line: 169, baseType: !117)
!3780 = !DISubprogram(name: "sysinfo", scope: !3781, file: !3781, line: 29, type: !3782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3781 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "833dbd3acd3e0392e300e781deccc082")
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!117, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3785 = !DISubprogram(name: "timespec_get", scope: !3774, file: !3774, line: 371, type: !3786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!117, !3251, !117}
!3788 = !DISubprogram(name: "kill", scope: !3789, file: !3789, line: 112, type: !3790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3789 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!117, !724, !117}
!3792 = distinct !DISubprogram(name: "version_etc_arn", scope: !590, file: !590, line: 61, type: !3793, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3830)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{null, !3795, !74, !74, !74, !3829, !119}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3797)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3797, file: !264, line: 51, baseType: !117, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3797, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3797, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3797, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3797, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3797, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3797, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3797, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3797, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3797, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3797, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3797, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3797, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3797, file: !264, line: 70, baseType: !3813, size: 64, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3797, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3797, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3797, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3797, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3797, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3797, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3797, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3797, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3797, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3797, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3797, file: !264, line: 93, baseType: !3813, size: 64, offset: 1344)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3797, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3797, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3797, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3797, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836}
!3831 = !DILocalVariable(name: "stream", arg: 1, scope: !3792, file: !590, line: 61, type: !3795)
!3832 = !DILocalVariable(name: "command_name", arg: 2, scope: !3792, file: !590, line: 62, type: !74)
!3833 = !DILocalVariable(name: "package", arg: 3, scope: !3792, file: !590, line: 62, type: !74)
!3834 = !DILocalVariable(name: "version", arg: 4, scope: !3792, file: !590, line: 63, type: !74)
!3835 = !DILocalVariable(name: "authors", arg: 5, scope: !3792, file: !590, line: 64, type: !3829)
!3836 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3792, file: !590, line: 64, type: !119)
!3837 = !DILocation(line: 0, scope: !3792)
!3838 = !DILocation(line: 66, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3792, file: !590, line: 66, column: 7)
!3840 = !DILocation(line: 66, column: 7, scope: !3792)
!3841 = !DILocation(line: 67, column: 5, scope: !3839)
!3842 = !DILocation(line: 69, column: 5, scope: !3839)
!3843 = !DILocation(line: 83, column: 3, scope: !3792)
!3844 = !DILocation(line: 85, column: 3, scope: !3792)
!3845 = !DILocation(line: 88, column: 3, scope: !3792)
!3846 = !DILocation(line: 95, column: 3, scope: !3792)
!3847 = !DILocation(line: 97, column: 3, scope: !3792)
!3848 = !DILocation(line: 105, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3792, file: !590, line: 98, column: 5)
!3850 = !DILocation(line: 106, column: 7, scope: !3849)
!3851 = !DILocation(line: 109, column: 7, scope: !3849)
!3852 = !DILocation(line: 110, column: 7, scope: !3849)
!3853 = !DILocation(line: 113, column: 7, scope: !3849)
!3854 = !DILocation(line: 115, column: 7, scope: !3849)
!3855 = !DILocation(line: 120, column: 7, scope: !3849)
!3856 = !DILocation(line: 122, column: 7, scope: !3849)
!3857 = !DILocation(line: 127, column: 7, scope: !3849)
!3858 = !DILocation(line: 129, column: 7, scope: !3849)
!3859 = !DILocation(line: 134, column: 7, scope: !3849)
!3860 = !DILocation(line: 137, column: 7, scope: !3849)
!3861 = !DILocation(line: 142, column: 7, scope: !3849)
!3862 = !DILocation(line: 145, column: 7, scope: !3849)
!3863 = !DILocation(line: 150, column: 7, scope: !3849)
!3864 = !DILocation(line: 154, column: 7, scope: !3849)
!3865 = !DILocation(line: 159, column: 7, scope: !3849)
!3866 = !DILocation(line: 163, column: 7, scope: !3849)
!3867 = !DILocation(line: 170, column: 7, scope: !3849)
!3868 = !DILocation(line: 174, column: 7, scope: !3849)
!3869 = !DILocation(line: 176, column: 1, scope: !3792)
!3870 = distinct !DISubprogram(name: "version_etc_ar", scope: !590, file: !590, line: 183, type: !3871, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !3795, !74, !74, !74, !3829}
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879}
!3874 = !DILocalVariable(name: "stream", arg: 1, scope: !3870, file: !590, line: 183, type: !3795)
!3875 = !DILocalVariable(name: "command_name", arg: 2, scope: !3870, file: !590, line: 184, type: !74)
!3876 = !DILocalVariable(name: "package", arg: 3, scope: !3870, file: !590, line: 184, type: !74)
!3877 = !DILocalVariable(name: "version", arg: 4, scope: !3870, file: !590, line: 185, type: !74)
!3878 = !DILocalVariable(name: "authors", arg: 5, scope: !3870, file: !590, line: 185, type: !3829)
!3879 = !DILocalVariable(name: "n_authors", scope: !3870, file: !590, line: 187, type: !119)
!3880 = !DILocation(line: 0, scope: !3870)
!3881 = !DILocation(line: 189, column: 8, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3870, file: !590, line: 189, column: 3)
!3883 = !DILocation(line: 189, scope: !3882)
!3884 = !DILocation(line: 189, column: 23, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !590, line: 189, column: 3)
!3886 = !DILocation(line: 189, column: 3, scope: !3882)
!3887 = !DILocation(line: 189, column: 52, scope: !3885)
!3888 = distinct !{!3888, !3886, !3889, !933}
!3889 = !DILocation(line: 190, column: 5, scope: !3882)
!3890 = !DILocation(line: 191, column: 3, scope: !3870)
!3891 = !DILocation(line: 192, column: 1, scope: !3870)
!3892 = distinct !DISubprogram(name: "version_etc_va", scope: !590, file: !590, line: 199, type: !3893, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3902)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3795, !74, !74, !74, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3896, file: !590, line: 192, baseType: !80, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3896, file: !590, line: 192, baseType: !80, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3896, file: !590, line: 192, baseType: !116, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3896, file: !590, line: 192, baseType: !116, size: 64, offset: 128)
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3903 = !DILocalVariable(name: "stream", arg: 1, scope: !3892, file: !590, line: 199, type: !3795)
!3904 = !DILocalVariable(name: "command_name", arg: 2, scope: !3892, file: !590, line: 200, type: !74)
!3905 = !DILocalVariable(name: "package", arg: 3, scope: !3892, file: !590, line: 200, type: !74)
!3906 = !DILocalVariable(name: "version", arg: 4, scope: !3892, file: !590, line: 201, type: !74)
!3907 = !DILocalVariable(name: "authors", arg: 5, scope: !3892, file: !590, line: 201, type: !3895)
!3908 = !DILocalVariable(name: "n_authors", scope: !3892, file: !590, line: 203, type: !119)
!3909 = !DILocalVariable(name: "authtab", scope: !3892, file: !590, line: 204, type: !3910)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !47)
!3911 = distinct !DIAssignID()
!3912 = !DILocation(line: 0, scope: !3892)
!3913 = !DILocation(line: 204, column: 3, scope: !3892)
!3914 = !DILocation(line: 208, column: 35, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !590, line: 206, column: 3)
!3916 = distinct !DILexicalBlock(scope: !3892, file: !590, line: 206, column: 3)
!3917 = !DILocation(line: 208, column: 33, scope: !3915)
!3918 = !DILocation(line: 208, column: 67, scope: !3915)
!3919 = !DILocation(line: 206, column: 3, scope: !3916)
!3920 = !DILocation(line: 208, column: 14, scope: !3915)
!3921 = !DILocation(line: 0, scope: !3916)
!3922 = !DILocation(line: 211, column: 3, scope: !3892)
!3923 = !DILocation(line: 213, column: 1, scope: !3892)
!3924 = distinct !DISubprogram(name: "version_etc", scope: !590, file: !590, line: 230, type: !3925, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3795, !74, !74, !74, null}
!3927 = !{!3928, !3929, !3930, !3931, !3932}
!3928 = !DILocalVariable(name: "stream", arg: 1, scope: !3924, file: !590, line: 230, type: !3795)
!3929 = !DILocalVariable(name: "command_name", arg: 2, scope: !3924, file: !590, line: 231, type: !74)
!3930 = !DILocalVariable(name: "package", arg: 3, scope: !3924, file: !590, line: 231, type: !74)
!3931 = !DILocalVariable(name: "version", arg: 4, scope: !3924, file: !590, line: 232, type: !74)
!3932 = !DILocalVariable(name: "authors", scope: !3924, file: !590, line: 234, type: !3933)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1010, line: 52, baseType: !3934)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1434, line: 12, baseType: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !590, baseType: !3936)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3896, size: 192, elements: !42)
!3937 = distinct !DIAssignID()
!3938 = !DILocation(line: 0, scope: !3924)
!3939 = !DILocation(line: 234, column: 3, scope: !3924)
!3940 = !DILocation(line: 235, column: 3, scope: !3924)
!3941 = !DILocation(line: 236, column: 3, scope: !3924)
!3942 = !DILocation(line: 237, column: 3, scope: !3924)
!3943 = !DILocation(line: 238, column: 1, scope: !3924)
!3944 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !590, file: !590, line: 241, type: !389, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747)
!3945 = !DILocation(line: 243, column: 3, scope: !3944)
!3946 = !DILocation(line: 248, column: 3, scope: !3944)
!3947 = !DILocation(line: 254, column: 3, scope: !3944)
!3948 = !DILocation(line: 259, column: 3, scope: !3944)
!3949 = !DILocation(line: 261, column: 1, scope: !3944)
!3950 = distinct !DISubprogram(name: "xnrealloc", scope: !3951, file: !3951, line: 147, type: !3952, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3954)
!3951 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!116, !116, !119, !119}
!3954 = !{!3955, !3956, !3957}
!3955 = !DILocalVariable(name: "p", arg: 1, scope: !3950, file: !3951, line: 147, type: !116)
!3956 = !DILocalVariable(name: "n", arg: 2, scope: !3950, file: !3951, line: 147, type: !119)
!3957 = !DILocalVariable(name: "s", arg: 3, scope: !3950, file: !3951, line: 147, type: !119)
!3958 = !DILocation(line: 0, scope: !3950)
!3959 = !DILocalVariable(name: "p", arg: 1, scope: !3960, file: !754, line: 83, type: !116)
!3960 = distinct !DISubprogram(name: "xreallocarray", scope: !754, file: !754, line: 83, type: !3952, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3961)
!3961 = !{!3959, !3962, !3963}
!3962 = !DILocalVariable(name: "n", arg: 2, scope: !3960, file: !754, line: 83, type: !119)
!3963 = !DILocalVariable(name: "s", arg: 3, scope: !3960, file: !754, line: 83, type: !119)
!3964 = !DILocation(line: 0, scope: !3960, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 149, column: 10, scope: !3950)
!3966 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !3965)
!3967 = !DILocalVariable(name: "p", arg: 1, scope: !3968, file: !754, line: 37, type: !116)
!3968 = distinct !DISubprogram(name: "check_nonnull", scope: !754, file: !754, line: 37, type: !3969, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!116, !116}
!3971 = !{!3967}
!3972 = !DILocation(line: 0, scope: !3968, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !3965)
!3974 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !3973)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !754, line: 39, column: 7)
!3976 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !3973)
!3977 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !3973)
!3978 = !DILocation(line: 149, column: 3, scope: !3950)
!3979 = !DILocation(line: 0, scope: !3960)
!3980 = !DILocation(line: 85, column: 25, scope: !3960)
!3981 = !DILocation(line: 0, scope: !3968, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 85, column: 10, scope: !3960)
!3983 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !3982)
!3984 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !3982)
!3985 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !3982)
!3986 = !DILocation(line: 85, column: 3, scope: !3960)
!3987 = distinct !DISubprogram(name: "xmalloc", scope: !754, file: !754, line: 47, type: !3988, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!116, !119}
!3990 = !{!3991}
!3991 = !DILocalVariable(name: "s", arg: 1, scope: !3987, file: !754, line: 47, type: !119)
!3992 = !DILocation(line: 0, scope: !3987)
!3993 = !DILocation(line: 49, column: 25, scope: !3987)
!3994 = !DILocation(line: 0, scope: !3968, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 49, column: 10, scope: !3987)
!3996 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !3995)
!3997 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !3995)
!3998 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !3995)
!3999 = !DILocation(line: 49, column: 3, scope: !3987)
!4000 = !DISubprogram(name: "malloc", scope: !1014, file: !1014, line: 540, type: !3988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4001 = distinct !DISubprogram(name: "ximalloc", scope: !754, file: !754, line: 53, type: !4002, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!116, !773}
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "s", arg: 1, scope: !4001, file: !754, line: 53, type: !773)
!4006 = !DILocation(line: 0, scope: !4001)
!4007 = !DILocalVariable(name: "s", arg: 1, scope: !4008, file: !4009, line: 55, type: !773)
!4008 = distinct !DISubprogram(name: "imalloc", scope: !4009, file: !4009, line: 55, type: !4002, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4010)
!4009 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4010 = !{!4007}
!4011 = !DILocation(line: 0, scope: !4008, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 55, column: 25, scope: !4001)
!4013 = !DILocation(line: 57, column: 26, scope: !4008, inlinedAt: !4012)
!4014 = !DILocation(line: 0, scope: !3968, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 55, column: 10, scope: !4001)
!4016 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4015)
!4017 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4015)
!4018 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4015)
!4019 = !DILocation(line: 55, column: 3, scope: !4001)
!4020 = distinct !DISubprogram(name: "xcharalloc", scope: !754, file: !754, line: 59, type: !4021, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!124, !119}
!4023 = !{!4024}
!4024 = !DILocalVariable(name: "n", arg: 1, scope: !4020, file: !754, line: 59, type: !119)
!4025 = !DILocation(line: 0, scope: !4020)
!4026 = !DILocation(line: 0, scope: !3987, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 61, column: 10, scope: !4020)
!4028 = !DILocation(line: 49, column: 25, scope: !3987, inlinedAt: !4027)
!4029 = !DILocation(line: 0, scope: !3968, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 49, column: 10, scope: !3987, inlinedAt: !4027)
!4031 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4030)
!4032 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4030)
!4033 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4030)
!4034 = !DILocation(line: 61, column: 3, scope: !4020)
!4035 = distinct !DISubprogram(name: "xrealloc", scope: !754, file: !754, line: 68, type: !4036, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!116, !116, !119}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "p", arg: 1, scope: !4035, file: !754, line: 68, type: !116)
!4040 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !754, line: 68, type: !119)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocalVariable(name: "ptr", arg: 1, scope: !4043, file: !4044, line: 2057, type: !116)
!4043 = distinct !DISubprogram(name: "rpl_realloc", scope: !4044, file: !4044, line: 2057, type: !4036, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4045)
!4044 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4045 = !{!4042, !4046}
!4046 = !DILocalVariable(name: "size", arg: 2, scope: !4043, file: !4044, line: 2057, type: !119)
!4047 = !DILocation(line: 0, scope: !4043, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 70, column: 25, scope: !4035)
!4049 = !DILocation(line: 2059, column: 24, scope: !4043, inlinedAt: !4048)
!4050 = !DILocation(line: 2059, column: 10, scope: !4043, inlinedAt: !4048)
!4051 = !DILocation(line: 0, scope: !3968, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 70, column: 10, scope: !4035)
!4053 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4052)
!4054 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4052)
!4055 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4052)
!4056 = !DILocation(line: 70, column: 3, scope: !4035)
!4057 = !DISubprogram(name: "realloc", scope: !1014, file: !1014, line: 551, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4058 = distinct !DISubprogram(name: "xirealloc", scope: !754, file: !754, line: 74, type: !4059, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!116, !116, !773}
!4061 = !{!4062, !4063}
!4062 = !DILocalVariable(name: "p", arg: 1, scope: !4058, file: !754, line: 74, type: !116)
!4063 = !DILocalVariable(name: "s", arg: 2, scope: !4058, file: !754, line: 74, type: !773)
!4064 = !DILocation(line: 0, scope: !4058)
!4065 = !DILocalVariable(name: "p", arg: 1, scope: !4066, file: !4009, line: 66, type: !116)
!4066 = distinct !DISubprogram(name: "irealloc", scope: !4009, file: !4009, line: 66, type: !4059, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4067)
!4067 = !{!4065, !4068}
!4068 = !DILocalVariable(name: "s", arg: 2, scope: !4066, file: !4009, line: 66, type: !773)
!4069 = !DILocation(line: 0, scope: !4066, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 76, column: 25, scope: !4058)
!4071 = !DILocation(line: 0, scope: !4043, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 68, column: 26, scope: !4066, inlinedAt: !4070)
!4073 = !DILocation(line: 2059, column: 24, scope: !4043, inlinedAt: !4072)
!4074 = !DILocation(line: 2059, column: 10, scope: !4043, inlinedAt: !4072)
!4075 = !DILocation(line: 0, scope: !3968, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 76, column: 10, scope: !4058)
!4077 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4076)
!4078 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4076)
!4079 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4076)
!4080 = !DILocation(line: 76, column: 3, scope: !4058)
!4081 = distinct !DISubprogram(name: "xireallocarray", scope: !754, file: !754, line: 89, type: !4082, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!116, !116, !773, !773}
!4084 = !{!4085, !4086, !4087}
!4085 = !DILocalVariable(name: "p", arg: 1, scope: !4081, file: !754, line: 89, type: !116)
!4086 = !DILocalVariable(name: "n", arg: 2, scope: !4081, file: !754, line: 89, type: !773)
!4087 = !DILocalVariable(name: "s", arg: 3, scope: !4081, file: !754, line: 89, type: !773)
!4088 = !DILocation(line: 0, scope: !4081)
!4089 = !DILocalVariable(name: "p", arg: 1, scope: !4090, file: !4009, line: 98, type: !116)
!4090 = distinct !DISubprogram(name: "ireallocarray", scope: !4009, file: !4009, line: 98, type: !4082, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4091)
!4091 = !{!4089, !4092, !4093}
!4092 = !DILocalVariable(name: "n", arg: 2, scope: !4090, file: !4009, line: 98, type: !773)
!4093 = !DILocalVariable(name: "s", arg: 3, scope: !4090, file: !4009, line: 98, type: !773)
!4094 = !DILocation(line: 0, scope: !4090, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 91, column: 25, scope: !4081)
!4096 = !DILocation(line: 101, column: 13, scope: !4090, inlinedAt: !4095)
!4097 = !DILocation(line: 0, scope: !3968, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 91, column: 10, scope: !4081)
!4099 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4098)
!4100 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4098)
!4101 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4098)
!4102 = !DILocation(line: 91, column: 3, scope: !4081)
!4103 = distinct !DISubprogram(name: "xnmalloc", scope: !754, file: !754, line: 98, type: !4104, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!116, !119, !119}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "n", arg: 1, scope: !4103, file: !754, line: 98, type: !119)
!4108 = !DILocalVariable(name: "s", arg: 2, scope: !4103, file: !754, line: 98, type: !119)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocation(line: 0, scope: !3960, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 100, column: 10, scope: !4103)
!4112 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !4111)
!4113 = !DILocation(line: 0, scope: !3968, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !4111)
!4115 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4114)
!4116 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4114)
!4117 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4114)
!4118 = !DILocation(line: 100, column: 3, scope: !4103)
!4119 = distinct !DISubprogram(name: "xinmalloc", scope: !754, file: !754, line: 104, type: !4120, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!116, !773, !773}
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "n", arg: 1, scope: !4119, file: !754, line: 104, type: !773)
!4124 = !DILocalVariable(name: "s", arg: 2, scope: !4119, file: !754, line: 104, type: !773)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 0, scope: !4081, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 106, column: 10, scope: !4119)
!4128 = !DILocation(line: 0, scope: !4090, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 91, column: 25, scope: !4081, inlinedAt: !4127)
!4130 = !DILocation(line: 101, column: 13, scope: !4090, inlinedAt: !4129)
!4131 = !DILocation(line: 0, scope: !3968, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 91, column: 10, scope: !4081, inlinedAt: !4127)
!4133 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4132)
!4134 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4132)
!4135 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4132)
!4136 = !DILocation(line: 106, column: 3, scope: !4119)
!4137 = distinct !DISubprogram(name: "x2realloc", scope: !754, file: !754, line: 116, type: !4138, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!116, !116, !760}
!4140 = !{!4141, !4142}
!4141 = !DILocalVariable(name: "p", arg: 1, scope: !4137, file: !754, line: 116, type: !116)
!4142 = !DILocalVariable(name: "ps", arg: 2, scope: !4137, file: !754, line: 116, type: !760)
!4143 = !DILocation(line: 0, scope: !4137)
!4144 = !DILocation(line: 0, scope: !757, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 118, column: 10, scope: !4137)
!4146 = !DILocation(line: 178, column: 14, scope: !757, inlinedAt: !4145)
!4147 = !DILocation(line: 180, column: 9, scope: !4148, inlinedAt: !4145)
!4148 = distinct !DILexicalBlock(scope: !757, file: !754, line: 180, column: 7)
!4149 = !DILocation(line: 180, column: 7, scope: !757, inlinedAt: !4145)
!4150 = !DILocation(line: 182, column: 13, scope: !4151, inlinedAt: !4145)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !754, line: 182, column: 11)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !754, line: 181, column: 5)
!4153 = !DILocation(line: 182, column: 11, scope: !4152, inlinedAt: !4145)
!4154 = !DILocation(line: 197, column: 11, scope: !4155, inlinedAt: !4145)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !754, line: 197, column: 11)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !754, line: 195, column: 5)
!4157 = !DILocation(line: 197, column: 11, scope: !4156, inlinedAt: !4145)
!4158 = !DILocation(line: 198, column: 9, scope: !4155, inlinedAt: !4145)
!4159 = !DILocation(line: 0, scope: !3960, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 201, column: 7, scope: !757, inlinedAt: !4145)
!4161 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !4160)
!4162 = !DILocation(line: 0, scope: !3968, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !4160)
!4164 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4163)
!4165 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4163)
!4166 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4163)
!4167 = !DILocation(line: 202, column: 7, scope: !757, inlinedAt: !4145)
!4168 = !DILocation(line: 118, column: 3, scope: !4137)
!4169 = !DILocation(line: 0, scope: !757)
!4170 = !DILocation(line: 178, column: 14, scope: !757)
!4171 = !DILocation(line: 180, column: 9, scope: !4148)
!4172 = !DILocation(line: 180, column: 7, scope: !757)
!4173 = !DILocation(line: 182, column: 13, scope: !4151)
!4174 = !DILocation(line: 182, column: 11, scope: !4152)
!4175 = !DILocation(line: 190, column: 30, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4151, file: !754, line: 183, column: 9)
!4177 = !DILocation(line: 191, column: 16, scope: !4176)
!4178 = !DILocation(line: 191, column: 13, scope: !4176)
!4179 = !DILocation(line: 192, column: 9, scope: !4176)
!4180 = !DILocation(line: 197, column: 11, scope: !4155)
!4181 = !DILocation(line: 197, column: 11, scope: !4156)
!4182 = !DILocation(line: 198, column: 9, scope: !4155)
!4183 = !DILocation(line: 0, scope: !3960, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 201, column: 7, scope: !757)
!4185 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !4184)
!4186 = !DILocation(line: 0, scope: !3968, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !4184)
!4188 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4187)
!4189 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4187)
!4190 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4187)
!4191 = !DILocation(line: 202, column: 7, scope: !757)
!4192 = !DILocation(line: 203, column: 3, scope: !757)
!4193 = !DILocation(line: 0, scope: !769)
!4194 = !DILocation(line: 230, column: 14, scope: !769)
!4195 = !DILocation(line: 238, column: 7, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !769, file: !754, line: 238, column: 7)
!4197 = !DILocation(line: 238, column: 7, scope: !769)
!4198 = !DILocation(line: 240, column: 9, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !769, file: !754, line: 240, column: 7)
!4200 = !DILocation(line: 240, column: 18, scope: !4199)
!4201 = !DILocation(line: 253, column: 8, scope: !769)
!4202 = !DILocation(line: 256, column: 7, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !769, file: !754, line: 256, column: 7)
!4204 = !DILocation(line: 256, column: 7, scope: !769)
!4205 = !DILocation(line: 258, column: 27, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4203, file: !754, line: 257, column: 5)
!4207 = !DILocation(line: 259, column: 50, scope: !4206)
!4208 = !DILocation(line: 259, column: 32, scope: !4206)
!4209 = !DILocation(line: 260, column: 5, scope: !4206)
!4210 = !DILocation(line: 262, column: 9, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !769, file: !754, line: 262, column: 7)
!4212 = !DILocation(line: 262, column: 7, scope: !769)
!4213 = !DILocation(line: 263, column: 9, scope: !4211)
!4214 = !DILocation(line: 263, column: 5, scope: !4211)
!4215 = !DILocation(line: 264, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !769, file: !754, line: 264, column: 7)
!4217 = !DILocation(line: 264, column: 14, scope: !4216)
!4218 = !DILocation(line: 265, column: 7, scope: !4216)
!4219 = !DILocation(line: 265, column: 11, scope: !4216)
!4220 = !DILocation(line: 266, column: 11, scope: !4216)
!4221 = !DILocation(line: 267, column: 14, scope: !4216)
!4222 = !DILocation(line: 264, column: 7, scope: !769)
!4223 = !DILocation(line: 268, column: 5, scope: !4216)
!4224 = !DILocation(line: 0, scope: !4035, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 269, column: 8, scope: !769)
!4226 = !DILocation(line: 0, scope: !4043, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 70, column: 25, scope: !4035, inlinedAt: !4225)
!4228 = !DILocation(line: 2059, column: 24, scope: !4043, inlinedAt: !4227)
!4229 = !DILocation(line: 2059, column: 10, scope: !4043, inlinedAt: !4227)
!4230 = !DILocation(line: 0, scope: !3968, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 70, column: 10, scope: !4035, inlinedAt: !4225)
!4232 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4231)
!4233 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4231)
!4234 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4231)
!4235 = !DILocation(line: 270, column: 7, scope: !769)
!4236 = !DILocation(line: 271, column: 3, scope: !769)
!4237 = distinct !DISubprogram(name: "xzalloc", scope: !754, file: !754, line: 279, type: !3988, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4238)
!4238 = !{!4239}
!4239 = !DILocalVariable(name: "s", arg: 1, scope: !4237, file: !754, line: 279, type: !119)
!4240 = !DILocation(line: 0, scope: !4237)
!4241 = !DILocalVariable(name: "n", arg: 1, scope: !4242, file: !754, line: 294, type: !119)
!4242 = distinct !DISubprogram(name: "xcalloc", scope: !754, file: !754, line: 294, type: !4104, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4243)
!4243 = !{!4241, !4244}
!4244 = !DILocalVariable(name: "s", arg: 2, scope: !4242, file: !754, line: 294, type: !119)
!4245 = !DILocation(line: 0, scope: !4242, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 281, column: 10, scope: !4237)
!4247 = !DILocation(line: 296, column: 25, scope: !4242, inlinedAt: !4246)
!4248 = !DILocation(line: 0, scope: !3968, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 296, column: 10, scope: !4242, inlinedAt: !4246)
!4250 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4249)
!4251 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4249)
!4252 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4249)
!4253 = !DILocation(line: 281, column: 3, scope: !4237)
!4254 = !DISubprogram(name: "calloc", scope: !1014, file: !1014, line: 543, type: !4104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4255 = !DILocation(line: 0, scope: !4242)
!4256 = !DILocation(line: 296, column: 25, scope: !4242)
!4257 = !DILocation(line: 0, scope: !3968, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 296, column: 10, scope: !4242)
!4259 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4258)
!4260 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4258)
!4261 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4258)
!4262 = !DILocation(line: 296, column: 3, scope: !4242)
!4263 = distinct !DISubprogram(name: "xizalloc", scope: !754, file: !754, line: 285, type: !4002, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4264)
!4264 = !{!4265}
!4265 = !DILocalVariable(name: "s", arg: 1, scope: !4263, file: !754, line: 285, type: !773)
!4266 = !DILocation(line: 0, scope: !4263)
!4267 = !DILocalVariable(name: "n", arg: 1, scope: !4268, file: !754, line: 300, type: !773)
!4268 = distinct !DISubprogram(name: "xicalloc", scope: !754, file: !754, line: 300, type: !4120, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4269)
!4269 = !{!4267, !4270}
!4270 = !DILocalVariable(name: "s", arg: 2, scope: !4268, file: !754, line: 300, type: !773)
!4271 = !DILocation(line: 0, scope: !4268, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 287, column: 10, scope: !4263)
!4273 = !DILocalVariable(name: "n", arg: 1, scope: !4274, file: !4009, line: 77, type: !773)
!4274 = distinct !DISubprogram(name: "icalloc", scope: !4009, file: !4009, line: 77, type: !4120, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4275)
!4275 = !{!4273, !4276}
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4274, file: !4009, line: 77, type: !773)
!4277 = !DILocation(line: 0, scope: !4274, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 302, column: 25, scope: !4268, inlinedAt: !4272)
!4279 = !DILocation(line: 91, column: 10, scope: !4274, inlinedAt: !4278)
!4280 = !DILocation(line: 0, scope: !3968, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 302, column: 10, scope: !4268, inlinedAt: !4272)
!4282 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4281)
!4283 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4281)
!4284 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4281)
!4285 = !DILocation(line: 287, column: 3, scope: !4263)
!4286 = !DILocation(line: 0, scope: !4268)
!4287 = !DILocation(line: 0, scope: !4274, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 302, column: 25, scope: !4268)
!4289 = !DILocation(line: 91, column: 10, scope: !4274, inlinedAt: !4288)
!4290 = !DILocation(line: 0, scope: !3968, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 302, column: 10, scope: !4268)
!4292 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4291)
!4293 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4291)
!4294 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4291)
!4295 = !DILocation(line: 302, column: 3, scope: !4268)
!4296 = distinct !DISubprogram(name: "xmemdup", scope: !754, file: !754, line: 310, type: !4297, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!116, !1038, !119}
!4299 = !{!4300, !4301}
!4300 = !DILocalVariable(name: "p", arg: 1, scope: !4296, file: !754, line: 310, type: !1038)
!4301 = !DILocalVariable(name: "s", arg: 2, scope: !4296, file: !754, line: 310, type: !119)
!4302 = !DILocation(line: 0, scope: !4296)
!4303 = !DILocation(line: 0, scope: !3987, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 312, column: 18, scope: !4296)
!4305 = !DILocation(line: 49, column: 25, scope: !3987, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !3968, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 49, column: 10, scope: !3987, inlinedAt: !4304)
!4308 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4307)
!4311 = !DILocalVariable(name: "__dest", arg: 1, scope: !4312, file: !1644, line: 26, type: !3673)
!4312 = distinct !DISubprogram(name: "memcpy", scope: !1644, file: !1644, line: 26, type: !3671, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4313)
!4313 = !{!4311, !4314, !4315}
!4314 = !DILocalVariable(name: "__src", arg: 2, scope: !4312, file: !1644, line: 26, type: !1037)
!4315 = !DILocalVariable(name: "__len", arg: 3, scope: !4312, file: !1644, line: 26, type: !119)
!4316 = !DILocation(line: 0, scope: !4312, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 312, column: 10, scope: !4296)
!4318 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4317)
!4319 = !DILocation(line: 312, column: 3, scope: !4296)
!4320 = distinct !DISubprogram(name: "ximemdup", scope: !754, file: !754, line: 316, type: !4321, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4323)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!116, !1038, !773}
!4323 = !{!4324, !4325}
!4324 = !DILocalVariable(name: "p", arg: 1, scope: !4320, file: !754, line: 316, type: !1038)
!4325 = !DILocalVariable(name: "s", arg: 2, scope: !4320, file: !754, line: 316, type: !773)
!4326 = !DILocation(line: 0, scope: !4320)
!4327 = !DILocation(line: 0, scope: !4001, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 318, column: 18, scope: !4320)
!4329 = !DILocation(line: 0, scope: !4008, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 55, column: 25, scope: !4001, inlinedAt: !4328)
!4331 = !DILocation(line: 57, column: 26, scope: !4008, inlinedAt: !4330)
!4332 = !DILocation(line: 0, scope: !3968, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 55, column: 10, scope: !4001, inlinedAt: !4328)
!4334 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4333)
!4335 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4333)
!4336 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4333)
!4337 = !DILocation(line: 0, scope: !4312, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 318, column: 10, scope: !4320)
!4339 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4338)
!4340 = !DILocation(line: 318, column: 3, scope: !4320)
!4341 = distinct !DISubprogram(name: "ximemdup0", scope: !754, file: !754, line: 325, type: !4342, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!124, !1038, !773}
!4344 = !{!4345, !4346, !4347}
!4345 = !DILocalVariable(name: "p", arg: 1, scope: !4341, file: !754, line: 325, type: !1038)
!4346 = !DILocalVariable(name: "s", arg: 2, scope: !4341, file: !754, line: 325, type: !773)
!4347 = !DILocalVariable(name: "result", scope: !4341, file: !754, line: 327, type: !124)
!4348 = !DILocation(line: 0, scope: !4341)
!4349 = !DILocation(line: 327, column: 30, scope: !4341)
!4350 = !DILocation(line: 0, scope: !4001, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 327, column: 18, scope: !4341)
!4352 = !DILocation(line: 0, scope: !4008, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 55, column: 25, scope: !4001, inlinedAt: !4351)
!4354 = !DILocation(line: 57, column: 26, scope: !4008, inlinedAt: !4353)
!4355 = !DILocation(line: 0, scope: !3968, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 55, column: 10, scope: !4001, inlinedAt: !4351)
!4357 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4356)
!4358 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4356)
!4359 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4356)
!4360 = !DILocation(line: 328, column: 3, scope: !4341)
!4361 = !DILocation(line: 328, column: 13, scope: !4341)
!4362 = !DILocation(line: 0, scope: !4312, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 329, column: 10, scope: !4341)
!4364 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4363)
!4365 = !DILocation(line: 329, column: 3, scope: !4341)
!4366 = distinct !DISubprogram(name: "xstrdup", scope: !754, file: !754, line: 335, type: !1016, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4367)
!4367 = !{!4368}
!4368 = !DILocalVariable(name: "string", arg: 1, scope: !4366, file: !754, line: 335, type: !74)
!4369 = !DILocation(line: 0, scope: !4366)
!4370 = !DILocation(line: 337, column: 27, scope: !4366)
!4371 = !DILocation(line: 337, column: 43, scope: !4366)
!4372 = !DILocation(line: 0, scope: !4296, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 337, column: 10, scope: !4366)
!4374 = !DILocation(line: 0, scope: !3987, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 312, column: 18, scope: !4296, inlinedAt: !4373)
!4376 = !DILocation(line: 49, column: 25, scope: !3987, inlinedAt: !4375)
!4377 = !DILocation(line: 0, scope: !3968, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 49, column: 10, scope: !3987, inlinedAt: !4375)
!4379 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4378)
!4380 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4378)
!4381 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4378)
!4382 = !DILocation(line: 0, scope: !4312, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 312, column: 10, scope: !4296, inlinedAt: !4373)
!4384 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4383)
!4385 = !DILocation(line: 337, column: 3, scope: !4366)
!4386 = distinct !DISubprogram(name: "xalloc_die", scope: !683, file: !683, line: 32, type: !389, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4387)
!4387 = !{!4388}
!4388 = !DILocalVariable(name: "__errstatus", scope: !4389, file: !683, line: 34, type: !4390)
!4389 = distinct !DILexicalBlock(scope: !4386, file: !683, line: 34, column: 3)
!4390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!4391 = !DILocation(line: 34, column: 3, scope: !4389)
!4392 = !DILocation(line: 0, scope: !4389)
!4393 = !DILocation(line: 40, column: 3, scope: !4386)
!4394 = distinct !DISubprogram(name: "rpl_fopen", scope: !791, file: !791, line: 46, type: !4395, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4431)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!4397, !74, !74}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4399)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4399, file: !264, line: 51, baseType: !117, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4399, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4399, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4399, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4399, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4399, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4399, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4399, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4399, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4399, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4399, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4399, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4399, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4399, file: !264, line: 70, baseType: !4415, size: 64, offset: 832)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4399, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4399, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4399, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4399, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4399, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4399, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4399, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4399, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4399, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4399, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4399, file: !264, line: 93, baseType: !4415, size: 64, offset: 1344)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4399, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4399, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4399, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4399, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4441, !4443, !4444, !4449, !4452, !4453}
!4432 = !DILocalVariable(name: "filename", arg: 1, scope: !4394, file: !791, line: 46, type: !74)
!4433 = !DILocalVariable(name: "mode", arg: 2, scope: !4394, file: !791, line: 46, type: !74)
!4434 = !DILocalVariable(name: "open_direction", scope: !4394, file: !791, line: 54, type: !117)
!4435 = !DILocalVariable(name: "open_flags", scope: !4394, file: !791, line: 55, type: !117)
!4436 = !DILocalVariable(name: "open_flags_gnu", scope: !4394, file: !791, line: 57, type: !247)
!4437 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4394, file: !791, line: 59, type: !4438)
!4438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4439)
!4439 = !{!4440}
!4440 = !DISubrange(count: 81)
!4441 = !DILocalVariable(name: "p", scope: !4442, file: !791, line: 62, type: !74)
!4442 = distinct !DILexicalBlock(scope: !4394, file: !791, line: 61, column: 3)
!4443 = !DILocalVariable(name: "q", scope: !4442, file: !791, line: 64, type: !124)
!4444 = !DILocalVariable(name: "len", scope: !4445, file: !791, line: 128, type: !119)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !791, line: 127, column: 9)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !791, line: 68, column: 7)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !791, line: 67, column: 5)
!4448 = distinct !DILexicalBlock(scope: !4442, file: !791, line: 67, column: 5)
!4449 = !DILocalVariable(name: "fd", scope: !4450, file: !791, line: 199, type: !117)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !791, line: 198, column: 5)
!4451 = distinct !DILexicalBlock(scope: !4394, file: !791, line: 197, column: 7)
!4452 = !DILocalVariable(name: "fp", scope: !4450, file: !791, line: 204, type: !4397)
!4453 = !DILocalVariable(name: "saved_errno", scope: !4454, file: !791, line: 207, type: !117)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !791, line: 206, column: 9)
!4455 = distinct !DILexicalBlock(scope: !4450, file: !791, line: 205, column: 11)
!4456 = distinct !DIAssignID()
!4457 = !DILocation(line: 0, scope: !4394)
!4458 = !DILocation(line: 59, column: 3, scope: !4394)
!4459 = !DILocation(line: 0, scope: !4442)
!4460 = !DILocation(line: 67, column: 5, scope: !4442)
!4461 = !DILocation(line: 54, column: 7, scope: !4394)
!4462 = !DILocation(line: 67, column: 12, scope: !4447)
!4463 = !DILocation(line: 67, column: 5, scope: !4448)
!4464 = !DILocation(line: 74, column: 19, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !791, line: 74, column: 17)
!4466 = distinct !DILexicalBlock(scope: !4446, file: !791, line: 70, column: 11)
!4467 = !DILocation(line: 74, column: 17, scope: !4466)
!4468 = !DILocation(line: 75, column: 17, scope: !4465)
!4469 = !DILocation(line: 75, column: 20, scope: !4465)
!4470 = !DILocation(line: 75, column: 15, scope: !4465)
!4471 = !DILocation(line: 80, column: 24, scope: !4466)
!4472 = !DILocation(line: 82, column: 19, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4466, file: !791, line: 82, column: 17)
!4474 = !DILocation(line: 82, column: 17, scope: !4466)
!4475 = !DILocation(line: 83, column: 17, scope: !4473)
!4476 = !DILocation(line: 83, column: 20, scope: !4473)
!4477 = !DILocation(line: 83, column: 15, scope: !4473)
!4478 = !DILocation(line: 88, column: 24, scope: !4466)
!4479 = !DILocation(line: 90, column: 19, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4466, file: !791, line: 90, column: 17)
!4481 = !DILocation(line: 90, column: 17, scope: !4466)
!4482 = !DILocation(line: 91, column: 17, scope: !4480)
!4483 = !DILocation(line: 91, column: 20, scope: !4480)
!4484 = !DILocation(line: 91, column: 15, scope: !4480)
!4485 = !DILocation(line: 100, column: 19, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4466, file: !791, line: 100, column: 17)
!4487 = !DILocation(line: 100, column: 17, scope: !4466)
!4488 = !DILocation(line: 101, column: 17, scope: !4486)
!4489 = !DILocation(line: 101, column: 20, scope: !4486)
!4490 = !DILocation(line: 101, column: 15, scope: !4486)
!4491 = !DILocation(line: 107, column: 19, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4466, file: !791, line: 107, column: 17)
!4493 = !DILocation(line: 107, column: 17, scope: !4466)
!4494 = !DILocation(line: 108, column: 17, scope: !4492)
!4495 = !DILocation(line: 108, column: 20, scope: !4492)
!4496 = !DILocation(line: 108, column: 15, scope: !4492)
!4497 = !DILocation(line: 113, column: 24, scope: !4466)
!4498 = !DILocation(line: 115, column: 13, scope: !4466)
!4499 = !DILocation(line: 117, column: 24, scope: !4466)
!4500 = !DILocation(line: 119, column: 13, scope: !4466)
!4501 = !DILocation(line: 128, column: 24, scope: !4445)
!4502 = !DILocation(line: 0, scope: !4445)
!4503 = !DILocation(line: 129, column: 48, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4445, file: !791, line: 129, column: 15)
!4505 = !DILocation(line: 129, column: 15, scope: !4445)
!4506 = !DILocalVariable(name: "__dest", arg: 1, scope: !4507, file: !1644, line: 26, type: !3673)
!4507 = distinct !DISubprogram(name: "memcpy", scope: !1644, file: !1644, line: 26, type: !3671, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4508)
!4508 = !{!4506, !4509, !4510}
!4509 = !DILocalVariable(name: "__src", arg: 2, scope: !4507, file: !1644, line: 26, type: !1037)
!4510 = !DILocalVariable(name: "__len", arg: 3, scope: !4507, file: !1644, line: 26, type: !119)
!4511 = !DILocation(line: 0, scope: !4507, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 131, column: 11, scope: !4445)
!4513 = !DILocation(line: 29, column: 10, scope: !4507, inlinedAt: !4512)
!4514 = !DILocation(line: 132, column: 13, scope: !4445)
!4515 = !DILocation(line: 135, column: 9, scope: !4446)
!4516 = !DILocation(line: 67, column: 25, scope: !4447)
!4517 = !DILocation(line: 67, column: 5, scope: !4447)
!4518 = distinct !{!4518, !4463, !4519, !933}
!4519 = !DILocation(line: 136, column: 7, scope: !4448)
!4520 = !DILocation(line: 138, column: 8, scope: !4442)
!4521 = !DILocation(line: 197, column: 7, scope: !4451)
!4522 = !DILocation(line: 197, column: 7, scope: !4394)
!4523 = !DILocation(line: 199, column: 47, scope: !4450)
!4524 = !DILocation(line: 199, column: 16, scope: !4450)
!4525 = !DILocation(line: 0, scope: !4450)
!4526 = !DILocation(line: 201, column: 14, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4450, file: !791, line: 201, column: 11)
!4528 = !DILocation(line: 201, column: 11, scope: !4450)
!4529 = !DILocation(line: 204, column: 18, scope: !4450)
!4530 = !DILocation(line: 205, column: 14, scope: !4455)
!4531 = !DILocation(line: 205, column: 11, scope: !4450)
!4532 = !DILocation(line: 207, column: 29, scope: !4454)
!4533 = !DILocation(line: 0, scope: !4454)
!4534 = !DILocation(line: 208, column: 11, scope: !4454)
!4535 = !DILocation(line: 209, column: 17, scope: !4454)
!4536 = !DILocation(line: 210, column: 9, scope: !4454)
!4537 = !DILocalVariable(name: "filename", arg: 1, scope: !4538, file: !791, line: 30, type: !74)
!4538 = distinct !DISubprogram(name: "orig_fopen", scope: !791, file: !791, line: 30, type: !4395, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4539)
!4539 = !{!4537, !4540}
!4540 = !DILocalVariable(name: "mode", arg: 2, scope: !4538, file: !791, line: 30, type: !74)
!4541 = !DILocation(line: 0, scope: !4538, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 219, column: 10, scope: !4394)
!4543 = !DILocation(line: 32, column: 10, scope: !4538, inlinedAt: !4542)
!4544 = !DILocation(line: 219, column: 3, scope: !4394)
!4545 = !DILocation(line: 220, column: 1, scope: !4394)
!4546 = !DISubprogram(name: "open", scope: !1421, file: !1421, line: 181, type: !4547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!117, !74, !117, null}
!4549 = !DISubprogram(name: "fdopen", scope: !1010, file: !1010, line: 293, type: !4550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!4397, !117, !74}
!4552 = !DISubprogram(name: "close", scope: !1283, file: !1283, line: 358, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4553 = !DISubprogram(name: "fopen", scope: !1010, file: !1010, line: 258, type: !4554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!4397, !880, !880}
!4556 = distinct !DISubprogram(name: "close_stream", scope: !793, file: !793, line: 55, type: !4557, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4593)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!117, !4559}
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4561)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4561, file: !264, line: 51, baseType: !117, size: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4561, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4561, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4561, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4561, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4561, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4561, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4561, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4561, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4561, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4561, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4561, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4561, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4561, file: !264, line: 70, baseType: !4577, size: 64, offset: 832)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4561, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4561, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4561, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4561, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4561, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4561, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4561, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4561, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4561, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4561, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4561, file: !264, line: 93, baseType: !4577, size: 64, offset: 1344)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4561, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4561, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4561, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4561, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4593 = !{!4594, !4595, !4597, !4598}
!4594 = !DILocalVariable(name: "stream", arg: 1, scope: !4556, file: !793, line: 55, type: !4559)
!4595 = !DILocalVariable(name: "some_pending", scope: !4556, file: !793, line: 57, type: !4596)
!4596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!4597 = !DILocalVariable(name: "prev_fail", scope: !4556, file: !793, line: 58, type: !4596)
!4598 = !DILocalVariable(name: "fclose_fail", scope: !4556, file: !793, line: 59, type: !4596)
!4599 = !DILocation(line: 0, scope: !4556)
!4600 = !DILocation(line: 57, column: 30, scope: !4556)
!4601 = !DILocalVariable(name: "__stream", arg: 1, scope: !4602, file: !1178, line: 135, type: !4559)
!4602 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1178, file: !1178, line: 135, type: !4557, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4603)
!4603 = !{!4601}
!4604 = !DILocation(line: 0, scope: !4602, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 58, column: 27, scope: !4556)
!4606 = !DILocation(line: 137, column: 10, scope: !4602, inlinedAt: !4605)
!4607 = !{!1186, !887, i64 0}
!4608 = !DILocation(line: 58, column: 43, scope: !4556)
!4609 = !DILocation(line: 59, column: 29, scope: !4556)
!4610 = !DILocation(line: 59, column: 45, scope: !4556)
!4611 = !DILocation(line: 69, column: 17, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4556, file: !793, line: 69, column: 7)
!4613 = !DILocation(line: 57, column: 50, scope: !4556)
!4614 = !DILocation(line: 69, column: 33, scope: !4612)
!4615 = !DILocation(line: 69, column: 53, scope: !4612)
!4616 = !DILocation(line: 69, column: 59, scope: !4612)
!4617 = !DILocation(line: 69, column: 7, scope: !4556)
!4618 = !DILocation(line: 71, column: 11, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4612, file: !793, line: 70, column: 5)
!4620 = !DILocation(line: 72, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !793, line: 71, column: 11)
!4622 = !DILocation(line: 72, column: 15, scope: !4621)
!4623 = !DILocation(line: 77, column: 1, scope: !4556)
!4624 = !DISubprogram(name: "__fpending", scope: !4625, file: !4625, line: 75, type: !4626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4625 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!119, !4559}
!4628 = distinct !DISubprogram(name: "rpl_fclose", scope: !795, file: !795, line: 58, type: !4629, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4665)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!117, !4631}
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4633)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4634)
!4634 = !{!4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4633, file: !264, line: 51, baseType: !117, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4633, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4633, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4633, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4633, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4633, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4633, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4633, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4633, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4633, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4633, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4633, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4633, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4633, file: !264, line: 70, baseType: !4649, size: 64, offset: 832)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4633, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4633, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4633, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4633, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4633, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4633, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4633, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4633, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4633, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4633, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4633, file: !264, line: 93, baseType: !4649, size: 64, offset: 1344)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4633, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4633, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4633, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4633, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4665 = !{!4666, !4667, !4668, !4669}
!4666 = !DILocalVariable(name: "fp", arg: 1, scope: !4628, file: !795, line: 58, type: !4631)
!4667 = !DILocalVariable(name: "saved_errno", scope: !4628, file: !795, line: 60, type: !117)
!4668 = !DILocalVariable(name: "fd", scope: !4628, file: !795, line: 63, type: !117)
!4669 = !DILocalVariable(name: "result", scope: !4628, file: !795, line: 74, type: !117)
!4670 = !DILocation(line: 0, scope: !4628)
!4671 = !DILocation(line: 63, column: 12, scope: !4628)
!4672 = !DILocation(line: 64, column: 10, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4628, file: !795, line: 64, column: 7)
!4674 = !DILocation(line: 64, column: 7, scope: !4628)
!4675 = !DILocation(line: 65, column: 12, scope: !4673)
!4676 = !DILocation(line: 65, column: 5, scope: !4673)
!4677 = !DILocation(line: 70, column: 9, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4628, file: !795, line: 70, column: 7)
!4679 = !DILocation(line: 70, column: 23, scope: !4678)
!4680 = !DILocation(line: 70, column: 33, scope: !4678)
!4681 = !DILocation(line: 70, column: 26, scope: !4678)
!4682 = !DILocation(line: 70, column: 59, scope: !4678)
!4683 = !DILocation(line: 71, column: 7, scope: !4678)
!4684 = !DILocation(line: 71, column: 10, scope: !4678)
!4685 = !DILocation(line: 70, column: 7, scope: !4628)
!4686 = !DILocation(line: 100, column: 12, scope: !4628)
!4687 = !DILocation(line: 105, column: 7, scope: !4628)
!4688 = !DILocation(line: 72, column: 19, scope: !4678)
!4689 = !DILocation(line: 105, column: 19, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4628, file: !795, line: 105, column: 7)
!4691 = !DILocation(line: 107, column: 13, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4690, file: !795, line: 106, column: 5)
!4693 = !DILocation(line: 109, column: 5, scope: !4692)
!4694 = !DILocation(line: 112, column: 1, scope: !4628)
!4695 = !DISubprogram(name: "fileno", scope: !1010, file: !1010, line: 809, type: !4629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4696 = !DISubprogram(name: "fclose", scope: !1010, file: !1010, line: 178, type: !4629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4697 = !DISubprogram(name: "__freading", scope: !4625, file: !4625, line: 51, type: !4629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4698 = !DISubprogram(name: "lseek", scope: !1283, file: !1283, line: 339, type: !4699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!286, !117, !286, !117}
!4701 = distinct !DISubprogram(name: "rpl_fflush", scope: !797, file: !797, line: 130, type: !4702, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4738)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!117, !4704}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4706)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4706, file: !264, line: 51, baseType: !117, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4706, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4706, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4706, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4706, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4706, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4706, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4706, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4706, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4706, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4706, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4706, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4706, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4706, file: !264, line: 70, baseType: !4722, size: 64, offset: 832)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4706, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4706, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4706, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4706, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4706, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4706, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4706, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4706, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4706, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4706, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4706, file: !264, line: 93, baseType: !4722, size: 64, offset: 1344)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4706, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4706, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4706, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4706, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4738 = !{!4739}
!4739 = !DILocalVariable(name: "stream", arg: 1, scope: !4701, file: !797, line: 130, type: !4704)
!4740 = !DILocation(line: 0, scope: !4701)
!4741 = !DILocation(line: 151, column: 14, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4701, file: !797, line: 151, column: 7)
!4743 = !DILocation(line: 151, column: 22, scope: !4742)
!4744 = !DILocation(line: 151, column: 27, scope: !4742)
!4745 = !DILocation(line: 151, column: 7, scope: !4701)
!4746 = !DILocation(line: 152, column: 12, scope: !4742)
!4747 = !DILocation(line: 152, column: 5, scope: !4742)
!4748 = !DILocalVariable(name: "fp", arg: 1, scope: !4749, file: !797, line: 42, type: !4704)
!4749 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !797, file: !797, line: 42, type: !4750, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4752)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !4704}
!4752 = !{!4748}
!4753 = !DILocation(line: 0, scope: !4749, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 157, column: 3, scope: !4701)
!4755 = !DILocation(line: 44, column: 12, scope: !4756, inlinedAt: !4754)
!4756 = distinct !DILexicalBlock(scope: !4749, file: !797, line: 44, column: 7)
!4757 = !DILocation(line: 44, column: 19, scope: !4756, inlinedAt: !4754)
!4758 = !DILocation(line: 44, column: 7, scope: !4749, inlinedAt: !4754)
!4759 = !DILocation(line: 46, column: 5, scope: !4756, inlinedAt: !4754)
!4760 = !DILocation(line: 159, column: 10, scope: !4701)
!4761 = !DILocation(line: 159, column: 3, scope: !4701)
!4762 = !DILocation(line: 236, column: 1, scope: !4701)
!4763 = !DISubprogram(name: "fflush", scope: !1010, file: !1010, line: 230, type: !4702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4764 = distinct !DISubprogram(name: "rpl_fseeko", scope: !799, file: !799, line: 28, type: !4765, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4802)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!117, !4767, !4801, !117}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4769)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4770)
!4770 = !{!4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4769, file: !264, line: 51, baseType: !117, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4769, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4769, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4769, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4769, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4769, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4769, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4769, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4769, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4769, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4769, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4769, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4769, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4769, file: !264, line: 70, baseType: !4785, size: 64, offset: 832)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4769, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4769, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4769, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4769, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4769, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4769, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4769, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4769, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4769, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4769, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4769, file: !264, line: 93, baseType: !4785, size: 64, offset: 1344)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4769, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4769, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4769, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4769, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4801 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1010, line: 63, baseType: !286)
!4802 = !{!4803, !4804, !4805, !4806}
!4803 = !DILocalVariable(name: "fp", arg: 1, scope: !4764, file: !799, line: 28, type: !4767)
!4804 = !DILocalVariable(name: "offset", arg: 2, scope: !4764, file: !799, line: 28, type: !4801)
!4805 = !DILocalVariable(name: "whence", arg: 3, scope: !4764, file: !799, line: 28, type: !117)
!4806 = !DILocalVariable(name: "pos", scope: !4807, file: !799, line: 123, type: !4801)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !799, line: 119, column: 5)
!4808 = distinct !DILexicalBlock(scope: !4764, file: !799, line: 55, column: 7)
!4809 = !DILocation(line: 0, scope: !4764)
!4810 = !DILocation(line: 55, column: 12, scope: !4808)
!4811 = !{!1186, !830, i64 16}
!4812 = !DILocation(line: 55, column: 33, scope: !4808)
!4813 = !{!1186, !830, i64 8}
!4814 = !DILocation(line: 55, column: 25, scope: !4808)
!4815 = !DILocation(line: 56, column: 7, scope: !4808)
!4816 = !DILocation(line: 56, column: 15, scope: !4808)
!4817 = !DILocation(line: 56, column: 37, scope: !4808)
!4818 = !{!1186, !830, i64 32}
!4819 = !DILocation(line: 56, column: 29, scope: !4808)
!4820 = !DILocation(line: 57, column: 7, scope: !4808)
!4821 = !DILocation(line: 57, column: 15, scope: !4808)
!4822 = !{!1186, !830, i64 72}
!4823 = !DILocation(line: 57, column: 29, scope: !4808)
!4824 = !DILocation(line: 55, column: 7, scope: !4764)
!4825 = !DILocation(line: 123, column: 26, scope: !4807)
!4826 = !DILocation(line: 123, column: 19, scope: !4807)
!4827 = !DILocation(line: 0, scope: !4807)
!4828 = !DILocation(line: 124, column: 15, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4807, file: !799, line: 124, column: 11)
!4830 = !DILocation(line: 124, column: 11, scope: !4807)
!4831 = !DILocation(line: 135, column: 19, scope: !4807)
!4832 = !DILocation(line: 136, column: 12, scope: !4807)
!4833 = !DILocation(line: 136, column: 20, scope: !4807)
!4834 = !{!1186, !1124, i64 144}
!4835 = !DILocation(line: 167, column: 7, scope: !4807)
!4836 = !DILocation(line: 169, column: 10, scope: !4764)
!4837 = !DILocation(line: 169, column: 3, scope: !4764)
!4838 = !DILocation(line: 170, column: 1, scope: !4764)
!4839 = !DISubprogram(name: "fseeko", scope: !1010, file: !1010, line: 736, type: !4840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!117, !4767, !286, !117}
!4842 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !690, file: !690, line: 100, type: !4843, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4846)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!119, !1662, !74, !119, !4845}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!4846 = !{!4847, !4848, !4849, !4850, !4851}
!4847 = !DILocalVariable(name: "pwc", arg: 1, scope: !4842, file: !690, line: 100, type: !1662)
!4848 = !DILocalVariable(name: "s", arg: 2, scope: !4842, file: !690, line: 100, type: !74)
!4849 = !DILocalVariable(name: "n", arg: 3, scope: !4842, file: !690, line: 100, type: !119)
!4850 = !DILocalVariable(name: "ps", arg: 4, scope: !4842, file: !690, line: 100, type: !4845)
!4851 = !DILocalVariable(name: "ret", scope: !4842, file: !690, line: 130, type: !119)
!4852 = !DILocation(line: 0, scope: !4842)
!4853 = !DILocation(line: 105, column: 9, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4842, file: !690, line: 105, column: 7)
!4855 = !DILocation(line: 105, column: 7, scope: !4842)
!4856 = !DILocation(line: 117, column: 10, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4842, file: !690, line: 117, column: 7)
!4858 = !DILocation(line: 117, column: 7, scope: !4842)
!4859 = !DILocation(line: 130, column: 16, scope: !4842)
!4860 = !DILocation(line: 135, column: 11, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4842, file: !690, line: 135, column: 7)
!4862 = !DILocation(line: 135, column: 25, scope: !4861)
!4863 = !DILocation(line: 135, column: 30, scope: !4861)
!4864 = !DILocation(line: 135, column: 7, scope: !4842)
!4865 = !DILocalVariable(name: "ps", arg: 1, scope: !4866, file: !1635, line: 1135, type: !4845)
!4866 = distinct !DISubprogram(name: "mbszero", scope: !1635, file: !1635, line: 1135, type: !4867, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4869)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !4845}
!4869 = !{!4865}
!4870 = !DILocation(line: 0, scope: !4866, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 137, column: 5, scope: !4861)
!4872 = !DILocalVariable(name: "__dest", arg: 1, scope: !4873, file: !1644, line: 57, type: !116)
!4873 = distinct !DISubprogram(name: "memset", scope: !1644, file: !1644, line: 57, type: !1645, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4874)
!4874 = !{!4872, !4875, !4876}
!4875 = !DILocalVariable(name: "__ch", arg: 2, scope: !4873, file: !1644, line: 57, type: !117)
!4876 = !DILocalVariable(name: "__len", arg: 3, scope: !4873, file: !1644, line: 57, type: !119)
!4877 = !DILocation(line: 0, scope: !4873, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 1137, column: 3, scope: !4866, inlinedAt: !4871)
!4879 = !DILocation(line: 59, column: 10, scope: !4873, inlinedAt: !4878)
!4880 = !DILocation(line: 137, column: 5, scope: !4861)
!4881 = !DILocation(line: 138, column: 11, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4842, file: !690, line: 138, column: 7)
!4883 = !DILocation(line: 138, column: 7, scope: !4842)
!4884 = !DILocation(line: 139, column: 5, scope: !4882)
!4885 = !DILocation(line: 143, column: 26, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4842, file: !690, line: 143, column: 7)
!4887 = !DILocation(line: 143, column: 41, scope: !4886)
!4888 = !DILocation(line: 143, column: 7, scope: !4842)
!4889 = !DILocation(line: 145, column: 15, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !690, line: 145, column: 11)
!4891 = distinct !DILexicalBlock(scope: !4886, file: !690, line: 144, column: 5)
!4892 = !DILocation(line: 145, column: 11, scope: !4891)
!4893 = !DILocation(line: 146, column: 32, scope: !4890)
!4894 = !DILocation(line: 146, column: 16, scope: !4890)
!4895 = !DILocation(line: 146, column: 14, scope: !4890)
!4896 = !DILocation(line: 146, column: 9, scope: !4890)
!4897 = !DILocation(line: 286, column: 1, scope: !4842)
!4898 = !DISubprogram(name: "mbsinit", scope: !4899, file: !4899, line: 293, type: !4900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4899 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!117, !4902}
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!4904 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !801, file: !801, line: 27, type: !3952, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4905)
!4905 = !{!4906, !4907, !4908, !4909}
!4906 = !DILocalVariable(name: "ptr", arg: 1, scope: !4904, file: !801, line: 27, type: !116)
!4907 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4904, file: !801, line: 27, type: !119)
!4908 = !DILocalVariable(name: "size", arg: 3, scope: !4904, file: !801, line: 27, type: !119)
!4909 = !DILocalVariable(name: "nbytes", scope: !4904, file: !801, line: 29, type: !119)
!4910 = !DILocation(line: 0, scope: !4904)
!4911 = !DILocation(line: 30, column: 7, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4904, file: !801, line: 30, column: 7)
!4913 = !DILocation(line: 30, column: 7, scope: !4904)
!4914 = !DILocation(line: 32, column: 7, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4912, file: !801, line: 31, column: 5)
!4916 = !DILocation(line: 32, column: 13, scope: !4915)
!4917 = !DILocation(line: 33, column: 7, scope: !4915)
!4918 = !DILocalVariable(name: "ptr", arg: 1, scope: !4919, file: !4044, line: 2057, type: !116)
!4919 = distinct !DISubprogram(name: "rpl_realloc", scope: !4044, file: !4044, line: 2057, type: !4036, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4920)
!4920 = !{!4918, !4921}
!4921 = !DILocalVariable(name: "size", arg: 2, scope: !4919, file: !4044, line: 2057, type: !119)
!4922 = !DILocation(line: 0, scope: !4919, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 37, column: 10, scope: !4904)
!4924 = !DILocation(line: 2059, column: 24, scope: !4919, inlinedAt: !4923)
!4925 = !DILocation(line: 2059, column: 10, scope: !4919, inlinedAt: !4923)
!4926 = !DILocation(line: 37, column: 3, scope: !4904)
!4927 = !DILocation(line: 38, column: 1, scope: !4904)
!4928 = distinct !DISubprogram(name: "hard_locale", scope: !708, file: !708, line: 28, type: !4929, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4931)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!247, !117}
!4931 = !{!4932, !4933}
!4932 = !DILocalVariable(name: "category", arg: 1, scope: !4928, file: !708, line: 28, type: !117)
!4933 = !DILocalVariable(name: "locale", scope: !4928, file: !708, line: 30, type: !4934)
!4934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4935)
!4935 = !{!4936}
!4936 = !DISubrange(count: 257)
!4937 = distinct !DIAssignID()
!4938 = !DILocation(line: 0, scope: !4928)
!4939 = !DILocation(line: 30, column: 3, scope: !4928)
!4940 = !DILocation(line: 32, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4928, file: !708, line: 32, column: 7)
!4942 = !DILocation(line: 32, column: 7, scope: !4928)
!4943 = !DILocalVariable(name: "__s1", arg: 1, scope: !4944, file: !899, line: 1359, type: !74)
!4944 = distinct !DISubprogram(name: "streq", scope: !899, file: !899, line: 1359, type: !900, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4945)
!4945 = !{!4943, !4946}
!4946 = !DILocalVariable(name: "__s2", arg: 2, scope: !4944, file: !899, line: 1359, type: !74)
!4947 = !DILocation(line: 0, scope: !4944, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 35, column: 9, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4928, file: !708, line: 35, column: 7)
!4950 = !DILocation(line: 1361, column: 11, scope: !4944, inlinedAt: !4948)
!4951 = !DILocation(line: 35, column: 29, scope: !4949)
!4952 = !DILocation(line: 0, scope: !4944, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 35, column: 32, scope: !4949)
!4954 = !DILocation(line: 1361, column: 11, scope: !4944, inlinedAt: !4953)
!4955 = !DILocation(line: 1361, column: 10, scope: !4944, inlinedAt: !4953)
!4956 = !DILocation(line: 35, column: 7, scope: !4928)
!4957 = !DILocation(line: 46, column: 3, scope: !4928)
!4958 = !DILocation(line: 47, column: 1, scope: !4928)
!4959 = distinct !DISubprogram(name: "setlocale_null_r", scope: !807, file: !807, line: 154, type: !4960, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4962)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!117, !117, !124, !119}
!4962 = !{!4963, !4964, !4965}
!4963 = !DILocalVariable(name: "category", arg: 1, scope: !4959, file: !807, line: 154, type: !117)
!4964 = !DILocalVariable(name: "buf", arg: 2, scope: !4959, file: !807, line: 154, type: !124)
!4965 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4959, file: !807, line: 154, type: !119)
!4966 = !DILocation(line: 0, scope: !4959)
!4967 = !DILocation(line: 159, column: 10, scope: !4959)
!4968 = !DILocation(line: 159, column: 3, scope: !4959)
!4969 = distinct !DISubprogram(name: "setlocale_null", scope: !807, file: !807, line: 186, type: !4970, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4972)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!74, !117}
!4972 = !{!4973}
!4973 = !DILocalVariable(name: "category", arg: 1, scope: !4969, file: !807, line: 186, type: !117)
!4974 = !DILocation(line: 0, scope: !4969)
!4975 = !DILocation(line: 189, column: 10, scope: !4969)
!4976 = !DILocation(line: 189, column: 3, scope: !4969)
!4977 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !809, file: !809, line: 35, type: !4970, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4978)
!4978 = !{!4979, !4980}
!4979 = !DILocalVariable(name: "category", arg: 1, scope: !4977, file: !809, line: 35, type: !117)
!4980 = !DILocalVariable(name: "result", scope: !4977, file: !809, line: 37, type: !74)
!4981 = !DILocation(line: 0, scope: !4977)
!4982 = !DILocation(line: 37, column: 24, scope: !4977)
!4983 = !DILocation(line: 62, column: 3, scope: !4977)
!4984 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !809, file: !809, line: 66, type: !4960, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4985)
!4985 = !{!4986, !4987, !4988, !4989, !4990}
!4986 = !DILocalVariable(name: "category", arg: 1, scope: !4984, file: !809, line: 66, type: !117)
!4987 = !DILocalVariable(name: "buf", arg: 2, scope: !4984, file: !809, line: 66, type: !124)
!4988 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4984, file: !809, line: 66, type: !119)
!4989 = !DILocalVariable(name: "result", scope: !4984, file: !809, line: 111, type: !74)
!4990 = !DILocalVariable(name: "length", scope: !4991, file: !809, line: 125, type: !119)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !809, line: 124, column: 5)
!4992 = distinct !DILexicalBlock(scope: !4984, file: !809, line: 113, column: 7)
!4993 = !DILocation(line: 0, scope: !4984)
!4994 = !DILocation(line: 0, scope: !4977, inlinedAt: !4995)
!4995 = distinct !DILocation(line: 111, column: 24, scope: !4984)
!4996 = !DILocation(line: 37, column: 24, scope: !4977, inlinedAt: !4995)
!4997 = !DILocation(line: 113, column: 14, scope: !4992)
!4998 = !DILocation(line: 113, column: 7, scope: !4984)
!4999 = !DILocation(line: 116, column: 19, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !5001, file: !809, line: 116, column: 11)
!5001 = distinct !DILexicalBlock(scope: !4992, file: !809, line: 114, column: 5)
!5002 = !DILocation(line: 116, column: 11, scope: !5001)
!5003 = !DILocation(line: 120, column: 16, scope: !5000)
!5004 = !DILocation(line: 120, column: 9, scope: !5000)
!5005 = !DILocation(line: 125, column: 23, scope: !4991)
!5006 = !DILocation(line: 0, scope: !4991)
!5007 = !DILocation(line: 126, column: 18, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4991, file: !809, line: 126, column: 11)
!5009 = !DILocation(line: 126, column: 11, scope: !4991)
!5010 = !DILocation(line: 128, column: 39, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5008, file: !809, line: 127, column: 9)
!5012 = !DILocalVariable(name: "__dest", arg: 1, scope: !5013, file: !1644, line: 26, type: !3673)
!5013 = distinct !DISubprogram(name: "memcpy", scope: !1644, file: !1644, line: 26, type: !3671, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !5014)
!5014 = !{!5012, !5015, !5016}
!5015 = !DILocalVariable(name: "__src", arg: 2, scope: !5013, file: !1644, line: 26, type: !1037)
!5016 = !DILocalVariable(name: "__len", arg: 3, scope: !5013, file: !1644, line: 26, type: !119)
!5017 = !DILocation(line: 0, scope: !5013, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 128, column: 11, scope: !5011)
!5019 = !DILocation(line: 29, column: 10, scope: !5013, inlinedAt: !5018)
!5020 = !DILocation(line: 129, column: 11, scope: !5011)
!5021 = !DILocation(line: 133, column: 23, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !809, line: 133, column: 15)
!5023 = distinct !DILexicalBlock(scope: !5008, file: !809, line: 132, column: 9)
!5024 = !DILocation(line: 133, column: 15, scope: !5023)
!5025 = !DILocation(line: 138, column: 44, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5022, file: !809, line: 134, column: 13)
!5027 = !DILocation(line: 0, scope: !5013, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 138, column: 15, scope: !5026)
!5029 = !DILocation(line: 29, column: 10, scope: !5013, inlinedAt: !5028)
!5030 = !DILocation(line: 139, column: 15, scope: !5026)
!5031 = !DILocation(line: 139, column: 32, scope: !5026)
!5032 = !DILocation(line: 140, column: 13, scope: !5026)
!5033 = !DILocation(line: 0, scope: !4992)
!5034 = !DILocation(line: 145, column: 1, scope: !4984)
