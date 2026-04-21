; ModuleID = 'src/users.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.gl_utmp = type { ptr, ptr, ptr, ptr, %struct.timespec, i32, i32, i16, %struct.anon }
%struct.timespec = type { i64, i64 }
%struct.anon = type { i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.utmp_alloc = type { ptr, i64, i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i64, %struct.timespec, [4 x i32], [20 x i8] }
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !338
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !330
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !332
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !334
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !336
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !340
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !346
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !382
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !348
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !372
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !374
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !376
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !378
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !380
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !384
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !386
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !391
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !396
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !399
@optind = external local_unnamed_addr global i32, align 4
@.str.1.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !404
@.str.2.43 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !406
@.str.3.44 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !408
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !420
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !426
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !428
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !430
@.str.56 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !461
@.str.1.57 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !464
@.str.2.58 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !466
@.str.3.59 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !471
@.str.4.60 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !473
@.str.5.61 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !475
@.str.6.62 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !477
@.str.7.63 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !479
@.str.8.64 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !481
@.str.9.65 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !483
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.56, ptr @.str.1.57, ptr @.str.2.58, ptr @.str.3.59, ptr @.str.4.60, ptr @.str.5.61, ptr @.str.6.62, ptr @.str.7.63, ptr @.str.8.64, ptr @.str.9.65, ptr null], align 8, !dbg !485
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !498
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !512
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !550
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !557
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !514
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !559
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !502
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !519
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !521
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !523
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !525
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !527
@.str.80 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1, !dbg !565
@.str.1.81 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1, !dbg !568
@.str.2.82 = private unnamed_addr constant [2 x i8] c"~\00", align 1, !dbg !573
@.str.3.86 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1, !dbg !575
@.str.4.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !577
@.str.5.83 = private unnamed_addr constant [29 x i8] c"/var/lib/systemd/random-seed\00", align 1, !dbg !579
@.str.6.84 = private unnamed_addr constant [29 x i8] c"/var/lib/urandom/random-seed\00", align 1, !dbg !585
@.str.7.85 = private unnamed_addr constant [21 x i8] c"/var/lib/random-seed\00", align 1, !dbg !587
@.str.8.88 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1, !dbg !589
@.str.9.89 = private unnamed_addr constant [3 x i8] c"re\00", align 1, !dbg !591
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !593
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !596
@.str.2.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !598
@.str.3.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !600
@.str.4.94 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !602
@.str.5.95 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !604
@.str.6.96 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !609
@.str.7.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !614
@.str.8.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !616
@.str.9.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !621
@.str.10.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !626
@.str.11.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !631
@.str.12.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !636
@.str.13.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !638
@.str.14.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !643
@.str.15.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !648
@.str.16.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !653
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.111 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !658
@.str.18.112 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !660
@.str.19.113 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !662
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !664
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !666
@.str.22.114 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !668
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !670
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !672
@exit_failure = dso_local global i32 1, align 4, !dbg !680
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !686
@.str.1.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !689
@.str.2.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !691
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !693
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !696
@.str.149 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !711
@.str.1.150 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !714

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !827 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !831, metadata !DIExpression()), !dbg !832
  %2 = icmp eq i32 %0, 0, !dbg !833
  br i1 %2, label %8, label %3, !dbg !835

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !836, !tbaa !838
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !836
  %6 = load ptr, ptr @program_name, align 8, !dbg !836, !tbaa !838
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !836
  br label %30, !dbg !836

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !842
  %10 = load ptr, ptr @program_name, align 8, !dbg !842, !tbaa !838
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !842
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !844
  %13 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #39, !dbg !844
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !845
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !845
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !846
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !846
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !847, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata !866, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr poison, metadata !859, metadata !DIExpression()), !dbg !864
  tail call void @emit_bug_reporting_address() #39, !dbg !867
  %16 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !868
  call void @llvm.dbg.value(metadata ptr %16, metadata !862, metadata !DIExpression()), !dbg !864
  %17 = icmp eq ptr %16, null, !dbg !869
  br i1 %17, label %25, label %18, !dbg !871

18:                                               ; preds = %8
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #40, !dbg !872
  %20 = icmp eq i32 %19, 0, !dbg !872
  br i1 %20, label %25, label %21, !dbg !873

21:                                               ; preds = %18
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !874
  %23 = load ptr, ptr @stdout, align 8, !dbg !874, !tbaa !838
  %24 = tail call i32 @fputs_unlocked(ptr noundef %22, ptr noundef %23), !dbg !874
  br label %25, !dbg !876

25:                                               ; preds = %8, %18, %21
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !859, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !863, metadata !DIExpression()), !dbg !864
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !877
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5) #39, !dbg !877
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !878
  %29 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.49) #39, !dbg !878
  br label %30

30:                                               ; preds = %25, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !879
  unreachable, !dbg !879
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !880 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !884 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !890 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !70 {
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !241, metadata !DIExpression()), !dbg !893
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !242, metadata !DIExpression()), !dbg !893
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !894, !tbaa !895
  %3 = icmp eq i32 %2, -1, !dbg !897
  br i1 %3, label %4, label %16, !dbg !898

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #39, !dbg !899
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !243, metadata !DIExpression()), !dbg !900
  %6 = icmp eq ptr %5, null, !dbg !901
  br i1 %6, label %14, label %7, !dbg !902

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !903, !tbaa !904
  %9 = icmp eq i8 %8, 0, !dbg !903
  br i1 %9, label %14, label %10, !dbg !905

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !906, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !912, metadata !DIExpression()), !dbg !913
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #40, !dbg !915
  %12 = icmp eq i32 %11, 0, !dbg !916
  %13 = zext i1 %12 to i32, !dbg !905
  br label %14, !dbg !905

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !917, !tbaa !895
  br label %16, !dbg !918

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !919
  %18 = icmp eq i32 %17, 0, !dbg !919
  br i1 %18, label %22, label %19, !dbg !921

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !838
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !922
  br label %121, !dbg !924

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !246, metadata !DIExpression()), !dbg !893
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #40, !dbg !925
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !926
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !248, metadata !DIExpression()), !dbg !893
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !927
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !249, metadata !DIExpression()), !dbg !893
  %26 = icmp eq ptr %25, null, !dbg !928
  br i1 %26, label %53, label %27, !dbg !929

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !930
  br i1 %28, label %53, label %29, !dbg !931

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !250, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !932
  %30 = icmp ult ptr %24, %25, !dbg !933
  br i1 %30, label %31, label %53, !dbg !934

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !893
  %33 = load ptr, ptr %32, align 8, !tbaa !838
  br label %34, !dbg !934

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !250, metadata !DIExpression()), !dbg !932
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !254, metadata !DIExpression()), !dbg !932
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !935
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !250, metadata !DIExpression()), !dbg !932
  %38 = load i8, ptr %35, align 1, !dbg !935, !tbaa !904
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !935
  %41 = load i16, ptr %40, align 2, !dbg !935, !tbaa !936
  %42 = freeze i16 %41, !dbg !938
  %43 = lshr i16 %42, 13, !dbg !938
  %44 = and i16 %43, 1, !dbg !938
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !939
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !254, metadata !DIExpression()), !dbg !932
  %47 = icmp ult ptr %37, %25, !dbg !933
  %48 = icmp ult i64 %46, 2, !dbg !940
  %49 = select i1 %47, i1 %48, i1 false, !dbg !940
  br i1 %49, label %34, label %50, !dbg !934, !llvm.loop !941

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !939
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !943
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !945
  br label %53, !dbg !945

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !893
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !246, metadata !DIExpression()), !dbg !893
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !249, metadata !DIExpression()), !dbg !893
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.18) #40, !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !255, metadata !DIExpression()), !dbg !893
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !256, metadata !DIExpression()), !dbg !893
  br label %58, !dbg !948

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !893
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !246, metadata !DIExpression()), !dbg !893
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !256, metadata !DIExpression()), !dbg !893
  %61 = load i8, ptr %59, align 1, !dbg !949, !tbaa !904
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !950

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !951
  %64 = load i8, ptr %63, align 1, !dbg !954, !tbaa !904
  %65 = icmp ne i8 %64, 45, !dbg !955
  %66 = select i1 %65, i1 %60, i1 false, !dbg !956
  br label %67, !dbg !956

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !246, metadata !DIExpression()), !dbg !893
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !957
  %70 = load ptr, ptr %69, align 8, !dbg !957, !tbaa !838
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !957
  %73 = load i16, ptr %72, align 2, !dbg !957, !tbaa !936
  %74 = and i16 %73, 8192, !dbg !957
  %75 = icmp eq i16 %74, 0, !dbg !957
  br i1 %75, label %89, label %76, !dbg !959

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !960
  br i1 %77, label %91, label %78, !dbg !963

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !964
  %80 = load i8, ptr %79, align 1, !dbg !964, !tbaa !904
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !964
  %83 = load i16, ptr %82, align 2, !dbg !964, !tbaa !936
  %84 = and i16 %83, 8192, !dbg !964
  %85 = icmp eq i16 %84, 0, !dbg !964
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !965
  br i1 %88, label %89, label %91, !dbg !965

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !966
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !256, metadata !DIExpression()), !dbg !893
  br label %58, !dbg !948, !llvm.loop !967

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !893
  %92 = ptrtoint ptr %24 to i64, !dbg !969
  %93 = load ptr, ptr @stdout, align 8, !dbg !969, !tbaa !838
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !906, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata !866, metadata !912, metadata !DIExpression()), !dbg !988
  tail call void @llvm.dbg.value(metadata ptr @.str.5, metadata !313, metadata !DIExpression()), !dbg !893
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #40, !dbg !990
  %96 = icmp eq i32 %95, 0, !dbg !990
  br i1 %96, label %100, label %97, !dbg !992

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #40, !dbg !993
  %99 = icmp eq i32 %98, 0, !dbg !993
  br i1 %99, label %100, label %103, !dbg !994

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !995
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5, i32 noundef %101, ptr noundef %54) #39, !dbg !995
  br label %106, !dbg !997

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !998
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.5, i32 noundef %104, ptr noundef %54) #39, !dbg !998
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !838
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %107), !dbg !1000
  %109 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !838
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %109), !dbg !1001
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1002
  %112 = sub i64 %111, %92, !dbg !1002
  %113 = load ptr, ptr @stdout, align 8, !dbg !1002, !tbaa !838
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1002
  %115 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !838
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %115), !dbg !1003
  %117 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !838
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %117), !dbg !1004
  %119 = load ptr, ptr @stdout, align 8, !dbg !1005, !tbaa !838
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1005
  br label %121, !dbg !1006

121:                                              ; preds = %106, %19
  ret void, !dbg !1006
}

; Function Attrs: nounwind
declare !dbg !1007 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1011 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1015 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1018 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1020 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1023 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1026 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1029 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1032 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1038 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !1039 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1045 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1049, metadata !DIExpression()), !dbg !1051
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1050, metadata !DIExpression()), !dbg !1051
  %3 = load ptr, ptr %1, align 8, !dbg !1052, !tbaa !838
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1053
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1054
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1055
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1056
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1057
  %8 = load ptr, ptr @Version, align 8, !dbg !1058, !tbaa !838
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #39, !dbg !1059
  %10 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1059
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef %10, ptr noundef null) #39, !dbg !1060
  %11 = load i32, ptr @optind, align 4, !dbg !1061, !tbaa !895
  %12 = sub nsw i32 %0, %11, !dbg !1062
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
  ], !dbg !1063

13:                                               ; preds = %2
  tail call fastcc void @users(ptr noundef nonnull @.str.3, i32 noundef 1), !dbg !1064
  br label %26, !dbg !1066

14:                                               ; preds = %2
  %15 = sext i32 %11 to i64, !dbg !1067
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1067
  %17 = load ptr, ptr %16, align 8, !dbg !1067, !tbaa !838
  tail call fastcc void @users(ptr noundef %17, i32 noundef 0), !dbg !1068
  br label %26, !dbg !1069

18:                                               ; preds = %2
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1070
  %20 = load i32, ptr @optind, align 4, !dbg !1070, !tbaa !895
  %21 = sext i32 %20 to i64, !dbg !1070
  %22 = getelementptr ptr, ptr %1, i64 %21, !dbg !1070
  %23 = getelementptr ptr, ptr %22, i64 1, !dbg !1070
  %24 = load ptr, ptr %23, align 8, !dbg !1070, !tbaa !838
  %25 = tail call ptr @quote(ptr noundef %24) #39, !dbg !1070
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %19, ptr noundef %25) #39, !dbg !1070
  tail call void @usage(i32 noundef 1) #43, !dbg !1071
  unreachable, !dbg !1071

26:                                               ; preds = %14, %13
  ret i32 0, !dbg !1072
}

; Function Attrs: nounwind
declare !dbg !1073 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1076 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1077 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @users(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !1080 {
  %3 = alloca i64, align 8, !DIAssignID !1115
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1086, metadata !DIExpression(), metadata !1115, metadata ptr %3, metadata !DIExpression()), !dbg !1116
  %4 = alloca ptr, align 8, !DIAssignID !1117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1089, metadata !DIExpression(), metadata !1117, metadata ptr %4, metadata !DIExpression()), !dbg !1116
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1084, metadata !DIExpression()), !dbg !1116
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1085, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1119
  %5 = or i32 %1, 2, !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1085, metadata !DIExpression()), !dbg !1116
  %6 = call i32 @read_utmp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #39, !dbg !1121
  %7 = icmp eq i32 %6, 0, !dbg !1123
  br i1 %7, label %12, label %8, !dbg !1124

8:                                                ; preds = %2
  %9 = tail call ptr @__errno_location() #42, !dbg !1125
  %10 = load i32, ptr %9, align 4, !dbg !1125, !tbaa !895
  %11 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %0) #39, !dbg !1125
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %10, ptr noundef nonnull @.str.50, ptr noundef %11) #39, !dbg !1125
  unreachable, !dbg !1125

12:                                               ; preds = %2
  %13 = load i64, ptr %3, align 8, !dbg !1126, !tbaa !1127
  %14 = load ptr, ptr %4, align 8, !dbg !1129, !tbaa !838
  call void @llvm.dbg.value(metadata i64 %13, metadata !1130, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %14, metadata !1137, metadata !DIExpression()), !dbg !1151
  %15 = call noalias nonnull ptr @xinmalloc(i64 noundef %13, i64 noundef 8) #44, !dbg !1153
  call void @llvm.dbg.value(metadata ptr %15, metadata !1138, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 0, metadata !1139, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %13, metadata !1130, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %14, metadata !1137, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %13, metadata !1130, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1151
  %16 = icmp eq i64 %13, 0, !dbg !1154
  br i1 %16, label %17, label %.preheader1, !dbg !1154

.preheader1:                                      ; preds = %12
  br label %18, !dbg !1154

17:                                               ; preds = %12
  call void @qsort(ptr noundef nonnull %15, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @userid_compare) #39, !dbg !1155
  call void @llvm.dbg.value(metadata i64 0, metadata !1144, metadata !DIExpression()), !dbg !1156
  br label %70, !dbg !1157

18:                                               ; preds = %.preheader1, %34
  %19 = phi i64 [ %22, %34 ], [ %13, %.preheader1 ]
  %20 = phi ptr [ %36, %34 ], [ %14, %.preheader1 ]
  %21 = phi i64 [ %35, %34 ], [ 0, %.preheader1 ]
  %22 = add nsw i64 %19, -1, !dbg !1158
  call void @llvm.dbg.value(metadata ptr %20, metadata !1137, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %21, metadata !1139, metadata !DIExpression()), !dbg !1151
  %23 = load ptr, ptr %20, align 8, !dbg !1159, !tbaa !1160
  %24 = load i8, ptr %23, align 1, !dbg !1159, !tbaa !904
  %25 = icmp eq i8 %24, 0, !dbg !1159
  br i1 %25, label %34, label %26, !dbg !1159

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 0, i32 7, !dbg !1159
  %28 = load i16, ptr %27, align 8, !dbg !1159, !tbaa !1164
  %29 = icmp eq i16 %28, 7, !dbg !1159
  br i1 %29, label %30, label %34, !dbg !1165

30:                                               ; preds = %26
  %31 = call noalias nonnull ptr @extract_trimmed_name(ptr noundef nonnull %20) #39, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %31, metadata !1140, metadata !DIExpression()), !dbg !1167
  %32 = getelementptr inbounds ptr, ptr %15, i64 %21, !dbg !1168
  store ptr %31, ptr %32, align 8, !dbg !1169, !tbaa !838
  %33 = add nsw i64 %21, 1, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %33, metadata !1139, metadata !DIExpression()), !dbg !1151
  br label %34, !dbg !1171

34:                                               ; preds = %30, %26, %18
  %35 = phi i64 [ %33, %30 ], [ %21, %26 ], [ %21, %18 ], !dbg !1151
  call void @llvm.dbg.value(metadata i64 %35, metadata !1139, metadata !DIExpression()), !dbg !1151
  %36 = getelementptr inbounds %struct.gl_utmp, ptr %20, i64 1, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %22, metadata !1130, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata ptr %36, metadata !1137, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i64 %22, metadata !1130, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1151
  %37 = icmp eq i64 %22, 0, !dbg !1154
  br i1 %37, label %38, label %18, !dbg !1154, !llvm.loop !1173

38:                                               ; preds = %34
  %.lcssa = phi i64 [ %35, %34 ], !dbg !1151
  call void @qsort(ptr noundef nonnull %15, i64 noundef %.lcssa, i64 noundef 8, ptr noundef nonnull @userid_compare) #39, !dbg !1155
  call void @llvm.dbg.value(metadata i64 0, metadata !1144, metadata !DIExpression()), !dbg !1156
  %39 = icmp sgt i64 %.lcssa, 0, !dbg !1175
  br i1 %39, label %40, label %70, !dbg !1157

40:                                               ; preds = %38
  %41 = add nsw i64 %.lcssa, -1
  br label %42, !dbg !1157

42:                                               ; preds = %61, %40
  %43 = phi i64 [ 0, %40 ], [ %62, %61 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !1144, metadata !DIExpression()), !dbg !1156
  %44 = icmp slt i64 %43, %41, !dbg !1176
  call void @llvm.dbg.value(metadata i8 poison, metadata !1146, metadata !DIExpression()), !dbg !1177
  %45 = getelementptr inbounds ptr, ptr %15, i64 %43, !dbg !1178
  %46 = load ptr, ptr %45, align 8, !dbg !1178, !tbaa !838
  %47 = load ptr, ptr @stdout, align 8, !dbg !1178, !tbaa !838
  %48 = call i32 @fputs_unlocked(ptr noundef %46, ptr noundef %47), !dbg !1178
  %49 = select i1 %44, i32 32, i32 10, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %49, metadata !1180, metadata !DIExpression()), !dbg !1186
  %50 = load ptr, ptr @stdout, align 8, !dbg !1188, !tbaa !838
  %51 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 5, !dbg !1188
  %52 = load ptr, ptr %51, align 8, !dbg !1188, !tbaa !1189
  %53 = getelementptr inbounds %struct._IO_FILE, ptr %50, i64 0, i32 6, !dbg !1188
  %54 = load ptr, ptr %53, align 8, !dbg !1188, !tbaa !1191
  %55 = icmp ult ptr %52, %54, !dbg !1188
  br i1 %55, label %58, label %56, !dbg !1188, !prof !1192

56:                                               ; preds = %42
  %57 = call i32 @__overflow(ptr noundef nonnull %50, i32 noundef %49) #39, !dbg !1188
  br label %61, !dbg !1188

58:                                               ; preds = %42
  %59 = trunc i32 %49 to i8, !dbg !1188
  %60 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1188
  store ptr %60, ptr %51, align 8, !dbg !1188, !tbaa !1189
  store i8 %59, ptr %52, align 1, !dbg !1188, !tbaa !904
  br label %61, !dbg !1188

61:                                               ; preds = %58, %56
  %62 = add nuw nsw i64 %43, 1, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %62, metadata !1144, metadata !DIExpression()), !dbg !1156
  %63 = icmp eq i64 %62, %.lcssa, !dbg !1175
  br i1 %63, label %.preheader, label %42, !dbg !1157, !llvm.loop !1194

.preheader:                                       ; preds = %61
  br label %64, !dbg !1196

64:                                               ; preds = %.preheader, %64
  %65 = phi i64 [ %68, %64 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !1149, metadata !DIExpression()), !dbg !1197
  %66 = getelementptr inbounds ptr, ptr %15, i64 %65, !dbg !1198
  %67 = load ptr, ptr %66, align 8, !dbg !1198, !tbaa !838
  call void @free(ptr noundef %67) #39, !dbg !1200
  %68 = add nuw nsw i64 %65, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %68, metadata !1149, metadata !DIExpression()), !dbg !1197
  %69 = icmp eq i64 %68, %.lcssa, !dbg !1202
  br i1 %69, label %.loopexit, label %64, !dbg !1196, !llvm.loop !1203

.loopexit:                                        ; preds = %64
  br label %70, !dbg !1205

70:                                               ; preds = %.loopexit, %17, %38
  call void @free(ptr noundef nonnull %15) #39, !dbg !1205
  %71 = load ptr, ptr %4, align 8, !dbg !1206, !tbaa !838
  call void @free(ptr noundef %71) #39, !dbg !1207
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1208
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1208
  ret void, !dbg !1208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1209 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @userid_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !dbg !1213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1217, metadata !DIExpression()), !dbg !1221
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1218, metadata !DIExpression()), !dbg !1221
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1219, metadata !DIExpression()), !dbg !1221
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1220, metadata !DIExpression()), !dbg !1221
  %3 = load ptr, ptr %0, align 8, !dbg !1222, !tbaa !838
  %4 = load ptr, ptr %1, align 8, !dbg !1223, !tbaa !838
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !1224
  ret i32 %5, !dbg !1225
}

; Function Attrs: nofree
declare !dbg !1226 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

declare !dbg !1231 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1234 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1237 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1239, metadata !DIExpression()), !dbg !1240
  store ptr %0, ptr @file_name, align 8, !dbg !1241, !tbaa !838
  ret void, !dbg !1242
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1243 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1249, !tbaa !1250
  ret void, !dbg !1252
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1253 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1258, !tbaa !838
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1259
  %3 = icmp eq i32 %2, 0, !dbg !1260
  br i1 %3, label %22, label %4, !dbg !1261

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1262, !tbaa !1250, !range !1263, !noundef !866
  %6 = icmp eq i8 %5, 0, !dbg !1262
  br i1 %6, label %11, label %7, !dbg !1264

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1265
  %9 = load i32, ptr %8, align 4, !dbg !1265, !tbaa !895
  %10 = icmp eq i32 %9, 32, !dbg !1266
  br i1 %10, label %22, label %11, !dbg !1267

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #39, !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1255, metadata !DIExpression()), !dbg !1269
  %13 = load ptr, ptr @file_name, align 8, !dbg !1270, !tbaa !838
  %14 = icmp eq ptr %13, null, !dbg !1270
  %15 = tail call ptr @__errno_location() #42, !dbg !1272
  %16 = load i32, ptr %15, align 4, !dbg !1272, !tbaa !895
  br i1 %14, label %19, label %17, !dbg !1273

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1274
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #39, !dbg !1274
  br label %20, !dbg !1274

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #39, !dbg !1275
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1276, !tbaa !895
  tail call void @_exit(i32 noundef %21) #41, !dbg !1277
  unreachable, !dbg !1277

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1278, !tbaa !838
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1280
  %25 = icmp eq i32 %24, 0, !dbg !1281
  br i1 %25, label %28, label %26, !dbg !1282

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1283, !tbaa !895
  tail call void @_exit(i32 noundef %27) #41, !dbg !1284
  unreachable, !dbg !1284

28:                                               ; preds = %22
  ret void, !dbg !1285
}

; Function Attrs: noreturn
declare !dbg !1286 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1288 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1292, metadata !DIExpression()), !dbg !1296
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1293, metadata !DIExpression()), !dbg !1296
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1294, metadata !DIExpression()), !dbg !1296
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1295, metadata !DIExpression(DW_OP_deref)), !dbg !1296
  tail call fastcc void @flush_stdout(), !dbg !1297
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1298, !tbaa !838
  %7 = icmp eq ptr %6, null, !dbg !1298
  br i1 %7, label %9, label %8, !dbg !1300

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1301
  br label %13, !dbg !1301

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1302, !tbaa !838
  %11 = tail call ptr @getprogname() #40, !dbg !1302
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %11) #39, !dbg !1302
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1304, !tbaa.struct !1305
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1304
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1304
  ret void, !dbg !1306
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1307 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1309, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i32 1, metadata !1311, metadata !DIExpression()), !dbg !1314
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1317
  %2 = icmp slt i32 %1, 0, !dbg !1318
  br i1 %2, label %6, label %3, !dbg !1319

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1320, !tbaa !838
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1320
  br label %6, !dbg !1320

6:                                                ; preds = %3, %0
  ret void, !dbg !1321
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1322 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1328
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1324, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1325, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1326, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1327, metadata !DIExpression(DW_OP_deref)), !dbg !1329
  %7 = load ptr, ptr @stderr, align 8, !dbg !1330, !tbaa !838
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1331, !noalias !1375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1379
  call void @llvm.dbg.value(metadata ptr %7, metadata !1371, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %2, metadata !1372, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr poison, metadata !1373, metadata !DIExpression(DW_OP_deref)), !dbg !1380
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1331, !noalias !1375
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1381, !tbaa !895
  %10 = add i32 %9, 1, !dbg !1381
  store i32 %10, ptr @error_message_count, align 4, !dbg !1381, !tbaa !895
  %11 = icmp eq i32 %1, 0, !dbg !1382
  br i1 %11, label %21, label %12, !dbg !1384

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1385, metadata !DIExpression(), metadata !1328, metadata ptr %5, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %1, metadata !1388, metadata !DIExpression()), !dbg !1393
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1395
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %13, metadata !1389, metadata !DIExpression()), !dbg !1393
  %14 = icmp eq ptr %13, null, !dbg !1397
  br i1 %14, label %15, label %17, !dbg !1399

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #39, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %16, metadata !1389, metadata !DIExpression()), !dbg !1393
  br label %17, !dbg !1401

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1393
  call void @llvm.dbg.value(metadata ptr %18, metadata !1389, metadata !DIExpression()), !dbg !1393
  %19 = load ptr, ptr @stderr, align 8, !dbg !1402, !tbaa !838
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %18) #39, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1403
  br label %21, !dbg !1404

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1405, !tbaa !838
  call void @llvm.dbg.value(metadata i32 10, metadata !1406, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata ptr %22, metadata !1411, metadata !DIExpression()), !dbg !1412
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1414
  %24 = load ptr, ptr %23, align 8, !dbg !1414, !tbaa !1189
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1414
  %26 = load ptr, ptr %25, align 8, !dbg !1414, !tbaa !1191
  %27 = icmp ult ptr %24, %26, !dbg !1414
  br i1 %27, label %30, label %28, !dbg !1414, !prof !1192

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1414
  br label %32, !dbg !1414

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1414
  store ptr %31, ptr %23, align 8, !dbg !1414, !tbaa !1189
  store i8 10, ptr %24, align 1, !dbg !1414, !tbaa !904
  br label %32, !dbg !1414

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1415, !tbaa !838
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1415
  %35 = icmp eq i32 %0, 0, !dbg !1416
  br i1 %35, label %37, label %36, !dbg !1418

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1419
  unreachable, !dbg !1419

37:                                               ; preds = %32
  ret void, !dbg !1420
}

declare !dbg !1421 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1424 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1427 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1430 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1434 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1442
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1441, metadata !DIExpression(), metadata !1442, metadata ptr %4, metadata !DIExpression()), !dbg !1443
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1438, metadata !DIExpression()), !dbg !1443
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1439, metadata !DIExpression()), !dbg !1443
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1440, metadata !DIExpression()), !dbg !1443
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1444
  call void @llvm.va_start(ptr nonnull %4), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1446, !tbaa.struct !1305
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1446
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1446
  call void @llvm.va_end(ptr nonnull %4), !dbg !1447
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1448
  ret void, !dbg !1448
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !350 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !366, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !367, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !368, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !369, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !370, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !371, metadata !DIExpression(DW_OP_deref)), !dbg !1449
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1450, !tbaa !895
  %9 = icmp eq i32 %8, 0, !dbg !1450
  br i1 %9, label %24, label %10, !dbg !1452

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1453, !tbaa !895
  %12 = icmp eq i32 %11, %3, !dbg !1456
  br i1 %12, label %13, label %23, !dbg !1457

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1458, !tbaa !838
  %15 = icmp eq ptr %14, %2, !dbg !1459
  br i1 %15, label %37, label %16, !dbg !1460

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1461
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1462
  br i1 %19, label %20, label %23, !dbg !1462

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1463
  %22 = icmp eq i32 %21, 0, !dbg !1464
  br i1 %22, label %37, label %23, !dbg !1465

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1466, !tbaa !838
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1467, !tbaa !895
  br label %24, !dbg !1468

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1469
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1470, !tbaa !838
  %26 = icmp eq ptr %25, null, !dbg !1470
  br i1 %26, label %28, label %27, !dbg !1472

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1473
  br label %32, !dbg !1473

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1474, !tbaa !838
  %30 = tail call ptr @getprogname() #40, !dbg !1474
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %30) #39, !dbg !1474
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1476, !tbaa !838
  %34 = icmp eq ptr %2, null, !dbg !1476
  %35 = select i1 %34, ptr @.str.3.33, ptr @.str.2.34, !dbg !1476
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1476
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1477, !tbaa.struct !1305
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1477
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1477
  br label %37, !dbg !1478

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1478
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1479 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1489
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1488, metadata !DIExpression(), metadata !1489, metadata ptr %6, metadata !DIExpression()), !dbg !1490
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1483, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1484, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1485, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1486, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1487, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1491
  call void @llvm.va_start(ptr nonnull %6), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1493, !tbaa.struct !1305
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1493
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1493
  call void @llvm.va_end(ptr nonnull %6), !dbg !1494
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1495
  ret void, !dbg !1495
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1496 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1499, !tbaa !838
  ret ptr %1, !dbg !1500
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1501 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1531
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1516, metadata !DIExpression(), metadata !1531, metadata ptr %7, metadata !DIExpression()), !dbg !1532
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1506, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1507, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1508, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1509, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1510, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1511, metadata !DIExpression()), !dbg !1533
  %9 = load i32, ptr @opterr, align 4, !dbg !1534, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1512, metadata !DIExpression()), !dbg !1533
  store i32 0, ptr @opterr, align 4, !dbg !1535, !tbaa !895
  %10 = icmp eq i32 %0, 2, !dbg !1536
  br i1 %10, label %11, label %16, !dbg !1537

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1538
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1513, metadata !DIExpression()), !dbg !1539
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1540

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #39, !dbg !1541
  br label %16, !dbg !1542

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1543
  call void @llvm.va_start(ptr nonnull %7), !dbg !1544
  %15 = load ptr, ptr @stdout, align 8, !dbg !1545, !tbaa !838
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1546, !tbaa.struct !1305
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1546
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39, !dbg !1546
  call void @exit(i32 noundef 0) #41, !dbg !1547
  unreachable, !dbg !1547

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1548, !tbaa !895
  store i32 0, ptr @optind, align 4, !dbg !1549, !tbaa !895
  ret void, !dbg !1550
}

; Function Attrs: nounwind
declare !dbg !1551 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1557 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1576
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1571, metadata !DIExpression(), metadata !1576, metadata ptr %8, metadata !DIExpression()), !dbg !1577
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1561, metadata !DIExpression()), !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1562, metadata !DIExpression()), !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1563, metadata !DIExpression()), !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1564, metadata !DIExpression()), !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1565, metadata !DIExpression()), !dbg !1578
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1566, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1567, metadata !DIExpression()), !dbg !1578
  %10 = load i32, ptr @opterr, align 4, !dbg !1579, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1568, metadata !DIExpression()), !dbg !1578
  store i32 1, ptr @opterr, align 4, !dbg !1580, !tbaa !895
  %11 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1581
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1569, metadata !DIExpression()), !dbg !1578
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1582
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1570, metadata !DIExpression()), !dbg !1578
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1583

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1584
  call void @llvm.va_start(ptr nonnull %8), !dbg !1585
  %14 = load ptr, ptr @stdout, align 8, !dbg !1586, !tbaa !838
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #39, !dbg !1587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1587, !tbaa.struct !1305
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #39, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #39, !dbg !1587
  call void @exit(i32 noundef 0) #41, !dbg !1588
  unreachable, !dbg !1588

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1589, !tbaa !895
  br label %17, !dbg !1590

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #39, !dbg !1591
  br label %19, !dbg !1592

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1592, !tbaa !895
  ret void, !dbg !1593
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !1594 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1596, metadata !DIExpression()), !dbg !1599
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1600
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1597, metadata !DIExpression()), !dbg !1599
  %3 = icmp eq ptr %2, null, !dbg !1601
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1601
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1598, metadata !DIExpression()), !dbg !1599
  %6 = ptrtoint ptr %5 to i64, !dbg !1602
  %7 = ptrtoint ptr %0 to i64, !dbg !1602
  %8 = sub i64 %6, %7, !dbg !1602
  %9 = icmp sgt i64 %8, 6, !dbg !1604
  br i1 %9, label %10, label %19, !dbg !1605

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1606
  call void @llvm.dbg.value(metadata ptr %11, metadata !1607, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1612, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 7, metadata !1613, metadata !DIExpression()), !dbg !1614
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1616
  %13 = icmp eq i32 %12, 0, !dbg !1617
  br i1 %13, label %14, label %19, !dbg !1618

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1596, metadata !DIExpression()), !dbg !1599
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #40, !dbg !1619
  %16 = icmp eq i32 %15, 0, !dbg !1622
  %17 = select i1 %16, i64 3, i64 0, !dbg !1623
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1623
  br label %19, !dbg !1623

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1598, metadata !DIExpression()), !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1596, metadata !DIExpression()), !dbg !1599
  store ptr %20, ptr @program_name, align 8, !dbg !1624, !tbaa !838
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1625, !tbaa !838
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1626, !tbaa !838
  ret void, !dbg !1627
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1628 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !432 {
  %3 = alloca i32, align 4, !DIAssignID !1629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !442, metadata !DIExpression(), metadata !1629, metadata ptr %3, metadata !DIExpression()), !dbg !1630
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !447, metadata !DIExpression(), metadata !1631, metadata ptr %4, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !439, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !440, metadata !DIExpression()), !dbg !1630
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1632
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !441, metadata !DIExpression()), !dbg !1630
  %6 = icmp eq ptr %5, %0, !dbg !1633
  br i1 %6, label %7, label %14, !dbg !1635

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1636
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1637
  call void @llvm.dbg.value(metadata ptr %4, metadata !1638, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %4, metadata !1647, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 0, metadata !1653, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 8, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i64 0, ptr %4, align 8, !dbg !1657
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1658
  %9 = icmp eq i64 %8, 2, !dbg !1660
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1661
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1630
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1662
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1662
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1630
  ret ptr %15, !dbg !1662
}

; Function Attrs: nounwind
declare !dbg !1663 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1669 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1674, metadata !DIExpression()), !dbg !1677
  %2 = tail call ptr @__errno_location() #42, !dbg !1678
  %3 = load i32, ptr %2, align 4, !dbg !1678, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1675, metadata !DIExpression()), !dbg !1677
  %4 = icmp eq ptr %0, null, !dbg !1679
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1679
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !1680
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1676, metadata !DIExpression()), !dbg !1677
  store i32 %3, ptr %2, align 4, !dbg !1681, !tbaa !895
  ret ptr %6, !dbg !1682
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !1683 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1689, metadata !DIExpression()), !dbg !1690
  %2 = icmp eq ptr %0, null, !dbg !1691
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1691
  %4 = load i32, ptr %3, align 8, !dbg !1692, !tbaa !1693
  ret i32 %4, !dbg !1695
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1696 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1700, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1701, metadata !DIExpression()), !dbg !1702
  %3 = icmp eq ptr %0, null, !dbg !1703
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1703
  store i32 %1, ptr %4, align 8, !dbg !1704, !tbaa !1693
  ret void, !dbg !1705
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !1706 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1710, metadata !DIExpression()), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1711, metadata !DIExpression()), !dbg !1718
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1712, metadata !DIExpression()), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1713, metadata !DIExpression()), !dbg !1718
  %4 = icmp eq ptr %0, null, !dbg !1719
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1719
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1720
  %7 = lshr i8 %1, 5, !dbg !1721
  %8 = zext nneg i8 %7 to i64, !dbg !1721
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1722
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1714, metadata !DIExpression()), !dbg !1718
  %10 = and i8 %1, 31, !dbg !1723
  %11 = zext nneg i8 %10 to i32, !dbg !1723
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1716, metadata !DIExpression()), !dbg !1718
  %12 = load i32, ptr %9, align 4, !dbg !1724, !tbaa !895
  %13 = lshr i32 %12, %11, !dbg !1725
  %14 = and i32 %13, 1, !dbg !1726
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1717, metadata !DIExpression()), !dbg !1718
  %15 = xor i32 %13, %2, !dbg !1727
  %16 = and i32 %15, 1, !dbg !1727
  %17 = shl nuw i32 %16, %11, !dbg !1728
  %18 = xor i32 %17, %12, !dbg !1729
  store i32 %18, ptr %9, align 4, !dbg !1729, !tbaa !895
  ret i32 %14, !dbg !1730
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1731 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1735, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1736, metadata !DIExpression()), !dbg !1738
  %3 = icmp eq ptr %0, null, !dbg !1739
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1741
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1735, metadata !DIExpression()), !dbg !1738
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1742
  %6 = load i32, ptr %5, align 4, !dbg !1742, !tbaa !1743
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1737, metadata !DIExpression()), !dbg !1738
  store i32 %1, ptr %5, align 4, !dbg !1744, !tbaa !1743
  ret i32 %6, !dbg !1745
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1746 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1750, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1751, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1752, metadata !DIExpression()), !dbg !1753
  %4 = icmp eq ptr %0, null, !dbg !1754
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1750, metadata !DIExpression()), !dbg !1753
  store i32 10, ptr %5, align 8, !dbg !1757, !tbaa !1693
  %6 = icmp ne ptr %1, null, !dbg !1758
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1760
  br i1 %8, label %10, label %9, !dbg !1760

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1761
  unreachable, !dbg !1761

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1762
  store ptr %1, ptr %11, align 8, !dbg !1763, !tbaa !1764
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1765
  store ptr %2, ptr %12, align 8, !dbg !1766, !tbaa !1767
  ret void, !dbg !1768
}

; Function Attrs: noreturn nounwind
declare !dbg !1769 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1770 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1774, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1775, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1776, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1777, metadata !DIExpression()), !dbg !1782
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1778, metadata !DIExpression()), !dbg !1782
  %6 = icmp eq ptr %4, null, !dbg !1783
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1783
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1779, metadata !DIExpression()), !dbg !1782
  %8 = tail call ptr @__errno_location() #42, !dbg !1784
  %9 = load i32, ptr %8, align 4, !dbg !1784, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1780, metadata !DIExpression()), !dbg !1782
  %10 = load i32, ptr %7, align 8, !dbg !1785, !tbaa !1693
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1786
  %12 = load i32, ptr %11, align 4, !dbg !1786, !tbaa !1743
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1787
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1788
  %15 = load ptr, ptr %14, align 8, !dbg !1788, !tbaa !1764
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1789
  %17 = load ptr, ptr %16, align 8, !dbg !1789, !tbaa !1767
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1781, metadata !DIExpression()), !dbg !1782
  store i32 %9, ptr %8, align 4, !dbg !1791, !tbaa !895
  ret i64 %18, !dbg !1792
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1793 {
  %10 = alloca i32, align 4, !DIAssignID !1861
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1862
  %12 = alloca i32, align 4, !DIAssignID !1863
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1864
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1865
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1839, metadata !DIExpression(), metadata !1865, metadata ptr %14, metadata !DIExpression()), !dbg !1866
  %15 = alloca i32, align 4, !DIAssignID !1867
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1842, metadata !DIExpression(), metadata !1867, metadata ptr %15, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1799, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1801, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1802, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1803, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1804, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1805, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1806, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1807, metadata !DIExpression()), !dbg !1869
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1870
  %17 = icmp eq i64 %16, 1, !dbg !1871
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1811, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1812, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1869
  %18 = and i32 %5, 2, !dbg !1872
  %19 = icmp ne i32 %18, 0, !dbg !1872
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1872

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1873
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1874
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1875
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1812, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1811, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1802, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1807, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1806, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1803, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.label(metadata !1817), !dbg !1876
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1869
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
  ], !dbg !1877

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1803, metadata !DIExpression()), !dbg !1869
  br label %101, !dbg !1878

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1803, metadata !DIExpression()), !dbg !1869
  br i1 %36, label %101, label %42, !dbg !1878

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1879
  br i1 %43, label %101, label %44, !dbg !1883

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1879, !tbaa !904
  br label %101, !dbg !1879

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !536, metadata !DIExpression(), metadata !1863, metadata ptr %12, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.assign(metadata i1 undef, metadata !537, metadata !DIExpression(), metadata !1864, metadata ptr %13, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !533, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32 %28, metadata !534, metadata !DIExpression()), !dbg !1884
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #39, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %46, metadata !535, metadata !DIExpression()), !dbg !1884
  %47 = icmp eq ptr %46, @.str.11.66, !dbg !1889
  br i1 %47, label %48, label %57, !dbg !1891

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1892
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1893
  call void @llvm.dbg.value(metadata ptr %13, metadata !1894, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr %13, metadata !1902, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 8, metadata !1906, metadata !DIExpression()), !dbg !1907
  store i64 0, ptr %13, align 8, !dbg !1909
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1910
  %50 = icmp eq i64 %49, 3, !dbg !1912
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1913
  %54 = icmp eq i32 %28, 9, !dbg !1913
  %55 = select i1 %54, ptr @.str.10.68, ptr @.str.12.69, !dbg !1913
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1914
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1884
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1806, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !536, metadata !DIExpression(), metadata !1861, metadata ptr %10, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !537, metadata !DIExpression(), metadata !1862, metadata ptr %11, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !533, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 %28, metadata !534, metadata !DIExpression()), !dbg !1915
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #39, !dbg !1917
  call void @llvm.dbg.value(metadata ptr %59, metadata !535, metadata !DIExpression()), !dbg !1915
  %60 = icmp eq ptr %59, @.str.12.69, !dbg !1918
  br i1 %60, label %61, label %70, !dbg !1919

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1920
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1921
  call void @llvm.dbg.value(metadata ptr %11, metadata !1894, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %11, metadata !1902, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 8, metadata !1906, metadata !DIExpression()), !dbg !1924
  store i64 0, ptr %11, align 8, !dbg !1926
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1927
  %63 = icmp eq i64 %62, 3, !dbg !1928
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1929
  %67 = icmp eq i32 %28, 9, !dbg !1929
  %68 = select i1 %67, ptr @.str.10.68, ptr @.str.12.69, !dbg !1929
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1929
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1930
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1930
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1807, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1806, metadata !DIExpression()), !dbg !1869
  br i1 %36, label %88, label %73, !dbg !1931

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1819, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression()), !dbg !1869
  %74 = load i8, ptr %71, align 1, !dbg !1933, !tbaa !904
  %75 = icmp eq i8 %74, 0, !dbg !1935
  br i1 %75, label %88, label %.preheader11, !dbg !1935

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1935

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1819, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1809, metadata !DIExpression()), !dbg !1869
  %80 = icmp ult i64 %79, %39, !dbg !1936
  br i1 %80, label %81, label %83, !dbg !1939

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1936
  store i8 %77, ptr %82, align 1, !dbg !1936, !tbaa !904
  br label %83, !dbg !1936

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1809, metadata !DIExpression()), !dbg !1869
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1940
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1819, metadata !DIExpression()), !dbg !1932
  %86 = load i8, ptr %85, align 1, !dbg !1933, !tbaa !904
  %87 = icmp eq i8 %86, 0, !dbg !1935
  br i1 %87, label %.loopexit12, label %76, !dbg !1935, !llvm.loop !1941

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1939
  br label %88, !dbg !1943

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1811, metadata !DIExpression()), !dbg !1869
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1812, metadata !DIExpression()), !dbg !1869
  br label %101, !dbg !1945

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1869
  br label %101, !dbg !1946

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1869
  br label %101, !dbg !1947

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1869
  br i1 %36, label %101, label %95, !dbg !1948

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1869
  br i1 %36, label %101, label %95, !dbg !1947

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1949
  br i1 %97, label %101, label %98, !dbg !1953

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1949, !tbaa !904
  br label %101, !dbg !1949

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1869
  br label %101, !dbg !1954

100:                                              ; preds = %27
  call void @abort() #41, !dbg !1955
  unreachable, !dbg !1955

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1944
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.68, %42 ], [ @.str.10.68, %44 ], [ @.str.10.68, %41 ], [ %33, %27 ], [ @.str.12.69, %95 ], [ @.str.12.69, %98 ], [ @.str.12.69, %94 ], [ @.str.10.68, %40 ], [ @.str.12.69, %91 ], [ @.str.12.69, %92 ], [ @.str.12.69, %93 ], !dbg !1869
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1869
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1812, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1811, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1807, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1806, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1803, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1824, metadata !DIExpression()), !dbg !1956
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
  br label %121, !dbg !1957

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1944
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1873
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1958
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1824, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1802, metadata !DIExpression()), !dbg !1869
  %130 = icmp eq i64 %122, -1, !dbg !1959
  br i1 %130, label %131, label %135, !dbg !1960

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1961
  %133 = load i8, ptr %132, align 1, !dbg !1961, !tbaa !904
  %134 = icmp eq i8 %133, 0, !dbg !1962
  br i1 %134, label %573, label %137, !dbg !1963

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1964
  br i1 %136, label %573, label %137, !dbg !1963

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1829, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1965
  br i1 %113, label %138, label %151, !dbg !1966

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1968
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1969
  br i1 %140, label %141, label %143, !dbg !1969

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1802, metadata !DIExpression()), !dbg !1869
  br label %143, !dbg !1971

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1802, metadata !DIExpression()), !dbg !1869
  %145 = icmp ugt i64 %139, %144, !dbg !1972
  br i1 %145, label %151, label %146, !dbg !1973

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %147, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata ptr %106, metadata !1978, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %107, metadata !1979, metadata !DIExpression()), !dbg !1980
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1982
  %149 = icmp eq i32 %148, 0, !dbg !1983
  %150 = and i1 %149, %109, !dbg !1984
  br i1 %150, label %.loopexit7, label %151, !dbg !1984

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1826, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1802, metadata !DIExpression()), !dbg !1869
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1985
  %155 = load i8, ptr %154, align 1, !dbg !1985, !tbaa !904
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1831, metadata !DIExpression()), !dbg !1965
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
  ], !dbg !1986

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1987

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1988

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1829, metadata !DIExpression()), !dbg !1965
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1992
  br i1 %159, label %176, label %160, !dbg !1992

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1994
  br i1 %161, label %162, label %164, !dbg !1998

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1994
  store i8 39, ptr %163, align 1, !dbg !1994, !tbaa !904
  br label %164, !dbg !1994

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1809, metadata !DIExpression()), !dbg !1869
  %166 = icmp ult i64 %165, %129, !dbg !1999
  br i1 %166, label %167, label %169, !dbg !2002

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1999
  store i8 36, ptr %168, align 1, !dbg !1999, !tbaa !904
  br label %169, !dbg !1999

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1809, metadata !DIExpression()), !dbg !1869
  %171 = icmp ult i64 %170, %129, !dbg !2003
  br i1 %171, label %172, label %174, !dbg !2006

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2003
  store i8 39, ptr %173, align 1, !dbg !2003, !tbaa !904
  br label %174, !dbg !2003

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2006
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1869
  br label %176, !dbg !2007

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1869
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1809, metadata !DIExpression()), !dbg !1869
  %179 = icmp ult i64 %177, %129, !dbg !2008
  br i1 %179, label %180, label %182, !dbg !2011

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2008
  store i8 92, ptr %181, align 1, !dbg !2008, !tbaa !904
  br label %182, !dbg !2008

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1809, metadata !DIExpression()), !dbg !1869
  br i1 %110, label %184, label %476, !dbg !2012

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2014
  %186 = icmp ult i64 %185, %152, !dbg !2015
  br i1 %186, label %187, label %433, !dbg !2016

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2017
  %189 = load i8, ptr %188, align 1, !dbg !2017, !tbaa !904
  %190 = add i8 %189, -48, !dbg !2018
  %191 = icmp ult i8 %190, 10, !dbg !2018
  br i1 %191, label %192, label %433, !dbg !2018

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2019
  br i1 %193, label %194, label %196, !dbg !2023

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2019
  store i8 48, ptr %195, align 1, !dbg !2019, !tbaa !904
  br label %196, !dbg !2019

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1809, metadata !DIExpression()), !dbg !1869
  %198 = icmp ult i64 %197, %129, !dbg !2024
  br i1 %198, label %199, label %201, !dbg !2027

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2024
  store i8 48, ptr %200, align 1, !dbg !2024, !tbaa !904
  br label %201, !dbg !2024

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1809, metadata !DIExpression()), !dbg !1869
  br label %433, !dbg !2028

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2029

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2030

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2031

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2033

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2035
  %209 = icmp ult i64 %208, %152, !dbg !2036
  br i1 %209, label %210, label %433, !dbg !2037

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2038
  %212 = load i8, ptr %211, align 1, !dbg !2038, !tbaa !904
  %213 = icmp eq i8 %212, 63, !dbg !2039
  br i1 %213, label %214, label %433, !dbg !2040

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2041
  %216 = load i8, ptr %215, align 1, !dbg !2041, !tbaa !904
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
  ], !dbg !2042

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2043

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1831, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1824, metadata !DIExpression()), !dbg !1956
  %219 = icmp ult i64 %123, %129, !dbg !2045
  br i1 %219, label %220, label %222, !dbg !2048

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2045
  store i8 63, ptr %221, align 1, !dbg !2045, !tbaa !904
  br label %222, !dbg !2045

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2048
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1809, metadata !DIExpression()), !dbg !1869
  %224 = icmp ult i64 %223, %129, !dbg !2049
  br i1 %224, label %225, label %227, !dbg !2052

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2049
  store i8 34, ptr %226, align 1, !dbg !2049, !tbaa !904
  br label %227, !dbg !2049

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2052
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1809, metadata !DIExpression()), !dbg !1869
  %229 = icmp ult i64 %228, %129, !dbg !2053
  br i1 %229, label %230, label %232, !dbg !2056

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2053
  store i8 34, ptr %231, align 1, !dbg !2053, !tbaa !904
  br label %232, !dbg !2053

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2056
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1809, metadata !DIExpression()), !dbg !1869
  %234 = icmp ult i64 %233, %129, !dbg !2057
  br i1 %234, label %235, label %237, !dbg !2060

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2057
  store i8 63, ptr %236, align 1, !dbg !2057, !tbaa !904
  br label %237, !dbg !2057

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1809, metadata !DIExpression()), !dbg !1869
  br label %433, !dbg !2061

239:                                              ; preds = %151
  br label %249, !dbg !2062

240:                                              ; preds = %151
  br label %249, !dbg !2063

241:                                              ; preds = %151
  br label %247, !dbg !2064

242:                                              ; preds = %151
  br label %247, !dbg !2065

243:                                              ; preds = %151
  br label %249, !dbg !2066

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2067

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2068

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2071

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2073
  call void @llvm.dbg.label(metadata !1832), !dbg !2074
  br i1 %118, label %.loopexit8, label %249, !dbg !2075

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2073
  call void @llvm.dbg.label(metadata !1835), !dbg !2077
  br i1 %108, label %487, label %444, !dbg !2078

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2079

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2080, !tbaa !904
  %254 = icmp eq i8 %253, 0, !dbg !2082
  br i1 %254, label %255, label %433, !dbg !2083

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2084
  br i1 %256, label %257, label %433, !dbg !2086

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1830, metadata !DIExpression()), !dbg !1965
  br label %258, !dbg !2087

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1965
  br i1 %115, label %260, label %433, !dbg !2088

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2090

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1830, metadata !DIExpression()), !dbg !1965
  br i1 %115, label %262, label %433, !dbg !2091

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2092

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2095
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2097
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2097
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1810, metadata !DIExpression()), !dbg !1869
  %269 = icmp ult i64 %123, %268, !dbg !2098
  br i1 %269, label %270, label %272, !dbg !2101

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2098
  store i8 39, ptr %271, align 1, !dbg !2098, !tbaa !904
  br label %272, !dbg !2098

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1809, metadata !DIExpression()), !dbg !1869
  %274 = icmp ult i64 %273, %268, !dbg !2102
  br i1 %274, label %275, label %277, !dbg !2105

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2102
  store i8 92, ptr %276, align 1, !dbg !2102, !tbaa !904
  br label %277, !dbg !2102

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1809, metadata !DIExpression()), !dbg !1869
  %279 = icmp ult i64 %278, %268, !dbg !2106
  br i1 %279, label %280, label %282, !dbg !2109

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2106
  store i8 39, ptr %281, align 1, !dbg !2106, !tbaa !904
  br label %282, !dbg !2106

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1869
  br label %433, !dbg !2110

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2111

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1836, metadata !DIExpression()), !dbg !2112
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !2113
  %287 = load ptr, ptr %286, align 8, !dbg !2113, !tbaa !838
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2113
  %290 = load i16, ptr %289, align 2, !dbg !2113, !tbaa !936
  %291 = and i16 %290, 16384, !dbg !2113
  %292 = icmp ne i16 %291, 0, !dbg !2115
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1838, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2112
  br label %334, !dbg !2116

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %14, metadata !1894, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %14, metadata !1902, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 8, metadata !1906, metadata !DIExpression()), !dbg !2120
  store i64 0, ptr %14, align 8, !dbg !2122
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !2112
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1838, metadata !DIExpression()), !dbg !2112
  %294 = icmp eq i64 %152, -1, !dbg !2123
  br i1 %294, label %295, label %297, !dbg !2125

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2126
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1802, metadata !DIExpression()), !dbg !1869
  br label %297, !dbg !2127

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1802, metadata !DIExpression()), !dbg !1869
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2128
  %299 = sub i64 %298, %128, !dbg !2129
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !2130
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1846, metadata !DIExpression()), !dbg !1868
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2131

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !2112
  %302 = icmp ult i64 %128, %298, !dbg !2132
  br i1 %302, label %.preheader5, label %329, !dbg !2134

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2135

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !2112
  br label %329, !dbg !2136

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1836, metadata !DIExpression()), !dbg !2112
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2138
  %308 = load i8, ptr %307, align 1, !dbg !2138, !tbaa !904
  %309 = icmp eq i8 %308, 0, !dbg !2134
  br i1 %309, label %.loopexit6, label %310, !dbg !2135

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2139
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1836, metadata !DIExpression()), !dbg !2112
  %312 = add i64 %311, %128, !dbg !2140
  %313 = icmp eq i64 %311, %299, !dbg !2132
  br i1 %313, label %.loopexit6, label %304, !dbg !2134, !llvm.loop !2141

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1847, metadata !DIExpression()), !dbg !2142
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2143
  %317 = and i1 %316, %109, !dbg !2143
  br i1 %317, label %.preheader3, label %325, !dbg !2143

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2144

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1847, metadata !DIExpression()), !dbg !2142
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2145
  %321 = load i8, ptr %320, align 1, !dbg !2145, !tbaa !904
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2147

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2148
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1847, metadata !DIExpression()), !dbg !2142
  %324 = icmp eq i64 %323, %300, !dbg !2149
  br i1 %324, label %.loopexit4, label %318, !dbg !2144, !llvm.loop !2150

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2152

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2152, !tbaa !895
  call void @llvm.dbg.value(metadata i32 %326, metadata !2154, metadata !DIExpression()), !dbg !2162
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !2164
  %328 = icmp ne i32 %327, 0, !dbg !2165
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1836, metadata !DIExpression()), !dbg !2112
  br label %329, !dbg !2166

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2167

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1836, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2168
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2168
  call void @llvm.dbg.label(metadata !1860), !dbg !2169
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2170
  br label %624, !dbg !2170

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1965
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2172
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1836, metadata !DIExpression()), !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1802, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1830, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1965
  %338 = icmp ult i64 %336, 2, !dbg !2173
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2174
  br i1 %340, label %433, label %341, !dbg !2174

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1855, metadata !DIExpression()), !dbg !2176
  br label %343, !dbg !2177

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1869
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1956
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1831, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1829, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1826, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1824, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1809, metadata !DIExpression()), !dbg !1869
  br i1 %339, label %394, label %350, !dbg !2178

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2183

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1829, metadata !DIExpression()), !dbg !1965
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2186
  br i1 %352, label %369, label %353, !dbg !2186

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2188
  br i1 %354, label %355, label %357, !dbg !2192

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2188
  store i8 39, ptr %356, align 1, !dbg !2188, !tbaa !904
  br label %357, !dbg !2188

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1809, metadata !DIExpression()), !dbg !1869
  %359 = icmp ult i64 %358, %129, !dbg !2193
  br i1 %359, label %360, label %362, !dbg !2196

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2193
  store i8 36, ptr %361, align 1, !dbg !2193, !tbaa !904
  br label %362, !dbg !2193

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2196
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1809, metadata !DIExpression()), !dbg !1869
  %364 = icmp ult i64 %363, %129, !dbg !2197
  br i1 %364, label %365, label %367, !dbg !2200

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2197
  store i8 39, ptr %366, align 1, !dbg !2197, !tbaa !904
  br label %367, !dbg !2197

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1869
  br label %369, !dbg !2201

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1869
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1809, metadata !DIExpression()), !dbg !1869
  %372 = icmp ult i64 %370, %129, !dbg !2202
  br i1 %372, label %373, label %375, !dbg !2205

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2202
  store i8 92, ptr %374, align 1, !dbg !2202, !tbaa !904
  br label %375, !dbg !2202

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1809, metadata !DIExpression()), !dbg !1869
  %377 = icmp ult i64 %376, %129, !dbg !2206
  br i1 %377, label %378, label %382, !dbg !2209

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2206
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2206
  store i8 %380, ptr %381, align 1, !dbg !2206, !tbaa !904
  br label %382, !dbg !2206

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2209
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1809, metadata !DIExpression()), !dbg !1869
  %384 = icmp ult i64 %383, %129, !dbg !2210
  br i1 %384, label %385, label %390, !dbg !2213

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2210
  %388 = or disjoint i8 %387, 48, !dbg !2210
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2210
  store i8 %388, ptr %389, align 1, !dbg !2210, !tbaa !904
  br label %390, !dbg !2210

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1809, metadata !DIExpression()), !dbg !1869
  %392 = and i8 %349, 7, !dbg !2214
  %393 = or disjoint i8 %392, 48, !dbg !2215
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1831, metadata !DIExpression()), !dbg !1965
  br label %401, !dbg !2216

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2217

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2218
  br i1 %396, label %397, label %399, !dbg !2223

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2218
  store i8 92, ptr %398, align 1, !dbg !2218, !tbaa !904
  br label %399, !dbg !2218

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1965
  br label %401, !dbg !2224

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1869
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1831, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1829, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1826, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1809, metadata !DIExpression()), !dbg !1869
  %407 = add i64 %346, 1, !dbg !2225
  %408 = icmp ugt i64 %342, %407, !dbg !2227
  br i1 %408, label %409, label %.loopexit2, !dbg !2228

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2229
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2229
  br i1 %411, label %423, label %412, !dbg !2229

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2232
  br i1 %413, label %414, label %416, !dbg !2236

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2232
  store i8 39, ptr %415, align 1, !dbg !2232, !tbaa !904
  br label %416, !dbg !2232

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2236
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1809, metadata !DIExpression()), !dbg !1869
  %418 = icmp ult i64 %417, %129, !dbg !2237
  br i1 %418, label %419, label %421, !dbg !2240

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2237
  store i8 39, ptr %420, align 1, !dbg !2237, !tbaa !904
  br label %421, !dbg !2237

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1869
  br label %423, !dbg !2241

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2242
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1809, metadata !DIExpression()), !dbg !1869
  %426 = icmp ult i64 %424, %129, !dbg !2243
  br i1 %426, label %427, label %429, !dbg !2246

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2243
  store i8 %406, ptr %428, align 1, !dbg !2243, !tbaa !904
  br label %429, !dbg !2243

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1824, metadata !DIExpression()), !dbg !1956
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2247
  %432 = load i8, ptr %431, align 1, !dbg !2247, !tbaa !904
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1831, metadata !DIExpression()), !dbg !1965
  br label %343, !dbg !2248, !llvm.loop !2249

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2252
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1869
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1873
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1956
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1965
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1831, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1829, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1826, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1824, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1802, metadata !DIExpression()), !dbg !1869
  br i1 %111, label %455, label %444, !dbg !2253

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
  br i1 %120, label %456, label %476, !dbg !2255

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2256

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
  %467 = lshr i8 %458, 5, !dbg !2257
  %468 = zext nneg i8 %467 to i64, !dbg !2257
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2258
  %470 = load i32, ptr %469, align 4, !dbg !2258, !tbaa !895
  %471 = and i8 %458, 31, !dbg !2259
  %472 = zext nneg i8 %471 to i32, !dbg !2259
  %473 = shl nuw i32 1, %472, !dbg !2260
  %474 = and i32 %470, %473, !dbg !2260
  %475 = icmp eq i32 %474, 0, !dbg !2260
  br i1 %475, label %476, label %487, !dbg !2261

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
  br i1 %153, label %487, label %523, !dbg !2262

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2252
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1869
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1873
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2263
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1965
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1831, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1824, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1802, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.label(metadata !1858), !dbg !2264
  br i1 %109, label %.loopexit8, label %497, !dbg !2265

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1829, metadata !DIExpression()), !dbg !1965
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2267
  br i1 %498, label %515, label %499, !dbg !2267

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2269
  br i1 %500, label %501, label %503, !dbg !2273

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2269
  store i8 39, ptr %502, align 1, !dbg !2269, !tbaa !904
  br label %503, !dbg !2269

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1809, metadata !DIExpression()), !dbg !1869
  %505 = icmp ult i64 %504, %496, !dbg !2274
  br i1 %505, label %506, label %508, !dbg !2277

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2274
  store i8 36, ptr %507, align 1, !dbg !2274, !tbaa !904
  br label %508, !dbg !2274

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2277
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1809, metadata !DIExpression()), !dbg !1869
  %510 = icmp ult i64 %509, %496, !dbg !2278
  br i1 %510, label %511, label %513, !dbg !2281

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2278
  store i8 39, ptr %512, align 1, !dbg !2278, !tbaa !904
  br label %513, !dbg !2278

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2281
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1869
  br label %515, !dbg !2282

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1965
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1809, metadata !DIExpression()), !dbg !1869
  %518 = icmp ult i64 %516, %496, !dbg !2283
  br i1 %518, label %519, label %521, !dbg !2286

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2283
  store i8 92, ptr %520, align 1, !dbg !2283, !tbaa !904
  br label %521, !dbg !2283

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1831, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1829, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1824, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1802, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.label(metadata !1859), !dbg !2287
  br label %547, !dbg !2288

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1869
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1965
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1956
  br label %523, !dbg !2288

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2252
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1869
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1873
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2263
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2291
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1831, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1829, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1824, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1802, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.label(metadata !1859), !dbg !2287
  %534 = xor i1 %528, true, !dbg !2288
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2288
  br i1 %535, label %547, label %536, !dbg !2288

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2292
  br i1 %537, label %538, label %540, !dbg !2296

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2292
  store i8 39, ptr %539, align 1, !dbg !2292, !tbaa !904
  br label %540, !dbg !2292

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1809, metadata !DIExpression()), !dbg !1869
  %542 = icmp ult i64 %541, %533, !dbg !2297
  br i1 %542, label %543, label %545, !dbg !2300

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2297
  store i8 39, ptr %544, align 1, !dbg !2297, !tbaa !904
  br label %545, !dbg !2297

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1869
  br label %547, !dbg !2301

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1965
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1809, metadata !DIExpression()), !dbg !1869
  %557 = icmp ult i64 %555, %548, !dbg !2302
  br i1 %557, label %558, label %560, !dbg !2305

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2302
  store i8 %549, ptr %559, align 1, !dbg !2302, !tbaa !904
  br label %560, !dbg !2302

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1809, metadata !DIExpression()), !dbg !1869
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2306
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1869
  br label %563, !dbg !2307

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2252
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1869
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1873
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2263
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1824, metadata !DIExpression()), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1818, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1802, metadata !DIExpression()), !dbg !1869
  %572 = add i64 %570, 1, !dbg !2308
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1824, metadata !DIExpression()), !dbg !1956
  br label %121, !dbg !2309, !llvm.loop !2310

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1944
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1873
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1800, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1815, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1810, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1809, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1802, metadata !DIExpression()), !dbg !1869
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2312
  %575 = xor i1 %109, true, !dbg !2314
  %576 = or i1 %574, %575, !dbg !2314
  %577 = or i1 %576, %110, !dbg !2314
  br i1 %577, label %578, label %.loopexit13, !dbg !2314

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2315
  %580 = xor i1 %.lcssa38, true, !dbg !2315
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2315
  br i1 %581, label %589, label %582, !dbg !2315

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2317

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1873
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2319
  br label %638, !dbg !2321

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2322
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2324
  br i1 %588, label %27, label %589, !dbg !2324

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1869
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1944
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2325
  %592 = or i1 %591, %590, !dbg !2327
  br i1 %592, label %608, label %593, !dbg !2327

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1811, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1809, metadata !DIExpression()), !dbg !1869
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2328, !tbaa !904
  %595 = icmp eq i8 %594, 0, !dbg !2331
  br i1 %595, label %608, label %.preheader, !dbg !2331

.preheader:                                       ; preds = %593
  br label %596, !dbg !2331

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1811, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1809, metadata !DIExpression()), !dbg !1869
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2332
  br i1 %600, label %601, label %603, !dbg !2335

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2332
  store i8 %597, ptr %602, align 1, !dbg !2332, !tbaa !904
  br label %603, !dbg !2332

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1809, metadata !DIExpression()), !dbg !1869
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2336
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1811, metadata !DIExpression()), !dbg !1869
  %606 = load i8, ptr %605, align 1, !dbg !2328, !tbaa !904
  %607 = icmp eq i8 %606, 0, !dbg !2331
  br i1 %607, label %.loopexit, label %596, !dbg !2331, !llvm.loop !2337

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2335
  br label %608, !dbg !2339

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1809, metadata !DIExpression()), !dbg !1869
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2339
  br i1 %610, label %611, label %638, !dbg !2341

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2342
  store i8 0, ptr %612, align 1, !dbg !2343, !tbaa !904
  br label %638, !dbg !2342

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1860), !dbg !2169
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2344
  br i1 %614, label %624, label %630, !dbg !2170

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1965
  br label %615, !dbg !2344

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2344

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2344

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1860), !dbg !2169
  %622 = icmp eq i32 %616, 2, !dbg !2344
  %623 = select i1 %619, i32 4, i32 2, !dbg !2170
  br i1 %622, label %624, label %630, !dbg !2170

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2170

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1971
  br label %630, !dbg !2345

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1803, metadata !DIExpression()), !dbg !1869
  %636 = and i32 %5, -3, !dbg !2345
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2346
  br label %638, !dbg !2347

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2348
}

; Function Attrs: nounwind
declare !dbg !2349 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2352 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2355 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2357 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2362, metadata !DIExpression()), !dbg !2364
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2363, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %1, metadata !2370, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr null, metadata !2371, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %2, metadata !2372, metadata !DIExpression()), !dbg !2378
  %4 = icmp eq ptr %2, null, !dbg !2380
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2380
  call void @llvm.dbg.value(metadata ptr %5, metadata !2373, metadata !DIExpression()), !dbg !2378
  %6 = tail call ptr @__errno_location() #42, !dbg !2381
  %7 = load i32, ptr %6, align 4, !dbg !2381, !tbaa !895
  call void @llvm.dbg.value(metadata i32 %7, metadata !2374, metadata !DIExpression()), !dbg !2378
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2382
  %9 = load i32, ptr %8, align 4, !dbg !2382, !tbaa !1743
  %10 = or i32 %9, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %10, metadata !2375, metadata !DIExpression()), !dbg !2378
  %11 = load i32, ptr %5, align 8, !dbg !2384, !tbaa !1693
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2385
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2386
  %14 = load ptr, ptr %13, align 8, !dbg !2386, !tbaa !1764
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2387
  %16 = load ptr, ptr %15, align 8, !dbg !2387, !tbaa !1767
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2388
  %18 = add i64 %17, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %18, metadata !2376, metadata !DIExpression()), !dbg !2378
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %19, metadata !2377, metadata !DIExpression()), !dbg !2378
  %20 = load i32, ptr %5, align 8, !dbg !2391, !tbaa !1693
  %21 = load ptr, ptr %13, align 8, !dbg !2392, !tbaa !1764
  %22 = load ptr, ptr %15, align 8, !dbg !2393, !tbaa !1767
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2394
  store i32 %7, ptr %6, align 4, !dbg !2395, !tbaa !895
  ret ptr %19, !dbg !2396
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2366 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2370, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2371, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2372, metadata !DIExpression()), !dbg !2397
  %5 = icmp eq ptr %3, null, !dbg !2398
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2398
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2373, metadata !DIExpression()), !dbg !2397
  %7 = tail call ptr @__errno_location() #42, !dbg !2399
  %8 = load i32, ptr %7, align 4, !dbg !2399, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2374, metadata !DIExpression()), !dbg !2397
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2400
  %10 = load i32, ptr %9, align 4, !dbg !2400, !tbaa !1743
  %11 = icmp eq ptr %2, null, !dbg !2401
  %12 = zext i1 %11 to i32, !dbg !2401
  %13 = or i32 %10, %12, !dbg !2402
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2375, metadata !DIExpression()), !dbg !2397
  %14 = load i32, ptr %6, align 8, !dbg !2403, !tbaa !1693
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2404
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2405
  %17 = load ptr, ptr %16, align 8, !dbg !2405, !tbaa !1764
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2406
  %19 = load ptr, ptr %18, align 8, !dbg !2406, !tbaa !1767
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2407
  %21 = add i64 %20, 1, !dbg !2408
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2376, metadata !DIExpression()), !dbg !2397
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !2409
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2377, metadata !DIExpression()), !dbg !2397
  %23 = load i32, ptr %6, align 8, !dbg !2410, !tbaa !1693
  %24 = load ptr, ptr %16, align 8, !dbg !2411, !tbaa !1764
  %25 = load ptr, ptr %18, align 8, !dbg !2412, !tbaa !1767
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2413
  store i32 %8, ptr %7, align 4, !dbg !2414, !tbaa !895
  br i1 %11, label %28, label %27, !dbg !2415

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2416, !tbaa !1127
  br label %28, !dbg !2418

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2419
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2420 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2425, !tbaa !838
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2422, metadata !DIExpression()), !dbg !2426
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2423, metadata !DIExpression()), !dbg !2427
  %2 = load i32, ptr @nslots, align 4, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2423, metadata !DIExpression()), !dbg !2427
  %3 = icmp sgt i32 %2, 1, !dbg !2428
  br i1 %3, label %4, label %6, !dbg !2430

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2428
  br label %10, !dbg !2430

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2431

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2431
  %8 = load ptr, ptr %7, align 8, !dbg !2431, !tbaa !2433
  %9 = icmp eq ptr %8, @slot0, !dbg !2435
  br i1 %9, label %17, label %16, !dbg !2436

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2423, metadata !DIExpression()), !dbg !2427
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2437
  %13 = load ptr, ptr %12, align 8, !dbg !2437, !tbaa !2433
  tail call void @free(ptr noundef %13) #39, !dbg !2438
  %14 = add nuw nsw i64 %11, 1, !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2423, metadata !DIExpression()), !dbg !2427
  %15 = icmp eq i64 %14, %5, !dbg !2428
  br i1 %15, label %.loopexit, label %10, !dbg !2430, !llvm.loop !2440

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2442
  store i64 256, ptr @slotvec0, align 8, !dbg !2444, !tbaa !2445
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2446, !tbaa !2433
  br label %17, !dbg !2447

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2448
  br i1 %18, label %20, label %19, !dbg !2450

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2451
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2453, !tbaa !838
  br label %20, !dbg !2454

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2455, !tbaa !895
  ret void, !dbg !2456
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2457 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2459, metadata !DIExpression()), !dbg !2461
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2460, metadata !DIExpression()), !dbg !2461
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2462
  ret ptr %3, !dbg !2463
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2464 {
  %5 = alloca i64, align 8, !DIAssignID !2484
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2478, metadata !DIExpression(), metadata !2484, metadata ptr %5, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2468, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2469, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2470, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2471, metadata !DIExpression()), !dbg !2486
  %6 = tail call ptr @__errno_location() #42, !dbg !2487
  %7 = load i32, ptr %6, align 4, !dbg !2487, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2472, metadata !DIExpression()), !dbg !2486
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2488, !tbaa !838
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2473, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2474, metadata !DIExpression()), !dbg !2486
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2489
  br i1 %9, label %10, label %11, !dbg !2489

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2491
  unreachable, !dbg !2491

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2492, !tbaa !895
  %13 = icmp sgt i32 %12, %0, !dbg !2493
  br i1 %13, label %32, label %14, !dbg !2494

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2495
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2485
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2496
  %16 = sext i32 %12 to i64, !dbg !2497
  store i64 %16, ptr %5, align 8, !dbg !2498, !tbaa !1127, !DIAssignID !2499
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2478, metadata !DIExpression(), metadata !2499, metadata ptr %5, metadata !DIExpression()), !dbg !2485
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2500
  %18 = add nuw nsw i32 %0, 1, !dbg !2501
  %19 = sub i32 %18, %12, !dbg !2502
  %20 = sext i32 %19 to i64, !dbg !2503
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2504
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2473, metadata !DIExpression()), !dbg !2486
  store ptr %21, ptr @slotvec, align 8, !dbg !2505, !tbaa !838
  br i1 %15, label %22, label %23, !dbg !2506

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2507, !tbaa.struct !2509
  br label %23, !dbg !2510

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2511, !tbaa !895
  %25 = sext i32 %24 to i64, !dbg !2512
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2512
  %27 = load i64, ptr %5, align 8, !dbg !2513, !tbaa !1127
  %28 = sub nsw i64 %27, %25, !dbg !2514
  %29 = shl i64 %28, 4, !dbg !2515
  call void @llvm.dbg.value(metadata ptr %26, metadata !1902, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 0, metadata !1905, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64 %29, metadata !1906, metadata !DIExpression()), !dbg !2516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2518
  %30 = load i64, ptr %5, align 8, !dbg !2519, !tbaa !1127
  %31 = trunc i64 %30 to i32, !dbg !2519
  store i32 %31, ptr @nslots, align 4, !dbg !2520, !tbaa !895
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2521
  br label %32, !dbg !2522

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2486
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2473, metadata !DIExpression()), !dbg !2486
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2523
  %36 = load i64, ptr %35, align 8, !dbg !2524, !tbaa !2445
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2479, metadata !DIExpression()), !dbg !2525
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2526
  %38 = load ptr, ptr %37, align 8, !dbg !2526, !tbaa !2433
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2481, metadata !DIExpression()), !dbg !2525
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2527
  %40 = load i32, ptr %39, align 4, !dbg !2527, !tbaa !1743
  %41 = or i32 %40, 1, !dbg !2528
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2482, metadata !DIExpression()), !dbg !2525
  %42 = load i32, ptr %3, align 8, !dbg !2529, !tbaa !1693
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2530
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2531
  %45 = load ptr, ptr %44, align 8, !dbg !2531, !tbaa !1764
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2532
  %47 = load ptr, ptr %46, align 8, !dbg !2532, !tbaa !1767
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2483, metadata !DIExpression()), !dbg !2525
  %49 = icmp ugt i64 %36, %48, !dbg !2534
  br i1 %49, label %60, label %50, !dbg !2536

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2479, metadata !DIExpression()), !dbg !2525
  store i64 %51, ptr %35, align 8, !dbg !2539, !tbaa !2445
  %52 = icmp eq ptr %38, @slot0, !dbg !2540
  br i1 %52, label %54, label %53, !dbg !2542

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2543
  br label %54, !dbg !2543

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !2544
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2481, metadata !DIExpression()), !dbg !2525
  store ptr %55, ptr %37, align 8, !dbg !2545, !tbaa !2433
  %56 = load i32, ptr %3, align 8, !dbg !2546, !tbaa !1693
  %57 = load ptr, ptr %44, align 8, !dbg !2547, !tbaa !1764
  %58 = load ptr, ptr %46, align 8, !dbg !2548, !tbaa !1767
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2549
  br label %60, !dbg !2550

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2525
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2481, metadata !DIExpression()), !dbg !2525
  store i32 %7, ptr %6, align 4, !dbg !2551, !tbaa !895
  ret ptr %61, !dbg !2552
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2553 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2560
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2558, metadata !DIExpression()), !dbg !2560
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2559, metadata !DIExpression()), !dbg !2560
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2561
  ret ptr %4, !dbg !2562
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2563 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2565, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 0, metadata !2459, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %0, metadata !2460, metadata !DIExpression()), !dbg !2567
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2569
  ret ptr %2, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2571 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2575, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %0, metadata !2558, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2559, metadata !DIExpression()), !dbg !2578
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2580
  ret ptr %3, !dbg !2581
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2582 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2590
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2589, metadata !DIExpression(), metadata !2590, metadata ptr %4, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2602, metadata !DIExpression()), !dbg !2605
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2605, !alias.scope !2593, !DIAssignID !2606
  call void @llvm.dbg.assign(metadata i8 0, metadata !2589, metadata !DIExpression(), metadata !2606, metadata ptr %4, metadata !DIExpression()), !dbg !2591
  %5 = icmp eq i32 %1, 10, !dbg !2607
  br i1 %5, label %6, label %7, !dbg !2609

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2610, !noalias !2593
  unreachable, !dbg !2610

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2611, !tbaa !1693, !alias.scope !2593, !DIAssignID !2612
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2612, metadata ptr %4, metadata !DIExpression()), !dbg !2591
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2613
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2614
  ret ptr %8, !dbg !2615
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2616 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2624, metadata !DIExpression(), metadata !2625, metadata ptr %5, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2621, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2622, metadata !DIExpression()), !dbg !2626
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2627
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2602, metadata !DIExpression()), !dbg !2634
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2634, !alias.scope !2628, !DIAssignID !2635
  call void @llvm.dbg.assign(metadata i8 0, metadata !2624, metadata !DIExpression(), metadata !2635, metadata ptr %5, metadata !DIExpression()), !dbg !2626
  %6 = icmp eq i32 %1, 10, !dbg !2636
  br i1 %6, label %7, label %8, !dbg !2637

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2638, !noalias !2628
  unreachable, !dbg !2638

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2639, !tbaa !1693, !alias.scope !2628, !DIAssignID !2640
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2640, metadata ptr %5, metadata !DIExpression()), !dbg !2626
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2641
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2642
  ret ptr %9, !dbg !2643
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2644 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2650
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2651
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2589, metadata !DIExpression(), metadata !2650, metadata ptr %3, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 0, metadata !2586, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %1, metadata !2588, metadata !DIExpression()), !dbg !2652
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2602, metadata !DIExpression()), !dbg !2661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2661, !alias.scope !2655, !DIAssignID !2662
  call void @llvm.dbg.assign(metadata i8 0, metadata !2589, metadata !DIExpression(), metadata !2662, metadata ptr %3, metadata !DIExpression()), !dbg !2652
  %4 = icmp eq i32 %0, 10, !dbg !2663
  br i1 %4, label %5, label %6, !dbg !2664

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2665, !noalias !2655
  unreachable, !dbg !2665

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2666, !tbaa !1693, !alias.scope !2655, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2589, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2667, metadata ptr %3, metadata !DIExpression()), !dbg !2652
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2668
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2669
  ret ptr %7, !dbg !2670
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2671 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2678
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2675, metadata !DIExpression()), !dbg !2679
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2676, metadata !DIExpression()), !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2624, metadata !DIExpression(), metadata !2678, metadata ptr %4, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 %0, metadata !2621, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %1, metadata !2622, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %2, metadata !2623, metadata !DIExpression()), !dbg !2680
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2683), !dbg !2686
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2602, metadata !DIExpression()), !dbg !2689
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2689, !alias.scope !2683, !DIAssignID !2690
  call void @llvm.dbg.assign(metadata i8 0, metadata !2624, metadata !DIExpression(), metadata !2690, metadata ptr %4, metadata !DIExpression()), !dbg !2680
  %5 = icmp eq i32 %0, 10, !dbg !2691
  br i1 %5, label %6, label %7, !dbg !2692

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2693, !noalias !2683
  unreachable, !dbg !2693

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2694, !tbaa !1693, !alias.scope !2683, !DIAssignID !2695
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2624, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2695, metadata ptr %4, metadata !DIExpression()), !dbg !2680
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2696
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2697
  ret ptr %8, !dbg !2698
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2699 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2707
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2707, metadata ptr %4, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2703, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2704, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2705, metadata !DIExpression()), !dbg !2708
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2710, !tbaa.struct !2711, !DIAssignID !2712
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2712, metadata ptr %4, metadata !DIExpression()), !dbg !2708
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1710, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1711, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1712, metadata !DIExpression()), !dbg !2713
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1713, metadata !DIExpression()), !dbg !2713
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2715
  %6 = lshr i8 %2, 5, !dbg !2716
  %7 = zext nneg i8 %6 to i64, !dbg !2716
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2717
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1714, metadata !DIExpression()), !dbg !2713
  %9 = and i8 %2, 31, !dbg !2718
  %10 = zext nneg i8 %9 to i32, !dbg !2718
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1716, metadata !DIExpression()), !dbg !2713
  %11 = load i32, ptr %8, align 4, !dbg !2719, !tbaa !895
  %12 = lshr i32 %11, %10, !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1717, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2713
  %13 = and i32 %12, 1, !dbg !2721
  %14 = xor i32 %13, 1, !dbg !2721
  %15 = shl nuw i32 %14, %10, !dbg !2722
  %16 = xor i32 %15, %11, !dbg !2723
  store i32 %16, ptr %8, align 4, !dbg !2723, !tbaa !895
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2724
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2725
  ret ptr %17, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2727 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2733
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2731, metadata !DIExpression()), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2733, metadata ptr %3, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata ptr %0, metadata !2703, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 -1, metadata !2704, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 %1, metadata !2705, metadata !DIExpression()), !dbg !2735
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2738, !tbaa.struct !2711, !DIAssignID !2739
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2739, metadata ptr %3, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata ptr %3, metadata !1710, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 %1, metadata !1711, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 1, metadata !1712, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8 %1, metadata !1713, metadata !DIExpression()), !dbg !2740
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2742
  %5 = lshr i8 %1, 5, !dbg !2743
  %6 = zext nneg i8 %5 to i64, !dbg !2743
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %7, metadata !1714, metadata !DIExpression()), !dbg !2740
  %8 = and i8 %1, 31, !dbg !2745
  %9 = zext nneg i8 %8 to i32, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %9, metadata !1716, metadata !DIExpression()), !dbg !2740
  %10 = load i32, ptr %7, align 4, !dbg !2746, !tbaa !895
  %11 = lshr i32 %10, %9, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %11, metadata !1717, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2740
  %12 = and i32 %11, 1, !dbg !2748
  %13 = xor i32 %12, 1, !dbg !2748
  %14 = shl nuw i32 %13, %9, !dbg !2749
  %15 = xor i32 %14, %10, !dbg !2750
  store i32 %15, ptr %7, align 4, !dbg !2750, !tbaa !895
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2751
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2752
  ret ptr %16, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2754 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2757
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %0, metadata !2731, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !2732, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2757, metadata ptr %2, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %0, metadata !2703, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 -1, metadata !2704, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 58, metadata !2705, metadata !DIExpression()), !dbg !2761
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2764, !tbaa.struct !2711, !DIAssignID !2765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2765, metadata ptr %2, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %2, metadata !1710, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 58, metadata !1711, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 1, metadata !1712, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 58, metadata !1713, metadata !DIExpression()), !dbg !2766
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2768
  call void @llvm.dbg.value(metadata ptr %3, metadata !1714, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 26, metadata !1716, metadata !DIExpression()), !dbg !2766
  %4 = load i32, ptr %3, align 4, !dbg !2769, !tbaa !895
  call void @llvm.dbg.value(metadata i32 %4, metadata !1717, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2766
  %5 = or i32 %4, 67108864, !dbg !2770
  store i32 %5, ptr %3, align 4, !dbg !2770, !tbaa !895
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2771
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2772
  ret ptr %6, !dbg !2773
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2774 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2778
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2776, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2777, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2778, metadata ptr %3, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %0, metadata !2703, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %1, metadata !2704, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i8 58, metadata !2705, metadata !DIExpression()), !dbg !2780
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2783, !tbaa.struct !2711, !DIAssignID !2784
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2706, metadata !DIExpression(), metadata !2784, metadata ptr %3, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %3, metadata !1710, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8 58, metadata !1711, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 1, metadata !1712, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8 58, metadata !1713, metadata !DIExpression()), !dbg !2785
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2787
  call void @llvm.dbg.value(metadata ptr %4, metadata !1714, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 26, metadata !1716, metadata !DIExpression()), !dbg !2785
  %5 = load i32, ptr %4, align 4, !dbg !2788, !tbaa !895
  call void @llvm.dbg.value(metadata i32 %5, metadata !1717, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2785
  %6 = or i32 %5, 67108864, !dbg !2789
  store i32 %6, ptr %4, align 4, !dbg !2789, !tbaa !895
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2790
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2791
  ret ptr %7, !dbg !2792
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2793 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2799
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2798, metadata !DIExpression(), metadata !2799, metadata ptr %4, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2602, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2796, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2797, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2803
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2804
  %5 = icmp eq i32 %1, 10, !dbg !2805
  br i1 %5, label %6, label %7, !dbg !2806

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2807, !noalias !2808
  unreachable, !dbg !2807

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2602, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2804
  store i32 %1, ptr %4, align 8, !dbg !2811, !tbaa.struct !2711, !DIAssignID !2812
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2811
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2811
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2798, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2812, metadata ptr %4, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2798, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2813, metadata ptr %8, metadata !DIExpression()), !dbg !2800
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1710, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1711, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1712, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1713, metadata !DIExpression()), !dbg !2814
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2816
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1714, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1716, metadata !DIExpression()), !dbg !2814
  %10 = load i32, ptr %9, align 4, !dbg !2817, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1717, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2814
  %11 = or i32 %10, 67108864, !dbg !2818
  store i32 %11, ptr %9, align 4, !dbg !2818, !tbaa !895, !DIAssignID !2819
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2798, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2819, metadata ptr %9, metadata !DIExpression()), !dbg !2800
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2820
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2821
  ret ptr %12, !dbg !2822
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2823 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2831
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2827, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2828, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2829, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2831, metadata ptr %5, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %2, metadata !2840, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %3, metadata !2841, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 -1, metadata !2842, metadata !DIExpression()), !dbg !2843
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2846, !tbaa.struct !2711, !DIAssignID !2847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2847, metadata ptr %5, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2848, metadata ptr undef, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %5, metadata !1750, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %1, metadata !1751, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %2, metadata !1752, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %5, metadata !1750, metadata !DIExpression()), !dbg !2849
  store i32 10, ptr %5, align 8, !dbg !2851, !tbaa !1693, !DIAssignID !2852
  call void @llvm.dbg.assign(metadata i32 10, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2852, metadata ptr %5, metadata !DIExpression()), !dbg !2843
  %6 = icmp ne ptr %1, null, !dbg !2853
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2854
  br i1 %8, label %10, label %9, !dbg !2854

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2855
  unreachable, !dbg !2855

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2856
  store ptr %1, ptr %11, align 8, !dbg !2857, !tbaa !1764, !DIAssignID !2858
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2858, metadata ptr %11, metadata !DIExpression()), !dbg !2843
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2859
  store ptr %2, ptr %12, align 8, !dbg !2860, !tbaa !1767, !DIAssignID !2861
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2861, metadata ptr %12, metadata !DIExpression()), !dbg !2843
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2862
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2863
  ret ptr %13, !dbg !2864
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2834 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2865
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2865, metadata ptr %6, metadata !DIExpression()), !dbg !2866
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2866
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2866
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2840, metadata !DIExpression()), !dbg !2866
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2841, metadata !DIExpression()), !dbg !2866
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2842, metadata !DIExpression()), !dbg !2866
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2868, !tbaa.struct !2711, !DIAssignID !2869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2869, metadata ptr %6, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2870, metadata ptr undef, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %6, metadata !1750, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %1, metadata !1751, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %2, metadata !1752, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %6, metadata !1750, metadata !DIExpression()), !dbg !2871
  store i32 10, ptr %6, align 8, !dbg !2873, !tbaa !1693, !DIAssignID !2874
  call void @llvm.dbg.assign(metadata i32 10, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2874, metadata ptr %6, metadata !DIExpression()), !dbg !2866
  %7 = icmp ne ptr %1, null, !dbg !2875
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2876
  br i1 %9, label %11, label %10, !dbg !2876

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2877
  unreachable, !dbg !2877

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2878
  store ptr %1, ptr %12, align 8, !dbg !2879, !tbaa !1764, !DIAssignID !2880
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2880, metadata ptr %12, metadata !DIExpression()), !dbg !2866
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2881
  store ptr %2, ptr %13, align 8, !dbg !2882, !tbaa !1767, !DIAssignID !2883
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2883, metadata ptr %13, metadata !DIExpression()), !dbg !2866
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2884
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2885
  ret ptr %14, !dbg !2886
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2887 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2894
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2891, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2892, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 0, metadata !2827, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %2, metadata !2830, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2894, metadata ptr %4, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %1, metadata !2840, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %2, metadata !2841, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 -1, metadata !2842, metadata !DIExpression()), !dbg !2898
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2901, !tbaa.struct !2711, !DIAssignID !2902
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2902, metadata ptr %4, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2903, metadata ptr undef, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %4, metadata !1750, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %0, metadata !1751, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %1, metadata !1752, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %4, metadata !1750, metadata !DIExpression()), !dbg !2904
  store i32 10, ptr %4, align 8, !dbg !2906, !tbaa !1693, !DIAssignID !2907
  call void @llvm.dbg.assign(metadata i32 10, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2907, metadata ptr %4, metadata !DIExpression()), !dbg !2898
  %5 = icmp ne ptr %0, null, !dbg !2908
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2909
  br i1 %7, label %9, label %8, !dbg !2909

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2910
  unreachable, !dbg !2910

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2911
  store ptr %0, ptr %10, align 8, !dbg !2912, !tbaa !1764, !DIAssignID !2913
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2913, metadata ptr %10, metadata !DIExpression()), !dbg !2898
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2914
  store ptr %1, ptr %11, align 8, !dbg !2915, !tbaa !1767, !DIAssignID !2916
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2916, metadata ptr %11, metadata !DIExpression()), !dbg !2898
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2917
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2918
  ret ptr %12, !dbg !2919
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2920 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2928
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2925, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2926, metadata !DIExpression()), !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2927, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2928, metadata ptr %5, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %1, metadata !2840, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %2, metadata !2841, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %3, metadata !2842, metadata !DIExpression()), !dbg !2930
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2933, !tbaa.struct !2711, !DIAssignID !2934
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(), metadata !2934, metadata ptr %5, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2935, metadata ptr undef, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %5, metadata !1750, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %0, metadata !1751, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %1, metadata !1752, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %5, metadata !1750, metadata !DIExpression()), !dbg !2936
  store i32 10, ptr %5, align 8, !dbg !2938, !tbaa !1693, !DIAssignID !2939
  call void @llvm.dbg.assign(metadata i32 10, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2939, metadata ptr %5, metadata !DIExpression()), !dbg !2930
  %6 = icmp ne ptr %0, null, !dbg !2940
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2941
  br i1 %8, label %10, label %9, !dbg !2941

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2942
  unreachable, !dbg !2942

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2943
  store ptr %0, ptr %11, align 8, !dbg !2944, !tbaa !1764, !DIAssignID !2945
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2945, metadata ptr %11, metadata !DIExpression()), !dbg !2930
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2946
  store ptr %1, ptr %12, align 8, !dbg !2947, !tbaa !1767, !DIAssignID !2948
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2833, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2948, metadata ptr %12, metadata !DIExpression()), !dbg !2930
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2949
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2950
  ret ptr %13, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2952 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2957, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2958, metadata !DIExpression()), !dbg !2959
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2960
  ret ptr %4, !dbg !2961
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2962 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2966, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i32 0, metadata !2956, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %0, metadata !2957, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2969
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2971
  ret ptr %3, !dbg !2972
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2973 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %1, metadata !2957, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 -1, metadata !2958, metadata !DIExpression()), !dbg !2980
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2982
  ret ptr %3, !dbg !2983
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2984 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 0, metadata !2956, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %0, metadata !2957, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 -1, metadata !2958, metadata !DIExpression()), !dbg !2992
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2994
  ret ptr %2, !dbg !2995
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @extract_trimmed_name(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !2996 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3026
  %2 = load ptr, ptr %0, align 8, !dbg !3027, !tbaa !1160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3023, metadata !DIExpression()), !dbg !3026
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3024, metadata !DIExpression()), !dbg !3026
  %4 = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3025, metadata !DIExpression()), !dbg !3026
  br label %5, !dbg !3031

5:                                                ; preds = %8, %1
  %6 = phi ptr [ %4, %1 ], [ %9, %8 ], !dbg !3032
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3025, metadata !DIExpression()), !dbg !3026
  %7 = icmp ult ptr %2, %6, !dbg !3033
  br i1 %7, label %8, label %12, !dbg !3035

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !3036
  %10 = load i8, ptr %9, align 1, !dbg !3036, !tbaa !904
  %11 = icmp eq i8 %10, 32, !dbg !3037
  br i1 %11, label %5, label %12, !dbg !3038, !llvm.loop !3039

12:                                               ; preds = %5, %8
  %.lcssa = phi ptr [ %6, %5 ], [ %6, %8 ], !dbg !3032
  %13 = ptrtoint ptr %.lcssa to i64, !dbg !3041
  %14 = ptrtoint ptr %2 to i64, !dbg !3041
  %15 = sub i64 %13, %14, !dbg !3041
  %16 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %2, i64 noundef %15) #39, !dbg !3042
  ret ptr %16, !dbg !3043
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @read_utmp(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #10 !dbg !3044 {
  %5 = alloca [33 x i8], align 4, !DIAssignID !3054
  %6 = alloca %struct.sysinfo, align 8, !DIAssignID !3055
  %7 = alloca %struct.timespec, align 8, !DIAssignID !3056
  %8 = alloca %struct.timespec, align 8, !DIAssignID !3057
  %9 = alloca %struct.stat, align 8, !DIAssignID !3058
  %10 = alloca %struct.utmp_alloc, align 8
  %11 = alloca %struct.utmp_alloc, align 8
  %12 = alloca %struct.utmp_alloc, align 8
  %13 = alloca %struct.utmp_alloc, align 8
  %14 = alloca %struct.utmp_alloc, align 8
  %15 = alloca %struct.utmp_alloc, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3059
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3051, metadata !DIExpression()), !dbg !3059
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3052, metadata !DIExpression()), !dbg !3059
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3053, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %0, metadata !3060, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %1, metadata !3063, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %2, metadata !3064, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 %3, metadata !3065, metadata !DIExpression()), !dbg !3093
  %16 = and i32 %3, 4, !dbg !3095
  %17 = icmp eq i32 %16, 0, !dbg !3097
  %18 = and i32 %3, 10
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19, !dbg !3098
  br i1 %20, label %21, label %390, !dbg !3098

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr null, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  %22 = tail call i32 @utmpxname(ptr noundef %0) #39, !dbg !3099
  tail call void @setutxent() #39, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %0, metadata !3101, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3104, metadata !DIExpression()), !dbg !3105
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #40, !dbg !3107
  %24 = icmp eq i32 %23, 0, !dbg !3108
  call void @llvm.dbg.value(metadata i1 %24, metadata !3074, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr null, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 0, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  %25 = tail call ptr @getutxent() #39, !dbg !3109
  call void @llvm.dbg.value(metadata ptr %25, metadata !3076, metadata !DIExpression()), !dbg !3093
  %26 = icmp eq ptr %25, null, !dbg !3110
  br i1 %26, label %87, label %27, !dbg !3111

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %11, i64 8
  %29 = getelementptr inbounds i8, ptr %11, i64 16
  %30 = getelementptr inbounds i8, ptr %11, i64 24
  %31 = getelementptr inbounds i8, ptr %10, i64 8
  %32 = getelementptr inbounds i8, ptr %10, i64 16
  %33 = getelementptr inbounds i8, ptr %10, i64 24
  br label %34, !dbg !3111

34:                                               ; preds = %80, %27
  %35 = phi ptr [ %25, %27 ], [ %83, %80 ]
  %36 = phi ptr [ null, %27 ], [ %68, %80 ]
  %37 = phi i64 [ 0, %27 ], [ %69, %80 ]
  %38 = phi i64 [ 0, %27 ], [ %82, %80 ]
  %39 = phi i64 [ 0, %27 ], [ %81, %80 ]
  %40 = phi i64 [ 0, %27 ], [ %70, %80 ]
  %41 = phi i64 [ 0, %27 ], [ %71, %80 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %37, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %38, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %39, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %40, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %41, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %35, metadata !3077, metadata !DIExpression()), !dbg !3112
  %42 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 8, !dbg !3113
  %43 = load i64, ptr %42, align 8, !dbg !3114, !tbaa !3115
  call void @llvm.dbg.value(metadata i64 %43, metadata !3079, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3112
  %44 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 8, i32 1, !dbg !3119
  %45 = load i64, ptr %44, align 8, !dbg !3119, !tbaa !3120
  %46 = mul nsw i64 %45, 1000, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %46, metadata !3079, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3112
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #39, !dbg !3122
  %47 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 4, !dbg !3123
  %48 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %47, i64 noundef 32) #40, !dbg !3124
  %49 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 3, !dbg !3125
  %50 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %49, i64 noundef 4) #40, !dbg !3126
  %51 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 2, !dbg !3127
  %52 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %51, i64 noundef 32) #40, !dbg !3128
  %53 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 5, !dbg !3129
  %54 = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %53, i64 noundef 256) #40, !dbg !3130
  %55 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 1, !dbg !3131
  %56 = load i32, ptr %55, align 4, !dbg !3131, !tbaa !3132
  %57 = load i16, ptr %35, align 8, !dbg !3133, !tbaa !3134
  %58 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 7, !dbg !3135
  %59 = load i64, ptr %58, align 8, !dbg !3135, !tbaa !3136
  %60 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 6, !dbg !3137
  %61 = load i16, ptr %60, align 4, !dbg !3137, !tbaa !3138
  %62 = sext i16 %61 to i32, !dbg !3137
  %63 = getelementptr inbounds %struct.utmpx, ptr %35, i64 0, i32 6, i32 1, !dbg !3139
  %64 = load i16, ptr %63, align 2, !dbg !3139, !tbaa !3140
  %65 = sext i16 %64 to i32, !dbg !3139
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #39, !dbg !3122
  store ptr %36, ptr %11, align 8, !dbg !3122, !tbaa.struct !3141
  store i64 %37, ptr %28, align 8, !dbg !3122, !tbaa.struct !3142
  store i64 %40, ptr %29, align 8, !dbg !3122, !tbaa.struct !3143
  store i64 %41, ptr %30, align 8, !dbg !3122, !tbaa.struct !3144
  %66 = insertvalue [2 x i64] poison, i64 %43, 0, !dbg !3122
  %67 = insertvalue [2 x i64] %66, i64 %46, 1, !dbg !3122
  call fastcc void @add_utmp(ptr dead_on_unwind nonnull writable sret(%struct.utmp_alloc) align 8 %10, ptr noundef nonnull %11, i32 noundef %3, ptr noundef nonnull %47, i64 noundef %48, ptr noundef nonnull %49, i64 noundef %50, ptr noundef nonnull %51, i64 noundef %52, ptr noundef nonnull %53, i64 noundef %54, i32 noundef %56, i16 noundef %57, [2 x i64] %67, i64 noundef %59, i32 noundef %62, i32 noundef %65), !dbg !3122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #39, !dbg !3122
  %68 = load ptr, ptr %10, align 8, !dbg !3122, !tbaa.struct !3141
  %69 = load i64, ptr %31, align 8, !dbg !3122, !tbaa.struct !3142
  %70 = load i64, ptr %32, align 8, !dbg !3122, !tbaa.struct !3143
  %71 = load i64, ptr %33, align 8, !dbg !3122, !tbaa.struct !3144
  call void @llvm.dbg.value(metadata ptr %68, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %69, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %70, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %71, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #39, !dbg !3122
  br i1 %24, label %72, label %80, !dbg !3145

72:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %47, metadata !3147, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata ptr @.str.1.81, metadata !3150, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i64 9, metadata !3151, metadata !DIExpression()), !dbg !3152
  %73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %47, ptr noundef nonnull dereferenceable(9) @.str.1.81, i64 9), !dbg !3154
  %74 = icmp eq i32 %73, 0, !dbg !3155
  br i1 %74, label %75, label %80, !dbg !3156

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr %51, metadata !3147, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata ptr @.str.2.82, metadata !3150, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 2, metadata !3151, metadata !DIExpression()), !dbg !3157
  %76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %51, ptr noundef nonnull dereferenceable(2) @.str.2.82, i64 2), !dbg !3159
  %77 = icmp eq i32 %76, 0, !dbg !3160
  %78 = select i1 %77, i64 %46, i64 %39, !dbg !3161
  %79 = select i1 %77, i64 %43, i64 %38, !dbg !3161
  br label %80, !dbg !3161

80:                                               ; preds = %75, %72, %34
  %81 = phi i64 [ %39, %72 ], [ %39, %34 ], [ %78, %75 ], !dbg !3093
  %82 = phi i64 [ %38, %72 ], [ %38, %34 ], [ %79, %75 ], !dbg !3093
  call void @llvm.dbg.value(metadata i64 %70, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %71, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %68, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %69, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %82, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %81, metadata !3075, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  %83 = call ptr @getutxent() #39, !dbg !3109
  call void @llvm.dbg.value(metadata ptr %83, metadata !3076, metadata !DIExpression()), !dbg !3093
  %84 = icmp eq ptr %83, null, !dbg !3110
  br i1 %84, label %85, label %34, !dbg !3111, !llvm.loop !3162

85:                                               ; preds = %80
  %.lcssa21 = phi i64 [ %81, %80 ], !dbg !3093
  %.lcssa20 = phi i64 [ %82, %80 ], !dbg !3093
  %.lcssa19 = phi ptr [ %68, %80 ], !dbg !3122
  %.lcssa18 = phi i64 [ %69, %80 ], !dbg !3122
  %.lcssa17 = phi i64 [ %70, %80 ], !dbg !3122
  %.lcssa16 = phi i64 [ %71, %80 ], !dbg !3122
  call void @endutxent() #39, !dbg !3164
  %86 = select i1 %19, i1 %24, i1 false, !dbg !3165
  br i1 %86, label %89, label %167, !dbg !3165

87:                                               ; preds = %21
  tail call void @endutxent() #39, !dbg !3164
  %88 = select i1 %19, i1 %24, i1 false, !dbg !3165
  br i1 %88, label %121, label %167, !dbg !3165

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 0, metadata !3080, metadata !DIExpression()), !dbg !3166
  %90 = icmp sgt i64 %.lcssa18, 0, !dbg !3167
  br i1 %90, label %.preheader5, label %121, !dbg !3168

.preheader5:                                      ; preds = %89
  br label %91, !dbg !3168

91:                                               ; preds = %.preheader5, %104
  %92 = phi i64 [ %105, %104 ], [ 0, %.preheader5 ]
  call void @llvm.dbg.value(metadata i64 %92, metadata !3080, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata !DIArgList(ptr %.lcssa19, i64 %92), metadata !3084, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  %93 = getelementptr inbounds %struct.gl_utmp, ptr %.lcssa19, i64 %92, i32 7, !dbg !3170
  %94 = load i16, ptr %93, align 8, !dbg !3170, !tbaa !1164
  %95 = icmp eq i16 %94, 2, !dbg !3170
  br i1 %95, label %96, label %104, !dbg !3172

96:                                               ; preds = %91
  %.lcssa14 = phi i64 [ %92, %91 ]
  call void @llvm.dbg.value(metadata !DIArgList(ptr %.lcssa19, i64 %.lcssa14), metadata !3084, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3169
  %97 = getelementptr inbounds %struct.gl_utmp, ptr %.lcssa19, i64 %.lcssa14, i32 4, !dbg !3173
  %98 = load i64, ptr %97, align 8, !dbg !3176, !tbaa !3177
  %99 = icmp slt i64 %98, 61, !dbg !3178
  %100 = icmp ne i64 %.lcssa20, 0
  %101 = select i1 %99, i1 %100, i1 false, !dbg !3179
  br i1 %101, label %102, label %107, !dbg !3179

102:                                              ; preds = %96
  store i64 %.lcssa20, ptr %97, align 8, !dbg !3180, !tbaa.struct !3143
  %103 = getelementptr inbounds i8, ptr %97, i64 8, !dbg !3180
  store i64 %.lcssa21, ptr %103, align 8, !dbg !3180, !tbaa.struct !3144
  call void @llvm.dbg.value(metadata ptr undef, metadata !3181, metadata !DIExpression(DW_OP_deref)), !dbg !3191
  call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression()), !dbg !3193
  br label %107, !dbg !3194

104:                                              ; preds = %91
  %105 = add nuw nsw i64 %92, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %105, metadata !3080, metadata !DIExpression()), !dbg !3166
  %106 = icmp eq i64 %105, %.lcssa18, !dbg !3167
  br i1 %106, label %.loopexit6, label %91, !dbg !3168, !llvm.loop !3196

.loopexit6:                                       ; preds = %104
  br label %107, !dbg !3198

107:                                              ; preds = %.loopexit6, %96, %102
  call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata !DIArgList(ptr %.lcssa19, i64 0), metadata !3188, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3200
  %108 = getelementptr inbounds %struct.gl_utmp, ptr %.lcssa19, i64 0, i32 7, !dbg !3198
  %109 = load i16, ptr %108, align 8, !dbg !3198, !tbaa !1164
  %110 = icmp eq i16 %109, 2, !dbg !3198
  call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3193
  br i1 %110, label %167, label %.preheader3

.preheader3:                                      ; preds = %107
  br label %111, !dbg !3194

111:                                              ; preds = %.preheader3, %115
  %112 = phi i64 [ %113, %115 ], [ 0, %.preheader3 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !3186, metadata !DIExpression()), !dbg !3193
  %113 = add nuw nsw i64 %112, 1, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %113, metadata !3186, metadata !DIExpression()), !dbg !3193
  %114 = icmp eq i64 %113, %.lcssa18, !dbg !3202
  br i1 %114, label %.loopexit4, label %115, !dbg !3194, !llvm.loop !3203

115:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i64 %113, metadata !3186, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata !DIArgList(ptr %.lcssa19, i64 %113), metadata !3188, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3200
  %116 = getelementptr inbounds %struct.gl_utmp, ptr %.lcssa19, i64 %113, i32 7, !dbg !3198
  %117 = load i16, ptr %116, align 8, !dbg !3198, !tbaa !1164
  %118 = icmp eq i16 %117, 2, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %113, metadata !3186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3193
  br i1 %118, label %119, label %111, !llvm.loop !3205

119:                                              ; preds = %115
  %.lcssa13 = phi i64 [ %113, %115 ], !dbg !3201
  %120 = icmp slt i64 %.lcssa13, %.lcssa18
  br i1 %120, label %167, label %121, !dbg !3206

.loopexit4:                                       ; preds = %111
  br label %121

121:                                              ; preds = %.loopexit4, %119, %89, %87
  %122 = phi i64 [ %.lcssa17, %119 ], [ %.lcssa17, %89 ], [ 0, %87 ], [ %.lcssa17, %.loopexit4 ]
  %123 = phi i64 [ %.lcssa16, %119 ], [ %.lcssa16, %89 ], [ 0, %87 ], [ %.lcssa16, %.loopexit4 ]
  %124 = phi ptr [ %.lcssa19, %119 ], [ %.lcssa19, %89 ], [ null, %87 ], [ %.lcssa19, %.loopexit4 ]
  %125 = phi i64 [ %.lcssa18, %119 ], [ %.lcssa18, %89 ], [ 0, %87 ], [ %.lcssa18, %.loopexit4 ]
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3207, metadata !DIExpression(), metadata !3058, metadata ptr %9, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata ptr undef, metadata !3216, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3217, metadata !DIExpression(), metadata !3256, metadata !866, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 0, metadata !3219, metadata !DIExpression()), !dbg !3257
  %126 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 13
  call void @llvm.dbg.value(metadata ptr @.str.5.83, metadata !3220, metadata !DIExpression()), !dbg !3252
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #39, !dbg !3258
  %127 = call i32 @stat(ptr noundef nonnull @.str.5.83, ptr noundef nonnull %9) #39, !dbg !3259
  %128 = icmp slt i32 %127, 0, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %9, metadata !3261, metadata !DIExpression()), !dbg !3269
  %129 = load i64, ptr %126, align 8
  call void @llvm.dbg.value(metadata i64 %129, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3271
  call void @llvm.dbg.value(metadata i64 poison, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3271
  %130 = icmp slt i64 %129, 1122334455
  %131 = select i1 %128, i1 true, i1 %130, !dbg !3272
  br i1 %131, label %132, label %151, !dbg !3272

132:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #39, !dbg !3273
  call void @llvm.dbg.value(metadata i64 1, metadata !3219, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr @.str.6.84, metadata !3220, metadata !DIExpression()), !dbg !3252
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #39, !dbg !3258
  %133 = call i32 @stat(ptr noundef nonnull @.str.6.84, ptr noundef nonnull %9) #39, !dbg !3259
  %134 = icmp slt i32 %133, 0, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %9, metadata !3261, metadata !DIExpression()), !dbg !3269
  %135 = load i64, ptr %126, align 8
  call void @llvm.dbg.value(metadata i64 %135, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3271
  call void @llvm.dbg.value(metadata i64 poison, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3271
  %136 = icmp slt i64 %135, 1122334455
  %137 = select i1 %134, i1 true, i1 %136, !dbg !3272
  br i1 %137, label %138, label %151, !dbg !3272

138:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #39, !dbg !3273
  call void @llvm.dbg.value(metadata i64 2, metadata !3219, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr @.str.7.85, metadata !3220, metadata !DIExpression()), !dbg !3252
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #39, !dbg !3258
  %139 = call i32 @stat(ptr noundef nonnull @.str.7.85, ptr noundef nonnull %9) #39, !dbg !3259
  %140 = icmp slt i32 %139, 0, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %9, metadata !3261, metadata !DIExpression()), !dbg !3269
  %141 = load i64, ptr %126, align 8
  call void @llvm.dbg.value(metadata i64 %141, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3271
  call void @llvm.dbg.value(metadata i64 poison, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3271
  %142 = icmp slt i64 %141, 1122334455
  %143 = select i1 %140, i1 true, i1 %142, !dbg !3272
  br i1 %143, label %144, label %151, !dbg !3272

144:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #39, !dbg !3273
  call void @llvm.dbg.value(metadata i64 3, metadata !3219, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3220, metadata !DIExpression()), !dbg !3252
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #39, !dbg !3258
  %145 = call i32 @stat(ptr noundef nonnull @.str.80, ptr noundef nonnull %9) #39, !dbg !3259
  %146 = icmp slt i32 %145, 0, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %9, metadata !3261, metadata !DIExpression()), !dbg !3269
  %147 = load i64, ptr %126, align 8
  call void @llvm.dbg.value(metadata i64 %147, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3271
  call void @llvm.dbg.value(metadata i64 poison, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3271
  %148 = icmp slt i64 %147, 1122334455
  %149 = select i1 %146, i1 true, i1 %148, !dbg !3272
  br i1 %149, label %150, label %151, !dbg !3272

150:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #39, !dbg !3273
  call void @llvm.dbg.value(metadata i64 4, metadata !3219, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 undef, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3274
  call void @llvm.dbg.value(metadata i64 undef, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3274
  br label %167, !dbg !3275

151:                                              ; preds = %144, %138, %132, %121
  %152 = phi i64 [ %129, %121 ], [ %135, %132 ], [ %141, %138 ], [ %147, %144 ]
  %153 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 13, i32 1, !dbg !3276
  %154 = load i64, ptr %153, align 8, !dbg !3276, !tbaa.struct !3144
  call void @llvm.dbg.value(metadata i64 %154, metadata !3221, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %152, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %154, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3274
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #39, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %152, metadata !3087, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3274
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #39, !dbg !3277
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #39, !dbg !3277
  store ptr %124, ptr %13, align 8, !dbg !3277, !tbaa.struct !3141
  %155 = getelementptr inbounds i8, ptr %13, i64 8, !dbg !3277
  store i64 %125, ptr %155, align 8, !dbg !3277, !tbaa.struct !3142
  %156 = getelementptr inbounds i8, ptr %13, i64 16, !dbg !3277
  store i64 %122, ptr %156, align 8, !dbg !3277, !tbaa.struct !3143
  %157 = getelementptr inbounds i8, ptr %13, i64 24, !dbg !3277
  store i64 %123, ptr %157, align 8, !dbg !3277, !tbaa.struct !3144
  %158 = insertvalue [2 x i64] poison, i64 %152, 0, !dbg !3277
  %159 = insertvalue [2 x i64] %158, i64 %154, 1, !dbg !3277
  call fastcc void @add_utmp(ptr dead_on_unwind nonnull writable sret(%struct.utmp_alloc) align 8 %12, ptr noundef nonnull %13, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %159, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3277
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #39, !dbg !3277
  %160 = load ptr, ptr %12, align 8, !dbg !3277, !tbaa.struct !3141
  %161 = getelementptr inbounds i8, ptr %12, i64 8, !dbg !3277
  %162 = load i64, ptr %161, align 8, !dbg !3277, !tbaa.struct !3142
  %163 = getelementptr inbounds i8, ptr %12, i64 16, !dbg !3277
  %164 = load i64, ptr %163, align 8, !dbg !3277, !tbaa.struct !3143
  %165 = getelementptr inbounds i8, ptr %12, i64 24, !dbg !3277
  %166 = load i64, ptr %165, align 8, !dbg !3277, !tbaa.struct !3144
  call void @llvm.dbg.value(metadata ptr %160, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %162, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %164, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %166, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #39, !dbg !3277
  br label %167, !dbg !3278

167:                                              ; preds = %151, %150, %119, %107, %87, %85
  %168 = phi i64 [ %.lcssa16, %85 ], [ %.lcssa16, %119 ], [ %166, %151 ], [ %123, %150 ], [ %.lcssa16, %107 ], [ 0, %87 ], !dbg !3093
  %169 = phi i64 [ %.lcssa17, %85 ], [ %.lcssa17, %119 ], [ %164, %151 ], [ %122, %150 ], [ %.lcssa17, %107 ], [ 0, %87 ], !dbg !3093
  %170 = phi i64 [ %.lcssa18, %85 ], [ %.lcssa18, %119 ], [ %162, %151 ], [ %125, %150 ], [ %.lcssa18, %107 ], [ 0, %87 ], !dbg !3093
  %171 = phi ptr [ %.lcssa19, %85 ], [ %.lcssa19, %119 ], [ %160, %151 ], [ %124, %150 ], [ %.lcssa19, %107 ], [ null, %87 ], !dbg !3093
  call void @llvm.dbg.value(metadata i64 %169, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %168, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %171, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %170, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  br i1 %19, label %172, label %360, !dbg !3279

172:                                              ; preds = %167
  call void @llvm.dbg.value(metadata ptr %0, metadata !3101, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr @.str.80, metadata !3104, metadata !DIExpression()), !dbg !3280
  %173 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.80) #40, !dbg !3282
  %174 = icmp eq i32 %173, 0, !dbg !3283
  br i1 %174, label %175, label %360, !dbg !3284

175:                                              ; preds = %172
  call void @llvm.dbg.value(metadata ptr undef, metadata !3181, metadata !DIExpression(DW_OP_deref)), !dbg !3285
  call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression()), !dbg !3287
  %176 = icmp sgt i64 %170, 0, !dbg !3288
  br i1 %176, label %177, label %193, !dbg !3289

177:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata !DIArgList(ptr %171, i64 0), metadata !3188, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3290
  %178 = getelementptr inbounds %struct.gl_utmp, ptr %171, i64 0, i32 7, !dbg !3291
  %179 = load i16, ptr %178, align 8, !dbg !3291, !tbaa !1164
  %180 = icmp eq i16 %179, 2, !dbg !3291
  call void @llvm.dbg.value(metadata i64 0, metadata !3186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3287
  br i1 %180, label %181, label %.preheader1

.preheader1:                                      ; preds = %177
  br label %183, !dbg !3289

181:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i64 poison, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %168, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %171, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %170, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr undef, metadata !3292, metadata !DIExpression(DW_OP_deref)), !dbg !3300
  %182 = getelementptr inbounds i8, ptr %171, i64 %168, !dbg !3302
  call void @llvm.dbg.value(metadata ptr %182, metadata !3297, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 0, metadata !3298, metadata !DIExpression()), !dbg !3303
  br label %366, !dbg !3304

183:                                              ; preds = %.preheader1, %187
  %184 = phi i64 [ %185, %187 ], [ 0, %.preheader1 ]
  call void @llvm.dbg.value(metadata i64 %184, metadata !3186, metadata !DIExpression()), !dbg !3287
  %185 = add nuw nsw i64 %184, 1, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %185, metadata !3186, metadata !DIExpression()), !dbg !3287
  %186 = icmp eq i64 %185, %170, !dbg !3288
  br i1 %186, label %.loopexit2, label %187, !dbg !3289, !llvm.loop !3306

187:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i64 %185, metadata !3186, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata !DIArgList(ptr %171, i64 %185), metadata !3188, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3290
  %188 = getelementptr inbounds %struct.gl_utmp, ptr %171, i64 %185, i32 7, !dbg !3291
  %189 = load i16, ptr %188, align 8, !dbg !3291, !tbaa !1164
  %190 = icmp eq i16 %189, 2, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %185, metadata !3186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3287
  br i1 %190, label %191, label %183, !llvm.loop !3308

191:                                              ; preds = %187
  %.lcssa11 = phi i64 [ %185, %187 ], !dbg !3305
  %192 = icmp slt i64 %.lcssa11, %170
  br i1 %192, label %360, label %193, !dbg !3309

.loopexit2:                                       ; preds = %183
  br label %193, !dbg !3310

193:                                              ; preds = %.loopexit2, %191, %175
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3314, metadata !DIExpression(), metadata !3056, metadata ptr %7, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3315, metadata !DIExpression(), metadata !3057, metadata ptr %8, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata ptr undef, metadata !3313, metadata !DIExpression()), !dbg !3320
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #39, !dbg !3310
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3322, metadata !DIExpression(), metadata !3054, metadata ptr %5, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3376, metadata !DIExpression(), metadata !3055, metadata ptr %6, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %7, metadata !3327, metadata !DIExpression()), !dbg !3409
  %194 = call i32 @clock_gettime(i32 noundef 7, ptr noundef nonnull %7) #39, !dbg !3410
  %195 = icmp sgt i32 %194, -1, !dbg !3412
  br i1 %195, label %332, label %196, !dbg !3413

196:                                              ; preds = %193
  %197 = call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.8.88, ptr noundef nonnull @.str.9.89) #39, !dbg !3414
  call void @llvm.dbg.value(metadata ptr %197, metadata !3328, metadata !DIExpression()), !dbg !3409
  %198 = icmp eq ptr %197, null, !dbg !3415
  br i1 %198, label %325, label %199, !dbg !3416

199:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %5) #39, !dbg !3417
  %200 = call i64 @fread_unlocked(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 32, ptr noundef nonnull %197), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %200, metadata !3363, metadata !DIExpression()), !dbg !3407
  %201 = call i32 @rpl_fclose(ptr noundef nonnull %197) #39, !dbg !3419
  %202 = icmp eq i64 %200, 0, !dbg !3420
  br i1 %202, label %321, label %203, !dbg !3421

203:                                              ; preds = %199
  %204 = getelementptr inbounds [33 x i8], ptr %5, i64 0, i64 %200, !dbg !3422
  store i8 0, ptr %204, align 1, !dbg !3423, !tbaa !904
  call void @llvm.dbg.value(metadata i64 0, metadata !3364, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata ptr %5, metadata !3369, metadata !DIExpression()), !dbg !3424
  %205 = load i8, ptr %5, align 4, !dbg !3425, !tbaa !904
  %206 = add i8 %205, -48, !dbg !3428
  %207 = icmp ult i8 %206, 10, !dbg !3428
  br i1 %207, label %.preheader, label %321, !dbg !3428

.preheader:                                       ; preds = %203
  br label %208, !dbg !3429

208:                                              ; preds = %.preheader, %208
  %209 = phi i8 [ %217, %208 ], [ %205, %.preheader ]
  %210 = phi ptr [ %216, %208 ], [ %5, %.preheader ]
  %211 = phi i64 [ %215, %208 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata ptr %210, metadata !3369, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i64 %211, metadata !3364, metadata !DIExpression()), !dbg !3424
  %212 = mul nsw i64 %211, 10, !dbg !3430
  %213 = and i8 %209, 15
  %214 = zext nneg i8 %213 to i64
  %215 = add nsw i64 %212, %214, !dbg !3431
  call void @llvm.dbg.value(metadata i64 %215, metadata !3364, metadata !DIExpression()), !dbg !3424
  %216 = getelementptr inbounds i8, ptr %210, i64 1, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %216, metadata !3369, metadata !DIExpression()), !dbg !3424
  %217 = load i8, ptr %216, align 1, !dbg !3425, !tbaa !904
  %218 = add i8 %217, -48, !dbg !3428
  %219 = icmp ult i8 %218, 10, !dbg !3428
  br i1 %219, label %208, label %220, !dbg !3428, !llvm.loop !3433

220:                                              ; preds = %208
  %.lcssa9 = phi ptr [ %210, %208 ]
  %.lcssa8 = phi i64 [ %215, %208 ], !dbg !3431
  %.lcssa7 = phi ptr [ %216, %208 ], !dbg !3432
  %.lcssa = phi i8 [ %217, %208 ], !dbg !3425
  %221 = icmp ult ptr %5, %.lcssa7, !dbg !3435
  br i1 %221, label %222, label %321, !dbg !3436

222:                                              ; preds = %220
  call void @llvm.dbg.value(metadata i64 0, metadata !3370, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %.lcssa7, metadata !3369, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3424
  %223 = icmp eq i8 %.lcssa, 46, !dbg !3438
  br i1 %223, label %224, label %322, !dbg !3439

224:                                              ; preds = %222
  %225 = getelementptr inbounds i8, ptr %.lcssa9, i64 2, !dbg !3440
  call void @llvm.dbg.value(metadata i32 0, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 0, metadata !3370, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %225, metadata !3369, metadata !DIExpression()), !dbg !3424
  %226 = load i8, ptr %225, align 1, !dbg !3442, !tbaa !904
  %227 = zext i8 %226 to i64, !dbg !3442
  %228 = add i8 %226, -48, !dbg !3444
  %229 = icmp ult i8 %228, 10, !dbg !3444
  %230 = add nuw nsw i64 %227, 4294967248, !dbg !3444
  %231 = zext i1 %229 to i64, !dbg !3444
  %232 = getelementptr inbounds i8, ptr %225, i64 %231, !dbg !3444
  %233 = and i64 %230, 4294967295
  call void @llvm.dbg.value(metadata ptr %232, metadata !3369, metadata !DIExpression()), !dbg !3424
  %234 = mul nuw nsw i64 %233, 10, !dbg !3445
  call void @llvm.dbg.value(metadata i32 1, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 poison, metadata !3370, metadata !DIExpression()), !dbg !3437
  %235 = select i1 %229, i64 %234, i64 0, !dbg !3445
  %236 = load i8, ptr %232, align 1, !dbg !3442, !tbaa !904
  %237 = zext i8 %236 to i64, !dbg !3442
  %238 = add i8 %236, -48, !dbg !3444
  %239 = icmp ult i8 %238, 10, !dbg !3444
  %240 = add nuw nsw i64 %237, 4294967248, !dbg !3444
  %241 = zext i1 %239 to i64, !dbg !3444
  %242 = getelementptr inbounds i8, ptr %232, i64 %241, !dbg !3444
  %243 = and i64 %240, 4294967295
  call void @llvm.dbg.value(metadata ptr %242, metadata !3369, metadata !DIExpression()), !dbg !3424
  %244 = select i1 %239, i64 %243, i64 0, !dbg !3444
  %245 = add nuw nsw i64 %244, %235, !dbg !3446
  call void @llvm.dbg.value(metadata i32 2, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %245, metadata !3370, metadata !DIExpression()), !dbg !3437
  %246 = mul nuw nsw i64 %245, 10, !dbg !3445
  %247 = load i8, ptr %242, align 1, !dbg !3442, !tbaa !904
  %248 = zext i8 %247 to i64, !dbg !3442
  %249 = add i8 %247, -48, !dbg !3444
  %250 = icmp ult i8 %249, 10, !dbg !3444
  %251 = add nuw nsw i64 %248, 4294967248, !dbg !3444
  %252 = zext i1 %250 to i64, !dbg !3444
  %253 = getelementptr inbounds i8, ptr %242, i64 %252, !dbg !3444
  %254 = and i64 %251, 4294967295
  call void @llvm.dbg.value(metadata ptr %253, metadata !3369, metadata !DIExpression()), !dbg !3424
  %255 = select i1 %250, i64 %254, i64 0, !dbg !3444
  %256 = add nuw nsw i64 %246, %255, !dbg !3446
  call void @llvm.dbg.value(metadata i32 3, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %256, metadata !3370, metadata !DIExpression()), !dbg !3437
  %257 = mul nuw nsw i64 %256, 10, !dbg !3445
  %258 = load i8, ptr %253, align 1, !dbg !3442, !tbaa !904
  %259 = zext i8 %258 to i64, !dbg !3442
  %260 = add i8 %258, -48, !dbg !3444
  %261 = icmp ult i8 %260, 10, !dbg !3444
  %262 = add nuw nsw i64 %259, 4294967248, !dbg !3444
  %263 = zext i1 %261 to i64, !dbg !3444
  %264 = getelementptr inbounds i8, ptr %253, i64 %263, !dbg !3444
  %265 = and i64 %262, 4294967295
  call void @llvm.dbg.value(metadata ptr %264, metadata !3369, metadata !DIExpression()), !dbg !3424
  %266 = select i1 %261, i64 %265, i64 0, !dbg !3444
  %267 = add nuw nsw i64 %257, %266, !dbg !3446
  call void @llvm.dbg.value(metadata i32 4, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %267, metadata !3370, metadata !DIExpression()), !dbg !3437
  %268 = mul nuw nsw i64 %267, 10, !dbg !3445
  %269 = load i8, ptr %264, align 1, !dbg !3442, !tbaa !904
  %270 = zext i8 %269 to i64, !dbg !3442
  %271 = add i8 %269, -48, !dbg !3444
  %272 = icmp ult i8 %271, 10, !dbg !3444
  %273 = add nuw nsw i64 %270, 4294967248, !dbg !3444
  %274 = zext i1 %272 to i64, !dbg !3444
  %275 = getelementptr inbounds i8, ptr %264, i64 %274, !dbg !3444
  %276 = and i64 %273, 4294967295
  call void @llvm.dbg.value(metadata ptr %275, metadata !3369, metadata !DIExpression()), !dbg !3424
  %277 = select i1 %272, i64 %276, i64 0, !dbg !3444
  %278 = add nuw nsw i64 %268, %277, !dbg !3446
  call void @llvm.dbg.value(metadata i32 5, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %278, metadata !3370, metadata !DIExpression()), !dbg !3437
  %279 = mul nuw nsw i64 %278, 10, !dbg !3445
  %280 = load i8, ptr %275, align 1, !dbg !3442, !tbaa !904
  %281 = zext i8 %280 to i64, !dbg !3442
  %282 = add i8 %280, -48, !dbg !3444
  %283 = icmp ult i8 %282, 10, !dbg !3444
  %284 = add nuw nsw i64 %281, 4294967248, !dbg !3444
  %285 = zext i1 %283 to i64, !dbg !3444
  %286 = getelementptr inbounds i8, ptr %275, i64 %285, !dbg !3444
  %287 = and i64 %284, 4294967295
  call void @llvm.dbg.value(metadata ptr %286, metadata !3369, metadata !DIExpression()), !dbg !3424
  %288 = select i1 %283, i64 %287, i64 0, !dbg !3444
  %289 = add nuw nsw i64 %279, %288, !dbg !3446
  call void @llvm.dbg.value(metadata i32 6, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %289, metadata !3370, metadata !DIExpression()), !dbg !3437
  %290 = mul nuw nsw i64 %289, 10, !dbg !3445
  %291 = load i8, ptr %286, align 1, !dbg !3442, !tbaa !904
  %292 = zext i8 %291 to i64, !dbg !3442
  %293 = add i8 %291, -48, !dbg !3444
  %294 = icmp ult i8 %293, 10, !dbg !3444
  %295 = add nuw nsw i64 %292, 4294967248, !dbg !3444
  %296 = zext i1 %294 to i64, !dbg !3444
  %297 = getelementptr inbounds i8, ptr %286, i64 %296, !dbg !3444
  %298 = and i64 %295, 4294967295
  call void @llvm.dbg.value(metadata ptr %297, metadata !3369, metadata !DIExpression()), !dbg !3424
  %299 = select i1 %294, i64 %298, i64 0, !dbg !3444
  %300 = add nuw nsw i64 %290, %299, !dbg !3446
  call void @llvm.dbg.value(metadata i32 7, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %300, metadata !3370, metadata !DIExpression()), !dbg !3437
  %301 = mul nuw nsw i64 %300, 10, !dbg !3445
  %302 = load i8, ptr %297, align 1, !dbg !3442, !tbaa !904
  %303 = zext i8 %302 to i64, !dbg !3442
  %304 = add i8 %302, -48, !dbg !3444
  %305 = icmp ult i8 %304, 10, !dbg !3444
  %306 = add nuw nsw i64 %303, 4294967248, !dbg !3444
  %307 = zext i1 %305 to i64, !dbg !3444
  %308 = getelementptr inbounds i8, ptr %297, i64 %307, !dbg !3444
  %309 = and i64 %306, 4294967295
  call void @llvm.dbg.value(metadata ptr %308, metadata !3369, metadata !DIExpression()), !dbg !3424
  %310 = select i1 %305, i64 %309, i64 0, !dbg !3444
  %311 = add nuw nsw i64 %301, %310, !dbg !3446
  call void @llvm.dbg.value(metadata i32 8, metadata !3373, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %311, metadata !3370, metadata !DIExpression()), !dbg !3437
  %312 = mul nuw nsw i64 %311, 10, !dbg !3445
  %313 = load i8, ptr %308, align 1, !dbg !3442, !tbaa !904
  %314 = zext i8 %313 to i64, !dbg !3442
  %315 = add i8 %313, -48, !dbg !3444
  %316 = icmp ult i8 %315, 10, !dbg !3444
  %317 = add nuw nsw i64 %314, 4294967248, !dbg !3444
  %318 = and i64 %317, 4294967295
  call void @llvm.dbg.value(metadata !DIArgList(ptr %308, i1 %316), metadata !3369, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3424
  %319 = select i1 %316, i64 %318, i64 0, !dbg !3444
  %320 = add nuw nsw i64 %312, %319, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %320, metadata !3370, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 9, metadata !3373, metadata !DIExpression()), !dbg !3441
  br label %322, !dbg !3447

321:                                              ; preds = %220, %203, %199
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #39, !dbg !3448
  br label %325

322:                                              ; preds = %224, %222
  %323 = phi i64 [ 0, %222 ], [ %320, %224 ], !dbg !3449
  call void @llvm.dbg.value(metadata i64 %323, metadata !3370, metadata !DIExpression()), !dbg !3437
  store i64 %.lcssa8, ptr %7, align 8, !dbg !3447, !tbaa !3450, !DIAssignID !3451
  call void @llvm.dbg.assign(metadata i64 %.lcssa8, metadata !3314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3451, metadata ptr %7, metadata !DIExpression()), !dbg !3320
  %324 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3452
  store i64 %323, ptr %324, align 8, !dbg !3453, !tbaa !3454, !DIAssignID !3455
  call void @llvm.dbg.assign(metadata i64 %323, metadata !3314, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3455, metadata ptr %324, metadata !DIExpression()), !dbg !3320
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %5) #39, !dbg !3448
  br label %332

325:                                              ; preds = %321, %196
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #39, !dbg !3456
  %326 = call i32 @sysinfo(ptr noundef nonnull %6) #39, !dbg !3457
  %327 = icmp sgt i32 %326, -1, !dbg !3459
  br i1 %327, label %328, label %331, !dbg !3460

328:                                              ; preds = %325
  %329 = load i64, ptr %6, align 8, !dbg !3461, !tbaa !3463
  store i64 %329, ptr %7, align 8, !dbg !3465, !tbaa !3450, !DIAssignID !3466
  call void @llvm.dbg.assign(metadata i64 %329, metadata !3314, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3466, metadata ptr %7, metadata !DIExpression()), !dbg !3320
  %330 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3467
  store i64 0, ptr %330, align 8, !dbg !3468, !tbaa !3454, !DIAssignID !3469
  call void @llvm.dbg.assign(metadata i64 0, metadata !3314, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3469, metadata ptr %330, metadata !DIExpression()), !dbg !3320
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #39, !dbg !3470
  br label %332, !dbg !3471

331:                                              ; preds = %325
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #39, !dbg !3470
  call void @llvm.dbg.value(metadata i64 poison, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3472
  call void @llvm.dbg.value(metadata i64 poison, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3472
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #39, !dbg !3473
  br label %360, !dbg !3474

332:                                              ; preds = %328, %322, %193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #39, !dbg !3475
  %333 = call i32 @timespec_get(ptr noundef nonnull %8, i32 noundef 1) #39, !dbg !3476
  %334 = icmp eq i32 %333, 0, !dbg !3476
  br i1 %334, label %335, label %336, !dbg !3478

335:                                              ; preds = %332
  call void @llvm.dbg.value(metadata i64 undef, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3472
  call void @llvm.dbg.value(metadata i64 undef, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3472
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #39, !dbg !3479
  call void @llvm.dbg.value(metadata i64 undef, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3472
  call void @llvm.dbg.value(metadata i64 undef, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3472
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #39, !dbg !3473
  br label %360, !dbg !3474

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.timespec, ptr %8, i64 0, i32 1, !dbg !3480
  %338 = load i64, ptr %337, align 8, !dbg !3480, !tbaa !3454
  %339 = getelementptr inbounds %struct.timespec, ptr %7, i64 0, i32 1, !dbg !3482
  %340 = load i64, ptr %339, align 8, !dbg !3482, !tbaa !3454
  %341 = icmp slt i64 %338, %340, !dbg !3483
  %342 = load i64, ptr %8, align 8, !dbg !3484, !tbaa !3450
  %343 = add nsw i64 %338, 1000000000, !dbg !3485
  %344 = select i1 %341, i64 %343, i64 %338, !dbg !3485
  %345 = sext i1 %341 to i64, !dbg !3485
  %346 = add nsw i64 %342, %345, !dbg !3485
  %347 = load i64, ptr %7, align 8, !dbg !3486, !tbaa !3450
  %348 = sub i64 %346, %347, !dbg !3484
  call void @llvm.dbg.assign(metadata i64 %348, metadata !3315, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !3487, metadata ptr %8, metadata !DIExpression()), !dbg !3321
  %349 = sub nsw i64 %344, %340, !dbg !3488
  call void @llvm.dbg.assign(metadata i64 %349, metadata !3315, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !3489, metadata ptr %337, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %349, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %348, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3472
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #39, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %349, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %348, metadata !3090, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3472
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #39, !dbg !3473
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #39, !dbg !3490
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #39, !dbg !3490
  store ptr %171, ptr %15, align 8, !dbg !3490, !tbaa.struct !3141
  %350 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !3490
  store i64 %170, ptr %350, align 8, !dbg !3490, !tbaa.struct !3142
  %351 = getelementptr inbounds i8, ptr %15, i64 16, !dbg !3490
  store i64 %169, ptr %351, align 8, !dbg !3490, !tbaa.struct !3143
  %352 = getelementptr inbounds i8, ptr %15, i64 24, !dbg !3490
  store i64 %168, ptr %352, align 8, !dbg !3490, !tbaa.struct !3144
  %353 = insertvalue [2 x i64] poison, i64 %348, 0, !dbg !3490
  %354 = insertvalue [2 x i64] %353, i64 %349, 1, !dbg !3490
  call fastcc void @add_utmp(ptr dead_on_unwind nonnull writable sret(%struct.utmp_alloc) align 8 %14, ptr noundef nonnull %15, i32 noundef %3, ptr noundef nonnull @.str.3.86, i64 noundef 6, ptr noundef nonnull @.str.4.87, i64 noundef 0, ptr noundef nonnull @.str.2.82, i64 noundef 1, ptr noundef nonnull @.str.4.87, i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %354, i64 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #39, !dbg !3490
  %355 = load ptr, ptr %14, align 8, !dbg !3490, !tbaa.struct !3141
  %356 = getelementptr inbounds i8, ptr %14, i64 8, !dbg !3490
  %357 = load i64, ptr %356, align 8, !dbg !3490, !tbaa.struct !3142
  %358 = getelementptr inbounds i8, ptr %14, i64 24, !dbg !3490
  %359 = load i64, ptr %358, align 8, !dbg !3490, !tbaa.struct !3144
  call void @llvm.dbg.value(metadata ptr %355, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %357, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 poison, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %359, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #39, !dbg !3490
  br label %360, !dbg !3491

360:                                              ; preds = %336, %335, %331, %191, %172, %167
  %361 = phi i64 [ %168, %191 ], [ %168, %172 ], [ %168, %167 ], [ %359, %336 ], [ %168, %335 ], [ %168, %331 ], !dbg !3093
  %362 = phi i64 [ %170, %191 ], [ %170, %172 ], [ %170, %167 ], [ %357, %336 ], [ %170, %335 ], [ %170, %331 ], !dbg !3093
  %363 = phi ptr [ %171, %191 ], [ %171, %172 ], [ %171, %167 ], [ %355, %336 ], [ %171, %335 ], [ %171, %331 ], !dbg !3093
  call void @llvm.dbg.value(metadata i64 poison, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %361, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %363, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %362, metadata !3066, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3093
  call void @llvm.dbg.value(metadata ptr undef, metadata !3292, metadata !DIExpression(DW_OP_deref)), !dbg !3300
  %364 = getelementptr inbounds i8, ptr %363, i64 %361, !dbg !3302
  call void @llvm.dbg.value(metadata ptr %364, metadata !3297, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 0, metadata !3298, metadata !DIExpression()), !dbg !3303
  %365 = icmp sgt i64 %362, 0, !dbg !3492
  br i1 %365, label %366, label %390, !dbg !3304

366:                                              ; preds = %360, %181
  %367 = phi ptr [ %182, %181 ], [ %364, %360 ]
  %368 = phi ptr [ %171, %181 ], [ %363, %360 ]
  %369 = phi i64 [ %170, %181 ], [ %362, %360 ]
  br label %370, !dbg !3304

370:                                              ; preds = %370, %366
  %371 = phi i64 [ %388, %370 ], [ 0, %366 ]
  call void @llvm.dbg.value(metadata i64 %371, metadata !3298, metadata !DIExpression()), !dbg !3303
  %372 = getelementptr inbounds %struct.gl_utmp, ptr %368, i64 %371, !dbg !3494
  %373 = load ptr, ptr %372, align 8, !dbg !3496, !tbaa !1160, !noalias !3497
  %374 = ptrtoint ptr %373 to i64, !dbg !3500
  %375 = getelementptr inbounds i8, ptr %367, i64 %374, !dbg !3501
  store ptr %375, ptr %372, align 8, !dbg !3502, !tbaa !1160, !noalias !3497
  %376 = getelementptr inbounds %struct.gl_utmp, ptr %368, i64 %371, i32 1, !dbg !3503
  %377 = load ptr, ptr %376, align 8, !dbg !3503, !tbaa !3504, !noalias !3497
  %378 = ptrtoint ptr %377 to i64, !dbg !3505
  %379 = getelementptr inbounds i8, ptr %367, i64 %378, !dbg !3506
  store ptr %379, ptr %376, align 8, !dbg !3507, !tbaa !3504, !noalias !3497
  %380 = getelementptr inbounds %struct.gl_utmp, ptr %368, i64 %371, i32 2, !dbg !3508
  %381 = load ptr, ptr %380, align 8, !dbg !3508, !tbaa !3509, !noalias !3497
  %382 = ptrtoint ptr %381 to i64, !dbg !3510
  %383 = getelementptr inbounds i8, ptr %367, i64 %382, !dbg !3511
  store ptr %383, ptr %380, align 8, !dbg !3512, !tbaa !3509, !noalias !3497
  %384 = getelementptr inbounds %struct.gl_utmp, ptr %368, i64 %371, i32 3, !dbg !3513
  %385 = load ptr, ptr %384, align 8, !dbg !3513, !tbaa !3514, !noalias !3497
  %386 = ptrtoint ptr %385 to i64, !dbg !3515
  %387 = getelementptr inbounds i8, ptr %367, i64 %386, !dbg !3516
  store ptr %387, ptr %384, align 8, !dbg !3517, !tbaa !3514, !noalias !3497
  %388 = add nuw nsw i64 %371, 1, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %388, metadata !3298, metadata !DIExpression()), !dbg !3303
  %389 = icmp eq i64 %388, %369, !dbg !3492
  br i1 %389, label %.loopexit, label %370, !dbg !3304, !llvm.loop !3519

.loopexit:                                        ; preds = %370
  br label %390, !dbg !3093

390:                                              ; preds = %.loopexit, %4, %360
  %391 = phi i64 [ 0, %4 ], [ %362, %360 ], [ %369, %.loopexit ], !dbg !3093
  %392 = phi ptr [ null, %4 ], [ %363, %360 ], [ %368, %.loopexit ], !dbg !3093
  store i64 %391, ptr %1, align 8, !dbg !3093, !tbaa !1127
  store ptr %392, ptr %2, align 8, !dbg !3093, !tbaa !838
  ret i32 0, !dbg !3521
}

declare !dbg !3522 i32 @utmpxname(ptr noundef) local_unnamed_addr #3

declare !dbg !3526 void @setutxent() local_unnamed_addr #3

declare !dbg !3527 ptr @getutxent() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3531 i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @add_utmp(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.utmp_alloc) align 8 %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, ptr nocapture noundef readonly %7, i64 noundef %8, ptr nocapture noundef readonly %9, i64 noundef %10, i32 noundef %11, i16 noundef %12, [2 x i64] %13, i64 noundef %14, i32 noundef %15, i32 noundef %16) unnamed_addr #10 !dbg !3534 {
  %18 = extractvalue [2 x i64] %13, 0
  %19 = extractvalue [2 x i64] %13, 1
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3550, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3567
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3538, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3539, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3540, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3541, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3542, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3543, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3544, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3545, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3546, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3547, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3548, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i16 %12, metadata !3549, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3551, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !3552, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !3553, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 72, metadata !3554, metadata !DIExpression()), !dbg !3567
  %20 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 3, !dbg !3568
  %21 = load i64, ptr %20, align 8, !dbg !3568, !tbaa !3569
  %22 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 1, !dbg !3571
  %23 = load i64, ptr %22, align 8, !dbg !3571, !tbaa !3572
  %24 = getelementptr inbounds %struct.utmp_alloc, ptr %1, i64 0, i32 2, !dbg !3573
  %25 = load i64, ptr %24, align 8, !dbg !3573, !tbaa !3574
  %26 = mul i64 %23, -72
  %27 = sub i64 %21, %25, !dbg !3575
  %28 = add i64 %27, %26, !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !3555, metadata !DIExpression()), !dbg !3567
  %29 = add i64 %6, %4, !dbg !3577
  %30 = add i64 %29, %8, !dbg !3578
  %31 = add i64 %30, %10, !dbg !3579
  %32 = add i64 %31, 4, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3556, metadata !DIExpression()), !dbg !3567
  %33 = add i64 %31, 76, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !3557, metadata !DIExpression()), !dbg !3567
  %34 = icmp slt i64 %28, %33, !dbg !3581
  br i1 %34, label %35, label %47, !dbg !3582

35:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !3558, metadata !DIExpression()), !dbg !3583
  %36 = load ptr, ptr %1, align 8, !dbg !3584, !tbaa !3585
  %37 = sub nsw i64 %33, %28, !dbg !3586
  %38 = tail call nonnull ptr @xpalloc(ptr noundef %36, ptr noundef nonnull %20, i64 noundef %37, i64 noundef -1, i64 noundef 1) #39, !dbg !3587
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3561, metadata !DIExpression()), !dbg !3583
  %39 = load i64, ptr %20, align 8, !dbg !3588, !tbaa !3569
  %40 = load i64, ptr %24, align 8, !dbg !3589, !tbaa !3574
  %41 = sub nsw i64 %39, %40, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !3562, metadata !DIExpression()), !dbg !3583
  store ptr %38, ptr %1, align 8, !dbg !3591, !tbaa !3585
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3563, metadata !DIExpression()), !dbg !3583
  %42 = getelementptr inbounds i8, ptr %38, i64 %41, !dbg !3592
  %43 = getelementptr inbounds i8, ptr %38, i64 %27, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %42, metadata !3594, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata ptr %43, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %40, metadata !3600, metadata !DIExpression()), !dbg !3601
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %42, ptr noundef nonnull align 1 %43, i64 noundef %40, i1 noundef false) #39, !dbg !3603
  %44 = load i64, ptr %22, align 8, !dbg !3604, !tbaa !3572
  %45 = load i64, ptr %20, align 8, !dbg !3605, !tbaa !3569
  %46 = load i64, ptr %24, align 8, !dbg !3606, !tbaa !3574
  br label %47, !dbg !3607

47:                                               ; preds = %35, %17
  %48 = phi i64 [ %46, %35 ], [ %25, %17 ], !dbg !3606
  %49 = phi i64 [ %45, %35 ], [ %21, %17 ], !dbg !3605
  %50 = phi i64 [ %44, %35 ], [ %23, %17 ], !dbg !3604
  %51 = load ptr, ptr %1, align 8, !dbg !3608, !tbaa !3585
  %52 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, !dbg !3609
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !3564, metadata !DIExpression()), !dbg !3567
  %53 = getelementptr inbounds i8, ptr %51, i64 %49, !dbg !3610
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !3565, metadata !DIExpression()), !dbg !3567
  %54 = sub i64 0, %48, !dbg !3611
  %55 = getelementptr inbounds i8, ptr %53, i64 %54, !dbg !3611
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3566, metadata !DIExpression()), !dbg !3567
  %56 = getelementptr inbounds i8, ptr %55, i64 -1, !dbg !3612
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i8 0, ptr %56, align 1, !dbg !3613, !tbaa !904
  %57 = sub i64 0, %4, !dbg !3614
  %58 = getelementptr inbounds i8, ptr %56, i64 %57, !dbg !3614
  call void @llvm.dbg.value(metadata ptr %58, metadata !3615, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr %3, metadata !3621, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %4, metadata !3622, metadata !DIExpression()), !dbg !3623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %58, ptr noundef nonnull align 1 %3, i64 noundef %4, i1 noundef false) #39, !dbg !3625
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !3566, metadata !DIExpression()), !dbg !3567
  store ptr %58, ptr %52, align 8, !dbg !3626, !tbaa !1160
  %59 = getelementptr inbounds i8, ptr %58, i64 -1, !dbg !3627
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i8 0, ptr %59, align 1, !dbg !3628, !tbaa !904
  %60 = sub i64 0, %6, !dbg !3629
  %61 = getelementptr inbounds i8, ptr %59, i64 %60, !dbg !3629
  call void @llvm.dbg.value(metadata ptr %61, metadata !3615, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %5, metadata !3621, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %6, metadata !3622, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %61, ptr noundef nonnull align 1 %5, i64 noundef %6, i1 noundef false) #39, !dbg !3632
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3566, metadata !DIExpression()), !dbg !3567
  %62 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 1, !dbg !3633
  store ptr %61, ptr %62, align 8, !dbg !3634, !tbaa !3504
  %63 = getelementptr inbounds i8, ptr %61, i64 -1, !dbg !3635
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i8 0, ptr %63, align 1, !dbg !3636, !tbaa !904
  %64 = sub i64 0, %8, !dbg !3637
  %65 = getelementptr inbounds i8, ptr %63, i64 %64, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %65, metadata !3615, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr %7, metadata !3621, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %8, metadata !3622, metadata !DIExpression()), !dbg !3638
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %65, ptr noundef nonnull align 1 %7, i64 noundef %8, i1 noundef false) #39, !dbg !3640
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !3566, metadata !DIExpression()), !dbg !3567
  %66 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 2, !dbg !3641
  store ptr %65, ptr %66, align 8, !dbg !3642, !tbaa !3509
  %67 = getelementptr inbounds i8, ptr %65, i64 -1, !dbg !3643
  tail call void @llvm.dbg.value(metadata ptr %67, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i8 0, ptr %67, align 1, !dbg !3644, !tbaa !904
  %68 = sub i64 0, %10, !dbg !3645
  %69 = getelementptr inbounds i8, ptr %67, i64 %68, !dbg !3645
  call void @llvm.dbg.value(metadata ptr %69, metadata !3615, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %9, metadata !3621, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %10, metadata !3622, metadata !DIExpression()), !dbg !3646
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %69, ptr noundef nonnull align 1 %9, i64 noundef %10, i1 noundef false) #39, !dbg !3648
  %70 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 3, !dbg !3649
  store ptr %69, ptr %70, align 8, !dbg !3650, !tbaa !3514
  %71 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 4, !dbg !3651
  store i64 %18, ptr %71, align 8, !dbg !3652, !tbaa.struct !3143
  %72 = getelementptr inbounds i8, ptr %71, i64 8, !dbg !3652
  store i64 %19, ptr %72, align 8, !dbg !3652, !tbaa.struct !3144
  %73 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 5, !dbg !3653
  store i32 %11, ptr %73, align 8, !dbg !3654, !tbaa !3655
  %74 = trunc i64 %14 to i32, !dbg !3656
  %75 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 6, !dbg !3657
  store i32 %74, ptr %75, align 4, !dbg !3658, !tbaa !3659
  %76 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 7, !dbg !3660
  store i16 %12, ptr %76, align 8, !dbg !3661, !tbaa !1164
  %77 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 8, !dbg !3662
  store i32 %15, ptr %77, align 4, !dbg !3663, !tbaa !3664
  %78 = getelementptr inbounds %struct.gl_utmp, ptr %51, i64 %50, i32 8, i32 1, !dbg !3665
  store i32 %16, ptr %78, align 4, !dbg !3666, !tbaa !3667
  call void @llvm.dbg.value(metadata ptr %52, metadata !3668, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %2, metadata !3673, metadata !DIExpression()), !dbg !3676
  %79 = icmp eq i16 %12, 2, !dbg !3679
  call void @llvm.dbg.value(metadata i1 %79, metadata !3674, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3676
  %80 = and i32 %2, 4, !dbg !3680
  %81 = icmp eq i32 %80, 0, !dbg !3680
  %82 = or i1 %81, %79, !dbg !3682
  br i1 %82, label %83, label %124, !dbg !3682

83:                                               ; preds = %47
  %84 = and i32 %2, 8, !dbg !3683
  %85 = icmp ne i32 %84, 0, !dbg !3683
  %86 = and i1 %85, %79, !dbg !3685
  br i1 %86, label %124, label %87, !dbg !3685

87:                                               ; preds = %83
  %88 = load ptr, ptr %52, align 8, !dbg !3686, !tbaa !1160
  %89 = load i8, ptr %88, align 1, !dbg !3686, !tbaa !904
  %90 = icmp ne i8 %89, 0, !dbg !3686
  %91 = icmp eq i16 %12, 7
  %92 = and i1 %91, %90, !dbg !3686
  call void @llvm.dbg.value(metadata i1 %92, metadata !3675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3676
  %93 = and i32 %2, 2, !dbg !3687
  %94 = icmp eq i32 %93, 0, !dbg !3687
  %95 = select i1 %94, i1 true, i1 %92, !dbg !3689
  br i1 %95, label %96, label %124, !dbg !3689

96:                                               ; preds = %87
  %97 = and i32 %2, 1, !dbg !3690
  %98 = icmp ne i32 %97, 0, !dbg !3690
  %99 = select i1 %98, i1 %92, i1 false, !dbg !3692
  %100 = icmp sgt i32 %11, 0
  %101 = and i1 %99, %100, !dbg !3692
  br i1 %101, label %102, label %109, !dbg !3692

102:                                              ; preds = %96
  %103 = tail call i32 @kill(i32 noundef %11, i32 noundef 0) #39, !dbg !3693
  %104 = icmp slt i32 %103, 0, !dbg !3694
  br i1 %104, label %105, label %109, !dbg !3695

105:                                              ; preds = %102
  %106 = tail call ptr @__errno_location() #42, !dbg !3696
  %107 = load i32, ptr %106, align 4, !dbg !3696, !tbaa !895
  %108 = icmp eq i32 %107, 3, !dbg !3697
  br i1 %108, label %124, label %109, !dbg !3698

109:                                              ; preds = %105, %102, %96
  %110 = ptrtoint ptr %53 to i64, !dbg !3699
  %111 = load <2 x ptr>, ptr %52, align 8, !dbg !3701, !tbaa !838
  %112 = ptrtoint <2 x ptr> %111 to <2 x i64>, !dbg !3699
  %113 = insertelement <2 x i64> poison, i64 %110, i64 0, !dbg !3699
  %114 = shufflevector <2 x i64> %113, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !3699
  %115 = sub <2 x i64> %112, %114, !dbg !3699
  %116 = inttoptr <2 x i64> %115 to <2 x ptr>, !dbg !3702
  store <2 x ptr> %116, ptr %52, align 8, !dbg !3703, !tbaa !838
  %117 = load <2 x ptr>, ptr %66, align 8, !dbg !3704, !tbaa !838
  %118 = ptrtoint <2 x ptr> %117 to <2 x i64>, !dbg !3705
  %119 = sub <2 x i64> %118, %114, !dbg !3705
  %120 = inttoptr <2 x i64> %119 to <2 x ptr>, !dbg !3706
  store <2 x ptr> %120, ptr %66, align 8, !dbg !3707, !tbaa !838
  %121 = load <2 x i64>, ptr %22, align 8, !dbg !3708, !tbaa !1127
  %122 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %32, i64 1, !dbg !3708
  %123 = add nsw <2 x i64> %122, %121, !dbg !3708
  store <2 x i64> %123, ptr %22, align 8, !dbg !3708, !tbaa !1127
  br label %124, !dbg !3709

124:                                              ; preds = %105, %87, %83, %47, %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !3710, !tbaa.struct !3141
  ret void, !dbg !3711
}

declare !dbg !3712 void @endutxent() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3713 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3719 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3726 i32 @sysinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3731 i32 @timespec_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind
declare !dbg !3734 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3738 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3777, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3778, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3779, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3780, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3781, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3782, metadata !DIExpression()), !dbg !3783
  %7 = icmp eq ptr %1, null, !dbg !3784
  br i1 %7, label %10, label %8, !dbg !3786

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3787
  br label %12, !dbg !3787

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.91, ptr noundef %2, ptr noundef %3) #39, !dbg !3788
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.3.93, i32 noundef 5) #39, !dbg !3789
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3789
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3790
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.5.95, i32 noundef 5) #39, !dbg !3791
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.96) #39, !dbg !3791
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %0), !dbg !3792
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
  ], !dbg !3793

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.7.97, i32 noundef 5) #39, !dbg !3794
  %21 = load ptr, ptr %4, align 8, !dbg !3794, !tbaa !838
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3794
  br label %147, !dbg !3796

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.8.98, i32 noundef 5) #39, !dbg !3797
  %25 = load ptr, ptr %4, align 8, !dbg !3797, !tbaa !838
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3797
  %27 = load ptr, ptr %26, align 8, !dbg !3797, !tbaa !838
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3797
  br label %147, !dbg !3798

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.9.99, i32 noundef 5) #39, !dbg !3799
  %31 = load ptr, ptr %4, align 8, !dbg !3799, !tbaa !838
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3799
  %33 = load ptr, ptr %32, align 8, !dbg !3799, !tbaa !838
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3799
  %35 = load ptr, ptr %34, align 8, !dbg !3799, !tbaa !838
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3799
  br label %147, !dbg !3800

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.10.100, i32 noundef 5) #39, !dbg !3801
  %39 = load ptr, ptr %4, align 8, !dbg !3801, !tbaa !838
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3801
  %41 = load ptr, ptr %40, align 8, !dbg !3801, !tbaa !838
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3801
  %43 = load ptr, ptr %42, align 8, !dbg !3801, !tbaa !838
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3801
  %45 = load ptr, ptr %44, align 8, !dbg !3801, !tbaa !838
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3801
  br label %147, !dbg !3802

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.11.101, i32 noundef 5) #39, !dbg !3803
  %49 = load ptr, ptr %4, align 8, !dbg !3803, !tbaa !838
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3803
  %51 = load ptr, ptr %50, align 8, !dbg !3803, !tbaa !838
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3803
  %53 = load ptr, ptr %52, align 8, !dbg !3803, !tbaa !838
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3803
  %55 = load ptr, ptr %54, align 8, !dbg !3803, !tbaa !838
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3803
  %57 = load ptr, ptr %56, align 8, !dbg !3803, !tbaa !838
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3803
  br label %147, !dbg !3804

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.12.102, i32 noundef 5) #39, !dbg !3805
  %61 = load ptr, ptr %4, align 8, !dbg !3805, !tbaa !838
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3805
  %63 = load ptr, ptr %62, align 8, !dbg !3805, !tbaa !838
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3805
  %65 = load ptr, ptr %64, align 8, !dbg !3805, !tbaa !838
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3805
  %67 = load ptr, ptr %66, align 8, !dbg !3805, !tbaa !838
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3805
  %69 = load ptr, ptr %68, align 8, !dbg !3805, !tbaa !838
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3805
  %71 = load ptr, ptr %70, align 8, !dbg !3805, !tbaa !838
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3805
  br label %147, !dbg !3806

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.13.103, i32 noundef 5) #39, !dbg !3807
  %75 = load ptr, ptr %4, align 8, !dbg !3807, !tbaa !838
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3807
  %77 = load ptr, ptr %76, align 8, !dbg !3807, !tbaa !838
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3807
  %79 = load ptr, ptr %78, align 8, !dbg !3807, !tbaa !838
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3807
  %81 = load ptr, ptr %80, align 8, !dbg !3807, !tbaa !838
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3807
  %83 = load ptr, ptr %82, align 8, !dbg !3807, !tbaa !838
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3807
  %85 = load ptr, ptr %84, align 8, !dbg !3807, !tbaa !838
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3807
  %87 = load ptr, ptr %86, align 8, !dbg !3807, !tbaa !838
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3807
  br label %147, !dbg !3808

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.14.104, i32 noundef 5) #39, !dbg !3809
  %91 = load ptr, ptr %4, align 8, !dbg !3809, !tbaa !838
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3809
  %93 = load ptr, ptr %92, align 8, !dbg !3809, !tbaa !838
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3809
  %95 = load ptr, ptr %94, align 8, !dbg !3809, !tbaa !838
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3809
  %97 = load ptr, ptr %96, align 8, !dbg !3809, !tbaa !838
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3809
  %99 = load ptr, ptr %98, align 8, !dbg !3809, !tbaa !838
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3809
  %101 = load ptr, ptr %100, align 8, !dbg !3809, !tbaa !838
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3809
  %103 = load ptr, ptr %102, align 8, !dbg !3809, !tbaa !838
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3809
  %105 = load ptr, ptr %104, align 8, !dbg !3809, !tbaa !838
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3809
  br label %147, !dbg !3810

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.15.105, i32 noundef 5) #39, !dbg !3811
  %109 = load ptr, ptr %4, align 8, !dbg !3811, !tbaa !838
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3811
  %111 = load ptr, ptr %110, align 8, !dbg !3811, !tbaa !838
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3811
  %113 = load ptr, ptr %112, align 8, !dbg !3811, !tbaa !838
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3811
  %115 = load ptr, ptr %114, align 8, !dbg !3811, !tbaa !838
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3811
  %117 = load ptr, ptr %116, align 8, !dbg !3811, !tbaa !838
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3811
  %119 = load ptr, ptr %118, align 8, !dbg !3811, !tbaa !838
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3811
  %121 = load ptr, ptr %120, align 8, !dbg !3811, !tbaa !838
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3811
  %123 = load ptr, ptr %122, align 8, !dbg !3811, !tbaa !838
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3811
  %125 = load ptr, ptr %124, align 8, !dbg !3811, !tbaa !838
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3811
  br label %147, !dbg !3812

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.16.106, i32 noundef 5) #39, !dbg !3813
  %129 = load ptr, ptr %4, align 8, !dbg !3813, !tbaa !838
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3813
  %131 = load ptr, ptr %130, align 8, !dbg !3813, !tbaa !838
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3813
  %133 = load ptr, ptr %132, align 8, !dbg !3813, !tbaa !838
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3813
  %135 = load ptr, ptr %134, align 8, !dbg !3813, !tbaa !838
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3813
  %137 = load ptr, ptr %136, align 8, !dbg !3813, !tbaa !838
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3813
  %139 = load ptr, ptr %138, align 8, !dbg !3813, !tbaa !838
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3813
  %141 = load ptr, ptr %140, align 8, !dbg !3813, !tbaa !838
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3813
  %143 = load ptr, ptr %142, align 8, !dbg !3813, !tbaa !838
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3813
  %145 = load ptr, ptr %144, align 8, !dbg !3813, !tbaa !838
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3813
  br label %147, !dbg !3814

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3815
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3816 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3820, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3821, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3822, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3823, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3824, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3825, metadata !DIExpression()), !dbg !3826
  br label %6, !dbg !3827

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3825, metadata !DIExpression()), !dbg !3826
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3830
  %9 = load ptr, ptr %8, align 8, !dbg !3830, !tbaa !838
  %10 = icmp eq ptr %9, null, !dbg !3832
  %11 = add i64 %7, 1, !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3825, metadata !DIExpression()), !dbg !3826
  br i1 %10, label %12, label %6, !dbg !3832, !llvm.loop !3834

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3829
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3836
  ret void, !dbg !3837
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3838 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3860
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3858, metadata !DIExpression(), metadata !3860, metadata ptr %6, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3853, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3854, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3855, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3857, metadata !DIExpression()), !dbg !3861
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3857, metadata !DIExpression()), !dbg !3861
  %10 = icmp sgt i32 %9, -1, !dbg !3863
  br i1 %10, label %18, label %11, !dbg !3863

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3863
  store i32 %12, ptr %7, align 8, !dbg !3863
  %13 = icmp ult i32 %9, -7, !dbg !3863
  br i1 %13, label %14, label %18, !dbg !3863

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3863
  %16 = sext i32 %9 to i64, !dbg !3863
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3863
  br label %22, !dbg !3863

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3863
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3863
  store ptr %21, ptr %4, align 8, !dbg !3863
  br label %22, !dbg !3863

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3863
  %25 = load ptr, ptr %24, align 8, !dbg !3863
  store ptr %25, ptr %6, align 8, !dbg !3866, !tbaa !838
  %26 = icmp eq ptr %25, null, !dbg !3867
  br i1 %26, label %197, label %27, !dbg !3868

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3857, metadata !DIExpression()), !dbg !3861
  %28 = icmp sgt i32 %23, -1, !dbg !3863
  br i1 %28, label %36, label %29, !dbg !3863

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3863
  store i32 %30, ptr %7, align 8, !dbg !3863
  %31 = icmp ult i32 %23, -7, !dbg !3863
  br i1 %31, label %32, label %36, !dbg !3863

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3863
  %34 = sext i32 %23 to i64, !dbg !3863
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3863
  br label %40, !dbg !3863

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3863
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3863
  store ptr %39, ptr %4, align 8, !dbg !3863
  br label %40, !dbg !3863

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3863
  %43 = load ptr, ptr %42, align 8, !dbg !3863
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3869
  store ptr %43, ptr %44, align 8, !dbg !3866, !tbaa !838
  %45 = icmp eq ptr %43, null, !dbg !3867
  br i1 %45, label %197, label %46, !dbg !3868

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3857, metadata !DIExpression()), !dbg !3861
  %47 = icmp sgt i32 %41, -1, !dbg !3863
  br i1 %47, label %55, label %48, !dbg !3863

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3863
  store i32 %49, ptr %7, align 8, !dbg !3863
  %50 = icmp ult i32 %41, -7, !dbg !3863
  br i1 %50, label %51, label %55, !dbg !3863

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3863
  %53 = sext i32 %41 to i64, !dbg !3863
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3863
  br label %59, !dbg !3863

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3863
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3863
  store ptr %58, ptr %4, align 8, !dbg !3863
  br label %59, !dbg !3863

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3863
  %62 = load ptr, ptr %61, align 8, !dbg !3863
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3869
  store ptr %62, ptr %63, align 8, !dbg !3866, !tbaa !838
  %64 = icmp eq ptr %62, null, !dbg !3867
  br i1 %64, label %197, label %65, !dbg !3868

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3857, metadata !DIExpression()), !dbg !3861
  %66 = icmp sgt i32 %60, -1, !dbg !3863
  br i1 %66, label %74, label %67, !dbg !3863

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3863
  store i32 %68, ptr %7, align 8, !dbg !3863
  %69 = icmp ult i32 %60, -7, !dbg !3863
  br i1 %69, label %70, label %74, !dbg !3863

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3863
  %72 = sext i32 %60 to i64, !dbg !3863
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3863
  br label %78, !dbg !3863

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3863
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3863
  store ptr %77, ptr %4, align 8, !dbg !3863
  br label %78, !dbg !3863

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3863
  %81 = load ptr, ptr %80, align 8, !dbg !3863
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3869
  store ptr %81, ptr %82, align 8, !dbg !3866, !tbaa !838
  %83 = icmp eq ptr %81, null, !dbg !3867
  br i1 %83, label %197, label %84, !dbg !3868

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3857, metadata !DIExpression()), !dbg !3861
  %85 = icmp sgt i32 %79, -1, !dbg !3863
  br i1 %85, label %93, label %86, !dbg !3863

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3863
  store i32 %87, ptr %7, align 8, !dbg !3863
  %88 = icmp ult i32 %79, -7, !dbg !3863
  br i1 %88, label %89, label %93, !dbg !3863

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3863
  %91 = sext i32 %79 to i64, !dbg !3863
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3863
  br label %97, !dbg !3863

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3863
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3863
  store ptr %96, ptr %4, align 8, !dbg !3863
  br label %97, !dbg !3863

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3863
  %100 = load ptr, ptr %99, align 8, !dbg !3863
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3869
  store ptr %100, ptr %101, align 8, !dbg !3866, !tbaa !838
  %102 = icmp eq ptr %100, null, !dbg !3867
  br i1 %102, label %197, label %103, !dbg !3868

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3857, metadata !DIExpression()), !dbg !3861
  %104 = icmp sgt i32 %98, -1, !dbg !3863
  br i1 %104, label %112, label %105, !dbg !3863

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3863
  store i32 %106, ptr %7, align 8, !dbg !3863
  %107 = icmp ult i32 %98, -7, !dbg !3863
  br i1 %107, label %108, label %112, !dbg !3863

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3863
  %110 = sext i32 %98 to i64, !dbg !3863
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3863
  br label %116, !dbg !3863

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3863
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3863
  store ptr %115, ptr %4, align 8, !dbg !3863
  br label %116, !dbg !3863

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3863
  %119 = load ptr, ptr %118, align 8, !dbg !3863
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3869
  store ptr %119, ptr %120, align 8, !dbg !3866, !tbaa !838
  %121 = icmp eq ptr %119, null, !dbg !3867
  br i1 %121, label %197, label %122, !dbg !3868

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3857, metadata !DIExpression()), !dbg !3861
  %123 = icmp sgt i32 %117, -1, !dbg !3863
  br i1 %123, label %131, label %124, !dbg !3863

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3863
  store i32 %125, ptr %7, align 8, !dbg !3863
  %126 = icmp ult i32 %117, -7, !dbg !3863
  br i1 %126, label %127, label %131, !dbg !3863

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3863
  %129 = sext i32 %117 to i64, !dbg !3863
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3863
  br label %135, !dbg !3863

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3863
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3863
  store ptr %134, ptr %4, align 8, !dbg !3863
  br label %135, !dbg !3863

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3863
  %138 = load ptr, ptr %137, align 8, !dbg !3863
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3869
  store ptr %138, ptr %139, align 8, !dbg !3866, !tbaa !838
  %140 = icmp eq ptr %138, null, !dbg !3867
  br i1 %140, label %197, label %141, !dbg !3868

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3857, metadata !DIExpression()), !dbg !3861
  %142 = icmp sgt i32 %136, -1, !dbg !3863
  br i1 %142, label %150, label %143, !dbg !3863

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3863
  store i32 %144, ptr %7, align 8, !dbg !3863
  %145 = icmp ult i32 %136, -7, !dbg !3863
  br i1 %145, label %146, label %150, !dbg !3863

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3863
  %148 = sext i32 %136 to i64, !dbg !3863
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3863
  br label %154, !dbg !3863

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3863
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3863
  store ptr %153, ptr %4, align 8, !dbg !3863
  br label %154, !dbg !3863

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3863
  %157 = load ptr, ptr %156, align 8, !dbg !3863
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3869
  store ptr %157, ptr %158, align 8, !dbg !3866, !tbaa !838
  %159 = icmp eq ptr %157, null, !dbg !3867
  br i1 %159, label %197, label %160, !dbg !3868

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3857, metadata !DIExpression()), !dbg !3861
  %161 = icmp sgt i32 %155, -1, !dbg !3863
  br i1 %161, label %169, label %162, !dbg !3863

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3863
  store i32 %163, ptr %7, align 8, !dbg !3863
  %164 = icmp ult i32 %155, -7, !dbg !3863
  br i1 %164, label %165, label %169, !dbg !3863

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3863
  %167 = sext i32 %155 to i64, !dbg !3863
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3863
  br label %173, !dbg !3863

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3863
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3863
  store ptr %172, ptr %4, align 8, !dbg !3863
  br label %173, !dbg !3863

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3863
  %176 = load ptr, ptr %175, align 8, !dbg !3863
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3869
  store ptr %176, ptr %177, align 8, !dbg !3866, !tbaa !838
  %178 = icmp eq ptr %176, null, !dbg !3867
  br i1 %178, label %197, label %179, !dbg !3868

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3857, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3857, metadata !DIExpression()), !dbg !3861
  %180 = icmp sgt i32 %174, -1, !dbg !3863
  br i1 %180, label %188, label %181, !dbg !3863

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3863
  store i32 %182, ptr %7, align 8, !dbg !3863
  %183 = icmp ult i32 %174, -7, !dbg !3863
  br i1 %183, label %184, label %188, !dbg !3863

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3863
  %186 = sext i32 %174 to i64, !dbg !3863
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3863
  br label %191, !dbg !3863

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3863
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3863
  store ptr %190, ptr %4, align 8, !dbg !3863
  br label %191, !dbg !3863

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3863
  %193 = load ptr, ptr %192, align 8, !dbg !3863
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3869
  store ptr %193, ptr %194, align 8, !dbg !3866, !tbaa !838
  %195 = icmp eq ptr %193, null, !dbg !3867
  %196 = select i1 %195, i64 9, i64 10, !dbg !3868
  br label %197, !dbg !3868

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3870
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3871
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3872
  ret void, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3873 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3882
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3881, metadata !DIExpression(), metadata !3882, metadata ptr %5, metadata !DIExpression()), !dbg !3883
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3878, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3879, metadata !DIExpression()), !dbg !3883
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3884
  call void @llvm.va_start(ptr nonnull %5), !dbg !3885
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3886, !tbaa.struct !1305
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3886
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3886
  call void @llvm.va_end(ptr nonnull %5), !dbg !3887
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3888
  ret void, !dbg !3888
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3889 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3890, !tbaa !838
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.94, ptr noundef %1), !dbg !3890
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.17.111, i32 noundef 5) #39, !dbg !3891
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.112) #39, !dbg !3891
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.19.113, i32 noundef 5) #39, !dbg !3892
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #39, !dbg !3892
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.92, ptr noundef nonnull @.str.22.114, i32 noundef 5) #39, !dbg !3893
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #39, !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3895 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3900, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3901, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !3909
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3911
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !3917
  %5 = icmp eq ptr %4, null, !dbg !3919
  br i1 %5, label %6, label %7, !dbg !3921

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3922
  unreachable, !dbg !3922

7:                                                ; preds = %3
  ret ptr %4, !dbg !3923
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !3924
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3925
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !3926
  %5 = icmp eq ptr %4, null, !dbg !3928
  br i1 %5, label %6, label %7, !dbg !3929

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3930
  unreachable, !dbg !3930

7:                                                ; preds = %3
  ret ptr %4, !dbg !3931
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3932 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3939
  %3 = icmp eq ptr %2, null, !dbg !3941
  br i1 %3, label %4, label %5, !dbg !3942

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3943
  unreachable, !dbg !3943

5:                                                ; preds = %1
  ret ptr %2, !dbg !3944
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3945 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3946 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3950, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i64 %0, metadata !3952, metadata !DIExpression()), !dbg !3956
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3958
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3959
  %3 = icmp eq ptr %2, null, !dbg !3961
  br i1 %3, label %4, label %5, !dbg !3962

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3963
  unreachable, !dbg !3963

5:                                                ; preds = %1
  ret ptr %2, !dbg !3964
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3965 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3971
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3973
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3974
  %3 = icmp eq ptr %2, null, !dbg !3976
  br i1 %3, label %4, label %5, !dbg !3977

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3978
  unreachable, !dbg !3978

5:                                                ; preds = %1
  ret ptr %2, !dbg !3979
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3980 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3985, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !3992
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3994
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3995
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !3996
  %5 = icmp eq ptr %4, null, !dbg !3998
  br i1 %5, label %6, label %7, !dbg !3999

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4000
  unreachable, !dbg !4000

7:                                                ; preds = %2
  ret ptr %4, !dbg !4001
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4002 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4003 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4008, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata ptr %0, metadata !4010, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !4016
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4018
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !4019
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4020
  %5 = icmp eq ptr %4, null, !dbg !4022
  br i1 %5, label %6, label %7, !dbg !4023

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4024
  unreachable, !dbg !4024

7:                                                ; preds = %2
  ret ptr %4, !dbg !4025
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4026 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4030, metadata !DIExpression()), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4031, metadata !DIExpression()), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4032, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata ptr %0, metadata !4034, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %1, metadata !4037, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64 %2, metadata !4038, metadata !DIExpression()), !dbg !4039
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4041
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4042
  %5 = icmp eq ptr %4, null, !dbg !4044
  br i1 %5, label %6, label %7, !dbg !4045

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4046
  unreachable, !dbg !4046

7:                                                ; preds = %3
  ret ptr %4, !dbg !4047
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4048 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4052, metadata !DIExpression()), !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr null, metadata !3904, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i64 %0, metadata !3907, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i64 %1, metadata !3908, metadata !DIExpression()), !dbg !4055
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4057
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4058
  %4 = icmp eq ptr %3, null, !dbg !4060
  br i1 %4, label %5, label %6, !dbg !4061

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4062
  unreachable, !dbg !4062

6:                                                ; preds = %2
  ret ptr %3, !dbg !4063
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4064 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4068, metadata !DIExpression()), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata ptr null, metadata !4030, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %0, metadata !4031, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4032, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr null, metadata !4034, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %0, metadata !4037, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %1, metadata !4038, metadata !DIExpression()), !dbg !4073
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4075
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4076
  %4 = icmp eq ptr %3, null, !dbg !4078
  br i1 %4, label %5, label %6, !dbg !4079

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4080
  unreachable, !dbg !4080

6:                                                ; preds = %2
  ret ptr %3, !dbg !4081
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4082 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4086, metadata !DIExpression()), !dbg !4088
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr %0, metadata !772, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %1, metadata !773, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 1, metadata !774, metadata !DIExpression()), !dbg !4089
  %3 = load i64, ptr %1, align 8, !dbg !4091, !tbaa !1127
  call void @llvm.dbg.value(metadata i64 %3, metadata !775, metadata !DIExpression()), !dbg !4089
  %4 = icmp eq ptr %0, null, !dbg !4092
  br i1 %4, label %5, label %8, !dbg !4094

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4095
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4098
  br label %15, !dbg !4098

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4099
  %10 = add nuw i64 %9, 1, !dbg !4099
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4099
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4099
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %13, metadata !775, metadata !DIExpression()), !dbg !4089
  br i1 %12, label %14, label %15, !dbg !4102

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4103
  unreachable, !dbg !4103

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4089
  call void @llvm.dbg.value(metadata i64 %16, metadata !775, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %16, metadata !3907, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 1, metadata !3908, metadata !DIExpression()), !dbg !4104
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4106
  call void @llvm.dbg.value(metadata ptr %17, metadata !3912, metadata !DIExpression()), !dbg !4107
  %18 = icmp eq ptr %17, null, !dbg !4109
  br i1 %18, label %19, label %20, !dbg !4110

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4111
  unreachable, !dbg !4111

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !772, metadata !DIExpression()), !dbg !4089
  store i64 %16, ptr %1, align 8, !dbg !4112, !tbaa !1127
  ret ptr %17, !dbg !4113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !767 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !772, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !773, metadata !DIExpression()), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !774, metadata !DIExpression()), !dbg !4114
  %4 = load i64, ptr %1, align 8, !dbg !4115, !tbaa !1127
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !775, metadata !DIExpression()), !dbg !4114
  %5 = icmp eq ptr %0, null, !dbg !4116
  br i1 %5, label %6, label %13, !dbg !4117

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4118
  br i1 %7, label %8, label %20, !dbg !4119

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4120
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !775, metadata !DIExpression()), !dbg !4114
  %10 = icmp ugt i64 %2, 128, !dbg !4122
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !775, metadata !DIExpression()), !dbg !4114
  br label %20, !dbg !4124

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4125
  %15 = add nuw i64 %14, 1, !dbg !4125
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4125
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4125
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !775, metadata !DIExpression()), !dbg !4114
  br i1 %17, label %19, label %20, !dbg !4126

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4127
  unreachable, !dbg !4127

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !775, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata ptr %0, metadata !3904, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %21, metadata !3907, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !4128
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4130
  call void @llvm.dbg.value(metadata ptr %22, metadata !3912, metadata !DIExpression()), !dbg !4131
  %23 = icmp eq ptr %22, null, !dbg !4133
  br i1 %23, label %24, label %25, !dbg !4134

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4135
  unreachable, !dbg !4135

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !772, metadata !DIExpression()), !dbg !4114
  store i64 %21, ptr %1, align 8, !dbg !4136, !tbaa !1127
  ret ptr %22, !dbg !4137
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !779 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !788, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !790, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !791, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !792, metadata !DIExpression()), !dbg !4138
  %6 = load i64, ptr %1, align 8, !dbg !4139, !tbaa !1127
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !793, metadata !DIExpression()), !dbg !4138
  %7 = ashr i64 %6, 1, !dbg !4140
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4140
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4140
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !794, metadata !DIExpression()), !dbg !4138
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !794, metadata !DIExpression()), !dbg !4138
  %12 = icmp sgt i64 %3, -1, !dbg !4143
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4145
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4145
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !794, metadata !DIExpression()), !dbg !4138
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4146
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4146
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !795, metadata !DIExpression()), !dbg !4138
  %18 = icmp slt i64 %17, 128, !dbg !4146
  %19 = select i1 %18, i64 128, i64 0, !dbg !4146
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !796, metadata !DIExpression()), !dbg !4138
  %21 = icmp eq i64 %20, 0, !dbg !4147
  br i1 %21, label %28, label %22, !dbg !4149

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !794, metadata !DIExpression()), !dbg !4138
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !795, metadata !DIExpression()), !dbg !4138
  br label %28, !dbg !4153

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4138
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !795, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !794, metadata !DIExpression()), !dbg !4138
  %31 = icmp eq ptr %0, null, !dbg !4154
  br i1 %31, label %32, label %33, !dbg !4156

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4157, !tbaa !1127
  br label %33, !dbg !4158

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4159
  %35 = icmp slt i64 %34, %2, !dbg !4161
  br i1 %35, label %36, label %48, !dbg !4162

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4163
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4163
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !794, metadata !DIExpression()), !dbg !4138
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4164
  br i1 %42, label %47, label %43, !dbg !4164

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4165
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4165
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !795, metadata !DIExpression()), !dbg !4138
  br i1 %45, label %47, label %48, !dbg !4166

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !4167
  unreachable, !dbg !4167

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4138
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !795, metadata !DIExpression()), !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !794, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i64 %50, metadata !3985, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %0, metadata !3987, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i64 %50, metadata !3991, metadata !DIExpression()), !dbg !4170
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4172
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #46, !dbg !4173
  call void @llvm.dbg.value(metadata ptr %52, metadata !3912, metadata !DIExpression()), !dbg !4174
  %53 = icmp eq ptr %52, null, !dbg !4176
  br i1 %53, label %54, label %55, !dbg !4177

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !4178
  unreachable, !dbg !4178

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !788, metadata !DIExpression()), !dbg !4138
  store i64 %49, ptr %1, align 8, !dbg !4179, !tbaa !1127
  ret ptr %52, !dbg !4180
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4181 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %0, metadata !4185, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 1, metadata !4188, metadata !DIExpression()), !dbg !4189
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !4191
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !4192
  %3 = icmp eq ptr %2, null, !dbg !4194
  br i1 %3, label %4, label %5, !dbg !4195

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4196
  unreachable, !dbg !4196

5:                                                ; preds = %1
  ret ptr %2, !dbg !4197
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4198 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4186 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4185, metadata !DIExpression()), !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4188, metadata !DIExpression()), !dbg !4199
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !4200
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4201
  %4 = icmp eq ptr %3, null, !dbg !4203
  br i1 %4, label %5, label %6, !dbg !4204

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4205
  unreachable, !dbg !4205

6:                                                ; preds = %2
  ret ptr %3, !dbg !4206
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4207 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4209, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i64 %0, metadata !4211, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 1, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 1, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 1, metadata !4220, metadata !DIExpression()), !dbg !4221
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !4223
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !4224
  %3 = icmp eq ptr %2, null, !dbg !4226
  br i1 %3, label %4, label %5, !dbg !4227

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4228
  unreachable, !dbg !4228

5:                                                ; preds = %1
  ret ptr %2, !dbg !4229
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4212 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4211, metadata !DIExpression()), !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4214, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !4220, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %0, metadata !4217, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 %1, metadata !4220, metadata !DIExpression()), !dbg !4231
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !4233
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4234
  %4 = icmp eq ptr %3, null, !dbg !4236
  br i1 %4, label %5, label %6, !dbg !4237

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4238
  unreachable, !dbg !4238

6:                                                ; preds = %2
  ret ptr %3, !dbg !4239
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4240 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !4247
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4249
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4250
  %4 = icmp eq ptr %3, null, !dbg !4252
  br i1 %4, label %5, label %6, !dbg !4253

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4254
  unreachable, !dbg !4254

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4255, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()), !dbg !4260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4262
  ret ptr %3, !dbg !4263
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4264 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4268, metadata !DIExpression()), !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4269, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i64 %1, metadata !3950, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3952, metadata !DIExpression()), !dbg !4273
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4275
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !4276
  %4 = icmp eq ptr %3, null, !dbg !4278
  br i1 %4, label %5, label %6, !dbg !4279

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4280
  unreachable, !dbg !4280

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4255, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()), !dbg !4281
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4283
  ret ptr %3, !dbg !4284
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4285 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4289, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4290, metadata !DIExpression()), !dbg !4292
  %3 = add nsw i64 %1, 1, !dbg !4293
  call void @llvm.dbg.value(metadata i64 %3, metadata !3950, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i64 %3, metadata !3952, metadata !DIExpression()), !dbg !4296
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4298
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4299
  %5 = icmp eq ptr %4, null, !dbg !4301
  br i1 %5, label %6, label %7, !dbg !4302

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4303
  unreachable, !dbg !4303

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4291, metadata !DIExpression()), !dbg !4292
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4304
  store i8 0, ptr %8, align 1, !dbg !4305, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %4, metadata !4255, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i64 %1, metadata !4259, metadata !DIExpression()), !dbg !4306
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4308
  ret ptr %4, !dbg !4309
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4310 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4312, metadata !DIExpression()), !dbg !4313
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4314
  %3 = add i64 %2, 1, !dbg !4315
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %3, metadata !4245, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %3, metadata !3936, metadata !DIExpression()), !dbg !4318
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4320
  call void @llvm.dbg.value(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !4321
  %5 = icmp eq ptr %4, null, !dbg !4323
  br i1 %5, label %6, label %7, !dbg !4324

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4325
  unreachable, !dbg !4325

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4255, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata ptr %0, metadata !4258, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i64 %3, metadata !4259, metadata !DIExpression()), !dbg !4326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4328
  ret ptr %4, !dbg !4329
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4330 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4335, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4332, metadata !DIExpression()), !dbg !4336
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.129, ptr noundef nonnull @.str.2.130, i32 noundef 5) #39, !dbg !4335
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.131, ptr noundef %2) #39, !dbg !4335
  %3 = icmp eq i32 %1, 0, !dbg !4335
  tail call void @llvm.assume(i1 %3), !dbg !4335
  tail call void @abort() #41, !dbg !4337
  unreachable, !dbg !4337
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4338 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !4400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4381, metadata !DIExpression(), metadata !4400, metadata ptr %3, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4376, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4377, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4378, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4379, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4380, metadata !DIExpression()), !dbg !4401
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #39, !dbg !4402
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4385, metadata !DIExpression()), !dbg !4403
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4387, metadata !DIExpression()), !dbg !4403
  br label %4, !dbg !4404

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4403
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4401
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4405
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4406
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4378, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4379, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4387, metadata !DIExpression()), !dbg !4403
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4385, metadata !DIExpression()), !dbg !4403
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4380, metadata !DIExpression()), !dbg !4401
  %11 = load i8, ptr %6, align 1, !dbg !4406, !tbaa !904
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4407

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4378, metadata !DIExpression()), !dbg !4401
  %13 = icmp slt i64 %7, 80, !dbg !4408
  br i1 %13, label %14, label %43, !dbg !4411

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4412
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4387, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4403
  store i8 114, ptr %10, align 1, !dbg !4413, !tbaa !904
  br label %43, !dbg !4414

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4378, metadata !DIExpression()), !dbg !4401
  %17 = or i32 %8, 576, !dbg !4415
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4379, metadata !DIExpression()), !dbg !4401
  %18 = icmp slt i64 %7, 80, !dbg !4416
  br i1 %18, label %19, label %43, !dbg !4418

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4419
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4387, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4403
  store i8 119, ptr %10, align 1, !dbg !4420, !tbaa !904
  br label %43, !dbg !4421

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4378, metadata !DIExpression()), !dbg !4401
  %22 = or i32 %8, 1088, !dbg !4422
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4379, metadata !DIExpression()), !dbg !4401
  %23 = icmp slt i64 %7, 80, !dbg !4423
  br i1 %23, label %24, label %43, !dbg !4425

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4426
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4387, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4403
  store i8 97, ptr %10, align 1, !dbg !4427, !tbaa !904
  br label %43, !dbg !4428

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4379, metadata !DIExpression()), !dbg !4401
  %27 = icmp slt i64 %7, 80, !dbg !4429
  br i1 %27, label %28, label %43, !dbg !4431

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4432
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4387, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4403
  store i8 98, ptr %10, align 1, !dbg !4433, !tbaa !904
  br label %43, !dbg !4434

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4378, metadata !DIExpression()), !dbg !4401
  %31 = icmp slt i64 %7, 80, !dbg !4435
  br i1 %31, label %32, label %43, !dbg !4437

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4438
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4387, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4403
  store i8 43, ptr %10, align 1, !dbg !4439, !tbaa !904
  br label %43, !dbg !4440

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4379, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4380, metadata !DIExpression()), !dbg !4401
  br label %43, !dbg !4442

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4443
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4379, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4380, metadata !DIExpression()), !dbg !4401
  br label %43, !dbg !4444

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !4403
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !4401
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !4405
  %.lcssa = phi ptr [ %10, %4 ], !dbg !4406
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #40, !dbg !4445
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4388, metadata !DIExpression()), !dbg !4446
  %40 = sub nsw i64 80, %.lcssa6, !dbg !4447
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4449
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4388, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !4450, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !4453, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %41, metadata !4454, metadata !DIExpression()), !dbg !4455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #39, !dbg !4457
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !4458
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4387, metadata !DIExpression()), !dbg !4403
  br label %49, !dbg !4459

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4401
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4378, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4379, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4387, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4403
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4380, metadata !DIExpression()), !dbg !4401
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4460
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4385, metadata !DIExpression()), !dbg !4403
  br label %4, !dbg !4461, !llvm.loop !4462

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !4401
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !4405
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !4406
  br label %49, !dbg !4464

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !4403
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4387, metadata !DIExpression()), !dbg !4403
  store i8 0, ptr %53, align 1, !dbg !4464, !tbaa !904
  br i1 %50, label %54, label %65, !dbg !4465

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !4466
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #39, !dbg !4467
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4393, metadata !DIExpression()), !dbg !4468
  %57 = icmp slt i32 %56, 0, !dbg !4469
  br i1 %57, label %67, label %58, !dbg !4471

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #39, !dbg !4472
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4396, metadata !DIExpression()), !dbg !4468
  %60 = icmp eq ptr %59, null, !dbg !4473
  br i1 %60, label %61, label %67, !dbg !4474

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #42, !dbg !4475
  %63 = load i32, ptr %62, align 4, !dbg !4475, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4397, metadata !DIExpression()), !dbg !4476
  %64 = tail call i32 @close(i32 noundef %56) #39, !dbg !4477
  store i32 %63, ptr %62, align 4, !dbg !4478, !tbaa !895
  br label %67, !dbg !4479

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata ptr %1, metadata !4483, metadata !DIExpression()), !dbg !4484
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4486
  br label %67, !dbg !4487

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !4401
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #39, !dbg !4488
  ret ptr %68, !dbg !4488
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !4489 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !4492 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #6

declare !dbg !4495 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4496 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4537, metadata !DIExpression()), !dbg !4542
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4538, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4544, metadata !DIExpression()), !dbg !4547
  %3 = load i32, ptr %0, align 8, !dbg !4549, !tbaa !4550
  %4 = and i32 %3, 32, !dbg !4551
  %5 = icmp eq i32 %4, 0, !dbg !4551
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4540, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4552
  %7 = icmp eq i32 %6, 0, !dbg !4553
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4541, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  br i1 %5, label %8, label %18, !dbg !4554

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4556
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4538, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4542
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4557
  %11 = xor i1 %7, true, !dbg !4557
  %12 = sext i1 %11 to i32, !dbg !4557
  br i1 %10, label %21, label %13, !dbg !4557

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4558
  %15 = load i32, ptr %14, align 4, !dbg !4558, !tbaa !895
  %16 = icmp ne i32 %15, 9, !dbg !4559
  %17 = sext i1 %16 to i32, !dbg !4560
  br label %21, !dbg !4560

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4561

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4563
  store i32 0, ptr %20, align 4, !dbg !4565, !tbaa !895
  br label %21, !dbg !4563

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4542
  ret i32 %22, !dbg !4566
}

; Function Attrs: nounwind
declare !dbg !4567 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4571 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4609, metadata !DIExpression()), !dbg !4613
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4610, metadata !DIExpression()), !dbg !4613
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4614
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4611, metadata !DIExpression()), !dbg !4613
  %3 = icmp slt i32 %2, 0, !dbg !4615
  br i1 %3, label %4, label %6, !dbg !4617

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4618
  br label %24, !dbg !4619

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4620
  %8 = icmp eq i32 %7, 0, !dbg !4620
  br i1 %8, label %13, label %9, !dbg !4622

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4623
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4624
  %12 = icmp eq i64 %11, -1, !dbg !4625
  br i1 %12, label %16, label %13, !dbg !4626

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4627
  %15 = icmp eq i32 %14, 0, !dbg !4627
  br i1 %15, label %16, label %18, !dbg !4628

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4610, metadata !DIExpression()), !dbg !4613
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()), !dbg !4613
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4612, metadata !DIExpression()), !dbg !4613
  br label %24, !dbg !4630

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4631
  %20 = load i32, ptr %19, align 4, !dbg !4631, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4610, metadata !DIExpression()), !dbg !4613
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()), !dbg !4613
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4612, metadata !DIExpression()), !dbg !4613
  %22 = icmp eq i32 %20, 0, !dbg !4632
  br i1 %22, label %24, label %23, !dbg !4630

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4634, !tbaa !895
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4612, metadata !DIExpression()), !dbg !4613
  br label %24, !dbg !4636

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4613
  ret i32 %25, !dbg !4637
}

; Function Attrs: nofree nounwind
declare !dbg !4638 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !4639 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !4640 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4641 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4644 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4682, metadata !DIExpression()), !dbg !4683
  %2 = icmp eq ptr %0, null, !dbg !4684
  br i1 %2, label %6, label %3, !dbg !4686

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4687
  %5 = icmp eq i32 %4, 0, !dbg !4687
  br i1 %5, label %6, label %8, !dbg !4688

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4689
  br label %16, !dbg !4690

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4691, metadata !DIExpression()), !dbg !4696
  %9 = load i32, ptr %0, align 8, !dbg !4698, !tbaa !4550
  %10 = and i32 %9, 256, !dbg !4700
  %11 = icmp eq i32 %10, 0, !dbg !4700
  br i1 %11, label %14, label %12, !dbg !4701

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4702
  br label %14, !dbg !4702

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4703
  br label %16, !dbg !4704

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4683
  ret i32 %17, !dbg !4705
}

; Function Attrs: nofree nounwind
declare !dbg !4706 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4707 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4746, metadata !DIExpression()), !dbg !4752
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4747, metadata !DIExpression()), !dbg !4752
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4748, metadata !DIExpression()), !dbg !4752
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4753
  %5 = load ptr, ptr %4, align 8, !dbg !4753, !tbaa !4754
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4755
  %7 = load ptr, ptr %6, align 8, !dbg !4755, !tbaa !4756
  %8 = icmp eq ptr %5, %7, !dbg !4757
  br i1 %8, label %9, label %27, !dbg !4758

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4759
  %11 = load ptr, ptr %10, align 8, !dbg !4759, !tbaa !1189
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4760
  %13 = load ptr, ptr %12, align 8, !dbg !4760, !tbaa !4761
  %14 = icmp eq ptr %11, %13, !dbg !4762
  br i1 %14, label %15, label %27, !dbg !4763

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4764
  %17 = load ptr, ptr %16, align 8, !dbg !4764, !tbaa !4765
  %18 = icmp eq ptr %17, null, !dbg !4766
  br i1 %18, label %19, label %27, !dbg !4767

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4768
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4769
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4749, metadata !DIExpression()), !dbg !4770
  %22 = icmp eq i64 %21, -1, !dbg !4771
  br i1 %22, label %29, label %23, !dbg !4773

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4774, !tbaa !4550
  %25 = and i32 %24, -17, !dbg !4774
  store i32 %25, ptr %0, align 8, !dbg !4774, !tbaa !4550
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4775
  store i64 %21, ptr %26, align 8, !dbg !4776, !tbaa !4777
  br label %29, !dbg !4778

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4779
  br label %29, !dbg !4780

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4752
  ret i32 %30, !dbg !4781
}

; Function Attrs: nofree nounwind
declare !dbg !4782 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4785 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4790, metadata !DIExpression()), !dbg !4795
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4791, metadata !DIExpression()), !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4792, metadata !DIExpression()), !dbg !4795
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4793, metadata !DIExpression()), !dbg !4795
  %5 = icmp eq ptr %1, null, !dbg !4796
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4798
  %7 = select i1 %5, ptr @.str.144, ptr %1, !dbg !4798
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4798
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4792, metadata !DIExpression()), !dbg !4795
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4791, metadata !DIExpression()), !dbg !4795
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4790, metadata !DIExpression()), !dbg !4795
  %9 = icmp eq ptr %3, null, !dbg !4799
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4801
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4793, metadata !DIExpression()), !dbg !4795
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4802
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4794, metadata !DIExpression()), !dbg !4795
  %12 = icmp ult i64 %11, -3, !dbg !4803
  br i1 %12, label %13, label %17, !dbg !4805

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4806
  %15 = icmp eq i32 %14, 0, !dbg !4806
  br i1 %15, label %16, label %29, !dbg !4807

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4808, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata ptr %10, metadata !4815, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i32 0, metadata !4818, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.value(metadata i64 8, metadata !4819, metadata !DIExpression()), !dbg !4820
  store i64 0, ptr %10, align 1, !dbg !4822
  br label %29, !dbg !4823

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4824
  br i1 %18, label %19, label %20, !dbg !4826

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4827
  unreachable, !dbg !4827

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4828

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4830
  br i1 %23, label %29, label %24, !dbg !4831

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4832
  br i1 %25, label %29, label %26, !dbg !4835

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4836, !tbaa !904
  %28 = zext i8 %27 to i32, !dbg !4837
  store i32 %28, ptr %6, align 4, !dbg !4838, !tbaa !895
  br label %29, !dbg !4839

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4795
  ret i64 %30, !dbg !4840
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4841 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4847 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4849, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4850, metadata !DIExpression()), !dbg !4853
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4851, metadata !DIExpression()), !dbg !4853
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4854
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4854
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4852, metadata !DIExpression()), !dbg !4853
  br i1 %5, label %6, label %8, !dbg !4856

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4857
  store i32 12, ptr %7, align 4, !dbg !4859, !tbaa !895
  br label %12, !dbg !4860

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4854
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4852, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata ptr %0, metadata !4861, metadata !DIExpression()), !dbg !4865
  call void @llvm.dbg.value(metadata i64 %9, metadata !4864, metadata !DIExpression()), !dbg !4865
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4867
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4868
  br label %12, !dbg !4869

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4853
  ret ptr %13, !dbg !4870
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4871 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4880
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4876, metadata !DIExpression(), metadata !4880, metadata ptr %2, metadata !DIExpression()), !dbg !4881
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4875, metadata !DIExpression()), !dbg !4881
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4882
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4883
  %4 = icmp eq i32 %3, 0, !dbg !4883
  br i1 %4, label %5, label %12, !dbg !4885

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4886, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata ptr @.str.149, metadata !4889, metadata !DIExpression()), !dbg !4890
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.149, i64 2), !dbg !4893
  %7 = icmp eq i32 %6, 0, !dbg !4894
  br i1 %7, label %11, label %8, !dbg !4895

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4886, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata ptr @.str.1.150, metadata !4889, metadata !DIExpression()), !dbg !4896
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.150, i64 6), !dbg !4898
  %10 = icmp eq i32 %9, 0, !dbg !4899
  br i1 %10, label %11, label %12, !dbg !4900

11:                                               ; preds = %8, %5
  br label %12, !dbg !4901

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4881
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4902
  ret i1 %13, !dbg !4902
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4903 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4907, metadata !DIExpression()), !dbg !4910
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4908, metadata !DIExpression()), !dbg !4910
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4909, metadata !DIExpression()), !dbg !4910
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4911
  ret i32 %4, !dbg !4912
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4913 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4917, metadata !DIExpression()), !dbg !4918
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4919
  ret ptr %2, !dbg !4920
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4921 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4923, metadata !DIExpression()), !dbg !4925
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4926
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4924, metadata !DIExpression()), !dbg !4925
  ret ptr %2, !dbg !4927
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4928 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4930, metadata !DIExpression()), !dbg !4937
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4931, metadata !DIExpression()), !dbg !4937
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4932, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i32 %0, metadata !4923, metadata !DIExpression()), !dbg !4938
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4940
  call void @llvm.dbg.value(metadata ptr %4, metadata !4924, metadata !DIExpression()), !dbg !4938
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4933, metadata !DIExpression()), !dbg !4937
  %5 = icmp eq ptr %4, null, !dbg !4941
  br i1 %5, label %6, label %9, !dbg !4942

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4943
  br i1 %7, label %19, label %8, !dbg !4946

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4947, !tbaa !904
  br label %19, !dbg !4948

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4949
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4934, metadata !DIExpression()), !dbg !4950
  %11 = icmp ult i64 %10, %2, !dbg !4951
  br i1 %11, label %12, label %14, !dbg !4953

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4954
  call void @llvm.dbg.value(metadata ptr %1, metadata !4956, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata ptr %4, metadata !4959, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %13, metadata !4960, metadata !DIExpression()), !dbg !4961
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !4963
  br label %19, !dbg !4964

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4965
  br i1 %15, label %19, label %16, !dbg !4968

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4969
  call void @llvm.dbg.value(metadata ptr %1, metadata !4956, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata ptr %4, metadata !4959, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i64 %17, metadata !4960, metadata !DIExpression()), !dbg !4971
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4973
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4974
  store i8 0, ptr %18, align 1, !dbg !4975, !tbaa !904
  br label %19, !dbg !4976

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4977
  ret i32 %20, !dbg !4978
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!76, !323, !327, !342, !682, !716, !401, !422, !436, !487, !718, !757, !674, !763, !798, !800, !802, !804, !806, !808, !698, !810, !812, !814, !816}
!llvm.ident = !{!818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818}
!llvm.module.flags = !{!819, !820, !821, !822, !823, !824, !825, !826}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/users.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2e4916078fe75a2e005e9df4bd6e108b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!262 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !265)
!264 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!287 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!341 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !342, file: !343, line: 66, type: !393, isLocal: false, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C11, file: !343, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !344, globals: !345, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!344 = !{!116, !122}
!345 = !{!346, !348, !372, !374, !376, !378, !340, !380, !382, !384, !386, !391}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !343, line: 272, type: !128, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "old_file_name", scope: !350, file: !343, line: 304, type: !74, isLocal: true, isDefinition: true)
!350 = distinct !DISubprogram(name: "verror_at_line", scope: !343, file: !343, line: 298, type: !351, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !365)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !117, !117, !74, !80, !74, !353}
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !354, line: 52, baseType: !355)
!354 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !356, line: 12, baseType: !357)
!356 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !343, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !359)
!359 = !{!360, !361, !362, !363, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !358, file: !343, baseType: !116, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !358, file: !343, baseType: !116, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !358, file: !343, baseType: !116, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !358, file: !343, baseType: !117, size: 32, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !358, file: !343, baseType: !117, size: 32, offset: 224)
!365 = !{!366, !367, !368, !369, !370, !371}
!366 = !DILocalVariable(name: "status", arg: 1, scope: !350, file: !343, line: 298, type: !117)
!367 = !DILocalVariable(name: "errnum", arg: 2, scope: !350, file: !343, line: 298, type: !117)
!368 = !DILocalVariable(name: "file_name", arg: 3, scope: !350, file: !343, line: 298, type: !74)
!369 = !DILocalVariable(name: "line_number", arg: 4, scope: !350, file: !343, line: 298, type: !80)
!370 = !DILocalVariable(name: "message", arg: 5, scope: !350, file: !343, line: 298, type: !74)
!371 = !DILocalVariable(name: "args", arg: 6, scope: !350, file: !343, line: 298, type: !353)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "old_line_number", scope: !350, file: !343, line: 305, type: !80, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !343, line: 338, type: !135, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !167, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !343, line: 346, type: !142, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "error_message_count", scope: !342, file: !343, line: 69, type: !80, isLocal: false, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !342, file: !343, line: 295, type: !117, isLocal: false, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !162, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !343, line: 208, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 21)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !343, line: 214, type: !128, isLocal: true, isDefinition: true)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null}
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !398, line: 60, type: !142, isLocal: true, isDefinition: true)
!398 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "long_options", scope: !401, file: !398, line: 34, type: !410, isLocal: true, isDefinition: true)
!401 = distinct !DICompileUnit(language: DW_LANG_C11, file: !398, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, globals: !403, splitDebugInlining: false, nameTableKind: None)
!402 = !{!116}
!403 = !{!396, !404, !406, !408, !399}
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !398, line: 112, type: !41, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !398, line: 36, type: !128, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !398, line: 37, type: !167, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 768, elements: !152)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !413, line: 50, size: 256, elements: !414)
!413 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!414 = !{!415, !416, !417, !419}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !413, line: 52, baseType: !74, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !412, file: !413, line: 55, baseType: !117, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !412, file: !413, line: 56, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !412, file: !413, line: 57, baseType: !117, size: 32, offset: 192)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "program_name", scope: !422, file: !423, line: 31, type: !74, isLocal: false, isDefinition: true)
!422 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !424, globals: !425, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!424 = !{!116, !124}
!425 = !{!420, !426, !428}
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !423, line: 46, type: !167, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !423, line: 49, type: !135, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "utf07FF", scope: !432, file: !433, line: 46, type: !460, isLocal: true, isDefinition: true)
!432 = distinct !DISubprogram(name: "proper_name_lite", scope: !433, file: !433, line: 38, type: !434, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !438)
!433 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!434 = !DISubroutineType(types: !435)
!435 = !{!74, !74, !74}
!436 = distinct !DICompileUnit(language: DW_LANG_C11, file: !433, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !437, splitDebugInlining: false, nameTableKind: None)
!437 = !{!430}
!438 = !{!439, !440, !441, !442, !447}
!439 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !432, file: !433, line: 38, type: !74)
!440 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !432, file: !433, line: 38, type: !74)
!441 = !DILocalVariable(name: "translation", scope: !432, file: !433, line: 40, type: !74)
!442 = !DILocalVariable(name: "w", scope: !432, file: !433, line: 47, type: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !444, line: 37, baseType: !445)
!444 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !287, line: 57, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !287, line: 42, baseType: !80)
!447 = !DILocalVariable(name: "mbs", scope: !432, file: !433, line: 48, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !450)
!449 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !452)
!451 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !452, file: !451, line: 15, baseType: !117, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !452, file: !451, line: 20, baseType: !456, size: 32, offset: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !451, line: 16, size: 32, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !456, file: !451, line: 18, baseType: !80, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !456, file: !451, line: 19, baseType: !135, size: 32)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 16, elements: !143)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !463, line: 78, type: !167, isLocal: true, isDefinition: true)
!463 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !463, line: 79, type: !26, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !463, line: 80, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 13)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !463, line: 81, type: !468, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !463, line: 82, type: !309, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !463, line: 83, type: !142, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !463, line: 84, type: !167, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !463, line: 85, type: !162, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !463, line: 86, type: !162, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !463, line: 87, type: !167, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !487, file: !463, line: 76, type: !561, isLocal: false, isDefinition: true)
!487 = distinct !DICompileUnit(language: DW_LANG_C11, file: !463, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !488, retainedTypes: !496, globals: !497, splitDebugInlining: false, nameTableKind: None)
!488 = !{!489, !491, !86}
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !490, line: 42, baseType: !80, size: 32, elements: !103)
!490 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !490, line: 254, baseType: !80, size: 32, elements: !492)
!492 = !{!493, !494, !495}
!493 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!494 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!495 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!496 = !{!116, !117, !118, !119}
!497 = !{!461, !464, !466, !471, !473, !475, !477, !479, !481, !483, !485, !498, !502, !512, !514, !519, !521, !523, !525, !527, !550, !557, !559}
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !487, file: !463, line: 92, type: !500, isLocal: false, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 320, elements: !47)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !487, file: !463, line: 1040, type: !504, isLocal: false, isDefinition: true)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !463, line: 56, size: 448, elements: !505)
!505 = !{!506, !507, !508, !510, !511}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !504, file: !463, line: 59, baseType: !489, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !463, line: 62, baseType: !117, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !504, file: !463, line: 66, baseType: !509, size: 256, offset: 64)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !168)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !504, file: !463, line: 69, baseType: !74, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !504, file: !463, line: 72, baseType: !74, size: 64, offset: 384)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !487, file: !463, line: 107, type: !504, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "slot0", scope: !487, file: !463, line: 831, type: !516, isLocal: true, isDefinition: true)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 256)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !463, line: 321, type: !142, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !463, line: 357, type: !142, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !463, line: 358, type: !142, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !463, line: 199, type: !162, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "quote", scope: !529, file: !463, line: 228, type: !548, isLocal: true, isDefinition: true)
!529 = distinct !DISubprogram(name: "gettext_quote", scope: !463, file: !463, line: 197, type: !530, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!74, !74, !489}
!532 = !{!533, !534, !535, !536, !537}
!533 = !DILocalVariable(name: "msgid", arg: 1, scope: !529, file: !463, line: 197, type: !74)
!534 = !DILocalVariable(name: "s", arg: 2, scope: !529, file: !463, line: 197, type: !489)
!535 = !DILocalVariable(name: "translation", scope: !529, file: !463, line: 199, type: !74)
!536 = !DILocalVariable(name: "w", scope: !529, file: !463, line: 229, type: !443)
!537 = !DILocalVariable(name: "mbs", scope: !529, file: !463, line: 230, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !540, file: !451, line: 15, baseType: !117, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !540, file: !451, line: 20, baseType: !544, size: 32, offset: 32)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !451, line: 16, size: 32, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !544, file: !451, line: 18, baseType: !80, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !544, file: !451, line: 19, baseType: !135, size: 32)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !549)
!549 = !{!144, !137}
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "slotvec", scope: !487, file: !463, line: 834, type: !552, isLocal: true, isDefinition: true)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !463, line: 823, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !553, file: !463, line: 825, baseType: !119, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !553, file: !463, line: 826, baseType: !124, size: 64, offset: 64)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "nslots", scope: !487, file: !463, line: 832, type: !117, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "slotvec0", scope: !487, file: !463, line: 833, type: !553, isLocal: true, isDefinition: true)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 704, elements: !563)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!563 = !{!564}
!564 = !DISubrange(count: 11)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !567, line: 347, type: !19, isLocal: true, isDefinition: true)
!567 = !DIFile(filename: "lib/readutmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "da68be8ee1104a39b5ac94d0be1eef81")
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !567, line: 398, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 9)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !567, line: 399, type: !142, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !567, line: 446, type: !162, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !567, line: 447, type: !41, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !581, line: 98, type: !582, isLocal: true, isDefinition: true)
!581 = !DIFile(filename: "lib/boot-time-aux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "56a7f792a9c98183f316974c092e6a70")
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 29)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !581, line: 99, type: !582, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !581, line: 100, type: !388, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !581, line: 40, type: !468, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !581, line: 40, type: !151, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !595, line: 67, type: !235, isLocal: true, isDefinition: true)
!595 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !595, line: 69, type: !162, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !595, line: 83, type: !162, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !595, line: 83, type: !135, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !595, line: 85, type: !142, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !595, line: 88, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 171)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !595, line: 88, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 34)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !595, line: 105, type: !63, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !595, line: 109, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 23)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !595, line: 113, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 28)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !595, line: 120, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 32)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !595, line: 127, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 36)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !595, line: 134, type: !186, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !595, line: 142, type: !640, isLocal: true, isDefinition: true)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 44)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !595, line: 150, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 48)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !595, line: 159, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 52)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !595, line: 170, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 60)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !595, line: 248, type: !309, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !595, line: 248, type: !211, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !595, line: 254, type: !309, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !595, line: 254, type: !19, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !595, line: 254, type: !186, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !595, line: 259, type: !3, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !595, line: 259, type: !582, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !674, file: !675, line: 26, type: !677, isLocal: false, isDefinition: true)
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !676, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!676 = !{!672}
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 47)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "exit_failure", scope: !682, file: !683, line: 24, type: !685, isLocal: false, isDefinition: true)
!682 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !684, splitDebugInlining: false, nameTableKind: None)
!683 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!684 = !{!680}
!685 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !688, line: 34, type: !151, isLocal: true, isDefinition: true)
!688 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !688, line: 34, type: !162, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !688, line: 34, type: !58, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !695, line: 108, type: !41, isLocal: true, isDefinition: true)
!695 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "internal_state", scope: !698, file: !695, line: 97, type: !701, isLocal: true, isDefinition: true)
!698 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !699, globals: !700, splitDebugInlining: false, nameTableKind: None)
!699 = !{!116, !119, !122}
!700 = !{!693, !696}
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !449, line: 6, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !451, line: 21, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 13, size: 64, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !703, file: !451, line: 15, baseType: !117, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !703, file: !451, line: 20, baseType: !707, size: 32, offset: 32)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !451, line: 16, size: 32, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !707, file: !451, line: 18, baseType: !80, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !707, file: !451, line: 19, baseType: !135, size: 32)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !713, line: 35, type: !142, isLocal: true, isDefinition: true)
!713 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !713, line: 35, type: !26, isLocal: true, isDefinition: true)
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !567, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-readutmp.o -MD -MP -MF lib/.deps/libcoreutils_a-readutmp.Tpo -c lib/readutmp.c -o lib/.libcoreutils_a-readutmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !719, retainedTypes: !722, globals: !756, splitDebugInlining: false, nameTableKind: None)
!719 = !{!720}
!720 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !721, line: 305, baseType: !80, size: 32, elements: !81)
!721 = !DIFile(filename: "lib/readutmp.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dbf57f6f8baa17fafca98ee518780aad")
!722 = !{!116, !124, !723, !754, !119}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !726, line: 55, size: 3200, elements: !727)
!726 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "d076be7f45ef793a8c3c4dd5282b1b1a")
!727 = !{!728, !730, !732, !733, !734, !735, !736, !741, !742, !750, !753}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !725, file: !726, line: 57, baseType: !729, size: 16)
!729 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !725, file: !726, line: 58, baseType: !731, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !287, line: 154, baseType: !117)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !725, file: !726, line: 59, baseType: !628, size: 256, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !725, file: !726, line: 61, baseType: !135, size: 32, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !725, file: !726, line: 63, baseType: !628, size: 256, offset: 352)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !725, file: !726, line: 65, baseType: !516, size: 2048, offset: 608)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !725, file: !726, line: 67, baseType: !737, size: 32, offset: 2656)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !726, line: 42, size: 32, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !737, file: !726, line: 45, baseType: !729, size: 16)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !737, file: !726, line: 46, baseType: !729, size: 16, offset: 16)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !725, file: !726, line: 81, baseType: !288, size: 64, offset: 2688)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !725, file: !726, line: 82, baseType: !743, size: 128, offset: 2752)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !744, line: 8, size: 128, elements: !745)
!744 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!745 = !{!746, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !743, file: !744, line: 14, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !287, line: 160, baseType: !288)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !743, file: !744, line: 15, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !287, line: 162, baseType: !288)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !725, file: !726, line: 84, baseType: !751, size: 128, offset: 2880)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 128, elements: !136)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !287, line: 41, baseType: !117)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !725, file: !726, line: 85, baseType: !309, size: 160, offset: 3008)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !755, line: 87, baseType: !288)
!755 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!756 = !{!565, !568, !573, !575, !577, !579, !585, !587, !589, !591}
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !595, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !758, retainedTypes: !402, globals: !762, splitDebugInlining: false, nameTableKind: None)
!758 = !{!759}
!759 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !595, line: 40, baseType: !80, size: 32, elements: !760)
!760 = !{!761}
!761 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!762 = !{!593, !596, !598, !600, !602, !604, !609, !614, !616, !621, !626, !631, !636, !638, !643, !648, !653, !658, !660, !662, !664, !666, !668, !670}
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !765, retainedTypes: !797, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!765 = !{!766, !778}
!766 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !767, file: !764, line: 188, baseType: !80, size: 32, elements: !776)
!767 = distinct !DISubprogram(name: "x2nrealloc", scope: !764, file: !764, line: 176, type: !768, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !771)
!768 = !DISubroutineType(types: !769)
!769 = !{!116, !116, !770, !119}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!771 = !{!772, !773, !774, !775}
!772 = !DILocalVariable(name: "p", arg: 1, scope: !767, file: !764, line: 176, type: !116)
!773 = !DILocalVariable(name: "pn", arg: 2, scope: !767, file: !764, line: 176, type: !770)
!774 = !DILocalVariable(name: "s", arg: 3, scope: !767, file: !764, line: 176, type: !119)
!775 = !DILocalVariable(name: "n", scope: !767, file: !764, line: 178, type: !119)
!776 = !{!777}
!777 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!778 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !779, file: !764, line: 228, baseType: !80, size: 32, elements: !776)
!779 = distinct !DISubprogram(name: "xpalloc", scope: !764, file: !764, line: 223, type: !780, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !787)
!780 = !DISubroutineType(types: !781)
!781 = !{!116, !116, !782, !783, !785, !783}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !784, line: 130, baseType: !785)
!784 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !786, line: 18, baseType: !288)
!786 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796}
!788 = !DILocalVariable(name: "pa", arg: 1, scope: !779, file: !764, line: 223, type: !116)
!789 = !DILocalVariable(name: "pn", arg: 2, scope: !779, file: !764, line: 223, type: !782)
!790 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !779, file: !764, line: 223, type: !783)
!791 = !DILocalVariable(name: "n_max", arg: 4, scope: !779, file: !764, line: 223, type: !785)
!792 = !DILocalVariable(name: "s", arg: 5, scope: !779, file: !764, line: 223, type: !783)
!793 = !DILocalVariable(name: "n0", scope: !779, file: !764, line: 230, type: !783)
!794 = !DILocalVariable(name: "n", scope: !779, file: !764, line: 237, type: !783)
!795 = !DILocalVariable(name: "nbytes", scope: !779, file: !764, line: 248, type: !783)
!796 = !DILocalVariable(name: "adjusted_nbytes", scope: !779, file: !764, line: 252, type: !783)
!797 = !{!124, !116}
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !799, splitDebugInlining: false, nameTableKind: None)
!799 = !{!686, !689, !691}
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !803, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!803 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!804 = distinct !DICompileUnit(language: DW_LANG_C11, file: !805, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!805 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, splitDebugInlining: false, nameTableKind: None)
!807 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !813, splitDebugInlining: false, nameTableKind: None)
!813 = !{!711, !714}
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!818 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!819 = !{i32 7, !"Dwarf Version", i32 5}
!820 = !{i32 2, !"Debug Info Version", i32 3}
!821 = !{i32 1, !"wchar_size", i32 4}
!822 = !{i32 8, !"PIC Level", i32 2}
!823 = !{i32 7, !"PIE Level", i32 2}
!824 = !{i32 7, !"uwtable", i32 2}
!825 = !{i32 7, !"frame-pointer", i32 1}
!826 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!827 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !828, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !117}
!830 = !{!831}
!831 = !DILocalVariable(name: "status", arg: 1, scope: !827, file: !2, line: 96, type: !117)
!832 = !DILocation(line: 0, scope: !827)
!833 = !DILocation(line: 98, column: 14, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !2, line: 98, column: 7)
!835 = !DILocation(line: 98, column: 7, scope: !827)
!836 = !DILocation(line: 99, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !2, line: 99, column: 5)
!838 = !{!839, !839, i64 0}
!839 = !{!"any pointer", !840, i64 0}
!840 = !{!"omnipotent char", !841, i64 0}
!841 = !{!"Simple C/C++ TBAA"}
!842 = !DILocation(line: 102, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !834, file: !2, line: 101, column: 5)
!844 = !DILocation(line: 103, column: 7, scope: !843)
!845 = !DILocation(line: 109, column: 7, scope: !843)
!846 = !DILocation(line: 110, column: 7, scope: !843)
!847 = !DILocalVariable(name: "program", arg: 1, scope: !848, file: !71, line: 836, type: !74)
!848 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !71, file: !71, line: 836, type: !849, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !74}
!851 = !{!847, !852, !859, !860, !862, !863}
!852 = !DILocalVariable(name: "infomap", scope: !848, file: !71, line: 838, type: !853)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 896, elements: !163)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !848, file: !71, line: 838, size: 128, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !855, file: !71, line: 838, baseType: !74, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !855, file: !71, line: 838, baseType: !74, size: 64, offset: 64)
!859 = !DILocalVariable(name: "node", scope: !848, file: !71, line: 848, type: !74)
!860 = !DILocalVariable(name: "map_prog", scope: !848, file: !71, line: 849, type: !861)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!862 = !DILocalVariable(name: "lc_messages", scope: !848, file: !71, line: 861, type: !74)
!863 = !DILocalVariable(name: "url_program", scope: !848, file: !71, line: 874, type: !74)
!864 = !DILocation(line: 0, scope: !848, inlinedAt: !865)
!865 = distinct !DILocation(line: 111, column: 7, scope: !843)
!866 = !{}
!867 = !DILocation(line: 857, column: 3, scope: !848, inlinedAt: !865)
!868 = !DILocation(line: 861, column: 29, scope: !848, inlinedAt: !865)
!869 = !DILocation(line: 862, column: 7, scope: !870, inlinedAt: !865)
!870 = distinct !DILexicalBlock(scope: !848, file: !71, line: 862, column: 7)
!871 = !DILocation(line: 862, column: 19, scope: !870, inlinedAt: !865)
!872 = !DILocation(line: 862, column: 22, scope: !870, inlinedAt: !865)
!873 = !DILocation(line: 862, column: 7, scope: !848, inlinedAt: !865)
!874 = !DILocation(line: 868, column: 7, scope: !875, inlinedAt: !865)
!875 = distinct !DILexicalBlock(scope: !870, file: !71, line: 863, column: 5)
!876 = !DILocation(line: 870, column: 5, scope: !875, inlinedAt: !865)
!877 = !DILocation(line: 875, column: 3, scope: !848, inlinedAt: !865)
!878 = !DILocation(line: 877, column: 3, scope: !848, inlinedAt: !865)
!879 = !DILocation(line: 113, column: 3, scope: !827)
!880 = !DISubprogram(name: "dcgettext", scope: !881, file: !881, line: 51, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!882 = !DISubroutineType(types: !883)
!883 = !{!124, !74, !74, !117}
!884 = !DISubprogram(name: "__fprintf_chk", scope: !885, file: !885, line: 93, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!886 = !DISubroutineType(types: !887)
!887 = !{!117, !888, !117, !889, null}
!888 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !260)
!889 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!890 = !DISubprogram(name: "__printf_chk", scope: !885, file: !885, line: 95, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DISubroutineType(types: !892)
!892 = !{!117, !117, !889, null}
!893 = !DILocation(line: 0, scope: !70)
!894 = !DILocation(line: 581, column: 7, scope: !245)
!895 = !{!896, !896, i64 0}
!896 = !{!"int", !840, i64 0}
!897 = !DILocation(line: 581, column: 19, scope: !245)
!898 = !DILocation(line: 581, column: 7, scope: !70)
!899 = !DILocation(line: 585, column: 26, scope: !244)
!900 = !DILocation(line: 0, scope: !244)
!901 = !DILocation(line: 586, column: 23, scope: !244)
!902 = !DILocation(line: 586, column: 28, scope: !244)
!903 = !DILocation(line: 586, column: 32, scope: !244)
!904 = !{!840, !840, i64 0}
!905 = !DILocation(line: 586, column: 38, scope: !244)
!906 = !DILocalVariable(name: "__s1", arg: 1, scope: !907, file: !908, line: 1359, type: !74)
!907 = distinct !DISubprogram(name: "streq", scope: !908, file: !908, line: 1359, type: !909, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !911)
!908 = !DIFile(filename: "./lib/string.h", directory: "/src")
!909 = !DISubroutineType(types: !910)
!910 = !{!247, !74, !74}
!911 = !{!906, !912}
!912 = !DILocalVariable(name: "__s2", arg: 2, scope: !907, file: !908, line: 1359, type: !74)
!913 = !DILocation(line: 0, scope: !907, inlinedAt: !914)
!914 = distinct !DILocation(line: 586, column: 41, scope: !244)
!915 = !DILocation(line: 1361, column: 11, scope: !907, inlinedAt: !914)
!916 = !DILocation(line: 1361, column: 10, scope: !907, inlinedAt: !914)
!917 = !DILocation(line: 586, column: 19, scope: !244)
!918 = !DILocation(line: 587, column: 5, scope: !244)
!919 = !DILocation(line: 588, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !70, file: !71, line: 588, column: 7)
!921 = !DILocation(line: 588, column: 7, scope: !70)
!922 = !DILocation(line: 590, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !71, line: 589, column: 5)
!924 = !DILocation(line: 591, column: 7, scope: !923)
!925 = !DILocation(line: 595, column: 37, scope: !70)
!926 = !DILocation(line: 595, column: 35, scope: !70)
!927 = !DILocation(line: 596, column: 29, scope: !70)
!928 = !DILocation(line: 597, column: 8, scope: !253)
!929 = !DILocation(line: 597, column: 7, scope: !70)
!930 = !DILocation(line: 604, column: 24, scope: !252)
!931 = !DILocation(line: 604, column: 12, scope: !253)
!932 = !DILocation(line: 0, scope: !251)
!933 = !DILocation(line: 610, column: 16, scope: !251)
!934 = !DILocation(line: 610, column: 7, scope: !251)
!935 = !DILocation(line: 611, column: 21, scope: !251)
!936 = !{!937, !937, i64 0}
!937 = !{!"short", !840, i64 0}
!938 = !DILocation(line: 611, column: 19, scope: !251)
!939 = !DILocation(line: 611, column: 16, scope: !251)
!940 = !DILocation(line: 610, column: 30, scope: !251)
!941 = distinct !{!941, !934, !935, !942}
!942 = !{!"llvm.loop.mustprogress"}
!943 = !DILocation(line: 612, column: 18, scope: !944)
!944 = distinct !DILexicalBlock(scope: !251, file: !71, line: 612, column: 11)
!945 = !DILocation(line: 612, column: 11, scope: !251)
!946 = !DILocation(line: 620, column: 23, scope: !70)
!947 = !DILocation(line: 625, column: 39, scope: !70)
!948 = !DILocation(line: 626, column: 3, scope: !70)
!949 = !DILocation(line: 626, column: 10, scope: !70)
!950 = !DILocation(line: 626, column: 21, scope: !70)
!951 = !DILocation(line: 628, column: 44, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !71, line: 628, column: 11)
!953 = distinct !DILexicalBlock(scope: !70, file: !71, line: 627, column: 5)
!954 = !DILocation(line: 628, column: 32, scope: !952)
!955 = !DILocation(line: 628, column: 49, scope: !952)
!956 = !DILocation(line: 628, column: 11, scope: !953)
!957 = !DILocation(line: 630, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !71, line: 630, column: 11)
!959 = !DILocation(line: 630, column: 11, scope: !953)
!960 = !DILocation(line: 632, column: 26, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !71, line: 632, column: 15)
!962 = distinct !DILexicalBlock(scope: !958, file: !71, line: 631, column: 9)
!963 = !DILocation(line: 632, column: 34, scope: !961)
!964 = !DILocation(line: 632, column: 37, scope: !961)
!965 = !DILocation(line: 632, column: 15, scope: !962)
!966 = !DILocation(line: 640, column: 16, scope: !953)
!967 = distinct !{!967, !948, !968, !942}
!968 = !DILocation(line: 641, column: 5, scope: !70)
!969 = !DILocation(line: 644, column: 3, scope: !70)
!970 = !DILocation(line: 0, scope: !907, inlinedAt: !971)
!971 = distinct !DILocation(line: 648, column: 31, scope: !70)
!972 = !DILocation(line: 0, scope: !907, inlinedAt: !973)
!973 = distinct !DILocation(line: 649, column: 31, scope: !70)
!974 = !DILocation(line: 0, scope: !907, inlinedAt: !975)
!975 = distinct !DILocation(line: 650, column: 31, scope: !70)
!976 = !DILocation(line: 0, scope: !907, inlinedAt: !977)
!977 = distinct !DILocation(line: 651, column: 31, scope: !70)
!978 = !DILocation(line: 0, scope: !907, inlinedAt: !979)
!979 = distinct !DILocation(line: 652, column: 31, scope: !70)
!980 = !DILocation(line: 0, scope: !907, inlinedAt: !981)
!981 = distinct !DILocation(line: 653, column: 31, scope: !70)
!982 = !DILocation(line: 0, scope: !907, inlinedAt: !983)
!983 = distinct !DILocation(line: 654, column: 31, scope: !70)
!984 = !DILocation(line: 0, scope: !907, inlinedAt: !985)
!985 = distinct !DILocation(line: 655, column: 31, scope: !70)
!986 = !DILocation(line: 0, scope: !907, inlinedAt: !987)
!987 = distinct !DILocation(line: 656, column: 31, scope: !70)
!988 = !DILocation(line: 0, scope: !907, inlinedAt: !989)
!989 = distinct !DILocation(line: 657, column: 31, scope: !70)
!990 = !DILocation(line: 663, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !70, file: !71, line: 663, column: 7)
!992 = !DILocation(line: 664, column: 7, scope: !991)
!993 = !DILocation(line: 664, column: 10, scope: !991)
!994 = !DILocation(line: 663, column: 7, scope: !70)
!995 = !DILocation(line: 669, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !71, line: 665, column: 5)
!997 = !DILocation(line: 671, column: 5, scope: !996)
!998 = !DILocation(line: 676, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !991, file: !71, line: 673, column: 5)
!1000 = !DILocation(line: 679, column: 3, scope: !70)
!1001 = !DILocation(line: 683, column: 3, scope: !70)
!1002 = !DILocation(line: 686, column: 3, scope: !70)
!1003 = !DILocation(line: 688, column: 3, scope: !70)
!1004 = !DILocation(line: 691, column: 3, scope: !70)
!1005 = !DILocation(line: 695, column: 3, scope: !70)
!1006 = !DILocation(line: 696, column: 1, scope: !70)
!1007 = !DISubprogram(name: "setlocale", scope: !1008, file: !1008, line: 122, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!124, !117, !74}
!1011 = !DISubprogram(name: "strncmp", scope: !1012, file: !1012, line: 159, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!117, !74, !74, !119}
!1015 = !DISubprogram(name: "fputs_unlocked", scope: !354, file: !354, line: 691, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!117, !889, !888}
!1018 = !DISubprogram(name: "exit", scope: !1019, file: !1019, line: 624, type: !828, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1019 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1020 = !DISubprogram(name: "getenv", scope: !1019, file: !1019, line: 641, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!124, !74}
!1023 = !DISubprogram(name: "strcmp", scope: !1012, file: !1012, line: 156, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!117, !74, !74}
!1026 = !DISubprogram(name: "strspn", scope: !1012, file: !1012, line: 297, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!121, !74, !74}
!1029 = !DISubprogram(name: "strchr", scope: !1012, file: !1012, line: 246, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!124, !74, !117}
!1032 = !DISubprogram(name: "__ctype_b_loc", scope: !87, file: !87, line: 79, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1038 = !DISubprogram(name: "strcspn", scope: !1012, file: !1012, line: 293, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DISubprogram(name: "fwrite_unlocked", scope: !354, file: !354, line: 704, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!119, !1042, !119, !119, !888}
!1042 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1045 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 117, type: !1046, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!117, !117, !123}
!1048 = !{!1049, !1050}
!1049 = !DILocalVariable(name: "argc", arg: 1, scope: !1045, file: !2, line: 117, type: !117)
!1050 = !DILocalVariable(name: "argv", arg: 2, scope: !1045, file: !2, line: 117, type: !123)
!1051 = !DILocation(line: 0, scope: !1045)
!1052 = !DILocation(line: 120, column: 21, scope: !1045)
!1053 = !DILocation(line: 120, column: 3, scope: !1045)
!1054 = !DILocation(line: 121, column: 3, scope: !1045)
!1055 = !DILocation(line: 122, column: 3, scope: !1045)
!1056 = !DILocation(line: 123, column: 3, scope: !1045)
!1057 = !DILocation(line: 125, column: 3, scope: !1045)
!1058 = !DILocation(line: 128, column: 36, scope: !1045)
!1059 = !DILocation(line: 128, column: 58, scope: !1045)
!1060 = !DILocation(line: 127, column: 3, scope: !1045)
!1061 = !DILocation(line: 131, column: 18, scope: !1045)
!1062 = !DILocation(line: 131, column: 16, scope: !1045)
!1063 = !DILocation(line: 131, column: 3, scope: !1045)
!1064 = !DILocation(line: 134, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 132, column: 5)
!1066 = !DILocation(line: 135, column: 7, scope: !1065)
!1067 = !DILocation(line: 138, column: 14, scope: !1065)
!1068 = !DILocation(line: 138, column: 7, scope: !1065)
!1069 = !DILocation(line: 139, column: 7, scope: !1065)
!1070 = !DILocation(line: 142, column: 7, scope: !1065)
!1071 = !DILocation(line: 143, column: 7, scope: !1065)
!1072 = !DILocation(line: 146, column: 3, scope: !1045)
!1073 = !DISubprogram(name: "bindtextdomain", scope: !881, file: !881, line: 86, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!124, !74, !74}
!1076 = !DISubprogram(name: "textdomain", scope: !881, file: !881, line: 82, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DISubprogram(name: "atexit", scope: !1019, file: !1019, line: 602, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!117, !393}
!1080 = distinct !DISubprogram(name: "users", scope: !2, file: !2, line: 82, type: !1081, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !74, !117}
!1083 = !{!1084, !1085, !1086, !1089}
!1084 = !DILocalVariable(name: "filename", arg: 1, scope: !1080, file: !2, line: 82, type: !74)
!1085 = !DILocalVariable(name: "options", arg: 2, scope: !1080, file: !2, line: 82, type: !117)
!1086 = !DILocalVariable(name: "n_users", scope: !1080, file: !2, line: 84, type: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1088, line: 130, baseType: !785)
!1088 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1089 = !DILocalVariable(name: "utmp_buf", scope: !1080, file: !2, line: 85, type: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !79, line: 92, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !79, line: 65, size: 576, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1105, !1108, !1109, !1110}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !1092, file: !79, line: 69, baseType: !124, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !1092, file: !79, line: 70, baseType: !124, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !1092, file: !79, line: 71, baseType: !124, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !1092, file: !79, line: 72, baseType: !124, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !1092, file: !79, line: 74, baseType: !1099, size: 128, offset: 256)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1100, line: 11, size: 128, elements: !1101)
!1100 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1099, file: !1100, line: 16, baseType: !747, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1099, file: !1100, line: 21, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !287, line: 197, baseType: !288)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !1092, file: !79, line: 75, baseType: !1106, size: 32, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1107, line: 97, baseType: !731)
!1107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !1092, file: !79, line: 76, baseType: !1106, size: 32, offset: 416)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !1092, file: !79, line: 77, baseType: !729, size: 16, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !1092, file: !79, line: 79, baseType: !1111, size: 64, offset: 480)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !79, line: 79, size: 64, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !1111, file: !79, line: 79, baseType: !117, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !1111, file: !79, line: 79, baseType: !117, size: 32, offset: 32)
!1115 = distinct !DIAssignID()
!1116 = !DILocation(line: 0, scope: !1080)
!1117 = distinct !DIAssignID()
!1118 = !DILocation(line: 84, column: 3, scope: !1080)
!1119 = !DILocation(line: 85, column: 3, scope: !1080)
!1120 = !DILocation(line: 86, column: 11, scope: !1080)
!1121 = !DILocation(line: 87, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 87, column: 7)
!1123 = !DILocation(line: 87, column: 58, scope: !1122)
!1124 = !DILocation(line: 87, column: 7, scope: !1080)
!1125 = !DILocation(line: 88, column: 5, scope: !1122)
!1126 = !DILocation(line: 90, column: 23, scope: !1080)
!1127 = !{!1128, !1128, i64 0}
!1128 = !{!"long", !840, i64 0}
!1129 = !DILocation(line: 90, column: 32, scope: !1080)
!1130 = !DILocalVariable(name: "n", arg: 1, scope: !1131, file: !2, line: 45, type: !1087)
!1131 = distinct !DISubprogram(name: "list_entries_users", scope: !2, file: !2, line: 45, type: !1132, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1136)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1087, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1091)
!1136 = !{!1130, !1137, !1138, !1139, !1140, !1144, !1146, !1149}
!1137 = !DILocalVariable(name: "this", arg: 2, scope: !1131, file: !2, line: 45, type: !1134)
!1138 = !DILocalVariable(name: "u", scope: !1131, file: !2, line: 47, type: !123)
!1139 = !DILocalVariable(name: "n_entries", scope: !1131, file: !2, line: 48, type: !1087)
!1140 = !DILocalVariable(name: "trimmed_name", scope: !1141, file: !2, line: 54, type: !124)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 53, column: 9)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 52, column: 11)
!1143 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 51, column: 5)
!1144 = !DILocalVariable(name: "i", scope: !1145, file: !2, line: 66, type: !1087)
!1145 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 66, column: 3)
!1146 = !DILocalVariable(name: "c", scope: !1147, file: !2, line: 68, type: !4)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 67, column: 5)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 66, column: 3)
!1149 = !DILocalVariable(name: "i", scope: !1150, file: !2, line: 73, type: !1087)
!1150 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 73, column: 3)
!1151 = !DILocation(line: 0, scope: !1131, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 90, column: 3, scope: !1080)
!1153 = !DILocation(line: 47, column: 14, scope: !1131, inlinedAt: !1152)
!1154 = !DILocation(line: 50, column: 3, scope: !1131, inlinedAt: !1152)
!1155 = !DILocation(line: 64, column: 3, scope: !1131, inlinedAt: !1152)
!1156 = !DILocation(line: 0, scope: !1145, inlinedAt: !1152)
!1157 = !DILocation(line: 66, column: 3, scope: !1145, inlinedAt: !1152)
!1158 = !DILocation(line: 50, column: 11, scope: !1131, inlinedAt: !1152)
!1159 = !DILocation(line: 52, column: 11, scope: !1142, inlinedAt: !1152)
!1160 = !{!1161, !839, i64 0}
!1161 = !{!"gl_utmp", !839, i64 0, !839, i64 8, !839, i64 16, !839, i64 24, !1162, i64 32, !896, i64 48, !896, i64 52, !937, i64 56, !1163, i64 60}
!1162 = !{!"timespec", !1128, i64 0, !1128, i64 8}
!1163 = !{!"", !896, i64 0, !896, i64 4}
!1164 = !{!1161, !937, i64 56}
!1165 = !DILocation(line: 52, column: 11, scope: !1143, inlinedAt: !1152)
!1166 = !DILocation(line: 56, column: 26, scope: !1141, inlinedAt: !1152)
!1167 = !DILocation(line: 0, scope: !1141, inlinedAt: !1152)
!1168 = !DILocation(line: 58, column: 11, scope: !1141, inlinedAt: !1152)
!1169 = !DILocation(line: 58, column: 24, scope: !1141, inlinedAt: !1152)
!1170 = !DILocation(line: 59, column: 11, scope: !1141, inlinedAt: !1152)
!1171 = !DILocation(line: 60, column: 9, scope: !1141, inlinedAt: !1152)
!1172 = !DILocation(line: 61, column: 11, scope: !1143, inlinedAt: !1152)
!1173 = distinct !{!1173, !1154, !1174, !942}
!1174 = !DILocation(line: 62, column: 5, scope: !1131, inlinedAt: !1152)
!1175 = !DILocation(line: 66, column: 23, scope: !1148, inlinedAt: !1152)
!1176 = !DILocation(line: 68, column: 19, scope: !1147, inlinedAt: !1152)
!1177 = !DILocation(line: 0, scope: !1147, inlinedAt: !1152)
!1178 = !DILocation(line: 69, column: 7, scope: !1147, inlinedAt: !1152)
!1179 = !DILocation(line: 70, column: 7, scope: !1147, inlinedAt: !1152)
!1180 = !DILocalVariable(name: "__c", arg: 1, scope: !1181, file: !1182, line: 108, type: !117)
!1181 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1182, file: !1182, line: 108, type: !1183, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1185)
!1182 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!117, !117}
!1185 = !{!1180}
!1186 = !DILocation(line: 0, scope: !1181, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 70, column: 7, scope: !1147, inlinedAt: !1152)
!1188 = !DILocation(line: 110, column: 10, scope: !1181, inlinedAt: !1187)
!1189 = !{!1190, !839, i64 40}
!1190 = !{!"_IO_FILE", !896, i64 0, !839, i64 8, !839, i64 16, !839, i64 24, !839, i64 32, !839, i64 40, !839, i64 48, !839, i64 56, !839, i64 64, !839, i64 72, !839, i64 80, !839, i64 88, !839, i64 96, !839, i64 104, !896, i64 112, !896, i64 116, !1128, i64 120, !937, i64 128, !840, i64 130, !840, i64 131, !839, i64 136, !1128, i64 144, !839, i64 152, !839, i64 160, !839, i64 168, !839, i64 176, !1128, i64 184, !896, i64 192, !840, i64 196}
!1191 = !{!1190, !839, i64 48}
!1192 = !{!"branch_weights", i32 2000, i32 1}
!1193 = !DILocation(line: 66, column: 37, scope: !1148, inlinedAt: !1152)
!1194 = distinct !{!1194, !1157, !1195, !942}
!1195 = !DILocation(line: 71, column: 5, scope: !1145, inlinedAt: !1152)
!1196 = !DILocation(line: 73, column: 3, scope: !1150, inlinedAt: !1152)
!1197 = !DILocation(line: 0, scope: !1150, inlinedAt: !1152)
!1198 = !DILocation(line: 74, column: 11, scope: !1199, inlinedAt: !1152)
!1199 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 73, column: 3)
!1200 = !DILocation(line: 74, column: 5, scope: !1199, inlinedAt: !1152)
!1201 = !DILocation(line: 73, column: 37, scope: !1199, inlinedAt: !1152)
!1202 = !DILocation(line: 73, column: 23, scope: !1199, inlinedAt: !1152)
!1203 = distinct !{!1203, !1196, !1204, !942}
!1204 = !DILocation(line: 74, column: 15, scope: !1150, inlinedAt: !1152)
!1205 = !DILocation(line: 75, column: 3, scope: !1131, inlinedAt: !1152)
!1206 = !DILocation(line: 92, column: 9, scope: !1080)
!1207 = !DILocation(line: 92, column: 3, scope: !1080)
!1208 = !DILocation(line: 93, column: 1, scope: !1080)
!1209 = !DISubprogram(name: "__errno_location", scope: !1210, file: !1210, line: 37, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!418}
!1213 = distinct !DISubprogram(name: "userid_compare", scope: !2, file: !2, line: 37, type: !1214, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!117, !1043, !1043}
!1216 = !{!1217, !1218, !1219, !1220}
!1217 = !DILocalVariable(name: "v_a", arg: 1, scope: !1213, file: !2, line: 37, type: !1043)
!1218 = !DILocalVariable(name: "v_b", arg: 2, scope: !1213, file: !2, line: 37, type: !1043)
!1219 = !DILocalVariable(name: "a", scope: !1213, file: !2, line: 39, type: !123)
!1220 = !DILocalVariable(name: "b", scope: !1213, file: !2, line: 40, type: !123)
!1221 = !DILocation(line: 0, scope: !1213)
!1222 = !DILocation(line: 41, column: 18, scope: !1213)
!1223 = !DILocation(line: 41, column: 22, scope: !1213)
!1224 = !DILocation(line: 41, column: 10, scope: !1213)
!1225 = !DILocation(line: 41, column: 3, scope: !1213)
!1226 = !DISubprogram(name: "qsort", scope: !1019, file: !1019, line: 838, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !116, !119, !119, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1019, line: 816, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1231 = !DISubprogram(name: "__overflow", scope: !354, file: !354, line: 886, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!117, !260, !117}
!1234 = !DISubprogram(name: "free", scope: !1019, file: !1019, line: 555, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !116}
!1237 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !328, file: !328, line: 50, type: !849, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1238)
!1238 = !{!1239}
!1239 = !DILocalVariable(name: "file", arg: 1, scope: !1237, file: !328, line: 50, type: !74)
!1240 = !DILocation(line: 0, scope: !1237)
!1241 = !DILocation(line: 52, column: 13, scope: !1237)
!1242 = !DILocation(line: 53, column: 1, scope: !1237)
!1243 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !328, file: !328, line: 87, type: !1244, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !247}
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "ignore", arg: 1, scope: !1243, file: !328, line: 87, type: !247)
!1248 = !DILocation(line: 0, scope: !1243)
!1249 = !DILocation(line: 89, column: 16, scope: !1243)
!1250 = !{!1251, !1251, i64 0}
!1251 = !{!"_Bool", !840, i64 0}
!1252 = !DILocation(line: 90, column: 1, scope: !1243)
!1253 = distinct !DISubprogram(name: "close_stdout", scope: !328, file: !328, line: 116, type: !394, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !1254)
!1254 = !{!1255}
!1255 = !DILocalVariable(name: "write_error", scope: !1256, file: !328, line: 121, type: !74)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !328, line: 120, column: 5)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !328, line: 118, column: 7)
!1258 = !DILocation(line: 118, column: 21, scope: !1257)
!1259 = !DILocation(line: 118, column: 7, scope: !1257)
!1260 = !DILocation(line: 118, column: 29, scope: !1257)
!1261 = !DILocation(line: 119, column: 7, scope: !1257)
!1262 = !DILocation(line: 119, column: 12, scope: !1257)
!1263 = !{i8 0, i8 2}
!1264 = !DILocation(line: 119, column: 25, scope: !1257)
!1265 = !DILocation(line: 119, column: 28, scope: !1257)
!1266 = !DILocation(line: 119, column: 34, scope: !1257)
!1267 = !DILocation(line: 118, column: 7, scope: !1253)
!1268 = !DILocation(line: 121, column: 33, scope: !1256)
!1269 = !DILocation(line: 0, scope: !1256)
!1270 = !DILocation(line: 122, column: 11, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1256, file: !328, line: 122, column: 11)
!1272 = !DILocation(line: 0, scope: !1271)
!1273 = !DILocation(line: 122, column: 11, scope: !1256)
!1274 = !DILocation(line: 123, column: 9, scope: !1271)
!1275 = !DILocation(line: 126, column: 9, scope: !1271)
!1276 = !DILocation(line: 128, column: 14, scope: !1256)
!1277 = !DILocation(line: 128, column: 7, scope: !1256)
!1278 = !DILocation(line: 133, column: 42, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1253, file: !328, line: 133, column: 7)
!1280 = !DILocation(line: 133, column: 28, scope: !1279)
!1281 = !DILocation(line: 133, column: 50, scope: !1279)
!1282 = !DILocation(line: 133, column: 7, scope: !1253)
!1283 = !DILocation(line: 134, column: 12, scope: !1279)
!1284 = !DILocation(line: 134, column: 5, scope: !1279)
!1285 = !DILocation(line: 135, column: 1, scope: !1253)
!1286 = !DISubprogram(name: "_exit", scope: !1287, file: !1287, line: 624, type: !828, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1287 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1288 = distinct !DISubprogram(name: "verror", scope: !343, file: !343, line: 251, type: !1289, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !117, !117, !74, !353}
!1291 = !{!1292, !1293, !1294, !1295}
!1292 = !DILocalVariable(name: "status", arg: 1, scope: !1288, file: !343, line: 251, type: !117)
!1293 = !DILocalVariable(name: "errnum", arg: 2, scope: !1288, file: !343, line: 251, type: !117)
!1294 = !DILocalVariable(name: "message", arg: 3, scope: !1288, file: !343, line: 251, type: !74)
!1295 = !DILocalVariable(name: "args", arg: 4, scope: !1288, file: !343, line: 251, type: !353)
!1296 = !DILocation(line: 0, scope: !1288)
!1297 = !DILocation(line: 261, column: 3, scope: !1288)
!1298 = !DILocation(line: 265, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1288, file: !343, line: 265, column: 7)
!1300 = !DILocation(line: 265, column: 7, scope: !1288)
!1301 = !DILocation(line: 266, column: 5, scope: !1299)
!1302 = !DILocation(line: 272, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !343, line: 268, column: 5)
!1304 = !DILocation(line: 276, column: 3, scope: !1288)
!1305 = !{i64 0, i64 8, !838, i64 8, i64 8, !838, i64 16, i64 8, !838, i64 24, i64 4, !895, i64 28, i64 4, !895}
!1306 = !DILocation(line: 282, column: 1, scope: !1288)
!1307 = distinct !DISubprogram(name: "flush_stdout", scope: !343, file: !343, line: 163, type: !394, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1308)
!1308 = !{!1309}
!1309 = !DILocalVariable(name: "stdout_fd", scope: !1307, file: !343, line: 166, type: !117)
!1310 = !DILocation(line: 0, scope: !1307)
!1311 = !DILocalVariable(name: "fd", arg: 1, scope: !1312, file: !343, line: 145, type: !117)
!1312 = distinct !DISubprogram(name: "is_open", scope: !343, file: !343, line: 145, type: !1183, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1313)
!1313 = !{!1311}
!1314 = !DILocation(line: 0, scope: !1312, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 182, column: 25, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1307, file: !343, line: 182, column: 7)
!1317 = !DILocation(line: 157, column: 15, scope: !1312, inlinedAt: !1315)
!1318 = !DILocation(line: 157, column: 12, scope: !1312, inlinedAt: !1315)
!1319 = !DILocation(line: 182, column: 7, scope: !1307)
!1320 = !DILocation(line: 184, column: 5, scope: !1316)
!1321 = !DILocation(line: 185, column: 1, scope: !1307)
!1322 = distinct !DISubprogram(name: "error_tail", scope: !343, file: !343, line: 219, type: !1289, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1323)
!1323 = !{!1324, !1325, !1326, !1327}
!1324 = !DILocalVariable(name: "status", arg: 1, scope: !1322, file: !343, line: 219, type: !117)
!1325 = !DILocalVariable(name: "errnum", arg: 2, scope: !1322, file: !343, line: 219, type: !117)
!1326 = !DILocalVariable(name: "message", arg: 3, scope: !1322, file: !343, line: 219, type: !74)
!1327 = !DILocalVariable(name: "args", arg: 4, scope: !1322, file: !343, line: 219, type: !353)
!1328 = distinct !DIAssignID()
!1329 = !DILocation(line: 0, scope: !1322)
!1330 = !DILocation(line: 229, column: 13, scope: !1322)
!1331 = !DILocation(line: 135, column: 10, scope: !1332, inlinedAt: !1374)
!1332 = distinct !DISubprogram(name: "vfprintf", scope: !885, file: !885, line: 132, type: !1333, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1370)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!117, !1335, !889, !355}
!1335 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1338, file: !264, line: 51, baseType: !117, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1338, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1338, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1338, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1338, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1338, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1338, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1338, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1338, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1338, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1338, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1338, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1338, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1338, file: !264, line: 70, baseType: !1354, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1338, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1338, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1338, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1338, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1338, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1338, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1338, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1338, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1338, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1338, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1338, file: !264, line: 93, baseType: !1354, size: 64, offset: 1344)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1338, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1338, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1338, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1338, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!1370 = !{!1371, !1372, !1373}
!1371 = !DILocalVariable(name: "__stream", arg: 1, scope: !1332, file: !885, line: 132, type: !1335)
!1372 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1332, file: !885, line: 133, type: !889)
!1373 = !DILocalVariable(name: "__ap", arg: 3, scope: !1332, file: !885, line: 133, type: !355)
!1374 = distinct !DILocation(line: 229, column: 3, scope: !1322)
!1375 = !{!1376, !1378}
!1376 = distinct !{!1376, !1377, !"vfprintf.inline: argument 0"}
!1377 = distinct !{!1377, !"vfprintf.inline"}
!1378 = distinct !{!1378, !1377, !"vfprintf.inline: argument 1"}
!1379 = !DILocation(line: 229, column: 3, scope: !1322)
!1380 = !DILocation(line: 0, scope: !1332, inlinedAt: !1374)
!1381 = !DILocation(line: 232, column: 3, scope: !1322)
!1382 = !DILocation(line: 233, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1322, file: !343, line: 233, column: 7)
!1384 = !DILocation(line: 233, column: 7, scope: !1322)
!1385 = !DILocalVariable(name: "errbuf", scope: !1386, file: !343, line: 193, type: !1390)
!1386 = distinct !DISubprogram(name: "print_errno_message", scope: !343, file: !343, line: 188, type: !828, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1387)
!1387 = !{!1388, !1389, !1385}
!1388 = !DILocalVariable(name: "errnum", arg: 1, scope: !1386, file: !343, line: 188, type: !117)
!1389 = !DILocalVariable(name: "s", scope: !1386, file: !343, line: 190, type: !74)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 1024)
!1393 = !DILocation(line: 0, scope: !1386, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 234, column: 5, scope: !1383)
!1395 = !DILocation(line: 193, column: 3, scope: !1386, inlinedAt: !1394)
!1396 = !DILocation(line: 195, column: 7, scope: !1386, inlinedAt: !1394)
!1397 = !DILocation(line: 207, column: 9, scope: !1398, inlinedAt: !1394)
!1398 = distinct !DILexicalBlock(scope: !1386, file: !343, line: 207, column: 7)
!1399 = !DILocation(line: 207, column: 7, scope: !1386, inlinedAt: !1394)
!1400 = !DILocation(line: 208, column: 9, scope: !1398, inlinedAt: !1394)
!1401 = !DILocation(line: 208, column: 5, scope: !1398, inlinedAt: !1394)
!1402 = !DILocation(line: 214, column: 3, scope: !1386, inlinedAt: !1394)
!1403 = !DILocation(line: 216, column: 1, scope: !1386, inlinedAt: !1394)
!1404 = !DILocation(line: 234, column: 5, scope: !1383)
!1405 = !DILocation(line: 238, column: 3, scope: !1322)
!1406 = !DILocalVariable(name: "__c", arg: 1, scope: !1407, file: !1182, line: 101, type: !117)
!1407 = distinct !DISubprogram(name: "putc_unlocked", scope: !1182, file: !1182, line: 101, type: !1408, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!117, !117, !1336}
!1410 = !{!1406, !1411}
!1411 = !DILocalVariable(name: "__stream", arg: 2, scope: !1407, file: !1182, line: 101, type: !1336)
!1412 = !DILocation(line: 0, scope: !1407, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 238, column: 3, scope: !1322)
!1414 = !DILocation(line: 103, column: 10, scope: !1407, inlinedAt: !1413)
!1415 = !DILocation(line: 240, column: 3, scope: !1322)
!1416 = !DILocation(line: 241, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1322, file: !343, line: 241, column: 7)
!1418 = !DILocation(line: 241, column: 7, scope: !1322)
!1419 = !DILocation(line: 242, column: 5, scope: !1417)
!1420 = !DILocation(line: 243, column: 1, scope: !1322)
!1421 = !DISubprogram(name: "__vfprintf_chk", scope: !885, file: !885, line: 96, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!117, !1335, !117, !889, !355}
!1424 = !DISubprogram(name: "strerror_r", scope: !1012, file: !1012, line: 444, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!124, !117, !124, !119}
!1427 = !DISubprogram(name: "fflush_unlocked", scope: !354, file: !354, line: 239, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!117, !1336}
!1430 = !DISubprogram(name: "fcntl", scope: !1431, file: !1431, line: 149, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1431 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!117, !117, !117, null}
!1434 = distinct !DISubprogram(name: "error", scope: !343, file: !343, line: 285, type: !1435, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !117, !117, !74, null}
!1437 = !{!1438, !1439, !1440, !1441}
!1438 = !DILocalVariable(name: "status", arg: 1, scope: !1434, file: !343, line: 285, type: !117)
!1439 = !DILocalVariable(name: "errnum", arg: 2, scope: !1434, file: !343, line: 285, type: !117)
!1440 = !DILocalVariable(name: "message", arg: 3, scope: !1434, file: !343, line: 285, type: !74)
!1441 = !DILocalVariable(name: "ap", scope: !1434, file: !343, line: 287, type: !353)
!1442 = distinct !DIAssignID()
!1443 = !DILocation(line: 0, scope: !1434)
!1444 = !DILocation(line: 287, column: 3, scope: !1434)
!1445 = !DILocation(line: 288, column: 3, scope: !1434)
!1446 = !DILocation(line: 289, column: 3, scope: !1434)
!1447 = !DILocation(line: 290, column: 3, scope: !1434)
!1448 = !DILocation(line: 291, column: 1, scope: !1434)
!1449 = !DILocation(line: 0, scope: !350)
!1450 = !DILocation(line: 302, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !350, file: !343, line: 302, column: 7)
!1452 = !DILocation(line: 302, column: 7, scope: !350)
!1453 = !DILocation(line: 307, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !343, line: 307, column: 11)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !343, line: 303, column: 5)
!1456 = !DILocation(line: 307, column: 27, scope: !1454)
!1457 = !DILocation(line: 308, column: 11, scope: !1454)
!1458 = !DILocation(line: 308, column: 28, scope: !1454)
!1459 = !DILocation(line: 308, column: 25, scope: !1454)
!1460 = !DILocation(line: 309, column: 15, scope: !1454)
!1461 = !DILocation(line: 309, column: 33, scope: !1454)
!1462 = !DILocation(line: 310, column: 19, scope: !1454)
!1463 = !DILocation(line: 311, column: 22, scope: !1454)
!1464 = !DILocation(line: 311, column: 56, scope: !1454)
!1465 = !DILocation(line: 307, column: 11, scope: !1455)
!1466 = !DILocation(line: 316, column: 21, scope: !1455)
!1467 = !DILocation(line: 317, column: 23, scope: !1455)
!1468 = !DILocation(line: 318, column: 5, scope: !1455)
!1469 = !DILocation(line: 327, column: 3, scope: !350)
!1470 = !DILocation(line: 331, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !350, file: !343, line: 331, column: 7)
!1472 = !DILocation(line: 331, column: 7, scope: !350)
!1473 = !DILocation(line: 332, column: 5, scope: !1471)
!1474 = !DILocation(line: 338, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !343, line: 334, column: 5)
!1476 = !DILocation(line: 346, column: 3, scope: !350)
!1477 = !DILocation(line: 350, column: 3, scope: !350)
!1478 = !DILocation(line: 356, column: 1, scope: !350)
!1479 = distinct !DISubprogram(name: "error_at_line", scope: !343, file: !343, line: 359, type: !1480, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !117, !117, !74, !80, !74, null}
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488}
!1483 = !DILocalVariable(name: "status", arg: 1, scope: !1479, file: !343, line: 359, type: !117)
!1484 = !DILocalVariable(name: "errnum", arg: 2, scope: !1479, file: !343, line: 359, type: !117)
!1485 = !DILocalVariable(name: "file_name", arg: 3, scope: !1479, file: !343, line: 359, type: !74)
!1486 = !DILocalVariable(name: "line_number", arg: 4, scope: !1479, file: !343, line: 360, type: !80)
!1487 = !DILocalVariable(name: "message", arg: 5, scope: !1479, file: !343, line: 360, type: !74)
!1488 = !DILocalVariable(name: "ap", scope: !1479, file: !343, line: 362, type: !353)
!1489 = distinct !DIAssignID()
!1490 = !DILocation(line: 0, scope: !1479)
!1491 = !DILocation(line: 362, column: 3, scope: !1479)
!1492 = !DILocation(line: 363, column: 3, scope: !1479)
!1493 = !DILocation(line: 364, column: 3, scope: !1479)
!1494 = !DILocation(line: 366, column: 3, scope: !1479)
!1495 = !DILocation(line: 367, column: 1, scope: !1479)
!1496 = distinct !DISubprogram(name: "getprogname", scope: !717, file: !717, line: 54, type: !1497, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!74}
!1499 = !DILocation(line: 58, column: 10, scope: !1496)
!1500 = !DILocation(line: 58, column: 3, scope: !1496)
!1501 = distinct !DISubprogram(name: "parse_long_options", scope: !398, file: !398, line: 45, type: !1502, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1505)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !117, !123, !74, !74, !74, !1504, null}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1516}
!1506 = !DILocalVariable(name: "argc", arg: 1, scope: !1501, file: !398, line: 45, type: !117)
!1507 = !DILocalVariable(name: "argv", arg: 2, scope: !1501, file: !398, line: 46, type: !123)
!1508 = !DILocalVariable(name: "command_name", arg: 3, scope: !1501, file: !398, line: 47, type: !74)
!1509 = !DILocalVariable(name: "package", arg: 4, scope: !1501, file: !398, line: 48, type: !74)
!1510 = !DILocalVariable(name: "version", arg: 5, scope: !1501, file: !398, line: 49, type: !74)
!1511 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1501, file: !398, line: 50, type: !1504)
!1512 = !DILocalVariable(name: "saved_opterr", scope: !1501, file: !398, line: 53, type: !117)
!1513 = !DILocalVariable(name: "c", scope: !1514, file: !398, line: 60, type: !117)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !398, line: 59, column: 5)
!1515 = distinct !DILexicalBlock(scope: !1501, file: !398, line: 58, column: 7)
!1516 = !DILocalVariable(name: "authors", scope: !1517, file: !398, line: 71, type: !1521)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !398, line: 70, column: 15)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !398, line: 64, column: 13)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !398, line: 62, column: 9)
!1520 = distinct !DILexicalBlock(scope: !1514, file: !398, line: 61, column: 11)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !354, line: 52, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !356, line: 12, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !398, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1524, file: !398, line: 71, baseType: !116, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1524, file: !398, line: 71, baseType: !116, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1524, file: !398, line: 71, baseType: !116, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1524, file: !398, line: 71, baseType: !117, size: 32, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1524, file: !398, line: 71, baseType: !117, size: 32, offset: 224)
!1531 = distinct !DIAssignID()
!1532 = !DILocation(line: 0, scope: !1517)
!1533 = !DILocation(line: 0, scope: !1501)
!1534 = !DILocation(line: 53, column: 22, scope: !1501)
!1535 = !DILocation(line: 56, column: 10, scope: !1501)
!1536 = !DILocation(line: 58, column: 12, scope: !1515)
!1537 = !DILocation(line: 58, column: 7, scope: !1501)
!1538 = !DILocation(line: 60, column: 15, scope: !1514)
!1539 = !DILocation(line: 0, scope: !1514)
!1540 = !DILocation(line: 61, column: 11, scope: !1514)
!1541 = !DILocation(line: 66, column: 15, scope: !1518)
!1542 = !DILocation(line: 67, column: 15, scope: !1518)
!1543 = !DILocation(line: 71, column: 17, scope: !1517)
!1544 = !DILocation(line: 72, column: 17, scope: !1517)
!1545 = !DILocation(line: 73, column: 33, scope: !1517)
!1546 = !DILocation(line: 73, column: 17, scope: !1517)
!1547 = !DILocation(line: 74, column: 17, scope: !1517)
!1548 = !DILocation(line: 85, column: 10, scope: !1501)
!1549 = !DILocation(line: 89, column: 10, scope: !1501)
!1550 = !DILocation(line: 90, column: 1, scope: !1501)
!1551 = !DISubprogram(name: "getopt_long", scope: !413, file: !413, line: 66, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!117, !117, !1554, !74, !1556, !418}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!1557 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !398, file: !398, line: 98, type: !1558, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !117, !123, !74, !74, !74, !247, !1504, null}
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571}
!1561 = !DILocalVariable(name: "argc", arg: 1, scope: !1557, file: !398, line: 98, type: !117)
!1562 = !DILocalVariable(name: "argv", arg: 2, scope: !1557, file: !398, line: 99, type: !123)
!1563 = !DILocalVariable(name: "command_name", arg: 3, scope: !1557, file: !398, line: 100, type: !74)
!1564 = !DILocalVariable(name: "package", arg: 4, scope: !1557, file: !398, line: 101, type: !74)
!1565 = !DILocalVariable(name: "version", arg: 5, scope: !1557, file: !398, line: 102, type: !74)
!1566 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1557, file: !398, line: 103, type: !247)
!1567 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1557, file: !398, line: 104, type: !1504)
!1568 = !DILocalVariable(name: "saved_opterr", scope: !1557, file: !398, line: 107, type: !117)
!1569 = !DILocalVariable(name: "optstring", scope: !1557, file: !398, line: 112, type: !74)
!1570 = !DILocalVariable(name: "c", scope: !1557, file: !398, line: 114, type: !117)
!1571 = !DILocalVariable(name: "authors", scope: !1572, file: !398, line: 125, type: !1521)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !398, line: 124, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !398, line: 118, column: 9)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !398, line: 116, column: 5)
!1575 = distinct !DILexicalBlock(scope: !1557, file: !398, line: 115, column: 7)
!1576 = distinct !DIAssignID()
!1577 = !DILocation(line: 0, scope: !1572)
!1578 = !DILocation(line: 0, scope: !1557)
!1579 = !DILocation(line: 107, column: 22, scope: !1557)
!1580 = !DILocation(line: 110, column: 10, scope: !1557)
!1581 = !DILocation(line: 112, column: 27, scope: !1557)
!1582 = !DILocation(line: 114, column: 11, scope: !1557)
!1583 = !DILocation(line: 115, column: 7, scope: !1557)
!1584 = !DILocation(line: 125, column: 13, scope: !1572)
!1585 = !DILocation(line: 126, column: 13, scope: !1572)
!1586 = !DILocation(line: 127, column: 29, scope: !1572)
!1587 = !DILocation(line: 127, column: 13, scope: !1572)
!1588 = !DILocation(line: 128, column: 13, scope: !1572)
!1589 = !DILocation(line: 132, column: 26, scope: !1573)
!1590 = !DILocation(line: 133, column: 11, scope: !1573)
!1591 = !DILocation(line: 0, scope: !1573)
!1592 = !DILocation(line: 138, column: 10, scope: !1557)
!1593 = !DILocation(line: 139, column: 1, scope: !1557)
!1594 = distinct !DISubprogram(name: "set_program_name", scope: !423, file: !423, line: 37, type: !849, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1595)
!1595 = !{!1596, !1597, !1598}
!1596 = !DILocalVariable(name: "argv0", arg: 1, scope: !1594, file: !423, line: 37, type: !74)
!1597 = !DILocalVariable(name: "slash", scope: !1594, file: !423, line: 44, type: !74)
!1598 = !DILocalVariable(name: "base", scope: !1594, file: !423, line: 45, type: !74)
!1599 = !DILocation(line: 0, scope: !1594)
!1600 = !DILocation(line: 44, column: 23, scope: !1594)
!1601 = !DILocation(line: 45, column: 22, scope: !1594)
!1602 = !DILocation(line: 46, column: 17, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1594, file: !423, line: 46, column: 7)
!1604 = !DILocation(line: 46, column: 9, scope: !1603)
!1605 = !DILocation(line: 46, column: 25, scope: !1603)
!1606 = !DILocation(line: 46, column: 40, scope: !1603)
!1607 = !DILocalVariable(name: "__s1", arg: 1, scope: !1608, file: !908, line: 974, type: !1043)
!1608 = distinct !DISubprogram(name: "memeq", scope: !908, file: !908, line: 974, type: !1609, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!247, !1043, !1043, !119}
!1611 = !{!1607, !1612, !1613}
!1612 = !DILocalVariable(name: "__s2", arg: 2, scope: !1608, file: !908, line: 974, type: !1043)
!1613 = !DILocalVariable(name: "__n", arg: 3, scope: !1608, file: !908, line: 974, type: !119)
!1614 = !DILocation(line: 0, scope: !1608, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 46, column: 28, scope: !1603)
!1616 = !DILocation(line: 976, column: 11, scope: !1608, inlinedAt: !1615)
!1617 = !DILocation(line: 976, column: 10, scope: !1608, inlinedAt: !1615)
!1618 = !DILocation(line: 46, column: 7, scope: !1594)
!1619 = !DILocation(line: 49, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !423, line: 49, column: 11)
!1621 = distinct !DILexicalBlock(scope: !1603, file: !423, line: 47, column: 5)
!1622 = !DILocation(line: 49, column: 36, scope: !1620)
!1623 = !DILocation(line: 49, column: 11, scope: !1621)
!1624 = !DILocation(line: 65, column: 16, scope: !1594)
!1625 = !DILocation(line: 71, column: 27, scope: !1594)
!1626 = !DILocation(line: 74, column: 33, scope: !1594)
!1627 = !DILocation(line: 76, column: 1, scope: !1594)
!1628 = !DISubprogram(name: "strrchr", scope: !1012, file: !1012, line: 273, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1629 = distinct !DIAssignID()
!1630 = !DILocation(line: 0, scope: !432)
!1631 = distinct !DIAssignID()
!1632 = !DILocation(line: 40, column: 29, scope: !432)
!1633 = !DILocation(line: 41, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !432, file: !433, line: 41, column: 7)
!1635 = !DILocation(line: 41, column: 7, scope: !432)
!1636 = !DILocation(line: 47, column: 3, scope: !432)
!1637 = !DILocation(line: 48, column: 3, scope: !432)
!1638 = !DILocalVariable(name: "ps", arg: 1, scope: !1639, file: !1640, line: 1135, type: !1643)
!1639 = distinct !DISubprogram(name: "mbszero", scope: !1640, file: !1640, line: 1135, type: !1641, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !1644)
!1640 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1644 = !{!1638}
!1645 = !DILocation(line: 0, scope: !1639, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 48, column: 18, scope: !432)
!1647 = !DILocalVariable(name: "__dest", arg: 1, scope: !1648, file: !1649, line: 57, type: !116)
!1648 = distinct !DISubprogram(name: "memset", scope: !1649, file: !1649, line: 57, type: !1650, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !1652)
!1649 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!116, !116, !117, !119}
!1652 = !{!1647, !1653, !1654}
!1653 = !DILocalVariable(name: "__ch", arg: 2, scope: !1648, file: !1649, line: 57, type: !117)
!1654 = !DILocalVariable(name: "__len", arg: 3, scope: !1648, file: !1649, line: 57, type: !119)
!1655 = !DILocation(line: 0, scope: !1648, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 1137, column: 3, scope: !1639, inlinedAt: !1646)
!1657 = !DILocation(line: 59, column: 10, scope: !1648, inlinedAt: !1656)
!1658 = !DILocation(line: 49, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !432, file: !433, line: 49, column: 7)
!1660 = !DILocation(line: 49, column: 39, scope: !1659)
!1661 = !DILocation(line: 49, column: 44, scope: !1659)
!1662 = !DILocation(line: 54, column: 1, scope: !432)
!1663 = !DISubprogram(name: "mbrtoc32", scope: !444, file: !444, line: 57, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!119, !1666, !889, !119, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1667)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1643)
!1669 = distinct !DISubprogram(name: "clone_quoting_options", scope: !463, file: !463, line: 113, type: !1670, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1673)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!1672, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1673 = !{!1674, !1675, !1676}
!1674 = !DILocalVariable(name: "o", arg: 1, scope: !1669, file: !463, line: 113, type: !1672)
!1675 = !DILocalVariable(name: "saved_errno", scope: !1669, file: !463, line: 115, type: !117)
!1676 = !DILocalVariable(name: "p", scope: !1669, file: !463, line: 116, type: !1672)
!1677 = !DILocation(line: 0, scope: !1669)
!1678 = !DILocation(line: 115, column: 21, scope: !1669)
!1679 = !DILocation(line: 116, column: 40, scope: !1669)
!1680 = !DILocation(line: 116, column: 31, scope: !1669)
!1681 = !DILocation(line: 118, column: 9, scope: !1669)
!1682 = !DILocation(line: 119, column: 3, scope: !1669)
!1683 = distinct !DISubprogram(name: "get_quoting_style", scope: !463, file: !463, line: 124, type: !1684, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1688)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!489, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "o", arg: 1, scope: !1683, file: !463, line: 124, type: !1686)
!1690 = !DILocation(line: 0, scope: !1683)
!1691 = !DILocation(line: 126, column: 11, scope: !1683)
!1692 = !DILocation(line: 126, column: 46, scope: !1683)
!1693 = !{!1694, !896, i64 0}
!1694 = !{!"quoting_options", !896, i64 0, !896, i64 4, !840, i64 8, !839, i64 40, !839, i64 48}
!1695 = !DILocation(line: 126, column: 3, scope: !1683)
!1696 = distinct !DISubprogram(name: "set_quoting_style", scope: !463, file: !463, line: 132, type: !1697, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1672, !489}
!1699 = !{!1700, !1701}
!1700 = !DILocalVariable(name: "o", arg: 1, scope: !1696, file: !463, line: 132, type: !1672)
!1701 = !DILocalVariable(name: "s", arg: 2, scope: !1696, file: !463, line: 132, type: !489)
!1702 = !DILocation(line: 0, scope: !1696)
!1703 = !DILocation(line: 134, column: 4, scope: !1696)
!1704 = !DILocation(line: 134, column: 45, scope: !1696)
!1705 = !DILocation(line: 135, column: 1, scope: !1696)
!1706 = distinct !DISubprogram(name: "set_char_quoting", scope: !463, file: !463, line: 143, type: !1707, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!117, !1672, !4, !117}
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1716, !1717}
!1710 = !DILocalVariable(name: "o", arg: 1, scope: !1706, file: !463, line: 143, type: !1672)
!1711 = !DILocalVariable(name: "c", arg: 2, scope: !1706, file: !463, line: 143, type: !4)
!1712 = !DILocalVariable(name: "i", arg: 3, scope: !1706, file: !463, line: 143, type: !117)
!1713 = !DILocalVariable(name: "uc", scope: !1706, file: !463, line: 145, type: !122)
!1714 = !DILocalVariable(name: "p", scope: !1706, file: !463, line: 146, type: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1716 = !DILocalVariable(name: "shift", scope: !1706, file: !463, line: 148, type: !117)
!1717 = !DILocalVariable(name: "r", scope: !1706, file: !463, line: 149, type: !80)
!1718 = !DILocation(line: 0, scope: !1706)
!1719 = !DILocation(line: 147, column: 6, scope: !1706)
!1720 = !DILocation(line: 147, column: 41, scope: !1706)
!1721 = !DILocation(line: 147, column: 62, scope: !1706)
!1722 = !DILocation(line: 147, column: 57, scope: !1706)
!1723 = !DILocation(line: 148, column: 15, scope: !1706)
!1724 = !DILocation(line: 149, column: 21, scope: !1706)
!1725 = !DILocation(line: 149, column: 24, scope: !1706)
!1726 = !DILocation(line: 149, column: 34, scope: !1706)
!1727 = !DILocation(line: 150, column: 19, scope: !1706)
!1728 = !DILocation(line: 150, column: 24, scope: !1706)
!1729 = !DILocation(line: 150, column: 6, scope: !1706)
!1730 = !DILocation(line: 151, column: 3, scope: !1706)
!1731 = distinct !DISubprogram(name: "set_quoting_flags", scope: !463, file: !463, line: 159, type: !1732, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!117, !1672, !117}
!1734 = !{!1735, !1736, !1737}
!1735 = !DILocalVariable(name: "o", arg: 1, scope: !1731, file: !463, line: 159, type: !1672)
!1736 = !DILocalVariable(name: "i", arg: 2, scope: !1731, file: !463, line: 159, type: !117)
!1737 = !DILocalVariable(name: "r", scope: !1731, file: !463, line: 163, type: !117)
!1738 = !DILocation(line: 0, scope: !1731)
!1739 = !DILocation(line: 161, column: 8, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1731, file: !463, line: 161, column: 7)
!1741 = !DILocation(line: 161, column: 7, scope: !1731)
!1742 = !DILocation(line: 163, column: 14, scope: !1731)
!1743 = !{!1694, !896, i64 4}
!1744 = !DILocation(line: 164, column: 12, scope: !1731)
!1745 = !DILocation(line: 165, column: 3, scope: !1731)
!1746 = distinct !DISubprogram(name: "set_custom_quoting", scope: !463, file: !463, line: 169, type: !1747, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1672, !74, !74}
!1749 = !{!1750, !1751, !1752}
!1750 = !DILocalVariable(name: "o", arg: 1, scope: !1746, file: !463, line: 169, type: !1672)
!1751 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1746, file: !463, line: 170, type: !74)
!1752 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1746, file: !463, line: 170, type: !74)
!1753 = !DILocation(line: 0, scope: !1746)
!1754 = !DILocation(line: 172, column: 8, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1746, file: !463, line: 172, column: 7)
!1756 = !DILocation(line: 172, column: 7, scope: !1746)
!1757 = !DILocation(line: 174, column: 12, scope: !1746)
!1758 = !DILocation(line: 175, column: 8, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1746, file: !463, line: 175, column: 7)
!1760 = !DILocation(line: 175, column: 19, scope: !1759)
!1761 = !DILocation(line: 176, column: 5, scope: !1759)
!1762 = !DILocation(line: 177, column: 6, scope: !1746)
!1763 = !DILocation(line: 177, column: 17, scope: !1746)
!1764 = !{!1694, !839, i64 40}
!1765 = !DILocation(line: 178, column: 6, scope: !1746)
!1766 = !DILocation(line: 178, column: 18, scope: !1746)
!1767 = !{!1694, !839, i64 48}
!1768 = !DILocation(line: 179, column: 1, scope: !1746)
!1769 = !DISubprogram(name: "abort", scope: !1019, file: !1019, line: 598, type: !394, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1770 = distinct !DISubprogram(name: "quotearg_buffer", scope: !463, file: !463, line: 774, type: !1771, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!119, !124, !119, !74, !119, !1686}
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1774 = !DILocalVariable(name: "buffer", arg: 1, scope: !1770, file: !463, line: 774, type: !124)
!1775 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1770, file: !463, line: 774, type: !119)
!1776 = !DILocalVariable(name: "arg", arg: 3, scope: !1770, file: !463, line: 775, type: !74)
!1777 = !DILocalVariable(name: "argsize", arg: 4, scope: !1770, file: !463, line: 775, type: !119)
!1778 = !DILocalVariable(name: "o", arg: 5, scope: !1770, file: !463, line: 776, type: !1686)
!1779 = !DILocalVariable(name: "p", scope: !1770, file: !463, line: 778, type: !1686)
!1780 = !DILocalVariable(name: "saved_errno", scope: !1770, file: !463, line: 779, type: !117)
!1781 = !DILocalVariable(name: "r", scope: !1770, file: !463, line: 780, type: !119)
!1782 = !DILocation(line: 0, scope: !1770)
!1783 = !DILocation(line: 778, column: 37, scope: !1770)
!1784 = !DILocation(line: 779, column: 21, scope: !1770)
!1785 = !DILocation(line: 781, column: 43, scope: !1770)
!1786 = !DILocation(line: 781, column: 53, scope: !1770)
!1787 = !DILocation(line: 781, column: 63, scope: !1770)
!1788 = !DILocation(line: 782, column: 43, scope: !1770)
!1789 = !DILocation(line: 782, column: 58, scope: !1770)
!1790 = !DILocation(line: 780, column: 14, scope: !1770)
!1791 = !DILocation(line: 783, column: 9, scope: !1770)
!1792 = !DILocation(line: 784, column: 3, scope: !1770)
!1793 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !463, file: !463, line: 251, type: !1794, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1798)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!119, !124, !119, !74, !119, !489, !117, !1796, !74, !74}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1824, !1826, !1829, !1830, !1831, !1832, !1835, !1836, !1838, !1839, !1842, !1846, !1847, !1855, !1858, !1859, !1860}
!1799 = !DILocalVariable(name: "buffer", arg: 1, scope: !1793, file: !463, line: 251, type: !124)
!1800 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1793, file: !463, line: 251, type: !119)
!1801 = !DILocalVariable(name: "arg", arg: 3, scope: !1793, file: !463, line: 252, type: !74)
!1802 = !DILocalVariable(name: "argsize", arg: 4, scope: !1793, file: !463, line: 252, type: !119)
!1803 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1793, file: !463, line: 253, type: !489)
!1804 = !DILocalVariable(name: "flags", arg: 6, scope: !1793, file: !463, line: 253, type: !117)
!1805 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1793, file: !463, line: 254, type: !1796)
!1806 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1793, file: !463, line: 255, type: !74)
!1807 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1793, file: !463, line: 256, type: !74)
!1808 = !DILocalVariable(name: "unibyte_locale", scope: !1793, file: !463, line: 258, type: !247)
!1809 = !DILocalVariable(name: "len", scope: !1793, file: !463, line: 260, type: !119)
!1810 = !DILocalVariable(name: "orig_buffersize", scope: !1793, file: !463, line: 261, type: !119)
!1811 = !DILocalVariable(name: "quote_string", scope: !1793, file: !463, line: 262, type: !74)
!1812 = !DILocalVariable(name: "quote_string_len", scope: !1793, file: !463, line: 263, type: !119)
!1813 = !DILocalVariable(name: "backslash_escapes", scope: !1793, file: !463, line: 264, type: !247)
!1814 = !DILocalVariable(name: "elide_outer_quotes", scope: !1793, file: !463, line: 265, type: !247)
!1815 = !DILocalVariable(name: "encountered_single_quote", scope: !1793, file: !463, line: 266, type: !247)
!1816 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1793, file: !463, line: 267, type: !247)
!1817 = !DILabel(scope: !1793, name: "process_input", file: !463, line: 308)
!1818 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1793, file: !463, line: 309, type: !247)
!1819 = !DILocalVariable(name: "lq", scope: !1820, file: !463, line: 361, type: !74)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !463, line: 361, column: 11)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !463, line: 360, column: 13)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !463, line: 333, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 312, column: 5)
!1824 = !DILocalVariable(name: "i", scope: !1825, file: !463, line: 395, type: !119)
!1825 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 395, column: 3)
!1826 = !DILocalVariable(name: "is_right_quote", scope: !1827, file: !463, line: 397, type: !247)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !463, line: 396, column: 5)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !463, line: 395, column: 3)
!1829 = !DILocalVariable(name: "escaping", scope: !1827, file: !463, line: 398, type: !247)
!1830 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1827, file: !463, line: 399, type: !247)
!1831 = !DILocalVariable(name: "c", scope: !1827, file: !463, line: 417, type: !122)
!1832 = !DILabel(scope: !1833, name: "c_and_shell_escape", file: !463, line: 502)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 478, column: 9)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 419, column: 9)
!1835 = !DILabel(scope: !1833, name: "c_escape", file: !463, line: 507)
!1836 = !DILocalVariable(name: "m", scope: !1837, file: !463, line: 598, type: !119)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 596, column: 11)
!1838 = !DILocalVariable(name: "printable", scope: !1837, file: !463, line: 600, type: !247)
!1839 = !DILocalVariable(name: "mbs", scope: !1840, file: !463, line: 609, type: !538)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !463, line: 608, column: 15)
!1841 = distinct !DILexicalBlock(scope: !1837, file: !463, line: 602, column: 17)
!1842 = !DILocalVariable(name: "w", scope: !1843, file: !463, line: 618, type: !443)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !463, line: 617, column: 19)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !463, line: 616, column: 17)
!1845 = distinct !DILexicalBlock(scope: !1840, file: !463, line: 616, column: 17)
!1846 = !DILocalVariable(name: "bytes", scope: !1843, file: !463, line: 619, type: !119)
!1847 = !DILocalVariable(name: "j", scope: !1848, file: !463, line: 648, type: !119)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !463, line: 648, column: 29)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !463, line: 647, column: 27)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !463, line: 645, column: 29)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !463, line: 636, column: 23)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !463, line: 628, column: 30)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !463, line: 623, column: 30)
!1854 = distinct !DILexicalBlock(scope: !1843, file: !463, line: 621, column: 25)
!1855 = !DILocalVariable(name: "ilim", scope: !1856, file: !463, line: 674, type: !119)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !463, line: 671, column: 15)
!1857 = distinct !DILexicalBlock(scope: !1837, file: !463, line: 670, column: 17)
!1858 = !DILabel(scope: !1827, name: "store_escape", file: !463, line: 709)
!1859 = !DILabel(scope: !1827, name: "store_c", file: !463, line: 712)
!1860 = !DILabel(scope: !1793, name: "force_outer_quoting_style", file: !463, line: 753)
!1861 = distinct !DIAssignID()
!1862 = distinct !DIAssignID()
!1863 = distinct !DIAssignID()
!1864 = distinct !DIAssignID()
!1865 = distinct !DIAssignID()
!1866 = !DILocation(line: 0, scope: !1840)
!1867 = distinct !DIAssignID()
!1868 = !DILocation(line: 0, scope: !1843)
!1869 = !DILocation(line: 0, scope: !1793)
!1870 = !DILocation(line: 258, column: 25, scope: !1793)
!1871 = !DILocation(line: 258, column: 36, scope: !1793)
!1872 = !DILocation(line: 267, column: 3, scope: !1793)
!1873 = !DILocation(line: 261, column: 10, scope: !1793)
!1874 = !DILocation(line: 262, column: 15, scope: !1793)
!1875 = !DILocation(line: 263, column: 10, scope: !1793)
!1876 = !DILocation(line: 308, column: 2, scope: !1793)
!1877 = !DILocation(line: 311, column: 3, scope: !1793)
!1878 = !DILocation(line: 318, column: 11, scope: !1823)
!1879 = !DILocation(line: 319, column: 9, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !463, line: 319, column: 9)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !463, line: 319, column: 9)
!1882 = distinct !DILexicalBlock(scope: !1823, file: !463, line: 318, column: 11)
!1883 = !DILocation(line: 319, column: 9, scope: !1881)
!1884 = !DILocation(line: 0, scope: !529, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 357, column: 26, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !463, line: 335, column: 11)
!1887 = distinct !DILexicalBlock(scope: !1822, file: !463, line: 334, column: 13)
!1888 = !DILocation(line: 199, column: 29, scope: !529, inlinedAt: !1885)
!1889 = !DILocation(line: 201, column: 19, scope: !1890, inlinedAt: !1885)
!1890 = distinct !DILexicalBlock(scope: !529, file: !463, line: 201, column: 7)
!1891 = !DILocation(line: 201, column: 7, scope: !529, inlinedAt: !1885)
!1892 = !DILocation(line: 229, column: 3, scope: !529, inlinedAt: !1885)
!1893 = !DILocation(line: 230, column: 3, scope: !529, inlinedAt: !1885)
!1894 = !DILocalVariable(name: "ps", arg: 1, scope: !1895, file: !1640, line: 1135, type: !1898)
!1895 = distinct !DISubprogram(name: "mbszero", scope: !1640, file: !1640, line: 1135, type: !1896, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1899)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!1899 = !{!1894}
!1900 = !DILocation(line: 0, scope: !1895, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 230, column: 18, scope: !529, inlinedAt: !1885)
!1902 = !DILocalVariable(name: "__dest", arg: 1, scope: !1903, file: !1649, line: 57, type: !116)
!1903 = distinct !DISubprogram(name: "memset", scope: !1649, file: !1649, line: 57, type: !1650, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1904)
!1904 = !{!1902, !1905, !1906}
!1905 = !DILocalVariable(name: "__ch", arg: 2, scope: !1903, file: !1649, line: 57, type: !117)
!1906 = !DILocalVariable(name: "__len", arg: 3, scope: !1903, file: !1649, line: 57, type: !119)
!1907 = !DILocation(line: 0, scope: !1903, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 1137, column: 3, scope: !1895, inlinedAt: !1901)
!1909 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !1908)
!1910 = !DILocation(line: 231, column: 7, scope: !1911, inlinedAt: !1885)
!1911 = distinct !DILexicalBlock(scope: !529, file: !463, line: 231, column: 7)
!1912 = !DILocation(line: 231, column: 40, scope: !1911, inlinedAt: !1885)
!1913 = !DILocation(line: 231, column: 45, scope: !1911, inlinedAt: !1885)
!1914 = !DILocation(line: 235, column: 1, scope: !529, inlinedAt: !1885)
!1915 = !DILocation(line: 0, scope: !529, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 358, column: 27, scope: !1886)
!1917 = !DILocation(line: 199, column: 29, scope: !529, inlinedAt: !1916)
!1918 = !DILocation(line: 201, column: 19, scope: !1890, inlinedAt: !1916)
!1919 = !DILocation(line: 201, column: 7, scope: !529, inlinedAt: !1916)
!1920 = !DILocation(line: 229, column: 3, scope: !529, inlinedAt: !1916)
!1921 = !DILocation(line: 230, column: 3, scope: !529, inlinedAt: !1916)
!1922 = !DILocation(line: 0, scope: !1895, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 230, column: 18, scope: !529, inlinedAt: !1916)
!1924 = !DILocation(line: 0, scope: !1903, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 1137, column: 3, scope: !1895, inlinedAt: !1923)
!1926 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !1925)
!1927 = !DILocation(line: 231, column: 7, scope: !1911, inlinedAt: !1916)
!1928 = !DILocation(line: 231, column: 40, scope: !1911, inlinedAt: !1916)
!1929 = !DILocation(line: 231, column: 45, scope: !1911, inlinedAt: !1916)
!1930 = !DILocation(line: 235, column: 1, scope: !529, inlinedAt: !1916)
!1931 = !DILocation(line: 360, column: 13, scope: !1822)
!1932 = !DILocation(line: 0, scope: !1820)
!1933 = !DILocation(line: 361, column: 45, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1820, file: !463, line: 361, column: 11)
!1935 = !DILocation(line: 361, column: 11, scope: !1820)
!1936 = !DILocation(line: 362, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !463, line: 362, column: 13)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !463, line: 362, column: 13)
!1939 = !DILocation(line: 362, column: 13, scope: !1938)
!1940 = !DILocation(line: 361, column: 52, scope: !1934)
!1941 = distinct !{!1941, !1935, !1942, !942}
!1942 = !DILocation(line: 362, column: 13, scope: !1820)
!1943 = !DILocation(line: 365, column: 28, scope: !1822)
!1944 = !DILocation(line: 260, column: 10, scope: !1793)
!1945 = !DILocation(line: 367, column: 7, scope: !1823)
!1946 = !DILocation(line: 373, column: 7, scope: !1823)
!1947 = !DILocation(line: 381, column: 11, scope: !1823)
!1948 = !DILocation(line: 376, column: 11, scope: !1823)
!1949 = !DILocation(line: 382, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !463, line: 382, column: 9)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !463, line: 382, column: 9)
!1952 = distinct !DILexicalBlock(scope: !1823, file: !463, line: 381, column: 11)
!1953 = !DILocation(line: 382, column: 9, scope: !1951)
!1954 = !DILocation(line: 389, column: 7, scope: !1823)
!1955 = !DILocation(line: 392, column: 7, scope: !1823)
!1956 = !DILocation(line: 0, scope: !1825)
!1957 = !DILocation(line: 395, column: 8, scope: !1825)
!1958 = !DILocation(line: 395, scope: !1825)
!1959 = !DILocation(line: 395, column: 34, scope: !1828)
!1960 = !DILocation(line: 395, column: 26, scope: !1828)
!1961 = !DILocation(line: 395, column: 48, scope: !1828)
!1962 = !DILocation(line: 395, column: 55, scope: !1828)
!1963 = !DILocation(line: 395, column: 3, scope: !1825)
!1964 = !DILocation(line: 395, column: 67, scope: !1828)
!1965 = !DILocation(line: 0, scope: !1827)
!1966 = !DILocation(line: 402, column: 11, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 401, column: 11)
!1968 = !DILocation(line: 404, column: 17, scope: !1967)
!1969 = !DILocation(line: 405, column: 39, scope: !1967)
!1970 = !DILocation(line: 409, column: 32, scope: !1967)
!1971 = !DILocation(line: 405, column: 19, scope: !1967)
!1972 = !DILocation(line: 405, column: 15, scope: !1967)
!1973 = !DILocation(line: 410, column: 11, scope: !1967)
!1974 = !DILocation(line: 410, column: 25, scope: !1967)
!1975 = !DILocalVariable(name: "__s1", arg: 1, scope: !1976, file: !908, line: 974, type: !1043)
!1976 = distinct !DISubprogram(name: "memeq", scope: !908, file: !908, line: 974, type: !1609, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1977)
!1977 = !{!1975, !1978, !1979}
!1978 = !DILocalVariable(name: "__s2", arg: 2, scope: !1976, file: !908, line: 974, type: !1043)
!1979 = !DILocalVariable(name: "__n", arg: 3, scope: !1976, file: !908, line: 974, type: !119)
!1980 = !DILocation(line: 0, scope: !1976, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 410, column: 14, scope: !1967)
!1982 = !DILocation(line: 976, column: 11, scope: !1976, inlinedAt: !1981)
!1983 = !DILocation(line: 976, column: 10, scope: !1976, inlinedAt: !1981)
!1984 = !DILocation(line: 401, column: 11, scope: !1827)
!1985 = !DILocation(line: 417, column: 25, scope: !1827)
!1986 = !DILocation(line: 418, column: 7, scope: !1827)
!1987 = !DILocation(line: 421, column: 15, scope: !1834)
!1988 = !DILocation(line: 423, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !463, line: 423, column: 15)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !463, line: 422, column: 13)
!1991 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 421, column: 15)
!1992 = !DILocation(line: 423, column: 15, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !463, line: 423, column: 15)
!1994 = !DILocation(line: 423, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !463, line: 423, column: 15)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !463, line: 423, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !463, line: 423, column: 15)
!1998 = !DILocation(line: 423, column: 15, scope: !1996)
!1999 = !DILocation(line: 423, column: 15, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !463, line: 423, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !463, line: 423, column: 15)
!2002 = !DILocation(line: 423, column: 15, scope: !2001)
!2003 = !DILocation(line: 423, column: 15, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !463, line: 423, column: 15)
!2005 = distinct !DILexicalBlock(scope: !1997, file: !463, line: 423, column: 15)
!2006 = !DILocation(line: 423, column: 15, scope: !2005)
!2007 = !DILocation(line: 423, column: 15, scope: !1997)
!2008 = !DILocation(line: 423, column: 15, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !463, line: 423, column: 15)
!2010 = distinct !DILexicalBlock(scope: !1989, file: !463, line: 423, column: 15)
!2011 = !DILocation(line: 423, column: 15, scope: !2010)
!2012 = !DILocation(line: 431, column: 19, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1990, file: !463, line: 430, column: 19)
!2014 = !DILocation(line: 431, column: 24, scope: !2013)
!2015 = !DILocation(line: 431, column: 28, scope: !2013)
!2016 = !DILocation(line: 431, column: 38, scope: !2013)
!2017 = !DILocation(line: 431, column: 48, scope: !2013)
!2018 = !DILocation(line: 431, column: 59, scope: !2013)
!2019 = !DILocation(line: 433, column: 19, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !463, line: 433, column: 19)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !463, line: 433, column: 19)
!2022 = distinct !DILexicalBlock(scope: !2013, file: !463, line: 432, column: 17)
!2023 = !DILocation(line: 433, column: 19, scope: !2021)
!2024 = !DILocation(line: 434, column: 19, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !463, line: 434, column: 19)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !463, line: 434, column: 19)
!2027 = !DILocation(line: 434, column: 19, scope: !2026)
!2028 = !DILocation(line: 435, column: 17, scope: !2022)
!2029 = !DILocation(line: 442, column: 20, scope: !1991)
!2030 = !DILocation(line: 447, column: 11, scope: !1834)
!2031 = !DILocation(line: 450, column: 19, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 448, column: 13)
!2033 = !DILocation(line: 456, column: 19, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2032, file: !463, line: 455, column: 19)
!2035 = !DILocation(line: 456, column: 24, scope: !2034)
!2036 = !DILocation(line: 456, column: 28, scope: !2034)
!2037 = !DILocation(line: 456, column: 38, scope: !2034)
!2038 = !DILocation(line: 456, column: 41, scope: !2034)
!2039 = !DILocation(line: 456, column: 52, scope: !2034)
!2040 = !DILocation(line: 455, column: 19, scope: !2032)
!2041 = !DILocation(line: 457, column: 25, scope: !2034)
!2042 = !DILocation(line: 457, column: 17, scope: !2034)
!2043 = !DILocation(line: 464, column: 25, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2034, file: !463, line: 458, column: 19)
!2045 = !DILocation(line: 468, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !463, line: 468, column: 21)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !463, line: 468, column: 21)
!2048 = !DILocation(line: 468, column: 21, scope: !2047)
!2049 = !DILocation(line: 469, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !463, line: 469, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !463, line: 469, column: 21)
!2052 = !DILocation(line: 469, column: 21, scope: !2051)
!2053 = !DILocation(line: 470, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !463, line: 470, column: 21)
!2055 = distinct !DILexicalBlock(scope: !2044, file: !463, line: 470, column: 21)
!2056 = !DILocation(line: 470, column: 21, scope: !2055)
!2057 = !DILocation(line: 471, column: 21, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !463, line: 471, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2044, file: !463, line: 471, column: 21)
!2060 = !DILocation(line: 471, column: 21, scope: !2059)
!2061 = !DILocation(line: 472, column: 21, scope: !2044)
!2062 = !DILocation(line: 482, column: 33, scope: !1833)
!2063 = !DILocation(line: 483, column: 33, scope: !1833)
!2064 = !DILocation(line: 485, column: 33, scope: !1833)
!2065 = !DILocation(line: 486, column: 33, scope: !1833)
!2066 = !DILocation(line: 487, column: 33, scope: !1833)
!2067 = !DILocation(line: 490, column: 17, scope: !1833)
!2068 = !DILocation(line: 492, column: 21, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !463, line: 491, column: 15)
!2070 = distinct !DILexicalBlock(scope: !1833, file: !463, line: 490, column: 17)
!2071 = !DILocation(line: 499, column: 35, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1833, file: !463, line: 499, column: 17)
!2073 = !DILocation(line: 0, scope: !1833)
!2074 = !DILocation(line: 502, column: 11, scope: !1833)
!2075 = !DILocation(line: 504, column: 17, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1833, file: !463, line: 503, column: 17)
!2077 = !DILocation(line: 507, column: 11, scope: !1833)
!2078 = !DILocation(line: 508, column: 17, scope: !1833)
!2079 = !DILocation(line: 517, column: 15, scope: !1834)
!2080 = !DILocation(line: 517, column: 40, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 517, column: 15)
!2082 = !DILocation(line: 517, column: 47, scope: !2081)
!2083 = !DILocation(line: 517, column: 18, scope: !2081)
!2084 = !DILocation(line: 521, column: 17, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 521, column: 15)
!2086 = !DILocation(line: 521, column: 15, scope: !1834)
!2087 = !DILocation(line: 525, column: 11, scope: !1834)
!2088 = !DILocation(line: 537, column: 15, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 536, column: 15)
!2090 = !DILocation(line: 536, column: 15, scope: !1834)
!2091 = !DILocation(line: 544, column: 15, scope: !1834)
!2092 = !DILocation(line: 546, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !463, line: 545, column: 13)
!2094 = distinct !DILexicalBlock(scope: !1834, file: !463, line: 544, column: 15)
!2095 = !DILocation(line: 549, column: 19, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !463, line: 549, column: 19)
!2097 = !DILocation(line: 549, column: 30, scope: !2096)
!2098 = !DILocation(line: 558, column: 15, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !463, line: 558, column: 15)
!2100 = distinct !DILexicalBlock(scope: !2093, file: !463, line: 558, column: 15)
!2101 = !DILocation(line: 558, column: 15, scope: !2100)
!2102 = !DILocation(line: 559, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !463, line: 559, column: 15)
!2104 = distinct !DILexicalBlock(scope: !2093, file: !463, line: 559, column: 15)
!2105 = !DILocation(line: 559, column: 15, scope: !2104)
!2106 = !DILocation(line: 560, column: 15, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !463, line: 560, column: 15)
!2108 = distinct !DILexicalBlock(scope: !2093, file: !463, line: 560, column: 15)
!2109 = !DILocation(line: 560, column: 15, scope: !2108)
!2110 = !DILocation(line: 562, column: 13, scope: !2093)
!2111 = !DILocation(line: 602, column: 17, scope: !1837)
!2112 = !DILocation(line: 0, scope: !1837)
!2113 = !DILocation(line: 605, column: 29, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1841, file: !463, line: 603, column: 15)
!2115 = !DILocation(line: 605, column: 41, scope: !2114)
!2116 = !DILocation(line: 606, column: 15, scope: !2114)
!2117 = !DILocation(line: 609, column: 17, scope: !1840)
!2118 = !DILocation(line: 0, scope: !1895, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 609, column: 32, scope: !1840)
!2120 = !DILocation(line: 0, scope: !1903, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 1137, column: 3, scope: !1895, inlinedAt: !2119)
!2122 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !2121)
!2123 = !DILocation(line: 613, column: 29, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1840, file: !463, line: 613, column: 21)
!2125 = !DILocation(line: 613, column: 21, scope: !1840)
!2126 = !DILocation(line: 614, column: 29, scope: !2124)
!2127 = !DILocation(line: 614, column: 19, scope: !2124)
!2128 = !DILocation(line: 618, column: 21, scope: !1843)
!2129 = !DILocation(line: 620, column: 54, scope: !1843)
!2130 = !DILocation(line: 619, column: 36, scope: !1843)
!2131 = !DILocation(line: 621, column: 25, scope: !1843)
!2132 = !DILocation(line: 631, column: 38, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1852, file: !463, line: 629, column: 23)
!2134 = !DILocation(line: 631, column: 48, scope: !2133)
!2135 = !DILocation(line: 631, column: 25, scope: !2133)
!2136 = !DILocation(line: 626, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !1853, file: !463, line: 624, column: 23)
!2138 = !DILocation(line: 631, column: 51, scope: !2133)
!2139 = !DILocation(line: 632, column: 28, scope: !2133)
!2140 = !DILocation(line: 631, column: 34, scope: !2133)
!2141 = distinct !{!2141, !2135, !2139, !942}
!2142 = !DILocation(line: 0, scope: !1848)
!2143 = !DILocation(line: 646, column: 29, scope: !1850)
!2144 = !DILocation(line: 648, column: 29, scope: !1848)
!2145 = !DILocation(line: 649, column: 39, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1848, file: !463, line: 648, column: 29)
!2147 = !DILocation(line: 649, column: 31, scope: !2146)
!2148 = !DILocation(line: 648, column: 60, scope: !2146)
!2149 = !DILocation(line: 648, column: 50, scope: !2146)
!2150 = distinct !{!2150, !2144, !2151, !942}
!2151 = !DILocation(line: 654, column: 33, scope: !1848)
!2152 = !DILocation(line: 657, column: 43, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1851, file: !463, line: 657, column: 29)
!2154 = !DILocalVariable(name: "wc", arg: 1, scope: !2155, file: !2156, line: 865, type: !2159)
!2155 = distinct !DISubprogram(name: "c32isprint", scope: !2156, file: !2156, line: 865, type: !2157, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2161)
!2156 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!117, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2160, line: 20, baseType: !80)
!2160 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2161 = !{!2154}
!2162 = !DILocation(line: 0, scope: !2155, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 657, column: 31, scope: !2153)
!2164 = !DILocation(line: 871, column: 10, scope: !2155, inlinedAt: !2163)
!2165 = !DILocation(line: 657, column: 31, scope: !2153)
!2166 = !DILocation(line: 664, column: 23, scope: !1843)
!2167 = !DILocation(line: 665, column: 19, scope: !1844)
!2168 = !DILocation(line: 666, column: 15, scope: !1841)
!2169 = !DILocation(line: 753, column: 2, scope: !1793)
!2170 = !DILocation(line: 756, column: 51, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 756, column: 7)
!2172 = !DILocation(line: 0, scope: !1841)
!2173 = !DILocation(line: 670, column: 19, scope: !1857)
!2174 = !DILocation(line: 670, column: 23, scope: !1857)
!2175 = !DILocation(line: 674, column: 33, scope: !1856)
!2176 = !DILocation(line: 0, scope: !1856)
!2177 = !DILocation(line: 676, column: 17, scope: !1856)
!2178 = !DILocation(line: 678, column: 43, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !463, line: 678, column: 25)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !463, line: 677, column: 19)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !463, line: 676, column: 17)
!2182 = distinct !DILexicalBlock(scope: !1856, file: !463, line: 676, column: 17)
!2183 = !DILocation(line: 680, column: 25, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !463, line: 680, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2179, file: !463, line: 679, column: 23)
!2186 = !DILocation(line: 680, column: 25, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !463, line: 680, column: 25)
!2188 = !DILocation(line: 680, column: 25, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !463, line: 680, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !463, line: 680, column: 25)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !463, line: 680, column: 25)
!2192 = !DILocation(line: 680, column: 25, scope: !2190)
!2193 = !DILocation(line: 680, column: 25, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !463, line: 680, column: 25)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !463, line: 680, column: 25)
!2196 = !DILocation(line: 680, column: 25, scope: !2195)
!2197 = !DILocation(line: 680, column: 25, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !463, line: 680, column: 25)
!2199 = distinct !DILexicalBlock(scope: !2191, file: !463, line: 680, column: 25)
!2200 = !DILocation(line: 680, column: 25, scope: !2199)
!2201 = !DILocation(line: 680, column: 25, scope: !2191)
!2202 = !DILocation(line: 680, column: 25, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !463, line: 680, column: 25)
!2204 = distinct !DILexicalBlock(scope: !2184, file: !463, line: 680, column: 25)
!2205 = !DILocation(line: 680, column: 25, scope: !2204)
!2206 = !DILocation(line: 681, column: 25, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !463, line: 681, column: 25)
!2208 = distinct !DILexicalBlock(scope: !2185, file: !463, line: 681, column: 25)
!2209 = !DILocation(line: 681, column: 25, scope: !2208)
!2210 = !DILocation(line: 682, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !463, line: 682, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2185, file: !463, line: 682, column: 25)
!2213 = !DILocation(line: 682, column: 25, scope: !2212)
!2214 = !DILocation(line: 683, column: 38, scope: !2185)
!2215 = !DILocation(line: 683, column: 33, scope: !2185)
!2216 = !DILocation(line: 684, column: 23, scope: !2185)
!2217 = !DILocation(line: 685, column: 30, scope: !2179)
!2218 = !DILocation(line: 687, column: 25, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !463, line: 687, column: 25)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !463, line: 687, column: 25)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !463, line: 686, column: 23)
!2222 = distinct !DILexicalBlock(scope: !2179, file: !463, line: 685, column: 30)
!2223 = !DILocation(line: 687, column: 25, scope: !2220)
!2224 = !DILocation(line: 689, column: 23, scope: !2221)
!2225 = !DILocation(line: 690, column: 35, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2180, file: !463, line: 690, column: 25)
!2227 = !DILocation(line: 690, column: 30, scope: !2226)
!2228 = !DILocation(line: 690, column: 25, scope: !2180)
!2229 = !DILocation(line: 692, column: 21, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !463, line: 692, column: 21)
!2231 = distinct !DILexicalBlock(scope: !2180, file: !463, line: 692, column: 21)
!2232 = !DILocation(line: 692, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !463, line: 692, column: 21)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !463, line: 692, column: 21)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !463, line: 692, column: 21)
!2236 = !DILocation(line: 692, column: 21, scope: !2234)
!2237 = !DILocation(line: 692, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !463, line: 692, column: 21)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !463, line: 692, column: 21)
!2240 = !DILocation(line: 692, column: 21, scope: !2239)
!2241 = !DILocation(line: 692, column: 21, scope: !2235)
!2242 = !DILocation(line: 0, scope: !2180)
!2243 = !DILocation(line: 693, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !463, line: 693, column: 21)
!2245 = distinct !DILexicalBlock(scope: !2180, file: !463, line: 693, column: 21)
!2246 = !DILocation(line: 693, column: 21, scope: !2245)
!2247 = !DILocation(line: 694, column: 25, scope: !2180)
!2248 = !DILocation(line: 676, column: 17, scope: !2181)
!2249 = distinct !{!2249, !2250, !2251}
!2250 = !DILocation(line: 676, column: 17, scope: !2182)
!2251 = !DILocation(line: 695, column: 19, scope: !2182)
!2252 = !DILocation(line: 409, column: 30, scope: !1967)
!2253 = !DILocation(line: 702, column: 34, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 702, column: 11)
!2255 = !DILocation(line: 704, column: 14, scope: !2254)
!2256 = !DILocation(line: 705, column: 14, scope: !2254)
!2257 = !DILocation(line: 705, column: 35, scope: !2254)
!2258 = !DILocation(line: 705, column: 17, scope: !2254)
!2259 = !DILocation(line: 705, column: 47, scope: !2254)
!2260 = !DILocation(line: 705, column: 65, scope: !2254)
!2261 = !DILocation(line: 706, column: 11, scope: !2254)
!2262 = !DILocation(line: 702, column: 11, scope: !1827)
!2263 = !DILocation(line: 395, column: 15, scope: !1825)
!2264 = !DILocation(line: 709, column: 5, scope: !1827)
!2265 = !DILocation(line: 710, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 710, column: 7)
!2267 = !DILocation(line: 710, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2266, file: !463, line: 710, column: 7)
!2269 = !DILocation(line: 710, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !463, line: 710, column: 7)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !463, line: 710, column: 7)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !463, line: 710, column: 7)
!2273 = !DILocation(line: 710, column: 7, scope: !2271)
!2274 = !DILocation(line: 710, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !463, line: 710, column: 7)
!2276 = distinct !DILexicalBlock(scope: !2272, file: !463, line: 710, column: 7)
!2277 = !DILocation(line: 710, column: 7, scope: !2276)
!2278 = !DILocation(line: 710, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !463, line: 710, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2272, file: !463, line: 710, column: 7)
!2281 = !DILocation(line: 710, column: 7, scope: !2280)
!2282 = !DILocation(line: 710, column: 7, scope: !2272)
!2283 = !DILocation(line: 710, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !463, line: 710, column: 7)
!2285 = distinct !DILexicalBlock(scope: !2266, file: !463, line: 710, column: 7)
!2286 = !DILocation(line: 710, column: 7, scope: !2285)
!2287 = !DILocation(line: 712, column: 5, scope: !1827)
!2288 = !DILocation(line: 713, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !463, line: 713, column: 7)
!2290 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 713, column: 7)
!2291 = !DILocation(line: 417, column: 21, scope: !1827)
!2292 = !DILocation(line: 713, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !463, line: 713, column: 7)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !463, line: 713, column: 7)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !463, line: 713, column: 7)
!2296 = !DILocation(line: 713, column: 7, scope: !2294)
!2297 = !DILocation(line: 713, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !463, line: 713, column: 7)
!2299 = distinct !DILexicalBlock(scope: !2295, file: !463, line: 713, column: 7)
!2300 = !DILocation(line: 713, column: 7, scope: !2299)
!2301 = !DILocation(line: 713, column: 7, scope: !2295)
!2302 = !DILocation(line: 714, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !463, line: 714, column: 7)
!2304 = distinct !DILexicalBlock(scope: !1827, file: !463, line: 714, column: 7)
!2305 = !DILocation(line: 714, column: 7, scope: !2304)
!2306 = !DILocation(line: 716, column: 11, scope: !1827)
!2307 = !DILocation(line: 718, column: 5, scope: !1828)
!2308 = !DILocation(line: 395, column: 82, scope: !1828)
!2309 = !DILocation(line: 395, column: 3, scope: !1828)
!2310 = distinct !{!2310, !1963, !2311, !942}
!2311 = !DILocation(line: 718, column: 5, scope: !1825)
!2312 = !DILocation(line: 720, column: 11, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 720, column: 7)
!2314 = !DILocation(line: 720, column: 16, scope: !2313)
!2315 = !DILocation(line: 728, column: 51, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 728, column: 7)
!2317 = !DILocation(line: 731, column: 11, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2316, file: !463, line: 730, column: 5)
!2319 = !DILocation(line: 732, column: 16, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2318, file: !463, line: 731, column: 11)
!2321 = !DILocation(line: 732, column: 9, scope: !2320)
!2322 = !DILocation(line: 736, column: 18, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !463, line: 736, column: 16)
!2324 = !DILocation(line: 736, column: 29, scope: !2323)
!2325 = !DILocation(line: 745, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 745, column: 7)
!2327 = !DILocation(line: 745, column: 20, scope: !2326)
!2328 = !DILocation(line: 746, column: 12, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !463, line: 746, column: 5)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !463, line: 746, column: 5)
!2331 = !DILocation(line: 746, column: 5, scope: !2330)
!2332 = !DILocation(line: 747, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !463, line: 747, column: 7)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !463, line: 747, column: 7)
!2335 = !DILocation(line: 747, column: 7, scope: !2334)
!2336 = !DILocation(line: 746, column: 39, scope: !2329)
!2337 = distinct !{!2337, !2331, !2338, !942}
!2338 = !DILocation(line: 747, column: 7, scope: !2330)
!2339 = !DILocation(line: 749, column: 11, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !1793, file: !463, line: 749, column: 7)
!2341 = !DILocation(line: 749, column: 7, scope: !1793)
!2342 = !DILocation(line: 750, column: 5, scope: !2340)
!2343 = !DILocation(line: 750, column: 17, scope: !2340)
!2344 = !DILocation(line: 756, column: 21, scope: !2171)
!2345 = !DILocation(line: 760, column: 42, scope: !1793)
!2346 = !DILocation(line: 758, column: 10, scope: !1793)
!2347 = !DILocation(line: 758, column: 3, scope: !1793)
!2348 = !DILocation(line: 762, column: 1, scope: !1793)
!2349 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1019, file: !1019, line: 98, type: !2350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!119}
!2352 = !DISubprogram(name: "strlen", scope: !1012, file: !1012, line: 407, type: !2353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!121, !74}
!2355 = !DISubprogram(name: "iswprint", scope: !2356, file: !2356, line: 120, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2356 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2357 = distinct !DISubprogram(name: "quotearg_alloc", scope: !463, file: !463, line: 788, type: !2358, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!124, !74, !119, !1686}
!2360 = !{!2361, !2362, !2363}
!2361 = !DILocalVariable(name: "arg", arg: 1, scope: !2357, file: !463, line: 788, type: !74)
!2362 = !DILocalVariable(name: "argsize", arg: 2, scope: !2357, file: !463, line: 788, type: !119)
!2363 = !DILocalVariable(name: "o", arg: 3, scope: !2357, file: !463, line: 789, type: !1686)
!2364 = !DILocation(line: 0, scope: !2357)
!2365 = !DILocalVariable(name: "arg", arg: 1, scope: !2366, file: !463, line: 801, type: !74)
!2366 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !463, file: !463, line: 801, type: !2367, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!124, !74, !119, !770, !1686}
!2369 = !{!2365, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377}
!2370 = !DILocalVariable(name: "argsize", arg: 2, scope: !2366, file: !463, line: 801, type: !119)
!2371 = !DILocalVariable(name: "size", arg: 3, scope: !2366, file: !463, line: 801, type: !770)
!2372 = !DILocalVariable(name: "o", arg: 4, scope: !2366, file: !463, line: 802, type: !1686)
!2373 = !DILocalVariable(name: "p", scope: !2366, file: !463, line: 804, type: !1686)
!2374 = !DILocalVariable(name: "saved_errno", scope: !2366, file: !463, line: 805, type: !117)
!2375 = !DILocalVariable(name: "flags", scope: !2366, file: !463, line: 807, type: !117)
!2376 = !DILocalVariable(name: "bufsize", scope: !2366, file: !463, line: 808, type: !119)
!2377 = !DILocalVariable(name: "buf", scope: !2366, file: !463, line: 812, type: !124)
!2378 = !DILocation(line: 0, scope: !2366, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 791, column: 10, scope: !2357)
!2380 = !DILocation(line: 804, column: 37, scope: !2366, inlinedAt: !2379)
!2381 = !DILocation(line: 805, column: 21, scope: !2366, inlinedAt: !2379)
!2382 = !DILocation(line: 807, column: 18, scope: !2366, inlinedAt: !2379)
!2383 = !DILocation(line: 807, column: 24, scope: !2366, inlinedAt: !2379)
!2384 = !DILocation(line: 808, column: 72, scope: !2366, inlinedAt: !2379)
!2385 = !DILocation(line: 809, column: 56, scope: !2366, inlinedAt: !2379)
!2386 = !DILocation(line: 810, column: 49, scope: !2366, inlinedAt: !2379)
!2387 = !DILocation(line: 811, column: 49, scope: !2366, inlinedAt: !2379)
!2388 = !DILocation(line: 808, column: 20, scope: !2366, inlinedAt: !2379)
!2389 = !DILocation(line: 811, column: 62, scope: !2366, inlinedAt: !2379)
!2390 = !DILocation(line: 812, column: 15, scope: !2366, inlinedAt: !2379)
!2391 = !DILocation(line: 813, column: 60, scope: !2366, inlinedAt: !2379)
!2392 = !DILocation(line: 815, column: 32, scope: !2366, inlinedAt: !2379)
!2393 = !DILocation(line: 815, column: 47, scope: !2366, inlinedAt: !2379)
!2394 = !DILocation(line: 813, column: 3, scope: !2366, inlinedAt: !2379)
!2395 = !DILocation(line: 816, column: 9, scope: !2366, inlinedAt: !2379)
!2396 = !DILocation(line: 791, column: 3, scope: !2357)
!2397 = !DILocation(line: 0, scope: !2366)
!2398 = !DILocation(line: 804, column: 37, scope: !2366)
!2399 = !DILocation(line: 805, column: 21, scope: !2366)
!2400 = !DILocation(line: 807, column: 18, scope: !2366)
!2401 = !DILocation(line: 807, column: 27, scope: !2366)
!2402 = !DILocation(line: 807, column: 24, scope: !2366)
!2403 = !DILocation(line: 808, column: 72, scope: !2366)
!2404 = !DILocation(line: 809, column: 56, scope: !2366)
!2405 = !DILocation(line: 810, column: 49, scope: !2366)
!2406 = !DILocation(line: 811, column: 49, scope: !2366)
!2407 = !DILocation(line: 808, column: 20, scope: !2366)
!2408 = !DILocation(line: 811, column: 62, scope: !2366)
!2409 = !DILocation(line: 812, column: 15, scope: !2366)
!2410 = !DILocation(line: 813, column: 60, scope: !2366)
!2411 = !DILocation(line: 815, column: 32, scope: !2366)
!2412 = !DILocation(line: 815, column: 47, scope: !2366)
!2413 = !DILocation(line: 813, column: 3, scope: !2366)
!2414 = !DILocation(line: 816, column: 9, scope: !2366)
!2415 = !DILocation(line: 817, column: 7, scope: !2366)
!2416 = !DILocation(line: 818, column: 11, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2366, file: !463, line: 817, column: 7)
!2418 = !DILocation(line: 818, column: 5, scope: !2417)
!2419 = !DILocation(line: 819, column: 3, scope: !2366)
!2420 = distinct !DISubprogram(name: "quotearg_free", scope: !463, file: !463, line: 837, type: !394, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2421)
!2421 = !{!2422, !2423}
!2422 = !DILocalVariable(name: "sv", scope: !2420, file: !463, line: 839, type: !552)
!2423 = !DILocalVariable(name: "i", scope: !2424, file: !463, line: 840, type: !117)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !463, line: 840, column: 3)
!2425 = !DILocation(line: 839, column: 24, scope: !2420)
!2426 = !DILocation(line: 0, scope: !2420)
!2427 = !DILocation(line: 0, scope: !2424)
!2428 = !DILocation(line: 840, column: 21, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !463, line: 840, column: 3)
!2430 = !DILocation(line: 840, column: 3, scope: !2424)
!2431 = !DILocation(line: 842, column: 13, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2420, file: !463, line: 842, column: 7)
!2433 = !{!2434, !839, i64 8}
!2434 = !{!"slotvec", !1128, i64 0, !839, i64 8}
!2435 = !DILocation(line: 842, column: 17, scope: !2432)
!2436 = !DILocation(line: 842, column: 7, scope: !2420)
!2437 = !DILocation(line: 841, column: 17, scope: !2429)
!2438 = !DILocation(line: 841, column: 5, scope: !2429)
!2439 = !DILocation(line: 840, column: 32, scope: !2429)
!2440 = distinct !{!2440, !2430, !2441, !942}
!2441 = !DILocation(line: 841, column: 20, scope: !2424)
!2442 = !DILocation(line: 844, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2432, file: !463, line: 843, column: 5)
!2444 = !DILocation(line: 845, column: 21, scope: !2443)
!2445 = !{!2434, !1128, i64 0}
!2446 = !DILocation(line: 846, column: 20, scope: !2443)
!2447 = !DILocation(line: 847, column: 5, scope: !2443)
!2448 = !DILocation(line: 848, column: 10, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2420, file: !463, line: 848, column: 7)
!2450 = !DILocation(line: 848, column: 7, scope: !2420)
!2451 = !DILocation(line: 850, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !463, line: 849, column: 5)
!2453 = !DILocation(line: 851, column: 15, scope: !2452)
!2454 = !DILocation(line: 852, column: 5, scope: !2452)
!2455 = !DILocation(line: 853, column: 10, scope: !2420)
!2456 = !DILocation(line: 854, column: 1, scope: !2420)
!2457 = distinct !DISubprogram(name: "quotearg_n", scope: !463, file: !463, line: 919, type: !1009, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2458)
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "n", arg: 1, scope: !2457, file: !463, line: 919, type: !117)
!2460 = !DILocalVariable(name: "arg", arg: 2, scope: !2457, file: !463, line: 919, type: !74)
!2461 = !DILocation(line: 0, scope: !2457)
!2462 = !DILocation(line: 921, column: 10, scope: !2457)
!2463 = !DILocation(line: 921, column: 3, scope: !2457)
!2464 = distinct !DISubprogram(name: "quotearg_n_options", scope: !463, file: !463, line: 866, type: !2465, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!124, !117, !74, !119, !1686}
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2478, !2479, !2481, !2482, !2483}
!2468 = !DILocalVariable(name: "n", arg: 1, scope: !2464, file: !463, line: 866, type: !117)
!2469 = !DILocalVariable(name: "arg", arg: 2, scope: !2464, file: !463, line: 866, type: !74)
!2470 = !DILocalVariable(name: "argsize", arg: 3, scope: !2464, file: !463, line: 866, type: !119)
!2471 = !DILocalVariable(name: "options", arg: 4, scope: !2464, file: !463, line: 867, type: !1686)
!2472 = !DILocalVariable(name: "saved_errno", scope: !2464, file: !463, line: 869, type: !117)
!2473 = !DILocalVariable(name: "sv", scope: !2464, file: !463, line: 871, type: !552)
!2474 = !DILocalVariable(name: "nslots_max", scope: !2464, file: !463, line: 873, type: !117)
!2475 = !DILocalVariable(name: "preallocated", scope: !2476, file: !463, line: 879, type: !247)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !463, line: 878, column: 5)
!2477 = distinct !DILexicalBlock(scope: !2464, file: !463, line: 877, column: 7)
!2478 = !DILocalVariable(name: "new_nslots", scope: !2476, file: !463, line: 880, type: !783)
!2479 = !DILocalVariable(name: "size", scope: !2480, file: !463, line: 891, type: !119)
!2480 = distinct !DILexicalBlock(scope: !2464, file: !463, line: 890, column: 3)
!2481 = !DILocalVariable(name: "val", scope: !2480, file: !463, line: 892, type: !124)
!2482 = !DILocalVariable(name: "flags", scope: !2480, file: !463, line: 894, type: !117)
!2483 = !DILocalVariable(name: "qsize", scope: !2480, file: !463, line: 895, type: !119)
!2484 = distinct !DIAssignID()
!2485 = !DILocation(line: 0, scope: !2476)
!2486 = !DILocation(line: 0, scope: !2464)
!2487 = !DILocation(line: 869, column: 21, scope: !2464)
!2488 = !DILocation(line: 871, column: 24, scope: !2464)
!2489 = !DILocation(line: 874, column: 17, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2464, file: !463, line: 874, column: 7)
!2491 = !DILocation(line: 875, column: 5, scope: !2490)
!2492 = !DILocation(line: 877, column: 7, scope: !2477)
!2493 = !DILocation(line: 877, column: 14, scope: !2477)
!2494 = !DILocation(line: 877, column: 7, scope: !2464)
!2495 = !DILocation(line: 879, column: 31, scope: !2476)
!2496 = !DILocation(line: 880, column: 7, scope: !2476)
!2497 = !DILocation(line: 880, column: 26, scope: !2476)
!2498 = !DILocation(line: 880, column: 13, scope: !2476)
!2499 = distinct !DIAssignID()
!2500 = !DILocation(line: 882, column: 31, scope: !2476)
!2501 = !DILocation(line: 883, column: 33, scope: !2476)
!2502 = !DILocation(line: 883, column: 42, scope: !2476)
!2503 = !DILocation(line: 883, column: 31, scope: !2476)
!2504 = !DILocation(line: 882, column: 22, scope: !2476)
!2505 = !DILocation(line: 882, column: 15, scope: !2476)
!2506 = !DILocation(line: 884, column: 11, scope: !2476)
!2507 = !DILocation(line: 885, column: 15, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2476, file: !463, line: 884, column: 11)
!2509 = !{i64 0, i64 8, !1127, i64 8, i64 8, !838}
!2510 = !DILocation(line: 885, column: 9, scope: !2508)
!2511 = !DILocation(line: 886, column: 20, scope: !2476)
!2512 = !DILocation(line: 886, column: 18, scope: !2476)
!2513 = !DILocation(line: 886, column: 32, scope: !2476)
!2514 = !DILocation(line: 886, column: 43, scope: !2476)
!2515 = !DILocation(line: 886, column: 53, scope: !2476)
!2516 = !DILocation(line: 0, scope: !1903, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 886, column: 7, scope: !2476)
!2518 = !DILocation(line: 59, column: 10, scope: !1903, inlinedAt: !2517)
!2519 = !DILocation(line: 887, column: 16, scope: !2476)
!2520 = !DILocation(line: 887, column: 14, scope: !2476)
!2521 = !DILocation(line: 888, column: 5, scope: !2477)
!2522 = !DILocation(line: 888, column: 5, scope: !2476)
!2523 = !DILocation(line: 891, column: 19, scope: !2480)
!2524 = !DILocation(line: 891, column: 25, scope: !2480)
!2525 = !DILocation(line: 0, scope: !2480)
!2526 = !DILocation(line: 892, column: 23, scope: !2480)
!2527 = !DILocation(line: 894, column: 26, scope: !2480)
!2528 = !DILocation(line: 894, column: 32, scope: !2480)
!2529 = !DILocation(line: 896, column: 55, scope: !2480)
!2530 = !DILocation(line: 897, column: 55, scope: !2480)
!2531 = !DILocation(line: 898, column: 55, scope: !2480)
!2532 = !DILocation(line: 899, column: 55, scope: !2480)
!2533 = !DILocation(line: 895, column: 20, scope: !2480)
!2534 = !DILocation(line: 901, column: 14, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2480, file: !463, line: 901, column: 9)
!2536 = !DILocation(line: 901, column: 9, scope: !2480)
!2537 = !DILocation(line: 903, column: 35, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !463, line: 902, column: 7)
!2539 = !DILocation(line: 903, column: 20, scope: !2538)
!2540 = !DILocation(line: 904, column: 17, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2538, file: !463, line: 904, column: 13)
!2542 = !DILocation(line: 904, column: 13, scope: !2538)
!2543 = !DILocation(line: 905, column: 11, scope: !2541)
!2544 = !DILocation(line: 906, column: 27, scope: !2538)
!2545 = !DILocation(line: 906, column: 19, scope: !2538)
!2546 = !DILocation(line: 907, column: 69, scope: !2538)
!2547 = !DILocation(line: 909, column: 44, scope: !2538)
!2548 = !DILocation(line: 910, column: 44, scope: !2538)
!2549 = !DILocation(line: 907, column: 9, scope: !2538)
!2550 = !DILocation(line: 911, column: 7, scope: !2538)
!2551 = !DILocation(line: 913, column: 11, scope: !2480)
!2552 = !DILocation(line: 914, column: 5, scope: !2480)
!2553 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !463, file: !463, line: 925, type: !2554, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!124, !117, !74, !119}
!2556 = !{!2557, !2558, !2559}
!2557 = !DILocalVariable(name: "n", arg: 1, scope: !2553, file: !463, line: 925, type: !117)
!2558 = !DILocalVariable(name: "arg", arg: 2, scope: !2553, file: !463, line: 925, type: !74)
!2559 = !DILocalVariable(name: "argsize", arg: 3, scope: !2553, file: !463, line: 925, type: !119)
!2560 = !DILocation(line: 0, scope: !2553)
!2561 = !DILocation(line: 927, column: 10, scope: !2553)
!2562 = !DILocation(line: 927, column: 3, scope: !2553)
!2563 = distinct !DISubprogram(name: "quotearg", scope: !463, file: !463, line: 931, type: !1021, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2564)
!2564 = !{!2565}
!2565 = !DILocalVariable(name: "arg", arg: 1, scope: !2563, file: !463, line: 931, type: !74)
!2566 = !DILocation(line: 0, scope: !2563)
!2567 = !DILocation(line: 0, scope: !2457, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 933, column: 10, scope: !2563)
!2569 = !DILocation(line: 921, column: 10, scope: !2457, inlinedAt: !2568)
!2570 = !DILocation(line: 933, column: 3, scope: !2563)
!2571 = distinct !DISubprogram(name: "quotearg_mem", scope: !463, file: !463, line: 937, type: !2572, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!124, !74, !119}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !463, line: 937, type: !74)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !463, line: 937, type: !119)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 0, scope: !2553, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 939, column: 10, scope: !2571)
!2580 = !DILocation(line: 927, column: 10, scope: !2553, inlinedAt: !2579)
!2581 = !DILocation(line: 939, column: 3, scope: !2571)
!2582 = distinct !DISubprogram(name: "quotearg_n_style", scope: !463, file: !463, line: 943, type: !2583, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!124, !117, !489, !74}
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !463, line: 943, type: !117)
!2587 = !DILocalVariable(name: "s", arg: 2, scope: !2582, file: !463, line: 943, type: !489)
!2588 = !DILocalVariable(name: "arg", arg: 3, scope: !2582, file: !463, line: 943, type: !74)
!2589 = !DILocalVariable(name: "o", scope: !2582, file: !463, line: 945, type: !1687)
!2590 = distinct !DIAssignID()
!2591 = !DILocation(line: 0, scope: !2582)
!2592 = !DILocation(line: 945, column: 3, scope: !2582)
!2593 = !{!2594}
!2594 = distinct !{!2594, !2595, !"quoting_options_from_style: argument 0"}
!2595 = distinct !{!2595, !"quoting_options_from_style"}
!2596 = !DILocation(line: 945, column: 36, scope: !2582)
!2597 = !DILocalVariable(name: "style", arg: 1, scope: !2598, file: !463, line: 183, type: !489)
!2598 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !463, file: !463, line: 183, type: !2599, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!504, !489}
!2601 = !{!2597, !2602}
!2602 = !DILocalVariable(name: "o", scope: !2598, file: !463, line: 185, type: !504)
!2603 = !DILocation(line: 0, scope: !2598, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 945, column: 36, scope: !2582)
!2605 = !DILocation(line: 185, column: 26, scope: !2598, inlinedAt: !2604)
!2606 = distinct !DIAssignID()
!2607 = !DILocation(line: 186, column: 13, scope: !2608, inlinedAt: !2604)
!2608 = distinct !DILexicalBlock(scope: !2598, file: !463, line: 186, column: 7)
!2609 = !DILocation(line: 186, column: 7, scope: !2598, inlinedAt: !2604)
!2610 = !DILocation(line: 187, column: 5, scope: !2608, inlinedAt: !2604)
!2611 = !DILocation(line: 188, column: 11, scope: !2598, inlinedAt: !2604)
!2612 = distinct !DIAssignID()
!2613 = !DILocation(line: 946, column: 10, scope: !2582)
!2614 = !DILocation(line: 947, column: 1, scope: !2582)
!2615 = !DILocation(line: 946, column: 3, scope: !2582)
!2616 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !463, file: !463, line: 950, type: !2617, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!124, !117, !489, !74, !119}
!2619 = !{!2620, !2621, !2622, !2623, !2624}
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2616, file: !463, line: 950, type: !117)
!2621 = !DILocalVariable(name: "s", arg: 2, scope: !2616, file: !463, line: 950, type: !489)
!2622 = !DILocalVariable(name: "arg", arg: 3, scope: !2616, file: !463, line: 951, type: !74)
!2623 = !DILocalVariable(name: "argsize", arg: 4, scope: !2616, file: !463, line: 951, type: !119)
!2624 = !DILocalVariable(name: "o", scope: !2616, file: !463, line: 953, type: !1687)
!2625 = distinct !DIAssignID()
!2626 = !DILocation(line: 0, scope: !2616)
!2627 = !DILocation(line: 953, column: 3, scope: !2616)
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"quoting_options_from_style: argument 0"}
!2630 = distinct !{!2630, !"quoting_options_from_style"}
!2631 = !DILocation(line: 953, column: 36, scope: !2616)
!2632 = !DILocation(line: 0, scope: !2598, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 953, column: 36, scope: !2616)
!2634 = !DILocation(line: 185, column: 26, scope: !2598, inlinedAt: !2633)
!2635 = distinct !DIAssignID()
!2636 = !DILocation(line: 186, column: 13, scope: !2608, inlinedAt: !2633)
!2637 = !DILocation(line: 186, column: 7, scope: !2598, inlinedAt: !2633)
!2638 = !DILocation(line: 187, column: 5, scope: !2608, inlinedAt: !2633)
!2639 = !DILocation(line: 188, column: 11, scope: !2598, inlinedAt: !2633)
!2640 = distinct !DIAssignID()
!2641 = !DILocation(line: 954, column: 10, scope: !2616)
!2642 = !DILocation(line: 955, column: 1, scope: !2616)
!2643 = !DILocation(line: 954, column: 3, scope: !2616)
!2644 = distinct !DISubprogram(name: "quotearg_style", scope: !463, file: !463, line: 958, type: !2645, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!124, !489, !74}
!2647 = !{!2648, !2649}
!2648 = !DILocalVariable(name: "s", arg: 1, scope: !2644, file: !463, line: 958, type: !489)
!2649 = !DILocalVariable(name: "arg", arg: 2, scope: !2644, file: !463, line: 958, type: !74)
!2650 = distinct !DIAssignID()
!2651 = !DILocation(line: 0, scope: !2644)
!2652 = !DILocation(line: 0, scope: !2582, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 960, column: 10, scope: !2644)
!2654 = !DILocation(line: 945, column: 3, scope: !2582, inlinedAt: !2653)
!2655 = !{!2656}
!2656 = distinct !{!2656, !2657, !"quoting_options_from_style: argument 0"}
!2657 = distinct !{!2657, !"quoting_options_from_style"}
!2658 = !DILocation(line: 945, column: 36, scope: !2582, inlinedAt: !2653)
!2659 = !DILocation(line: 0, scope: !2598, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 945, column: 36, scope: !2582, inlinedAt: !2653)
!2661 = !DILocation(line: 185, column: 26, scope: !2598, inlinedAt: !2660)
!2662 = distinct !DIAssignID()
!2663 = !DILocation(line: 186, column: 13, scope: !2608, inlinedAt: !2660)
!2664 = !DILocation(line: 186, column: 7, scope: !2598, inlinedAt: !2660)
!2665 = !DILocation(line: 187, column: 5, scope: !2608, inlinedAt: !2660)
!2666 = !DILocation(line: 188, column: 11, scope: !2598, inlinedAt: !2660)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 946, column: 10, scope: !2582, inlinedAt: !2653)
!2669 = !DILocation(line: 947, column: 1, scope: !2582, inlinedAt: !2653)
!2670 = !DILocation(line: 960, column: 3, scope: !2644)
!2671 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !463, file: !463, line: 964, type: !2672, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!124, !489, !74, !119}
!2674 = !{!2675, !2676, !2677}
!2675 = !DILocalVariable(name: "s", arg: 1, scope: !2671, file: !463, line: 964, type: !489)
!2676 = !DILocalVariable(name: "arg", arg: 2, scope: !2671, file: !463, line: 964, type: !74)
!2677 = !DILocalVariable(name: "argsize", arg: 3, scope: !2671, file: !463, line: 964, type: !119)
!2678 = distinct !DIAssignID()
!2679 = !DILocation(line: 0, scope: !2671)
!2680 = !DILocation(line: 0, scope: !2616, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 966, column: 10, scope: !2671)
!2682 = !DILocation(line: 953, column: 3, scope: !2616, inlinedAt: !2681)
!2683 = !{!2684}
!2684 = distinct !{!2684, !2685, !"quoting_options_from_style: argument 0"}
!2685 = distinct !{!2685, !"quoting_options_from_style"}
!2686 = !DILocation(line: 953, column: 36, scope: !2616, inlinedAt: !2681)
!2687 = !DILocation(line: 0, scope: !2598, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 953, column: 36, scope: !2616, inlinedAt: !2681)
!2689 = !DILocation(line: 185, column: 26, scope: !2598, inlinedAt: !2688)
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 186, column: 13, scope: !2608, inlinedAt: !2688)
!2692 = !DILocation(line: 186, column: 7, scope: !2598, inlinedAt: !2688)
!2693 = !DILocation(line: 187, column: 5, scope: !2608, inlinedAt: !2688)
!2694 = !DILocation(line: 188, column: 11, scope: !2598, inlinedAt: !2688)
!2695 = distinct !DIAssignID()
!2696 = !DILocation(line: 954, column: 10, scope: !2616, inlinedAt: !2681)
!2697 = !DILocation(line: 955, column: 1, scope: !2616, inlinedAt: !2681)
!2698 = !DILocation(line: 966, column: 3, scope: !2671)
!2699 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !463, file: !463, line: 970, type: !2700, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!124, !74, !119, !4}
!2702 = !{!2703, !2704, !2705, !2706}
!2703 = !DILocalVariable(name: "arg", arg: 1, scope: !2699, file: !463, line: 970, type: !74)
!2704 = !DILocalVariable(name: "argsize", arg: 2, scope: !2699, file: !463, line: 970, type: !119)
!2705 = !DILocalVariable(name: "ch", arg: 3, scope: !2699, file: !463, line: 970, type: !4)
!2706 = !DILocalVariable(name: "options", scope: !2699, file: !463, line: 972, type: !504)
!2707 = distinct !DIAssignID()
!2708 = !DILocation(line: 0, scope: !2699)
!2709 = !DILocation(line: 972, column: 3, scope: !2699)
!2710 = !DILocation(line: 973, column: 13, scope: !2699)
!2711 = !{i64 0, i64 4, !895, i64 4, i64 4, !895, i64 8, i64 32, !904, i64 40, i64 8, !838, i64 48, i64 8, !838}
!2712 = distinct !DIAssignID()
!2713 = !DILocation(line: 0, scope: !1706, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 974, column: 3, scope: !2699)
!2715 = !DILocation(line: 147, column: 41, scope: !1706, inlinedAt: !2714)
!2716 = !DILocation(line: 147, column: 62, scope: !1706, inlinedAt: !2714)
!2717 = !DILocation(line: 147, column: 57, scope: !1706, inlinedAt: !2714)
!2718 = !DILocation(line: 148, column: 15, scope: !1706, inlinedAt: !2714)
!2719 = !DILocation(line: 149, column: 21, scope: !1706, inlinedAt: !2714)
!2720 = !DILocation(line: 149, column: 24, scope: !1706, inlinedAt: !2714)
!2721 = !DILocation(line: 150, column: 19, scope: !1706, inlinedAt: !2714)
!2722 = !DILocation(line: 150, column: 24, scope: !1706, inlinedAt: !2714)
!2723 = !DILocation(line: 150, column: 6, scope: !1706, inlinedAt: !2714)
!2724 = !DILocation(line: 975, column: 10, scope: !2699)
!2725 = !DILocation(line: 976, column: 1, scope: !2699)
!2726 = !DILocation(line: 975, column: 3, scope: !2699)
!2727 = distinct !DISubprogram(name: "quotearg_char", scope: !463, file: !463, line: 979, type: !2728, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!124, !74, !4}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2727, file: !463, line: 979, type: !74)
!2732 = !DILocalVariable(name: "ch", arg: 2, scope: !2727, file: !463, line: 979, type: !4)
!2733 = distinct !DIAssignID()
!2734 = !DILocation(line: 0, scope: !2727)
!2735 = !DILocation(line: 0, scope: !2699, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 981, column: 10, scope: !2727)
!2737 = !DILocation(line: 972, column: 3, scope: !2699, inlinedAt: !2736)
!2738 = !DILocation(line: 973, column: 13, scope: !2699, inlinedAt: !2736)
!2739 = distinct !DIAssignID()
!2740 = !DILocation(line: 0, scope: !1706, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 974, column: 3, scope: !2699, inlinedAt: !2736)
!2742 = !DILocation(line: 147, column: 41, scope: !1706, inlinedAt: !2741)
!2743 = !DILocation(line: 147, column: 62, scope: !1706, inlinedAt: !2741)
!2744 = !DILocation(line: 147, column: 57, scope: !1706, inlinedAt: !2741)
!2745 = !DILocation(line: 148, column: 15, scope: !1706, inlinedAt: !2741)
!2746 = !DILocation(line: 149, column: 21, scope: !1706, inlinedAt: !2741)
!2747 = !DILocation(line: 149, column: 24, scope: !1706, inlinedAt: !2741)
!2748 = !DILocation(line: 150, column: 19, scope: !1706, inlinedAt: !2741)
!2749 = !DILocation(line: 150, column: 24, scope: !1706, inlinedAt: !2741)
!2750 = !DILocation(line: 150, column: 6, scope: !1706, inlinedAt: !2741)
!2751 = !DILocation(line: 975, column: 10, scope: !2699, inlinedAt: !2736)
!2752 = !DILocation(line: 976, column: 1, scope: !2699, inlinedAt: !2736)
!2753 = !DILocation(line: 981, column: 3, scope: !2727)
!2754 = distinct !DISubprogram(name: "quotearg_colon", scope: !463, file: !463, line: 985, type: !1021, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2755)
!2755 = !{!2756}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2754, file: !463, line: 985, type: !74)
!2757 = distinct !DIAssignID()
!2758 = !DILocation(line: 0, scope: !2754)
!2759 = !DILocation(line: 0, scope: !2727, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 987, column: 10, scope: !2754)
!2761 = !DILocation(line: 0, scope: !2699, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 981, column: 10, scope: !2727, inlinedAt: !2760)
!2763 = !DILocation(line: 972, column: 3, scope: !2699, inlinedAt: !2762)
!2764 = !DILocation(line: 973, column: 13, scope: !2699, inlinedAt: !2762)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 0, scope: !1706, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 974, column: 3, scope: !2699, inlinedAt: !2762)
!2768 = !DILocation(line: 147, column: 57, scope: !1706, inlinedAt: !2767)
!2769 = !DILocation(line: 149, column: 21, scope: !1706, inlinedAt: !2767)
!2770 = !DILocation(line: 150, column: 6, scope: !1706, inlinedAt: !2767)
!2771 = !DILocation(line: 975, column: 10, scope: !2699, inlinedAt: !2762)
!2772 = !DILocation(line: 976, column: 1, scope: !2699, inlinedAt: !2762)
!2773 = !DILocation(line: 987, column: 3, scope: !2754)
!2774 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !463, file: !463, line: 991, type: !2572, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2775)
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "arg", arg: 1, scope: !2774, file: !463, line: 991, type: !74)
!2777 = !DILocalVariable(name: "argsize", arg: 2, scope: !2774, file: !463, line: 991, type: !119)
!2778 = distinct !DIAssignID()
!2779 = !DILocation(line: 0, scope: !2774)
!2780 = !DILocation(line: 0, scope: !2699, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 993, column: 10, scope: !2774)
!2782 = !DILocation(line: 972, column: 3, scope: !2699, inlinedAt: !2781)
!2783 = !DILocation(line: 973, column: 13, scope: !2699, inlinedAt: !2781)
!2784 = distinct !DIAssignID()
!2785 = !DILocation(line: 0, scope: !1706, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 974, column: 3, scope: !2699, inlinedAt: !2781)
!2787 = !DILocation(line: 147, column: 57, scope: !1706, inlinedAt: !2786)
!2788 = !DILocation(line: 149, column: 21, scope: !1706, inlinedAt: !2786)
!2789 = !DILocation(line: 150, column: 6, scope: !1706, inlinedAt: !2786)
!2790 = !DILocation(line: 975, column: 10, scope: !2699, inlinedAt: !2781)
!2791 = !DILocation(line: 976, column: 1, scope: !2699, inlinedAt: !2781)
!2792 = !DILocation(line: 993, column: 3, scope: !2774)
!2793 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !463, file: !463, line: 997, type: !2583, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2794)
!2794 = !{!2795, !2796, !2797, !2798}
!2795 = !DILocalVariable(name: "n", arg: 1, scope: !2793, file: !463, line: 997, type: !117)
!2796 = !DILocalVariable(name: "s", arg: 2, scope: !2793, file: !463, line: 997, type: !489)
!2797 = !DILocalVariable(name: "arg", arg: 3, scope: !2793, file: !463, line: 997, type: !74)
!2798 = !DILocalVariable(name: "options", scope: !2793, file: !463, line: 999, type: !504)
!2799 = distinct !DIAssignID()
!2800 = !DILocation(line: 0, scope: !2793)
!2801 = !DILocation(line: 185, column: 26, scope: !2598, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 1000, column: 13, scope: !2793)
!2803 = !DILocation(line: 999, column: 3, scope: !2793)
!2804 = !DILocation(line: 0, scope: !2598, inlinedAt: !2802)
!2805 = !DILocation(line: 186, column: 13, scope: !2608, inlinedAt: !2802)
!2806 = !DILocation(line: 186, column: 7, scope: !2598, inlinedAt: !2802)
!2807 = !DILocation(line: 187, column: 5, scope: !2608, inlinedAt: !2802)
!2808 = !{!2809}
!2809 = distinct !{!2809, !2810, !"quoting_options_from_style: argument 0"}
!2810 = distinct !{!2810, !"quoting_options_from_style"}
!2811 = !DILocation(line: 1000, column: 13, scope: !2793)
!2812 = distinct !DIAssignID()
!2813 = distinct !DIAssignID()
!2814 = !DILocation(line: 0, scope: !1706, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1001, column: 3, scope: !2793)
!2816 = !DILocation(line: 147, column: 57, scope: !1706, inlinedAt: !2815)
!2817 = !DILocation(line: 149, column: 21, scope: !1706, inlinedAt: !2815)
!2818 = !DILocation(line: 150, column: 6, scope: !1706, inlinedAt: !2815)
!2819 = distinct !DIAssignID()
!2820 = !DILocation(line: 1002, column: 10, scope: !2793)
!2821 = !DILocation(line: 1003, column: 1, scope: !2793)
!2822 = !DILocation(line: 1002, column: 3, scope: !2793)
!2823 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !463, file: !463, line: 1006, type: !2824, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!124, !117, !74, !74, !74}
!2826 = !{!2827, !2828, !2829, !2830}
!2827 = !DILocalVariable(name: "n", arg: 1, scope: !2823, file: !463, line: 1006, type: !117)
!2828 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2823, file: !463, line: 1006, type: !74)
!2829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2823, file: !463, line: 1007, type: !74)
!2830 = !DILocalVariable(name: "arg", arg: 4, scope: !2823, file: !463, line: 1007, type: !74)
!2831 = distinct !DIAssignID()
!2832 = !DILocation(line: 0, scope: !2823)
!2833 = !DILocalVariable(name: "o", scope: !2834, file: !463, line: 1018, type: !504)
!2834 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !463, file: !463, line: 1014, type: !2835, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!124, !117, !74, !74, !74, !119}
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2833}
!2838 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !463, line: 1014, type: !117)
!2839 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2834, file: !463, line: 1014, type: !74)
!2840 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2834, file: !463, line: 1015, type: !74)
!2841 = !DILocalVariable(name: "arg", arg: 4, scope: !2834, file: !463, line: 1016, type: !74)
!2842 = !DILocalVariable(name: "argsize", arg: 5, scope: !2834, file: !463, line: 1016, type: !119)
!2843 = !DILocation(line: 0, scope: !2834, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 1009, column: 10, scope: !2823)
!2845 = !DILocation(line: 1018, column: 3, scope: !2834, inlinedAt: !2844)
!2846 = !DILocation(line: 1018, column: 30, scope: !2834, inlinedAt: !2844)
!2847 = distinct !DIAssignID()
!2848 = distinct !DIAssignID()
!2849 = !DILocation(line: 0, scope: !1746, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 1019, column: 3, scope: !2834, inlinedAt: !2844)
!2851 = !DILocation(line: 174, column: 12, scope: !1746, inlinedAt: !2850)
!2852 = distinct !DIAssignID()
!2853 = !DILocation(line: 175, column: 8, scope: !1759, inlinedAt: !2850)
!2854 = !DILocation(line: 175, column: 19, scope: !1759, inlinedAt: !2850)
!2855 = !DILocation(line: 176, column: 5, scope: !1759, inlinedAt: !2850)
!2856 = !DILocation(line: 177, column: 6, scope: !1746, inlinedAt: !2850)
!2857 = !DILocation(line: 177, column: 17, scope: !1746, inlinedAt: !2850)
!2858 = distinct !DIAssignID()
!2859 = !DILocation(line: 178, column: 6, scope: !1746, inlinedAt: !2850)
!2860 = !DILocation(line: 178, column: 18, scope: !1746, inlinedAt: !2850)
!2861 = distinct !DIAssignID()
!2862 = !DILocation(line: 1020, column: 10, scope: !2834, inlinedAt: !2844)
!2863 = !DILocation(line: 1021, column: 1, scope: !2834, inlinedAt: !2844)
!2864 = !DILocation(line: 1009, column: 3, scope: !2823)
!2865 = distinct !DIAssignID()
!2866 = !DILocation(line: 0, scope: !2834)
!2867 = !DILocation(line: 1018, column: 3, scope: !2834)
!2868 = !DILocation(line: 1018, column: 30, scope: !2834)
!2869 = distinct !DIAssignID()
!2870 = distinct !DIAssignID()
!2871 = !DILocation(line: 0, scope: !1746, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1019, column: 3, scope: !2834)
!2873 = !DILocation(line: 174, column: 12, scope: !1746, inlinedAt: !2872)
!2874 = distinct !DIAssignID()
!2875 = !DILocation(line: 175, column: 8, scope: !1759, inlinedAt: !2872)
!2876 = !DILocation(line: 175, column: 19, scope: !1759, inlinedAt: !2872)
!2877 = !DILocation(line: 176, column: 5, scope: !1759, inlinedAt: !2872)
!2878 = !DILocation(line: 177, column: 6, scope: !1746, inlinedAt: !2872)
!2879 = !DILocation(line: 177, column: 17, scope: !1746, inlinedAt: !2872)
!2880 = distinct !DIAssignID()
!2881 = !DILocation(line: 178, column: 6, scope: !1746, inlinedAt: !2872)
!2882 = !DILocation(line: 178, column: 18, scope: !1746, inlinedAt: !2872)
!2883 = distinct !DIAssignID()
!2884 = !DILocation(line: 1020, column: 10, scope: !2834)
!2885 = !DILocation(line: 1021, column: 1, scope: !2834)
!2886 = !DILocation(line: 1020, column: 3, scope: !2834)
!2887 = distinct !DISubprogram(name: "quotearg_custom", scope: !463, file: !463, line: 1024, type: !2888, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!124, !74, !74, !74}
!2890 = !{!2891, !2892, !2893}
!2891 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2887, file: !463, line: 1024, type: !74)
!2892 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2887, file: !463, line: 1024, type: !74)
!2893 = !DILocalVariable(name: "arg", arg: 3, scope: !2887, file: !463, line: 1025, type: !74)
!2894 = distinct !DIAssignID()
!2895 = !DILocation(line: 0, scope: !2887)
!2896 = !DILocation(line: 0, scope: !2823, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1027, column: 10, scope: !2887)
!2898 = !DILocation(line: 0, scope: !2834, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1009, column: 10, scope: !2823, inlinedAt: !2897)
!2900 = !DILocation(line: 1018, column: 3, scope: !2834, inlinedAt: !2899)
!2901 = !DILocation(line: 1018, column: 30, scope: !2834, inlinedAt: !2899)
!2902 = distinct !DIAssignID()
!2903 = distinct !DIAssignID()
!2904 = !DILocation(line: 0, scope: !1746, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1019, column: 3, scope: !2834, inlinedAt: !2899)
!2906 = !DILocation(line: 174, column: 12, scope: !1746, inlinedAt: !2905)
!2907 = distinct !DIAssignID()
!2908 = !DILocation(line: 175, column: 8, scope: !1759, inlinedAt: !2905)
!2909 = !DILocation(line: 175, column: 19, scope: !1759, inlinedAt: !2905)
!2910 = !DILocation(line: 176, column: 5, scope: !1759, inlinedAt: !2905)
!2911 = !DILocation(line: 177, column: 6, scope: !1746, inlinedAt: !2905)
!2912 = !DILocation(line: 177, column: 17, scope: !1746, inlinedAt: !2905)
!2913 = distinct !DIAssignID()
!2914 = !DILocation(line: 178, column: 6, scope: !1746, inlinedAt: !2905)
!2915 = !DILocation(line: 178, column: 18, scope: !1746, inlinedAt: !2905)
!2916 = distinct !DIAssignID()
!2917 = !DILocation(line: 1020, column: 10, scope: !2834, inlinedAt: !2899)
!2918 = !DILocation(line: 1021, column: 1, scope: !2834, inlinedAt: !2899)
!2919 = !DILocation(line: 1027, column: 3, scope: !2887)
!2920 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !463, file: !463, line: 1031, type: !2921, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!124, !74, !74, !74, !119}
!2923 = !{!2924, !2925, !2926, !2927}
!2924 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2920, file: !463, line: 1031, type: !74)
!2925 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2920, file: !463, line: 1031, type: !74)
!2926 = !DILocalVariable(name: "arg", arg: 3, scope: !2920, file: !463, line: 1032, type: !74)
!2927 = !DILocalVariable(name: "argsize", arg: 4, scope: !2920, file: !463, line: 1032, type: !119)
!2928 = distinct !DIAssignID()
!2929 = !DILocation(line: 0, scope: !2920)
!2930 = !DILocation(line: 0, scope: !2834, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 1034, column: 10, scope: !2920)
!2932 = !DILocation(line: 1018, column: 3, scope: !2834, inlinedAt: !2931)
!2933 = !DILocation(line: 1018, column: 30, scope: !2834, inlinedAt: !2931)
!2934 = distinct !DIAssignID()
!2935 = distinct !DIAssignID()
!2936 = !DILocation(line: 0, scope: !1746, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1019, column: 3, scope: !2834, inlinedAt: !2931)
!2938 = !DILocation(line: 174, column: 12, scope: !1746, inlinedAt: !2937)
!2939 = distinct !DIAssignID()
!2940 = !DILocation(line: 175, column: 8, scope: !1759, inlinedAt: !2937)
!2941 = !DILocation(line: 175, column: 19, scope: !1759, inlinedAt: !2937)
!2942 = !DILocation(line: 176, column: 5, scope: !1759, inlinedAt: !2937)
!2943 = !DILocation(line: 177, column: 6, scope: !1746, inlinedAt: !2937)
!2944 = !DILocation(line: 177, column: 17, scope: !1746, inlinedAt: !2937)
!2945 = distinct !DIAssignID()
!2946 = !DILocation(line: 178, column: 6, scope: !1746, inlinedAt: !2937)
!2947 = !DILocation(line: 178, column: 18, scope: !1746, inlinedAt: !2937)
!2948 = distinct !DIAssignID()
!2949 = !DILocation(line: 1020, column: 10, scope: !2834, inlinedAt: !2931)
!2950 = !DILocation(line: 1021, column: 1, scope: !2834, inlinedAt: !2931)
!2951 = !DILocation(line: 1034, column: 3, scope: !2920)
!2952 = distinct !DISubprogram(name: "quote_n_mem", scope: !463, file: !463, line: 1049, type: !2953, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!74, !117, !74, !119}
!2955 = !{!2956, !2957, !2958}
!2956 = !DILocalVariable(name: "n", arg: 1, scope: !2952, file: !463, line: 1049, type: !117)
!2957 = !DILocalVariable(name: "arg", arg: 2, scope: !2952, file: !463, line: 1049, type: !74)
!2958 = !DILocalVariable(name: "argsize", arg: 3, scope: !2952, file: !463, line: 1049, type: !119)
!2959 = !DILocation(line: 0, scope: !2952)
!2960 = !DILocation(line: 1051, column: 10, scope: !2952)
!2961 = !DILocation(line: 1051, column: 3, scope: !2952)
!2962 = distinct !DISubprogram(name: "quote_mem", scope: !463, file: !463, line: 1055, type: !2963, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!74, !74, !119}
!2965 = !{!2966, !2967}
!2966 = !DILocalVariable(name: "arg", arg: 1, scope: !2962, file: !463, line: 1055, type: !74)
!2967 = !DILocalVariable(name: "argsize", arg: 2, scope: !2962, file: !463, line: 1055, type: !119)
!2968 = !DILocation(line: 0, scope: !2962)
!2969 = !DILocation(line: 0, scope: !2952, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 1057, column: 10, scope: !2962)
!2971 = !DILocation(line: 1051, column: 10, scope: !2952, inlinedAt: !2970)
!2972 = !DILocation(line: 1057, column: 3, scope: !2962)
!2973 = distinct !DISubprogram(name: "quote_n", scope: !463, file: !463, line: 1061, type: !2974, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!74, !117, !74}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2973, file: !463, line: 1061, type: !117)
!2978 = !DILocalVariable(name: "arg", arg: 2, scope: !2973, file: !463, line: 1061, type: !74)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 0, scope: !2952, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 1063, column: 10, scope: !2973)
!2982 = !DILocation(line: 1051, column: 10, scope: !2952, inlinedAt: !2981)
!2983 = !DILocation(line: 1063, column: 3, scope: !2973)
!2984 = distinct !DISubprogram(name: "quote", scope: !463, file: !463, line: 1067, type: !2985, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!74, !74}
!2987 = !{!2988}
!2988 = !DILocalVariable(name: "arg", arg: 1, scope: !2984, file: !463, line: 1067, type: !74)
!2989 = !DILocation(line: 0, scope: !2984)
!2990 = !DILocation(line: 0, scope: !2973, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1069, column: 10, scope: !2984)
!2992 = !DILocation(line: 0, scope: !2952, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 1063, column: 10, scope: !2973, inlinedAt: !2991)
!2994 = !DILocation(line: 1051, column: 10, scope: !2952, inlinedAt: !2993)
!2995 = !DILocation(line: 1069, column: 3, scope: !2984)
!2996 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !567, file: !567, line: 156, type: !2997, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3021)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!124, !2999}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !721, line: 92, baseType: !3002)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !721, line: 65, size: 576, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3013, !3014, !3015, !3016}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !3002, file: !721, line: 69, baseType: !124, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !3002, file: !721, line: 70, baseType: !124, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !3002, file: !721, line: 71, baseType: !124, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !3002, file: !721, line: 72, baseType: !124, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !3002, file: !721, line: 74, baseType: !3009, size: 128, offset: 256)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1100, line: 11, size: 128, elements: !3010)
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3009, file: !1100, line: 16, baseType: !747, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3009, file: !1100, line: 21, baseType: !1104, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !3002, file: !721, line: 75, baseType: !1106, size: 32, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !3002, file: !721, line: 76, baseType: !1106, size: 32, offset: 416)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !3002, file: !721, line: 77, baseType: !729, size: 16, offset: 448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !3002, file: !721, line: 79, baseType: !3017, size: 64, offset: 480)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !721, line: 79, size: 64, elements: !3018)
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !3017, file: !721, line: 79, baseType: !117, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !3017, file: !721, line: 79, baseType: !117, size: 32, offset: 32)
!3021 = !{!3022, !3023, !3024, !3025}
!3022 = !DILocalVariable(name: "ut", arg: 1, scope: !2996, file: !567, line: 156, type: !2999)
!3023 = !DILocalVariable(name: "name", scope: !2996, file: !567, line: 158, type: !74)
!3024 = !DILocalVariable(name: "len", scope: !2996, file: !567, line: 159, type: !783)
!3025 = !DILocalVariable(name: "p", scope: !2996, file: !567, line: 160, type: !74)
!3026 = !DILocation(line: 0, scope: !2996)
!3027 = !DILocation(line: 158, column: 26, scope: !2996)
!3028 = !DILocation(line: 159, column: 15, scope: !2996)
!3029 = !DILocation(line: 161, column: 17, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2996, file: !567, line: 161, column: 3)
!3031 = !DILocation(line: 161, column: 8, scope: !3030)
!3032 = !DILocation(line: 161, scope: !3030)
!3033 = !DILocation(line: 161, column: 29, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !567, line: 161, column: 3)
!3035 = !DILocation(line: 161, column: 33, scope: !3034)
!3036 = !DILocation(line: 161, column: 36, scope: !3034)
!3037 = !DILocation(line: 161, column: 42, scope: !3034)
!3038 = !DILocation(line: 161, column: 3, scope: !3030)
!3039 = distinct !{!3039, !3038, !3040, !942}
!3040 = !DILocation(line: 162, column: 5, scope: !3030)
!3041 = !DILocation(line: 163, column: 29, scope: !2996)
!3042 = !DILocation(line: 163, column: 10, scope: !2996)
!3043 = !DILocation(line: 163, column: 3, scope: !2996)
!3044 = distinct !DISubprogram(name: "read_utmp", scope: !567, file: !567, line: 977, type: !3045, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3049)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!117, !74, !782, !3047, !117}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DILocalVariable(name: "file", arg: 1, scope: !3044, file: !567, line: 977, type: !74)
!3051 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3044, file: !567, line: 977, type: !782)
!3052 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3044, file: !567, line: 977, type: !3047)
!3053 = !DILocalVariable(name: "options", arg: 4, scope: !3044, file: !567, line: 978, type: !117)
!3054 = distinct !DIAssignID()
!3055 = distinct !DIAssignID()
!3056 = distinct !DIAssignID()
!3057 = distinct !DIAssignID()
!3058 = distinct !DIAssignID()
!3059 = !DILocation(line: 0, scope: !3044)
!3060 = !DILocalVariable(name: "file", arg: 1, scope: !3061, file: !567, line: 320, type: !74)
!3061 = distinct !DISubprogram(name: "read_utmp_from_file", scope: !567, file: !567, line: 320, type: !3045, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3062)
!3062 = !{!3060, !3063, !3064, !3065, !3066, !3074, !3075, !3076, !3077, !3079, !3080, !3084, !3087, !3090}
!3063 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3061, file: !567, line: 320, type: !782)
!3064 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3061, file: !567, line: 320, type: !3047)
!3065 = !DILocalVariable(name: "options", arg: 4, scope: !3061, file: !567, line: 321, type: !117)
!3066 = !DILocalVariable(name: "a", scope: !3061, file: !567, line: 332, type: !3067)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmp_alloc", file: !567, line: 202, size: 256, elements: !3068)
!3068 = !{!3069, !3071, !3072, !3073}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "utmp", scope: !3067, file: !567, line: 208, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "filled", scope: !3067, file: !567, line: 211, baseType: !783, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "string_bytes", scope: !3067, file: !567, line: 214, baseType: !783, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_bytes", scope: !3067, file: !567, line: 218, baseType: !783, size: 64, offset: 192)
!3074 = !DILocalVariable(name: "file_is_utmp", scope: !3061, file: !567, line: 347, type: !247)
!3075 = !DILocalVariable(name: "runlevel_ts", scope: !3061, file: !567, line: 349, type: !3009)
!3076 = !DILocalVariable(name: "entry", scope: !3061, file: !567, line: 352, type: !1043)
!3077 = !DILocalVariable(name: "ut", scope: !3078, file: !567, line: 356, type: !723)
!3078 = distinct !DILexicalBlock(scope: !3061, file: !567, line: 355, column: 5)
!3079 = !DILocalVariable(name: "ts", scope: !3078, file: !567, line: 358, type: !3009)
!3080 = !DILocalVariable(name: "i", scope: !3081, file: !567, line: 429, type: !783)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !567, line: 429, column: 7)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !567, line: 428, column: 5)
!3083 = distinct !DILexicalBlock(scope: !3061, file: !567, line: 426, column: 7)
!3084 = !DILocalVariable(name: "ut", scope: !3085, file: !567, line: 431, type: !3070)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !567, line: 430, column: 9)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !567, line: 429, column: 7)
!3087 = !DILocalVariable(name: "boot_time", scope: !3088, file: !567, line: 443, type: !3009)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !567, line: 441, column: 9)
!3089 = distinct !DILexicalBlock(scope: !3082, file: !567, line: 440, column: 11)
!3090 = !DILocalVariable(name: "boot_time", scope: !3091, file: !567, line: 592, type: !3009)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !567, line: 591, column: 5)
!3092 = distinct !DILexicalBlock(scope: !3061, file: !567, line: 588, column: 7)
!3093 = !DILocation(line: 0, scope: !3061, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 986, column: 10, scope: !3044)
!3095 = !DILocation(line: 323, column: 16, scope: !3096, inlinedAt: !3094)
!3096 = distinct !DILexicalBlock(scope: !3061, file: !567, line: 323, column: 7)
!3097 = !DILocation(line: 323, column: 39, scope: !3096, inlinedAt: !3094)
!3098 = !DILocation(line: 324, column: 7, scope: !3096, inlinedAt: !3094)
!3099 = !DILocation(line: 342, column: 3, scope: !3061, inlinedAt: !3094)
!3100 = !DILocation(line: 344, column: 3, scope: !3061, inlinedAt: !3094)
!3101 = !DILocalVariable(name: "__s1", arg: 1, scope: !3102, file: !908, line: 1359, type: !74)
!3102 = distinct !DISubprogram(name: "streq", scope: !908, file: !908, line: 1359, type: !909, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3103)
!3103 = !{!3101, !3104}
!3104 = !DILocalVariable(name: "__s2", arg: 2, scope: !3102, file: !908, line: 1359, type: !74)
!3105 = !DILocation(line: 0, scope: !3102, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 347, column: 23, scope: !3061, inlinedAt: !3094)
!3107 = !DILocation(line: 1361, column: 11, scope: !3102, inlinedAt: !3106)
!3108 = !DILocation(line: 1361, column: 10, scope: !3102, inlinedAt: !3106)
!3109 = !DILocation(line: 354, column: 19, scope: !3061, inlinedAt: !3094)
!3110 = !DILocation(line: 354, column: 36, scope: !3061, inlinedAt: !3094)
!3111 = !DILocation(line: 354, column: 3, scope: !3061, inlinedAt: !3094)
!3112 = !DILocation(line: 0, scope: !3078, inlinedAt: !3094)
!3113 = !DILocation(line: 360, column: 25, scope: !3078, inlinedAt: !3094)
!3114 = !DILocation(line: 360, column: 31, scope: !3078, inlinedAt: !3094)
!3115 = !{!3116, !1128, i64 344}
!3116 = !{!"utmpx", !937, i64 0, !896, i64 4, !840, i64 8, !840, i64 40, !840, i64 44, !840, i64 76, !3117, i64 332, !1128, i64 336, !3118, i64 344, !840, i64 360, !840, i64 376}
!3117 = !{!"__exit_status", !937, i64 0, !937, i64 2}
!3118 = !{!"timeval", !1128, i64 0, !1128, i64 8}
!3119 = !DILocation(line: 360, column: 60, scope: !3078, inlinedAt: !3094)
!3120 = !{!3116, !1128, i64 352}
!3121 = !DILocation(line: 360, column: 68, scope: !3078, inlinedAt: !3094)
!3122 = !DILocation(line: 365, column: 11, scope: !3078, inlinedAt: !3094)
!3123 = !DILocation(line: 366, column: 21, scope: !3078, inlinedAt: !3094)
!3124 = !DILocation(line: 366, column: 35, scope: !3078, inlinedAt: !3094)
!3125 = !DILocation(line: 368, column: 25, scope: !3078, inlinedAt: !3094)
!3126 = !DILocation(line: 368, column: 32, scope: !3078, inlinedAt: !3094)
!3127 = !DILocation(line: 372, column: 25, scope: !3078, inlinedAt: !3094)
!3128 = !DILocation(line: 372, column: 34, scope: !3078, inlinedAt: !3094)
!3129 = !DILocation(line: 374, column: 25, scope: !3078, inlinedAt: !3094)
!3130 = !DILocation(line: 374, column: 34, scope: !3078, inlinedAt: !3094)
!3131 = !DILocation(line: 379, column: 25, scope: !3078, inlinedAt: !3094)
!3132 = !{!3116, !896, i64 4}
!3133 = !DILocation(line: 384, column: 25, scope: !3078, inlinedAt: !3094)
!3134 = !{!3116, !937, i64 0}
!3135 = !DILocation(line: 390, column: 25, scope: !3078, inlinedAt: !3094)
!3136 = !{!3116, !1128, i64 336}
!3137 = !DILocation(line: 394, column: 21, scope: !3078, inlinedAt: !3094)
!3138 = !{!3116, !937, i64 332}
!3139 = !DILocation(line: 394, column: 49, scope: !3078, inlinedAt: !3094)
!3140 = !{!3116, !937, i64 334}
!3141 = !{i64 0, i64 8, !838, i64 8, i64 8, !1127, i64 16, i64 8, !1127, i64 24, i64 8, !1127}
!3142 = !{i64 0, i64 8, !1127, i64 8, i64 8, !1127, i64 16, i64 8, !1127}
!3143 = !{i64 0, i64 8, !1127, i64 8, i64 8, !1127}
!3144 = !{i64 0, i64 8, !1127}
!3145 = !DILocation(line: 398, column: 11, scope: !3146, inlinedAt: !3094)
!3146 = distinct !DILexicalBlock(scope: !3078, file: !567, line: 397, column: 11)
!3147 = !DILocalVariable(name: "__s1", arg: 1, scope: !3148, file: !908, line: 974, type: !1043)
!3148 = distinct !DISubprogram(name: "memeq", scope: !908, file: !908, line: 974, type: !1609, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3149)
!3149 = !{!3147, !3150, !3151}
!3150 = !DILocalVariable(name: "__s2", arg: 2, scope: !3148, file: !908, line: 974, type: !1043)
!3151 = !DILocalVariable(name: "__n", arg: 3, scope: !3148, file: !908, line: 974, type: !119)
!3152 = !DILocation(line: 0, scope: !3148, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 398, column: 14, scope: !3146, inlinedAt: !3094)
!3154 = !DILocation(line: 976, column: 11, scope: !3148, inlinedAt: !3153)
!3155 = !DILocation(line: 976, column: 10, scope: !3148, inlinedAt: !3153)
!3156 = !DILocation(line: 399, column: 11, scope: !3146, inlinedAt: !3094)
!3157 = !DILocation(line: 0, scope: !3148, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 399, column: 14, scope: !3146, inlinedAt: !3094)
!3159 = !DILocation(line: 976, column: 11, scope: !3148, inlinedAt: !3158)
!3160 = !DILocation(line: 976, column: 10, scope: !3148, inlinedAt: !3158)
!3161 = !DILocation(line: 397, column: 11, scope: !3078, inlinedAt: !3094)
!3162 = distinct !{!3162, !3111, !3163, !942}
!3163 = !DILocation(line: 408, column: 5, scope: !3061, inlinedAt: !3094)
!3164 = !DILocation(line: 410, column: 3, scope: !3061, inlinedAt: !3094)
!3165 = !DILocation(line: 427, column: 7, scope: !3083, inlinedAt: !3094)
!3166 = !DILocation(line: 0, scope: !3081, inlinedAt: !3094)
!3167 = !DILocation(line: 429, column: 27, scope: !3086, inlinedAt: !3094)
!3168 = !DILocation(line: 429, column: 7, scope: !3081, inlinedAt: !3094)
!3169 = !DILocation(line: 0, scope: !3085, inlinedAt: !3094)
!3170 = !DILocation(line: 432, column: 15, scope: !3171, inlinedAt: !3094)
!3171 = distinct !DILexicalBlock(scope: !3085, file: !567, line: 432, column: 15)
!3172 = !DILocation(line: 432, column: 15, scope: !3085, inlinedAt: !3094)
!3173 = !DILocation(line: 435, column: 23, scope: !3174, inlinedAt: !3094)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !567, line: 435, column: 19)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !567, line: 433, column: 13)
!3176 = !DILocation(line: 435, column: 29, scope: !3174, inlinedAt: !3094)
!3177 = !{!1161, !1128, i64 32}
!3178 = !DILocation(line: 435, column: 36, scope: !3174, inlinedAt: !3094)
!3179 = !DILocation(line: 435, column: 42, scope: !3174, inlinedAt: !3094)
!3180 = !DILocation(line: 436, column: 29, scope: !3174, inlinedAt: !3094)
!3181 = !DILocalVariable(name: "a", arg: 1, scope: !3182, file: !567, line: 302, type: !3067)
!3182 = distinct !DISubprogram(name: "have_boot_time", scope: !567, file: !567, line: 302, type: !3183, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!247, !3067}
!3185 = !{!3181, !3186, !3188}
!3186 = !DILocalVariable(name: "i", scope: !3187, file: !567, line: 304, type: !783)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !567, line: 304, column: 3)
!3188 = !DILocalVariable(name: "ut", scope: !3189, file: !567, line: 306, type: !3070)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !567, line: 305, column: 5)
!3190 = distinct !DILexicalBlock(scope: !3187, file: !567, line: 304, column: 3)
!3191 = !DILocation(line: 0, scope: !3182, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 440, column: 12, scope: !3089, inlinedAt: !3094)
!3193 = !DILocation(line: 0, scope: !3187, inlinedAt: !3192)
!3194 = !DILocation(line: 304, column: 3, scope: !3187, inlinedAt: !3192)
!3195 = !DILocation(line: 429, column: 40, scope: !3086, inlinedAt: !3094)
!3196 = distinct !{!3196, !3168, !3197, !942}
!3197 = !DILocation(line: 439, column: 9, scope: !3081, inlinedAt: !3094)
!3198 = !DILocation(line: 307, column: 11, scope: !3199, inlinedAt: !3192)
!3199 = distinct !DILexicalBlock(scope: !3189, file: !567, line: 307, column: 11)
!3200 = !DILocation(line: 0, scope: !3189, inlinedAt: !3192)
!3201 = !DILocation(line: 304, column: 36, scope: !3190, inlinedAt: !3192)
!3202 = !DILocation(line: 304, column: 23, scope: !3190, inlinedAt: !3192)
!3203 = distinct !{!3203, !3194, !3204, !942}
!3204 = !DILocation(line: 309, column: 5, scope: !3187, inlinedAt: !3192)
!3205 = distinct !{!3205, !3194, !3204, !942}
!3206 = !DILocation(line: 440, column: 11, scope: !3082, inlinedAt: !3094)
!3207 = !DILocalVariable(name: "statbuf", scope: !3208, file: !581, line: 108, type: !3224)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !581, line: 106, column: 5)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !581, line: 105, column: 3)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !581, line: 105, column: 3)
!3211 = distinct !DISubprogram(name: "get_linux_boot_time_fallback", scope: !581, file: !581, line: 87, type: !3212, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3215)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!117, !3214}
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3215 = !{!3216, !3217, !3219, !3220, !3207, !3221}
!3216 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3211, file: !581, line: 87, type: !3214)
!3217 = !DILocalVariable(name: "boot_touched_files", scope: !3211, file: !581, line: 96, type: !3218)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 256, elements: !136)
!3219 = !DILocalVariable(name: "i", scope: !3210, file: !581, line: 105, type: !783)
!3220 = !DILocalVariable(name: "filename", scope: !3208, file: !581, line: 107, type: !74)
!3221 = !DILocalVariable(name: "boot_time", scope: !3222, file: !581, line: 111, type: !3009)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !581, line: 110, column: 9)
!3223 = distinct !DILexicalBlock(scope: !3208, file: !581, line: 109, column: 11)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3225, line: 44, size: 1024, elements: !3226)
!3225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3226 = !{!3227, !3229, !3231, !3233, !3235, !3237, !3239, !3240, !3241, !3242, !3244, !3245, !3247, !3248, !3249, !3250}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3224, file: !3225, line: 46, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !287, line: 145, baseType: !121)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3224, file: !3225, line: 47, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !287, line: 148, baseType: !121)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3224, file: !3225, line: 48, baseType: !3232, size: 32, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !287, line: 150, baseType: !80)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3224, file: !3225, line: 49, baseType: !3234, size: 32, offset: 160)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !287, line: 151, baseType: !80)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3224, file: !3225, line: 50, baseType: !3236, size: 32, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !287, line: 146, baseType: !80)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3224, file: !3225, line: 51, baseType: !3238, size: 32, offset: 224)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !287, line: 147, baseType: !80)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3224, file: !3225, line: 52, baseType: !3228, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3224, file: !3225, line: 53, baseType: !3228, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3224, file: !3225, line: 54, baseType: !286, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3224, file: !3225, line: 55, baseType: !3243, size: 32, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !287, line: 175, baseType: !117)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3224, file: !3225, line: 56, baseType: !117, size: 32, offset: 480)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3224, file: !3225, line: 57, baseType: !3246, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !287, line: 180, baseType: !288)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3224, file: !3225, line: 65, baseType: !3009, size: 128, offset: 576)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3224, file: !3225, line: 66, baseType: !3009, size: 128, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3224, file: !3225, line: 67, baseType: !3009, size: 128, offset: 832)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3224, file: !3225, line: 79, baseType: !3251, size: 64, offset: 960)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !143)
!3252 = !DILocation(line: 0, scope: !3208, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 444, column: 15, scope: !3254, inlinedAt: !3094)
!3254 = distinct !DILexicalBlock(scope: !3088, file: !567, line: 444, column: 15)
!3255 = !DILocation(line: 0, scope: !3211, inlinedAt: !3253)
!3256 = distinct !DIAssignID()
!3257 = !DILocation(line: 0, scope: !3210, inlinedAt: !3253)
!3258 = !DILocation(line: 108, column: 7, scope: !3208, inlinedAt: !3253)
!3259 = !DILocation(line: 109, column: 11, scope: !3223, inlinedAt: !3253)
!3260 = !DILocation(line: 109, column: 37, scope: !3223, inlinedAt: !3253)
!3261 = !DILocalVariable(name: "st", arg: 1, scope: !3262, file: !3263, line: 169, type: !3266)
!3262 = distinct !DISubprogram(name: "get_stat_mtime", scope: !3263, file: !3263, line: 169, type: !3264, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3268)
!3263 = !DIFile(filename: "lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!3009, !3266}
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3224)
!3268 = !{!3261}
!3269 = !DILocation(line: 0, scope: !3262, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 111, column: 39, scope: !3222, inlinedAt: !3253)
!3271 = !DILocation(line: 0, scope: !3222, inlinedAt: !3253)
!3272 = !DILocation(line: 109, column: 11, scope: !3208, inlinedAt: !3253)
!3273 = !DILocation(line: 122, column: 5, scope: !3209, inlinedAt: !3253)
!3274 = !DILocation(line: 0, scope: !3088, inlinedAt: !3094)
!3275 = !DILocation(line: 444, column: 15, scope: !3088, inlinedAt: !3094)
!3276 = !DILocation(line: 172, column: 10, scope: !3262, inlinedAt: !3270)
!3277 = !DILocation(line: 445, column: 17, scope: !3254, inlinedAt: !3094)
!3278 = !DILocation(line: 445, column: 13, scope: !3254, inlinedAt: !3094)
!3279 = !DILocation(line: 589, column: 7, scope: !3092, inlinedAt: !3094)
!3280 = !DILocation(line: 0, scope: !3102, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 589, column: 10, scope: !3092, inlinedAt: !3094)
!3282 = !DILocation(line: 1361, column: 11, scope: !3102, inlinedAt: !3281)
!3283 = !DILocation(line: 1361, column: 10, scope: !3102, inlinedAt: !3281)
!3284 = !DILocation(line: 590, column: 7, scope: !3092, inlinedAt: !3094)
!3285 = !DILocation(line: 0, scope: !3182, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 590, column: 11, scope: !3092, inlinedAt: !3094)
!3287 = !DILocation(line: 0, scope: !3187, inlinedAt: !3286)
!3288 = !DILocation(line: 304, column: 23, scope: !3190, inlinedAt: !3286)
!3289 = !DILocation(line: 304, column: 3, scope: !3187, inlinedAt: !3286)
!3290 = !DILocation(line: 0, scope: !3189, inlinedAt: !3286)
!3291 = !DILocation(line: 307, column: 11, scope: !3199, inlinedAt: !3286)
!3292 = !DILocalVariable(name: "a", arg: 1, scope: !3293, file: !567, line: 284, type: !3067)
!3293 = distinct !DISubprogram(name: "finish_utmp", scope: !567, file: !567, line: 284, type: !3294, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!3067, !3067}
!3296 = !{!3292, !3297, !3298}
!3297 = !DILocalVariable(name: "stringlim", scope: !3293, file: !567, line: 286, type: !124)
!3298 = !DILocalVariable(name: "i", scope: !3299, file: !567, line: 288, type: !783)
!3299 = distinct !DILexicalBlock(scope: !3293, file: !567, line: 288, column: 3)
!3300 = !DILocation(line: 0, scope: !3293, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 688, column: 7, scope: !3061, inlinedAt: !3094)
!3302 = !DILocation(line: 286, column: 37, scope: !3293, inlinedAt: !3301)
!3303 = !DILocation(line: 0, scope: !3299, inlinedAt: !3301)
!3304 = !DILocation(line: 288, column: 3, scope: !3299, inlinedAt: !3301)
!3305 = !DILocation(line: 304, column: 36, scope: !3190, inlinedAt: !3286)
!3306 = distinct !{!3306, !3289, !3307, !942}
!3307 = !DILocation(line: 309, column: 5, scope: !3187, inlinedAt: !3286)
!3308 = distinct !{!3308, !3289, !3307, !942}
!3309 = !DILocation(line: 588, column: 7, scope: !3061, inlinedAt: !3094)
!3310 = !DILocation(line: 136, column: 3, scope: !3311, inlinedAt: !3318)
!3311 = distinct !DISubprogram(name: "get_linux_boot_time_final_fallback", scope: !581, file: !581, line: 134, type: !3212, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3312)
!3312 = !{!3313, !3314, !3315}
!3313 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !3311, file: !581, line: 134, type: !3214)
!3314 = !DILocalVariable(name: "uptime", scope: !3311, file: !581, line: 136, type: !3009)
!3315 = !DILocalVariable(name: "result", scope: !3316, file: !581, line: 139, type: !3009)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !581, line: 138, column: 5)
!3317 = distinct !DILexicalBlock(scope: !3311, file: !581, line: 137, column: 7)
!3318 = distinct !DILocation(line: 593, column: 11, scope: !3319, inlinedAt: !3094)
!3319 = distinct !DILexicalBlock(scope: !3091, file: !567, line: 593, column: 11)
!3320 = !DILocation(line: 0, scope: !3311, inlinedAt: !3318)
!3321 = !DILocation(line: 0, scope: !3316, inlinedAt: !3318)
!3322 = !DILocalVariable(name: "buf", scope: !3323, file: !581, line: 43, type: !3404)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !581, line: 42, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !581, line: 41, column: 7)
!3325 = distinct !DISubprogram(name: "get_linux_uptime", scope: !581, file: !581, line: 27, type: !3212, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3326)
!3326 = !{!3327, !3328, !3322, !3363, !3364, !3369, !3370, !3373, !3376}
!3327 = !DILocalVariable(name: "p_uptime", arg: 1, scope: !3325, file: !581, line: 27, type: !3214)
!3328 = !DILocalVariable(name: "fp", scope: !3325, file: !581, line: 40, type: !3329)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3331, file: !264, line: 51, baseType: !117, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3331, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3331, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3331, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3331, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3331, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3331, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3331, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3331, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3331, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3331, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3331, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3331, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3331, file: !264, line: 70, baseType: !3347, size: 64, offset: 832)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3331, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3331, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3331, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3331, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3331, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3331, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3331, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3331, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3331, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3331, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3331, file: !264, line: 93, baseType: !3347, size: 64, offset: 1344)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3331, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3331, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3331, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3331, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3363 = !DILocalVariable(name: "n", scope: !3323, file: !581, line: 44, type: !119)
!3364 = !DILocalVariable(name: "s", scope: !3365, file: !581, line: 50, type: !3367)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !581, line: 47, column: 9)
!3366 = distinct !DILexicalBlock(scope: !3323, file: !581, line: 46, column: 11)
!3367 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !3368, line: 10, baseType: !747)
!3368 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!3369 = !DILocalVariable(name: "p", scope: !3365, file: !581, line: 51, type: !124)
!3370 = !DILocalVariable(name: "ns", scope: !3371, file: !581, line: 56, type: !288)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !581, line: 55, column: 13)
!3372 = distinct !DILexicalBlock(scope: !3365, file: !581, line: 54, column: 15)
!3373 = !DILocalVariable(name: "i", scope: !3374, file: !581, line: 58, type: !117)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !581, line: 58, column: 17)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !581, line: 57, column: 19)
!3376 = !DILocalVariable(name: "info", scope: !3325, file: !581, line: 70, type: !3377)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !3378, line: 8, size: 896, elements: !3379)
!3378 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!3379 = !{!3380, !3383, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3395, !3396, !3397, !3398, !3400}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !3377, file: !3378, line: 9, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !3382, line: 15, baseType: !288)
!3382 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "", checksumkind: CSK_MD5, checksum: "dfd772b670921419860c9b47bcd28ff0")
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !3377, file: !3378, line: 10, baseType: !3384, size: 192, offset: 64)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3385, size: 192, elements: !152)
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !3382, line: 16, baseType: !121)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !3377, file: !3378, line: 11, baseType: !3385, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !3377, file: !3378, line: 12, baseType: !3385, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !3377, file: !3378, line: 13, baseType: !3385, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !3377, file: !3378, line: 14, baseType: !3385, size: 64, offset: 448)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !3377, file: !3378, line: 15, baseType: !3385, size: 64, offset: 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !3377, file: !3378, line: 16, baseType: !3385, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !3377, file: !3378, line: 17, baseType: !3393, size: 16, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !3394, line: 24, baseType: !118)
!3394 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3377, file: !3378, line: 18, baseType: !3393, size: 16, offset: 656)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !3377, file: !3378, line: 19, baseType: !3385, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !3377, file: !3378, line: 20, baseType: !3385, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !3377, file: !3378, line: 21, baseType: !3399, size: 32, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !3394, line: 27, baseType: !80)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !3377, file: !3378, line: 22, baseType: !3401, offset: 864)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !3402)
!3402 = !{!3403}
!3403 = !DISubrange(count: 0)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !3405)
!3405 = !{!3406}
!3406 = !DISubrange(count: 33)
!3407 = !DILocation(line: 0, scope: !3323, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 137, column: 7, scope: !3317, inlinedAt: !3318)
!3409 = !DILocation(line: 0, scope: !3325, inlinedAt: !3408)
!3410 = !DILocation(line: 33, column: 7, scope: !3411, inlinedAt: !3408)
!3411 = distinct !DILexicalBlock(scope: !3325, file: !581, line: 33, column: 7)
!3412 = !DILocation(line: 33, column: 48, scope: !3411, inlinedAt: !3408)
!3413 = !DILocation(line: 33, column: 7, scope: !3325, inlinedAt: !3408)
!3414 = !DILocation(line: 40, column: 14, scope: !3325, inlinedAt: !3408)
!3415 = !DILocation(line: 41, column: 10, scope: !3324, inlinedAt: !3408)
!3416 = !DILocation(line: 41, column: 7, scope: !3325, inlinedAt: !3408)
!3417 = !DILocation(line: 43, column: 7, scope: !3323, inlinedAt: !3408)
!3418 = !DILocation(line: 44, column: 18, scope: !3323, inlinedAt: !3408)
!3419 = !DILocation(line: 45, column: 7, scope: !3323, inlinedAt: !3408)
!3420 = !DILocation(line: 46, column: 13, scope: !3366, inlinedAt: !3408)
!3421 = !DILocation(line: 46, column: 11, scope: !3323, inlinedAt: !3408)
!3422 = !DILocation(line: 48, column: 11, scope: !3365, inlinedAt: !3408)
!3423 = !DILocation(line: 48, column: 18, scope: !3365, inlinedAt: !3408)
!3424 = !DILocation(line: 0, scope: !3365, inlinedAt: !3408)
!3425 = !DILocation(line: 52, column: 32, scope: !3426, inlinedAt: !3408)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !581, line: 52, column: 11)
!3427 = distinct !DILexicalBlock(scope: !3365, file: !581, line: 52, column: 11)
!3428 = !DILocation(line: 52, column: 35, scope: !3426, inlinedAt: !3408)
!3429 = !DILocation(line: 52, column: 11, scope: !3427, inlinedAt: !3408)
!3430 = !DILocation(line: 53, column: 20, scope: !3426, inlinedAt: !3408)
!3431 = !DILocation(line: 53, column: 24, scope: !3426, inlinedAt: !3408)
!3432 = !DILocation(line: 52, column: 50, scope: !3426, inlinedAt: !3408)
!3433 = distinct !{!3433, !3429, !3434, !942}
!3434 = !DILocation(line: 53, column: 35, scope: !3427, inlinedAt: !3408)
!3435 = !DILocation(line: 54, column: 19, scope: !3372, inlinedAt: !3408)
!3436 = !DILocation(line: 54, column: 15, scope: !3365, inlinedAt: !3408)
!3437 = !DILocation(line: 0, scope: !3371, inlinedAt: !3408)
!3438 = !DILocation(line: 57, column: 24, scope: !3375, inlinedAt: !3408)
!3439 = !DILocation(line: 57, column: 19, scope: !3371, inlinedAt: !3408)
!3440 = !DILocation(line: 57, column: 21, scope: !3375, inlinedAt: !3408)
!3441 = !DILocation(line: 0, scope: !3374, inlinedAt: !3408)
!3442 = !DILocation(line: 59, column: 42, scope: !3443, inlinedAt: !3408)
!3443 = distinct !DILexicalBlock(scope: !3374, file: !581, line: 58, column: 17)
!3444 = !DILocation(line: 59, column: 45, scope: !3443, inlinedAt: !3408)
!3445 = !DILocation(line: 59, column: 27, scope: !3443, inlinedAt: !3408)
!3446 = !DILocation(line: 59, column: 32, scope: !3443, inlinedAt: !3408)
!3447 = !DILocation(line: 60, column: 32, scope: !3371, inlinedAt: !3408)
!3448 = !DILocation(line: 65, column: 5, scope: !3324, inlinedAt: !3408)
!3449 = !DILocation(line: 56, column: 20, scope: !3371, inlinedAt: !3408)
!3450 = !{!1162, !1128, i64 0}
!3451 = distinct !DIAssignID()
!3452 = !DILocation(line: 61, column: 25, scope: !3371, inlinedAt: !3408)
!3453 = !DILocation(line: 61, column: 33, scope: !3371, inlinedAt: !3408)
!3454 = !{!1162, !1128, i64 8}
!3455 = distinct !DIAssignID()
!3456 = !DILocation(line: 70, column: 3, scope: !3325, inlinedAt: !3408)
!3457 = !DILocation(line: 71, column: 7, scope: !3458, inlinedAt: !3408)
!3458 = distinct !DILexicalBlock(scope: !3325, file: !581, line: 71, column: 7)
!3459 = !DILocation(line: 71, column: 23, scope: !3458, inlinedAt: !3408)
!3460 = !DILocation(line: 71, column: 7, scope: !3325, inlinedAt: !3408)
!3461 = !DILocation(line: 73, column: 31, scope: !3462, inlinedAt: !3408)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !581, line: 72, column: 5)
!3463 = !{!3464, !1128, i64 0}
!3464 = !{!"sysinfo", !1128, i64 0, !840, i64 8, !1128, i64 32, !1128, i64 40, !1128, i64 48, !1128, i64 56, !1128, i64 64, !1128, i64 72, !937, i64 80, !937, i64 82, !1128, i64 88, !1128, i64 96, !896, i64 104, !840, i64 108}
!3465 = !DILocation(line: 73, column: 24, scope: !3462, inlinedAt: !3408)
!3466 = distinct !DIAssignID()
!3467 = !DILocation(line: 74, column: 17, scope: !3462, inlinedAt: !3408)
!3468 = !DILocation(line: 74, column: 25, scope: !3462, inlinedAt: !3408)
!3469 = distinct !DIAssignID()
!3470 = !DILocation(line: 80, column: 1, scope: !3325, inlinedAt: !3408)
!3471 = !DILocation(line: 137, column: 7, scope: !3311, inlinedAt: !3318)
!3472 = !DILocation(line: 0, scope: !3091, inlinedAt: !3094)
!3473 = !DILocation(line: 169, column: 1, scope: !3311, inlinedAt: !3318)
!3474 = !DILocation(line: 593, column: 11, scope: !3091, inlinedAt: !3094)
!3475 = !DILocation(line: 139, column: 7, scope: !3316, inlinedAt: !3318)
!3476 = !DILocation(line: 145, column: 13, scope: !3477, inlinedAt: !3318)
!3477 = distinct !DILexicalBlock(scope: !3316, file: !581, line: 145, column: 11)
!3478 = !DILocation(line: 145, column: 11, scope: !3316, inlinedAt: !3318)
!3479 = !DILocation(line: 167, column: 5, scope: !3317, inlinedAt: !3318)
!3480 = !DILocation(line: 158, column: 18, scope: !3481, inlinedAt: !3318)
!3481 = distinct !DILexicalBlock(scope: !3316, file: !581, line: 158, column: 11)
!3482 = !DILocation(line: 158, column: 35, scope: !3481, inlinedAt: !3318)
!3483 = !DILocation(line: 158, column: 26, scope: !3481, inlinedAt: !3318)
!3484 = !DILocation(line: 163, column: 21, scope: !3316, inlinedAt: !3318)
!3485 = !DILocation(line: 158, column: 11, scope: !3316, inlinedAt: !3318)
!3486 = !DILocation(line: 163, column: 31, scope: !3316, inlinedAt: !3318)
!3487 = distinct !DIAssignID()
!3488 = !DILocation(line: 164, column: 22, scope: !3316, inlinedAt: !3318)
!3489 = distinct !DIAssignID()
!3490 = !DILocation(line: 594, column: 13, scope: !3319, inlinedAt: !3094)
!3491 = !DILocation(line: 594, column: 9, scope: !3319, inlinedAt: !3094)
!3492 = !DILocation(line: 288, column: 23, scope: !3493, inlinedAt: !3301)
!3493 = distinct !DILexicalBlock(scope: !3299, file: !567, line: 288, column: 3)
!3494 = !DILocation(line: 290, column: 38, scope: !3495, inlinedAt: !3301)
!3495 = distinct !DILexicalBlock(scope: !3493, file: !567, line: 289, column: 5)
!3496 = !DILocation(line: 290, column: 48, scope: !3495, inlinedAt: !3301)
!3497 = !{!3498}
!3498 = distinct !{!3498, !3499, !"finish_utmp: argument 0"}
!3499 = distinct !{!3499, !"finish_utmp"}
!3500 = !DILocation(line: 290, column: 27, scope: !3495, inlinedAt: !3301)
!3501 = !DILocation(line: 290, column: 56, scope: !3495, inlinedAt: !3301)
!3502 = !DILocation(line: 290, column: 25, scope: !3495, inlinedAt: !3301)
!3503 = !DILocation(line: 291, column: 48, scope: !3495, inlinedAt: !3301)
!3504 = !{!1161, !839, i64 8}
!3505 = !DILocation(line: 291, column: 27, scope: !3495, inlinedAt: !3301)
!3506 = !DILocation(line: 291, column: 56, scope: !3495, inlinedAt: !3301)
!3507 = !DILocation(line: 291, column: 25, scope: !3495, inlinedAt: !3301)
!3508 = !DILocation(line: 292, column: 48, scope: !3495, inlinedAt: !3301)
!3509 = !{!1161, !839, i64 16}
!3510 = !DILocation(line: 292, column: 27, scope: !3495, inlinedAt: !3301)
!3511 = !DILocation(line: 292, column: 56, scope: !3495, inlinedAt: !3301)
!3512 = !DILocation(line: 292, column: 25, scope: !3495, inlinedAt: !3301)
!3513 = !DILocation(line: 293, column: 48, scope: !3495, inlinedAt: !3301)
!3514 = !{!1161, !839, i64 24}
!3515 = !DILocation(line: 293, column: 27, scope: !3495, inlinedAt: !3301)
!3516 = !DILocation(line: 293, column: 56, scope: !3495, inlinedAt: !3301)
!3517 = !DILocation(line: 293, column: 25, scope: !3495, inlinedAt: !3301)
!3518 = !DILocation(line: 288, column: 36, scope: !3493, inlinedAt: !3301)
!3519 = distinct !{!3519, !3304, !3520, !942}
!3520 = !DILocation(line: 294, column: 5, scope: !3299, inlinedAt: !3301)
!3521 = !DILocation(line: 986, column: 3, scope: !3044)
!3522 = !DISubprogram(name: "utmpxname", scope: !3523, file: !3523, line: 93, type: !3524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3523 = !DIFile(filename: "/usr/include/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "59d83f2bbda77647297a040029d18d89")
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!117, !74}
!3526 = !DISubprogram(name: "setutxent", scope: !3523, file: !3523, line: 53, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3527 = !DISubprogram(name: "getutxent", scope: !3523, file: !3523, line: 65, type: !3528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!3531 = !DISubprogram(name: "strnlen", scope: !1012, file: !1012, line: 413, type: !3532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!119, !74, !119}
!3534 = distinct !DISubprogram(name: "add_utmp", scope: !567, file: !567, line: 227, type: !3535, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!3067, !3067, !117, !74, !783, !74, !783, !74, !783, !74, !783, !1106, !729, !3009, !288, !117, !117}
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3561, !3562, !3563, !3564, !3565, !3566}
!3538 = !DILocalVariable(name: "a", arg: 1, scope: !3534, file: !567, line: 227, type: !3067)
!3539 = !DILocalVariable(name: "options", arg: 2, scope: !3534, file: !567, line: 227, type: !117)
!3540 = !DILocalVariable(name: "user", arg: 3, scope: !3534, file: !567, line: 228, type: !74)
!3541 = !DILocalVariable(name: "user_len", arg: 4, scope: !3534, file: !567, line: 228, type: !783)
!3542 = !DILocalVariable(name: "id", arg: 5, scope: !3534, file: !567, line: 229, type: !74)
!3543 = !DILocalVariable(name: "id_len", arg: 6, scope: !3534, file: !567, line: 229, type: !783)
!3544 = !DILocalVariable(name: "line", arg: 7, scope: !3534, file: !567, line: 230, type: !74)
!3545 = !DILocalVariable(name: "line_len", arg: 8, scope: !3534, file: !567, line: 230, type: !783)
!3546 = !DILocalVariable(name: "host", arg: 9, scope: !3534, file: !567, line: 231, type: !74)
!3547 = !DILocalVariable(name: "host_len", arg: 10, scope: !3534, file: !567, line: 231, type: !783)
!3548 = !DILocalVariable(name: "pid", arg: 11, scope: !3534, file: !567, line: 232, type: !1106)
!3549 = !DILocalVariable(name: "type", arg: 12, scope: !3534, file: !567, line: 232, type: !729)
!3550 = !DILocalVariable(name: "ts", arg: 13, scope: !3534, file: !567, line: 232, type: !3009)
!3551 = !DILocalVariable(name: "session", arg: 14, scope: !3534, file: !567, line: 232, type: !288)
!3552 = !DILocalVariable(name: "termination", arg: 15, scope: !3534, file: !567, line: 233, type: !117)
!3553 = !DILocalVariable(name: "exit", arg: 16, scope: !3534, file: !567, line: 233, type: !117)
!3554 = !DILocalVariable(name: "entry_bytes", scope: !3534, file: !567, line: 235, type: !117)
!3555 = !DILocalVariable(name: "avail", scope: !3534, file: !567, line: 236, type: !783)
!3556 = !DILocalVariable(name: "needed_string_bytes", scope: !3534, file: !567, line: 237, type: !783)
!3557 = !DILocalVariable(name: "needed", scope: !3534, file: !567, line: 239, type: !783)
!3558 = !DILocalVariable(name: "old_string_offset", scope: !3559, file: !567, line: 242, type: !783)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !567, line: 241, column: 5)
!3560 = distinct !DILexicalBlock(scope: !3534, file: !567, line: 240, column: 7)
!3561 = !DILocalVariable(name: "new", scope: !3559, file: !567, line: 243, type: !116)
!3562 = !DILocalVariable(name: "new_string_offset", scope: !3559, file: !567, line: 244, type: !783)
!3563 = !DILocalVariable(name: "q", scope: !3559, file: !567, line: 246, type: !124)
!3564 = !DILocalVariable(name: "ut", scope: !3534, file: !567, line: 249, type: !3070)
!3565 = !DILocalVariable(name: "stringlim", scope: !3534, file: !567, line: 250, type: !124)
!3566 = !DILocalVariable(name: "p", scope: !3534, file: !567, line: 251, type: !124)
!3567 = !DILocation(line: 0, scope: !3534)
!3568 = !DILocation(line: 236, column: 19, scope: !3534)
!3569 = !{!3570, !1128, i64 24}
!3570 = !{!"utmp_alloc", !839, i64 0, !1128, i64 8, !1128, i64 16, !1128, i64 24}
!3571 = !DILocation(line: 236, column: 50, scope: !3534)
!3572 = !{!3570, !1128, i64 8}
!3573 = !DILocation(line: 236, column: 61, scope: !3534)
!3574 = !{!3570, !1128, i64 16}
!3575 = !DILocation(line: 236, column: 57, scope: !3534)
!3576 = !DILocation(line: 236, column: 31, scope: !3534)
!3577 = !DILocation(line: 238, column: 20, scope: !3534)
!3578 = !DILocation(line: 238, column: 35, scope: !3534)
!3579 = !DILocation(line: 238, column: 52, scope: !3534)
!3580 = !DILocation(line: 239, column: 30, scope: !3534)
!3581 = !DILocation(line: 240, column: 13, scope: !3560)
!3582 = !DILocation(line: 240, column: 7, scope: !3534)
!3583 = !DILocation(line: 0, scope: !3559)
!3584 = !DILocation(line: 243, column: 30, scope: !3559)
!3585 = !{!3570, !839, i64 0}
!3586 = !DILocation(line: 243, column: 59, scope: !3559)
!3587 = !DILocation(line: 243, column: 19, scope: !3559)
!3588 = !DILocation(line: 244, column: 35, scope: !3559)
!3589 = !DILocation(line: 244, column: 51, scope: !3559)
!3590 = !DILocation(line: 244, column: 47, scope: !3559)
!3591 = !DILocation(line: 245, column: 14, scope: !3559)
!3592 = !DILocation(line: 247, column: 18, scope: !3559)
!3593 = !DILocation(line: 247, column: 41, scope: !3559)
!3594 = !DILocalVariable(name: "__dest", arg: 1, scope: !3595, file: !1649, line: 34, type: !116)
!3595 = distinct !DISubprogram(name: "memmove", scope: !1649, file: !1649, line: 34, type: !3596, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!116, !116, !1043, !119}
!3598 = !{!3594, !3599, !3600}
!3599 = !DILocalVariable(name: "__src", arg: 2, scope: !3595, file: !1649, line: 34, type: !1043)
!3600 = !DILocalVariable(name: "__len", arg: 3, scope: !3595, file: !1649, line: 34, type: !119)
!3601 = !DILocation(line: 0, scope: !3595, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 247, column: 7, scope: !3559)
!3603 = !DILocation(line: 36, column: 10, scope: !3595, inlinedAt: !3602)
!3604 = !DILocation(line: 249, column: 34, scope: !3534)
!3605 = !DILocation(line: 250, column: 41, scope: !3534)
!3606 = !DILocation(line: 251, column: 27, scope: !3534)
!3607 = !DILocation(line: 248, column: 5, scope: !3559)
!3608 = !DILocation(line: 249, column: 27, scope: !3534)
!3609 = !DILocation(line: 249, column: 25, scope: !3534)
!3610 = !DILocation(line: 250, column: 37, scope: !3534)
!3611 = !DILocation(line: 251, column: 23, scope: !3534)
!3612 = !DILocation(line: 252, column: 4, scope: !3534)
!3613 = !DILocation(line: 252, column: 8, scope: !3534)
!3614 = !DILocation(line: 253, column: 31, scope: !3534)
!3615 = !DILocalVariable(name: "__dest", arg: 1, scope: !3616, file: !1649, line: 26, type: !3619)
!3616 = distinct !DISubprogram(name: "memcpy", scope: !1649, file: !1649, line: 26, type: !3617, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3620)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!116, !3619, !1042, !119}
!3619 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!3620 = !{!3615, !3621, !3622}
!3621 = !DILocalVariable(name: "__src", arg: 2, scope: !3616, file: !1649, line: 26, type: !1042)
!3622 = !DILocalVariable(name: "__len", arg: 3, scope: !3616, file: !1649, line: 26, type: !119)
!3623 = !DILocation(line: 0, scope: !3616, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 253, column: 21, scope: !3534)
!3625 = !DILocation(line: 29, column: 10, scope: !3616, inlinedAt: !3624)
!3626 = !DILocation(line: 253, column: 15, scope: !3534)
!3627 = !DILocation(line: 254, column: 4, scope: !3534)
!3628 = !DILocation(line: 254, column: 8, scope: !3534)
!3629 = !DILocation(line: 255, column: 31, scope: !3534)
!3630 = !DILocation(line: 0, scope: !3616, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 255, column: 21, scope: !3534)
!3632 = !DILocation(line: 29, column: 10, scope: !3616, inlinedAt: !3631)
!3633 = !DILocation(line: 255, column: 7, scope: !3534)
!3634 = !DILocation(line: 255, column: 15, scope: !3534)
!3635 = !DILocation(line: 256, column: 4, scope: !3534)
!3636 = !DILocation(line: 256, column: 8, scope: !3534)
!3637 = !DILocation(line: 257, column: 31, scope: !3534)
!3638 = !DILocation(line: 0, scope: !3616, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 257, column: 21, scope: !3534)
!3640 = !DILocation(line: 29, column: 10, scope: !3616, inlinedAt: !3639)
!3641 = !DILocation(line: 257, column: 7, scope: !3534)
!3642 = !DILocation(line: 257, column: 15, scope: !3534)
!3643 = !DILocation(line: 258, column: 4, scope: !3534)
!3644 = !DILocation(line: 258, column: 8, scope: !3534)
!3645 = !DILocation(line: 259, column: 31, scope: !3534)
!3646 = !DILocation(line: 0, scope: !3616, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 259, column: 21, scope: !3534)
!3648 = !DILocation(line: 29, column: 10, scope: !3616, inlinedAt: !3647)
!3649 = !DILocation(line: 259, column: 7, scope: !3534)
!3650 = !DILocation(line: 259, column: 15, scope: !3534)
!3651 = !DILocation(line: 260, column: 7, scope: !3534)
!3652 = !DILocation(line: 260, column: 15, scope: !3534)
!3653 = !DILocation(line: 261, column: 7, scope: !3534)
!3654 = !DILocation(line: 261, column: 14, scope: !3534)
!3655 = !{!1161, !896, i64 48}
!3656 = !DILocation(line: 262, column: 20, scope: !3534)
!3657 = !DILocation(line: 262, column: 7, scope: !3534)
!3658 = !DILocation(line: 262, column: 18, scope: !3534)
!3659 = !{!1161, !896, i64 52}
!3660 = !DILocation(line: 263, column: 7, scope: !3534)
!3661 = !DILocation(line: 263, column: 15, scope: !3534)
!3662 = !DILocation(line: 264, column: 7, scope: !3534)
!3663 = !DILocation(line: 264, column: 29, scope: !3534)
!3664 = !{!1161, !896, i64 60}
!3665 = !DILocation(line: 265, column: 15, scope: !3534)
!3666 = !DILocation(line: 265, column: 22, scope: !3534)
!3667 = !{!1161, !896, i64 64}
!3668 = !DILocalVariable(name: "ut", arg: 1, scope: !3669, file: !567, line: 171, type: !2999)
!3669 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !567, file: !567, line: 171, type: !3670, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!247, !2999, !117}
!3672 = !{!3668, !3673, !3674, !3675}
!3673 = !DILocalVariable(name: "options", arg: 2, scope: !3669, file: !567, line: 171, type: !117)
!3674 = !DILocalVariable(name: "boot_time", scope: !3669, file: !567, line: 180, type: !247)
!3675 = !DILocalVariable(name: "user_proc", scope: !3669, file: !567, line: 186, type: !247)
!3676 = !DILocation(line: 0, scope: !3669, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 266, column: 7, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3534, file: !567, line: 266, column: 7)
!3679 = !DILocation(line: 180, column: 20, scope: !3669, inlinedAt: !3677)
!3680 = !DILocation(line: 181, column: 16, scope: !3681, inlinedAt: !3677)
!3681 = distinct !DILexicalBlock(scope: !3669, file: !567, line: 181, column: 7)
!3682 = !DILocation(line: 181, column: 39, scope: !3681, inlinedAt: !3677)
!3683 = !DILocation(line: 183, column: 16, scope: !3684, inlinedAt: !3677)
!3684 = distinct !DILexicalBlock(scope: !3669, file: !567, line: 183, column: 7)
!3685 = !DILocation(line: 183, column: 42, scope: !3684, inlinedAt: !3677)
!3686 = !DILocation(line: 186, column: 20, scope: !3669, inlinedAt: !3677)
!3687 = !DILocation(line: 187, column: 16, scope: !3688, inlinedAt: !3677)
!3688 = distinct !DILexicalBlock(scope: !3669, file: !567, line: 187, column: 7)
!3689 = !DILocation(line: 187, column: 42, scope: !3688, inlinedAt: !3677)
!3690 = !DILocation(line: 190, column: 16, scope: !3691, inlinedAt: !3677)
!3691 = distinct !DILexicalBlock(scope: !3669, file: !567, line: 190, column: 7)
!3692 = !DILocation(line: 191, column: 7, scope: !3691, inlinedAt: !3677)
!3693 = !DILocation(line: 193, column: 11, scope: !3691, inlinedAt: !3677)
!3694 = !DILocation(line: 193, column: 33, scope: !3691, inlinedAt: !3677)
!3695 = !DILocation(line: 193, column: 37, scope: !3691, inlinedAt: !3677)
!3696 = !DILocation(line: 193, column: 40, scope: !3691, inlinedAt: !3677)
!3697 = !DILocation(line: 193, column: 46, scope: !3691, inlinedAt: !3677)
!3698 = !DILocation(line: 190, column: 7, scope: !3669, inlinedAt: !3677)
!3699 = !DILocation(line: 272, column: 54, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3678, file: !567, line: 267, column: 5)
!3701 = !DILocation(line: 272, column: 46, scope: !3700)
!3702 = !DILocation(line: 272, column: 21, scope: !3700)
!3703 = !DILocation(line: 272, column: 19, scope: !3700)
!3704 = !DILocation(line: 274, column: 46, scope: !3700)
!3705 = !DILocation(line: 274, column: 54, scope: !3700)
!3706 = !DILocation(line: 274, column: 21, scope: !3700)
!3707 = !DILocation(line: 274, column: 19, scope: !3700)
!3708 = !DILocation(line: 276, column: 15, scope: !3700)
!3709 = !DILocation(line: 278, column: 5, scope: !3700)
!3710 = !DILocation(line: 279, column: 10, scope: !3534)
!3711 = !DILocation(line: 280, column: 1, scope: !3534)
!3712 = !DISubprogram(name: "endutxent", scope: !3523, file: !3523, line: 59, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3713 = !DISubprogram(name: "stat", scope: !3714, file: !3714, line: 205, type: !3715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3714 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!117, !889, !3717}
!3717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3718)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3719 = !DISubprogram(name: "clock_gettime", scope: !3720, file: !3720, line: 279, type: !3721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3720 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!117, !3723, !3214}
!3723 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3724, line: 7, baseType: !3725)
!3724 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !287, line: 169, baseType: !117)
!3726 = !DISubprogram(name: "sysinfo", scope: !3727, file: !3727, line: 29, type: !3728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3727 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "833dbd3acd3e0392e300e781deccc082")
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!117, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3731 = !DISubprogram(name: "timespec_get", scope: !3720, file: !3720, line: 371, type: !3732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!117, !3214, !117}
!3734 = !DISubprogram(name: "kill", scope: !3735, file: !3735, line: 112, type: !3736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3735 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!117, !731, !117}
!3738 = distinct !DISubprogram(name: "version_etc_arn", scope: !595, file: !595, line: 61, type: !3739, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3776)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !3741, !74, !74, !74, !3775, !119}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !3743)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3743, file: !264, line: 51, baseType: !117, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3743, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3743, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3743, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3743, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3743, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3743, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3743, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3743, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3743, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3743, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3743, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3743, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3743, file: !264, line: 70, baseType: !3759, size: 64, offset: 832)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3743, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3743, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3743, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3743, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3743, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3743, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3743, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3743, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3743, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3743, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3743, file: !264, line: 93, baseType: !3759, size: 64, offset: 1344)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3743, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3743, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3743, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3743, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782}
!3777 = !DILocalVariable(name: "stream", arg: 1, scope: !3738, file: !595, line: 61, type: !3741)
!3778 = !DILocalVariable(name: "command_name", arg: 2, scope: !3738, file: !595, line: 62, type: !74)
!3779 = !DILocalVariable(name: "package", arg: 3, scope: !3738, file: !595, line: 62, type: !74)
!3780 = !DILocalVariable(name: "version", arg: 4, scope: !3738, file: !595, line: 63, type: !74)
!3781 = !DILocalVariable(name: "authors", arg: 5, scope: !3738, file: !595, line: 64, type: !3775)
!3782 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3738, file: !595, line: 64, type: !119)
!3783 = !DILocation(line: 0, scope: !3738)
!3784 = !DILocation(line: 66, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3738, file: !595, line: 66, column: 7)
!3786 = !DILocation(line: 66, column: 7, scope: !3738)
!3787 = !DILocation(line: 67, column: 5, scope: !3785)
!3788 = !DILocation(line: 69, column: 5, scope: !3785)
!3789 = !DILocation(line: 83, column: 3, scope: !3738)
!3790 = !DILocation(line: 85, column: 3, scope: !3738)
!3791 = !DILocation(line: 88, column: 3, scope: !3738)
!3792 = !DILocation(line: 95, column: 3, scope: !3738)
!3793 = !DILocation(line: 97, column: 3, scope: !3738)
!3794 = !DILocation(line: 105, column: 7, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3738, file: !595, line: 98, column: 5)
!3796 = !DILocation(line: 106, column: 7, scope: !3795)
!3797 = !DILocation(line: 109, column: 7, scope: !3795)
!3798 = !DILocation(line: 110, column: 7, scope: !3795)
!3799 = !DILocation(line: 113, column: 7, scope: !3795)
!3800 = !DILocation(line: 115, column: 7, scope: !3795)
!3801 = !DILocation(line: 120, column: 7, scope: !3795)
!3802 = !DILocation(line: 122, column: 7, scope: !3795)
!3803 = !DILocation(line: 127, column: 7, scope: !3795)
!3804 = !DILocation(line: 129, column: 7, scope: !3795)
!3805 = !DILocation(line: 134, column: 7, scope: !3795)
!3806 = !DILocation(line: 137, column: 7, scope: !3795)
!3807 = !DILocation(line: 142, column: 7, scope: !3795)
!3808 = !DILocation(line: 145, column: 7, scope: !3795)
!3809 = !DILocation(line: 150, column: 7, scope: !3795)
!3810 = !DILocation(line: 154, column: 7, scope: !3795)
!3811 = !DILocation(line: 159, column: 7, scope: !3795)
!3812 = !DILocation(line: 163, column: 7, scope: !3795)
!3813 = !DILocation(line: 170, column: 7, scope: !3795)
!3814 = !DILocation(line: 174, column: 7, scope: !3795)
!3815 = !DILocation(line: 176, column: 1, scope: !3738)
!3816 = distinct !DISubprogram(name: "version_etc_ar", scope: !595, file: !595, line: 183, type: !3817, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3741, !74, !74, !74, !3775}
!3819 = !{!3820, !3821, !3822, !3823, !3824, !3825}
!3820 = !DILocalVariable(name: "stream", arg: 1, scope: !3816, file: !595, line: 183, type: !3741)
!3821 = !DILocalVariable(name: "command_name", arg: 2, scope: !3816, file: !595, line: 184, type: !74)
!3822 = !DILocalVariable(name: "package", arg: 3, scope: !3816, file: !595, line: 184, type: !74)
!3823 = !DILocalVariable(name: "version", arg: 4, scope: !3816, file: !595, line: 185, type: !74)
!3824 = !DILocalVariable(name: "authors", arg: 5, scope: !3816, file: !595, line: 185, type: !3775)
!3825 = !DILocalVariable(name: "n_authors", scope: !3816, file: !595, line: 187, type: !119)
!3826 = !DILocation(line: 0, scope: !3816)
!3827 = !DILocation(line: 189, column: 8, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3816, file: !595, line: 189, column: 3)
!3829 = !DILocation(line: 189, scope: !3828)
!3830 = !DILocation(line: 189, column: 23, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3828, file: !595, line: 189, column: 3)
!3832 = !DILocation(line: 189, column: 3, scope: !3828)
!3833 = !DILocation(line: 189, column: 52, scope: !3831)
!3834 = distinct !{!3834, !3832, !3835, !942}
!3835 = !DILocation(line: 190, column: 5, scope: !3828)
!3836 = !DILocation(line: 191, column: 3, scope: !3816)
!3837 = !DILocation(line: 192, column: 1, scope: !3816)
!3838 = distinct !DISubprogram(name: "version_etc_va", scope: !595, file: !595, line: 199, type: !3839, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3851)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !3741, !74, !74, !74, !3841}
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !354, line: 52, baseType: !3842)
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !356, line: 12, baseType: !3843)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !595, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3844, file: !595, line: 192, baseType: !116, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3844, file: !595, line: 192, baseType: !116, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3844, file: !595, line: 192, baseType: !116, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3844, file: !595, line: 192, baseType: !117, size: 32, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3844, file: !595, line: 192, baseType: !117, size: 32, offset: 224)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3852 = !DILocalVariable(name: "stream", arg: 1, scope: !3838, file: !595, line: 199, type: !3741)
!3853 = !DILocalVariable(name: "command_name", arg: 2, scope: !3838, file: !595, line: 200, type: !74)
!3854 = !DILocalVariable(name: "package", arg: 3, scope: !3838, file: !595, line: 200, type: !74)
!3855 = !DILocalVariable(name: "version", arg: 4, scope: !3838, file: !595, line: 201, type: !74)
!3856 = !DILocalVariable(name: "authors", arg: 5, scope: !3838, file: !595, line: 201, type: !3841)
!3857 = !DILocalVariable(name: "n_authors", scope: !3838, file: !595, line: 203, type: !119)
!3858 = !DILocalVariable(name: "authtab", scope: !3838, file: !595, line: 204, type: !3859)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !47)
!3860 = distinct !DIAssignID()
!3861 = !DILocation(line: 0, scope: !3838)
!3862 = !DILocation(line: 204, column: 3, scope: !3838)
!3863 = !DILocation(line: 208, column: 35, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !595, line: 206, column: 3)
!3865 = distinct !DILexicalBlock(scope: !3838, file: !595, line: 206, column: 3)
!3866 = !DILocation(line: 208, column: 33, scope: !3864)
!3867 = !DILocation(line: 208, column: 67, scope: !3864)
!3868 = !DILocation(line: 206, column: 3, scope: !3865)
!3869 = !DILocation(line: 208, column: 14, scope: !3864)
!3870 = !DILocation(line: 0, scope: !3865)
!3871 = !DILocation(line: 211, column: 3, scope: !3838)
!3872 = !DILocation(line: 213, column: 1, scope: !3838)
!3873 = distinct !DISubprogram(name: "version_etc", scope: !595, file: !595, line: 230, type: !3874, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3741, !74, !74, !74, null}
!3876 = !{!3877, !3878, !3879, !3880, !3881}
!3877 = !DILocalVariable(name: "stream", arg: 1, scope: !3873, file: !595, line: 230, type: !3741)
!3878 = !DILocalVariable(name: "command_name", arg: 2, scope: !3873, file: !595, line: 231, type: !74)
!3879 = !DILocalVariable(name: "package", arg: 3, scope: !3873, file: !595, line: 231, type: !74)
!3880 = !DILocalVariable(name: "version", arg: 4, scope: !3873, file: !595, line: 232, type: !74)
!3881 = !DILocalVariable(name: "authors", scope: !3873, file: !595, line: 234, type: !3841)
!3882 = distinct !DIAssignID()
!3883 = !DILocation(line: 0, scope: !3873)
!3884 = !DILocation(line: 234, column: 3, scope: !3873)
!3885 = !DILocation(line: 235, column: 3, scope: !3873)
!3886 = !DILocation(line: 236, column: 3, scope: !3873)
!3887 = !DILocation(line: 237, column: 3, scope: !3873)
!3888 = !DILocation(line: 238, column: 1, scope: !3873)
!3889 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !595, file: !595, line: 241, type: !394, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757)
!3890 = !DILocation(line: 243, column: 3, scope: !3889)
!3891 = !DILocation(line: 248, column: 3, scope: !3889)
!3892 = !DILocation(line: 254, column: 3, scope: !3889)
!3893 = !DILocation(line: 259, column: 3, scope: !3889)
!3894 = !DILocation(line: 261, column: 1, scope: !3889)
!3895 = distinct !DISubprogram(name: "xnrealloc", scope: !3896, file: !3896, line: 147, type: !3897, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3899)
!3896 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!116, !116, !119, !119}
!3899 = !{!3900, !3901, !3902}
!3900 = !DILocalVariable(name: "p", arg: 1, scope: !3895, file: !3896, line: 147, type: !116)
!3901 = !DILocalVariable(name: "n", arg: 2, scope: !3895, file: !3896, line: 147, type: !119)
!3902 = !DILocalVariable(name: "s", arg: 3, scope: !3895, file: !3896, line: 147, type: !119)
!3903 = !DILocation(line: 0, scope: !3895)
!3904 = !DILocalVariable(name: "p", arg: 1, scope: !3905, file: !764, line: 83, type: !116)
!3905 = distinct !DISubprogram(name: "xreallocarray", scope: !764, file: !764, line: 83, type: !3897, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3906)
!3906 = !{!3904, !3907, !3908}
!3907 = !DILocalVariable(name: "n", arg: 2, scope: !3905, file: !764, line: 83, type: !119)
!3908 = !DILocalVariable(name: "s", arg: 3, scope: !3905, file: !764, line: 83, type: !119)
!3909 = !DILocation(line: 0, scope: !3905, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 149, column: 10, scope: !3895)
!3911 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !3910)
!3912 = !DILocalVariable(name: "p", arg: 1, scope: !3913, file: !764, line: 37, type: !116)
!3913 = distinct !DISubprogram(name: "check_nonnull", scope: !764, file: !764, line: 37, type: !3914, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!116, !116}
!3916 = !{!3912}
!3917 = !DILocation(line: 0, scope: !3913, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !3910)
!3919 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3918)
!3920 = distinct !DILexicalBlock(scope: !3913, file: !764, line: 39, column: 7)
!3921 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3918)
!3922 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3918)
!3923 = !DILocation(line: 149, column: 3, scope: !3895)
!3924 = !DILocation(line: 0, scope: !3905)
!3925 = !DILocation(line: 85, column: 25, scope: !3905)
!3926 = !DILocation(line: 0, scope: !3913, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 85, column: 10, scope: !3905)
!3928 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3927)
!3929 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3927)
!3930 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3927)
!3931 = !DILocation(line: 85, column: 3, scope: !3905)
!3932 = distinct !DISubprogram(name: "xmalloc", scope: !764, file: !764, line: 47, type: !3933, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!116, !119}
!3935 = !{!3936}
!3936 = !DILocalVariable(name: "s", arg: 1, scope: !3932, file: !764, line: 47, type: !119)
!3937 = !DILocation(line: 0, scope: !3932)
!3938 = !DILocation(line: 49, column: 25, scope: !3932)
!3939 = !DILocation(line: 0, scope: !3913, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 49, column: 10, scope: !3932)
!3941 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3940)
!3942 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3940)
!3943 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3940)
!3944 = !DILocation(line: 49, column: 3, scope: !3932)
!3945 = !DISubprogram(name: "malloc", scope: !1019, file: !1019, line: 540, type: !3933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = distinct !DISubprogram(name: "ximalloc", scope: !764, file: !764, line: 53, type: !3947, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!116, !783}
!3949 = !{!3950}
!3950 = !DILocalVariable(name: "s", arg: 1, scope: !3946, file: !764, line: 53, type: !783)
!3951 = !DILocation(line: 0, scope: !3946)
!3952 = !DILocalVariable(name: "s", arg: 1, scope: !3953, file: !3954, line: 55, type: !783)
!3953 = distinct !DISubprogram(name: "imalloc", scope: !3954, file: !3954, line: 55, type: !3947, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3955)
!3954 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3955 = !{!3952}
!3956 = !DILocation(line: 0, scope: !3953, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 55, column: 25, scope: !3946)
!3958 = !DILocation(line: 57, column: 26, scope: !3953, inlinedAt: !3957)
!3959 = !DILocation(line: 0, scope: !3913, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 55, column: 10, scope: !3946)
!3961 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3960)
!3962 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3960)
!3963 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3960)
!3964 = !DILocation(line: 55, column: 3, scope: !3946)
!3965 = distinct !DISubprogram(name: "xcharalloc", scope: !764, file: !764, line: 59, type: !3966, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!124, !119}
!3968 = !{!3969}
!3969 = !DILocalVariable(name: "n", arg: 1, scope: !3965, file: !764, line: 59, type: !119)
!3970 = !DILocation(line: 0, scope: !3965)
!3971 = !DILocation(line: 0, scope: !3932, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 61, column: 10, scope: !3965)
!3973 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !3972)
!3974 = !DILocation(line: 0, scope: !3913, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !3972)
!3976 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3975)
!3977 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3975)
!3978 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3975)
!3979 = !DILocation(line: 61, column: 3, scope: !3965)
!3980 = distinct !DISubprogram(name: "xrealloc", scope: !764, file: !764, line: 68, type: !3981, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!116, !116, !119}
!3983 = !{!3984, !3985}
!3984 = !DILocalVariable(name: "p", arg: 1, scope: !3980, file: !764, line: 68, type: !116)
!3985 = !DILocalVariable(name: "s", arg: 2, scope: !3980, file: !764, line: 68, type: !119)
!3986 = !DILocation(line: 0, scope: !3980)
!3987 = !DILocalVariable(name: "ptr", arg: 1, scope: !3988, file: !3989, line: 2057, type: !116)
!3988 = distinct !DISubprogram(name: "rpl_realloc", scope: !3989, file: !3989, line: 2057, type: !3981, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3990)
!3989 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3990 = !{!3987, !3991}
!3991 = !DILocalVariable(name: "size", arg: 2, scope: !3988, file: !3989, line: 2057, type: !119)
!3992 = !DILocation(line: 0, scope: !3988, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 70, column: 25, scope: !3980)
!3994 = !DILocation(line: 2059, column: 24, scope: !3988, inlinedAt: !3993)
!3995 = !DILocation(line: 2059, column: 10, scope: !3988, inlinedAt: !3993)
!3996 = !DILocation(line: 0, scope: !3913, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 70, column: 10, scope: !3980)
!3998 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3997)
!3999 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3997)
!4000 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3997)
!4001 = !DILocation(line: 70, column: 3, scope: !3980)
!4002 = !DISubprogram(name: "realloc", scope: !1019, file: !1019, line: 551, type: !3981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4003 = distinct !DISubprogram(name: "xirealloc", scope: !764, file: !764, line: 74, type: !4004, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!116, !116, !783}
!4006 = !{!4007, !4008}
!4007 = !DILocalVariable(name: "p", arg: 1, scope: !4003, file: !764, line: 74, type: !116)
!4008 = !DILocalVariable(name: "s", arg: 2, scope: !4003, file: !764, line: 74, type: !783)
!4009 = !DILocation(line: 0, scope: !4003)
!4010 = !DILocalVariable(name: "p", arg: 1, scope: !4011, file: !3954, line: 66, type: !116)
!4011 = distinct !DISubprogram(name: "irealloc", scope: !3954, file: !3954, line: 66, type: !4004, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4012)
!4012 = !{!4010, !4013}
!4013 = !DILocalVariable(name: "s", arg: 2, scope: !4011, file: !3954, line: 66, type: !783)
!4014 = !DILocation(line: 0, scope: !4011, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 76, column: 25, scope: !4003)
!4016 = !DILocation(line: 0, scope: !3988, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 68, column: 26, scope: !4011, inlinedAt: !4015)
!4018 = !DILocation(line: 2059, column: 24, scope: !3988, inlinedAt: !4017)
!4019 = !DILocation(line: 2059, column: 10, scope: !3988, inlinedAt: !4017)
!4020 = !DILocation(line: 0, scope: !3913, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 76, column: 10, scope: !4003)
!4022 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4021)
!4023 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4021)
!4024 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4021)
!4025 = !DILocation(line: 76, column: 3, scope: !4003)
!4026 = distinct !DISubprogram(name: "xireallocarray", scope: !764, file: !764, line: 89, type: !4027, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!116, !116, !783, !783}
!4029 = !{!4030, !4031, !4032}
!4030 = !DILocalVariable(name: "p", arg: 1, scope: !4026, file: !764, line: 89, type: !116)
!4031 = !DILocalVariable(name: "n", arg: 2, scope: !4026, file: !764, line: 89, type: !783)
!4032 = !DILocalVariable(name: "s", arg: 3, scope: !4026, file: !764, line: 89, type: !783)
!4033 = !DILocation(line: 0, scope: !4026)
!4034 = !DILocalVariable(name: "p", arg: 1, scope: !4035, file: !3954, line: 98, type: !116)
!4035 = distinct !DISubprogram(name: "ireallocarray", scope: !3954, file: !3954, line: 98, type: !4027, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4036)
!4036 = !{!4034, !4037, !4038}
!4037 = !DILocalVariable(name: "n", arg: 2, scope: !4035, file: !3954, line: 98, type: !783)
!4038 = !DILocalVariable(name: "s", arg: 3, scope: !4035, file: !3954, line: 98, type: !783)
!4039 = !DILocation(line: 0, scope: !4035, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 91, column: 25, scope: !4026)
!4041 = !DILocation(line: 101, column: 13, scope: !4035, inlinedAt: !4040)
!4042 = !DILocation(line: 0, scope: !3913, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 91, column: 10, scope: !4026)
!4044 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4043)
!4045 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4043)
!4046 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4043)
!4047 = !DILocation(line: 91, column: 3, scope: !4026)
!4048 = distinct !DISubprogram(name: "xnmalloc", scope: !764, file: !764, line: 98, type: !4049, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!116, !119, !119}
!4051 = !{!4052, !4053}
!4052 = !DILocalVariable(name: "n", arg: 1, scope: !4048, file: !764, line: 98, type: !119)
!4053 = !DILocalVariable(name: "s", arg: 2, scope: !4048, file: !764, line: 98, type: !119)
!4054 = !DILocation(line: 0, scope: !4048)
!4055 = !DILocation(line: 0, scope: !3905, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 100, column: 10, scope: !4048)
!4057 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4056)
!4058 = !DILocation(line: 0, scope: !3913, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4056)
!4060 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4059)
!4061 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4059)
!4062 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4059)
!4063 = !DILocation(line: 100, column: 3, scope: !4048)
!4064 = distinct !DISubprogram(name: "xinmalloc", scope: !764, file: !764, line: 104, type: !4065, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!116, !783, !783}
!4067 = !{!4068, !4069}
!4068 = !DILocalVariable(name: "n", arg: 1, scope: !4064, file: !764, line: 104, type: !783)
!4069 = !DILocalVariable(name: "s", arg: 2, scope: !4064, file: !764, line: 104, type: !783)
!4070 = !DILocation(line: 0, scope: !4064)
!4071 = !DILocation(line: 0, scope: !4026, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 106, column: 10, scope: !4064)
!4073 = !DILocation(line: 0, scope: !4035, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 91, column: 25, scope: !4026, inlinedAt: !4072)
!4075 = !DILocation(line: 101, column: 13, scope: !4035, inlinedAt: !4074)
!4076 = !DILocation(line: 0, scope: !3913, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 91, column: 10, scope: !4026, inlinedAt: !4072)
!4078 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4077)
!4079 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4077)
!4080 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4077)
!4081 = !DILocation(line: 106, column: 3, scope: !4064)
!4082 = distinct !DISubprogram(name: "x2realloc", scope: !764, file: !764, line: 116, type: !4083, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!116, !116, !770}
!4085 = !{!4086, !4087}
!4086 = !DILocalVariable(name: "p", arg: 1, scope: !4082, file: !764, line: 116, type: !116)
!4087 = !DILocalVariable(name: "ps", arg: 2, scope: !4082, file: !764, line: 116, type: !770)
!4088 = !DILocation(line: 0, scope: !4082)
!4089 = !DILocation(line: 0, scope: !767, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 118, column: 10, scope: !4082)
!4091 = !DILocation(line: 178, column: 14, scope: !767, inlinedAt: !4090)
!4092 = !DILocation(line: 180, column: 9, scope: !4093, inlinedAt: !4090)
!4093 = distinct !DILexicalBlock(scope: !767, file: !764, line: 180, column: 7)
!4094 = !DILocation(line: 180, column: 7, scope: !767, inlinedAt: !4090)
!4095 = !DILocation(line: 182, column: 13, scope: !4096, inlinedAt: !4090)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !764, line: 182, column: 11)
!4097 = distinct !DILexicalBlock(scope: !4093, file: !764, line: 181, column: 5)
!4098 = !DILocation(line: 182, column: 11, scope: !4097, inlinedAt: !4090)
!4099 = !DILocation(line: 197, column: 11, scope: !4100, inlinedAt: !4090)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !764, line: 197, column: 11)
!4101 = distinct !DILexicalBlock(scope: !4093, file: !764, line: 195, column: 5)
!4102 = !DILocation(line: 197, column: 11, scope: !4101, inlinedAt: !4090)
!4103 = !DILocation(line: 198, column: 9, scope: !4100, inlinedAt: !4090)
!4104 = !DILocation(line: 0, scope: !3905, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 201, column: 7, scope: !767, inlinedAt: !4090)
!4106 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4105)
!4107 = !DILocation(line: 0, scope: !3913, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4105)
!4109 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4108)
!4110 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4108)
!4111 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4108)
!4112 = !DILocation(line: 202, column: 7, scope: !767, inlinedAt: !4090)
!4113 = !DILocation(line: 118, column: 3, scope: !4082)
!4114 = !DILocation(line: 0, scope: !767)
!4115 = !DILocation(line: 178, column: 14, scope: !767)
!4116 = !DILocation(line: 180, column: 9, scope: !4093)
!4117 = !DILocation(line: 180, column: 7, scope: !767)
!4118 = !DILocation(line: 182, column: 13, scope: !4096)
!4119 = !DILocation(line: 182, column: 11, scope: !4097)
!4120 = !DILocation(line: 190, column: 30, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4096, file: !764, line: 183, column: 9)
!4122 = !DILocation(line: 191, column: 16, scope: !4121)
!4123 = !DILocation(line: 191, column: 13, scope: !4121)
!4124 = !DILocation(line: 192, column: 9, scope: !4121)
!4125 = !DILocation(line: 197, column: 11, scope: !4100)
!4126 = !DILocation(line: 197, column: 11, scope: !4101)
!4127 = !DILocation(line: 198, column: 9, scope: !4100)
!4128 = !DILocation(line: 0, scope: !3905, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 201, column: 7, scope: !767)
!4130 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4129)
!4131 = !DILocation(line: 0, scope: !3913, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4129)
!4133 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4132)
!4134 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4132)
!4135 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4132)
!4136 = !DILocation(line: 202, column: 7, scope: !767)
!4137 = !DILocation(line: 203, column: 3, scope: !767)
!4138 = !DILocation(line: 0, scope: !779)
!4139 = !DILocation(line: 230, column: 14, scope: !779)
!4140 = !DILocation(line: 238, column: 7, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !779, file: !764, line: 238, column: 7)
!4142 = !DILocation(line: 238, column: 7, scope: !779)
!4143 = !DILocation(line: 240, column: 9, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !779, file: !764, line: 240, column: 7)
!4145 = !DILocation(line: 240, column: 18, scope: !4144)
!4146 = !DILocation(line: 253, column: 8, scope: !779)
!4147 = !DILocation(line: 256, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !779, file: !764, line: 256, column: 7)
!4149 = !DILocation(line: 256, column: 7, scope: !779)
!4150 = !DILocation(line: 258, column: 27, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !764, line: 257, column: 5)
!4152 = !DILocation(line: 259, column: 32, scope: !4151)
!4153 = !DILocation(line: 260, column: 5, scope: !4151)
!4154 = !DILocation(line: 262, column: 9, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !779, file: !764, line: 262, column: 7)
!4156 = !DILocation(line: 262, column: 7, scope: !779)
!4157 = !DILocation(line: 263, column: 9, scope: !4155)
!4158 = !DILocation(line: 263, column: 5, scope: !4155)
!4159 = !DILocation(line: 264, column: 9, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !779, file: !764, line: 264, column: 7)
!4161 = !DILocation(line: 264, column: 14, scope: !4160)
!4162 = !DILocation(line: 265, column: 7, scope: !4160)
!4163 = !DILocation(line: 265, column: 11, scope: !4160)
!4164 = !DILocation(line: 266, column: 11, scope: !4160)
!4165 = !DILocation(line: 267, column: 14, scope: !4160)
!4166 = !DILocation(line: 264, column: 7, scope: !779)
!4167 = !DILocation(line: 268, column: 5, scope: !4160)
!4168 = !DILocation(line: 0, scope: !3980, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 269, column: 8, scope: !779)
!4170 = !DILocation(line: 0, scope: !3988, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 70, column: 25, scope: !3980, inlinedAt: !4169)
!4172 = !DILocation(line: 2059, column: 24, scope: !3988, inlinedAt: !4171)
!4173 = !DILocation(line: 2059, column: 10, scope: !3988, inlinedAt: !4171)
!4174 = !DILocation(line: 0, scope: !3913, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 70, column: 10, scope: !3980, inlinedAt: !4169)
!4176 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4175)
!4177 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4175)
!4178 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4175)
!4179 = !DILocation(line: 270, column: 7, scope: !779)
!4180 = !DILocation(line: 271, column: 3, scope: !779)
!4181 = distinct !DISubprogram(name: "xzalloc", scope: !764, file: !764, line: 279, type: !3933, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4182)
!4182 = !{!4183}
!4183 = !DILocalVariable(name: "s", arg: 1, scope: !4181, file: !764, line: 279, type: !119)
!4184 = !DILocation(line: 0, scope: !4181)
!4185 = !DILocalVariable(name: "n", arg: 1, scope: !4186, file: !764, line: 294, type: !119)
!4186 = distinct !DISubprogram(name: "xcalloc", scope: !764, file: !764, line: 294, type: !4049, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4187)
!4187 = !{!4185, !4188}
!4188 = !DILocalVariable(name: "s", arg: 2, scope: !4186, file: !764, line: 294, type: !119)
!4189 = !DILocation(line: 0, scope: !4186, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 281, column: 10, scope: !4181)
!4191 = !DILocation(line: 296, column: 25, scope: !4186, inlinedAt: !4190)
!4192 = !DILocation(line: 0, scope: !3913, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 296, column: 10, scope: !4186, inlinedAt: !4190)
!4194 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4193)
!4195 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4193)
!4196 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4193)
!4197 = !DILocation(line: 281, column: 3, scope: !4181)
!4198 = !DISubprogram(name: "calloc", scope: !1019, file: !1019, line: 543, type: !4049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4199 = !DILocation(line: 0, scope: !4186)
!4200 = !DILocation(line: 296, column: 25, scope: !4186)
!4201 = !DILocation(line: 0, scope: !3913, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 296, column: 10, scope: !4186)
!4203 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4202)
!4204 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4202)
!4205 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4202)
!4206 = !DILocation(line: 296, column: 3, scope: !4186)
!4207 = distinct !DISubprogram(name: "xizalloc", scope: !764, file: !764, line: 285, type: !3947, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4208)
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "s", arg: 1, scope: !4207, file: !764, line: 285, type: !783)
!4210 = !DILocation(line: 0, scope: !4207)
!4211 = !DILocalVariable(name: "n", arg: 1, scope: !4212, file: !764, line: 300, type: !783)
!4212 = distinct !DISubprogram(name: "xicalloc", scope: !764, file: !764, line: 300, type: !4065, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4213)
!4213 = !{!4211, !4214}
!4214 = !DILocalVariable(name: "s", arg: 2, scope: !4212, file: !764, line: 300, type: !783)
!4215 = !DILocation(line: 0, scope: !4212, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 287, column: 10, scope: !4207)
!4217 = !DILocalVariable(name: "n", arg: 1, scope: !4218, file: !3954, line: 77, type: !783)
!4218 = distinct !DISubprogram(name: "icalloc", scope: !3954, file: !3954, line: 77, type: !4065, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4219)
!4219 = !{!4217, !4220}
!4220 = !DILocalVariable(name: "s", arg: 2, scope: !4218, file: !3954, line: 77, type: !783)
!4221 = !DILocation(line: 0, scope: !4218, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 302, column: 25, scope: !4212, inlinedAt: !4216)
!4223 = !DILocation(line: 91, column: 10, scope: !4218, inlinedAt: !4222)
!4224 = !DILocation(line: 0, scope: !3913, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 302, column: 10, scope: !4212, inlinedAt: !4216)
!4226 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4225)
!4227 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4225)
!4228 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4225)
!4229 = !DILocation(line: 287, column: 3, scope: !4207)
!4230 = !DILocation(line: 0, scope: !4212)
!4231 = !DILocation(line: 0, scope: !4218, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 302, column: 25, scope: !4212)
!4233 = !DILocation(line: 91, column: 10, scope: !4218, inlinedAt: !4232)
!4234 = !DILocation(line: 0, scope: !3913, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 302, column: 10, scope: !4212)
!4236 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4235)
!4237 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4235)
!4238 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4235)
!4239 = !DILocation(line: 302, column: 3, scope: !4212)
!4240 = distinct !DISubprogram(name: "xmemdup", scope: !764, file: !764, line: 310, type: !4241, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!116, !1043, !119}
!4243 = !{!4244, !4245}
!4244 = !DILocalVariable(name: "p", arg: 1, scope: !4240, file: !764, line: 310, type: !1043)
!4245 = !DILocalVariable(name: "s", arg: 2, scope: !4240, file: !764, line: 310, type: !119)
!4246 = !DILocation(line: 0, scope: !4240)
!4247 = !DILocation(line: 0, scope: !3932, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 312, column: 18, scope: !4240)
!4249 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !4248)
!4250 = !DILocation(line: 0, scope: !3913, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !4248)
!4252 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4251)
!4253 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4251)
!4254 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4251)
!4255 = !DILocalVariable(name: "__dest", arg: 1, scope: !4256, file: !1649, line: 26, type: !3619)
!4256 = distinct !DISubprogram(name: "memcpy", scope: !1649, file: !1649, line: 26, type: !3617, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4257)
!4257 = !{!4255, !4258, !4259}
!4258 = !DILocalVariable(name: "__src", arg: 2, scope: !4256, file: !1649, line: 26, type: !1042)
!4259 = !DILocalVariable(name: "__len", arg: 3, scope: !4256, file: !1649, line: 26, type: !119)
!4260 = !DILocation(line: 0, scope: !4256, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 312, column: 10, scope: !4240)
!4262 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4261)
!4263 = !DILocation(line: 312, column: 3, scope: !4240)
!4264 = distinct !DISubprogram(name: "ximemdup", scope: !764, file: !764, line: 316, type: !4265, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!116, !1043, !783}
!4267 = !{!4268, !4269}
!4268 = !DILocalVariable(name: "p", arg: 1, scope: !4264, file: !764, line: 316, type: !1043)
!4269 = !DILocalVariable(name: "s", arg: 2, scope: !4264, file: !764, line: 316, type: !783)
!4270 = !DILocation(line: 0, scope: !4264)
!4271 = !DILocation(line: 0, scope: !3946, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 318, column: 18, scope: !4264)
!4273 = !DILocation(line: 0, scope: !3953, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 55, column: 25, scope: !3946, inlinedAt: !4272)
!4275 = !DILocation(line: 57, column: 26, scope: !3953, inlinedAt: !4274)
!4276 = !DILocation(line: 0, scope: !3913, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 55, column: 10, scope: !3946, inlinedAt: !4272)
!4278 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4277)
!4279 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4277)
!4280 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4277)
!4281 = !DILocation(line: 0, scope: !4256, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 318, column: 10, scope: !4264)
!4283 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4282)
!4284 = !DILocation(line: 318, column: 3, scope: !4264)
!4285 = distinct !DISubprogram(name: "ximemdup0", scope: !764, file: !764, line: 325, type: !4286, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!124, !1043, !783}
!4288 = !{!4289, !4290, !4291}
!4289 = !DILocalVariable(name: "p", arg: 1, scope: !4285, file: !764, line: 325, type: !1043)
!4290 = !DILocalVariable(name: "s", arg: 2, scope: !4285, file: !764, line: 325, type: !783)
!4291 = !DILocalVariable(name: "result", scope: !4285, file: !764, line: 327, type: !124)
!4292 = !DILocation(line: 0, scope: !4285)
!4293 = !DILocation(line: 327, column: 30, scope: !4285)
!4294 = !DILocation(line: 0, scope: !3946, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 327, column: 18, scope: !4285)
!4296 = !DILocation(line: 0, scope: !3953, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 55, column: 25, scope: !3946, inlinedAt: !4295)
!4298 = !DILocation(line: 57, column: 26, scope: !3953, inlinedAt: !4297)
!4299 = !DILocation(line: 0, scope: !3913, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 55, column: 10, scope: !3946, inlinedAt: !4295)
!4301 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4300)
!4302 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4300)
!4303 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4300)
!4304 = !DILocation(line: 328, column: 3, scope: !4285)
!4305 = !DILocation(line: 328, column: 13, scope: !4285)
!4306 = !DILocation(line: 0, scope: !4256, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 329, column: 10, scope: !4285)
!4308 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4307)
!4309 = !DILocation(line: 329, column: 3, scope: !4285)
!4310 = distinct !DISubprogram(name: "xstrdup", scope: !764, file: !764, line: 335, type: !1021, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !4311)
!4311 = !{!4312}
!4312 = !DILocalVariable(name: "string", arg: 1, scope: !4310, file: !764, line: 335, type: !74)
!4313 = !DILocation(line: 0, scope: !4310)
!4314 = !DILocation(line: 337, column: 27, scope: !4310)
!4315 = !DILocation(line: 337, column: 43, scope: !4310)
!4316 = !DILocation(line: 0, scope: !4240, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 337, column: 10, scope: !4310)
!4318 = !DILocation(line: 0, scope: !3932, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 312, column: 18, scope: !4240, inlinedAt: !4317)
!4320 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !4319)
!4321 = !DILocation(line: 0, scope: !3913, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !4319)
!4323 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4322)
!4324 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4322)
!4325 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4322)
!4326 = !DILocation(line: 0, scope: !4256, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 312, column: 10, scope: !4240, inlinedAt: !4317)
!4328 = !DILocation(line: 29, column: 10, scope: !4256, inlinedAt: !4327)
!4329 = !DILocation(line: 337, column: 3, scope: !4310)
!4330 = distinct !DISubprogram(name: "xalloc_die", scope: !688, file: !688, line: 32, type: !394, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4331)
!4331 = !{!4332}
!4332 = !DILocalVariable(name: "__errstatus", scope: !4333, file: !688, line: 34, type: !4334)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !688, line: 34, column: 3)
!4334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!4335 = !DILocation(line: 34, column: 3, scope: !4333)
!4336 = !DILocation(line: 0, scope: !4333)
!4337 = !DILocation(line: 40, column: 3, scope: !4330)
!4338 = distinct !DISubprogram(name: "rpl_fopen", scope: !801, file: !801, line: 46, type: !4339, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4375)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!4341, !74, !74}
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4343)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4344)
!4344 = !{!4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4343, file: !264, line: 51, baseType: !117, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4343, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4343, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4343, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4343, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4343, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4343, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4343, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4343, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4343, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4343, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4343, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4343, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4343, file: !264, line: 70, baseType: !4359, size: 64, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4343, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4343, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4343, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4343, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4343, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4343, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4343, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4343, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4343, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4343, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4343, file: !264, line: 93, baseType: !4359, size: 64, offset: 1344)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4343, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4343, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4343, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4343, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4385, !4387, !4388, !4393, !4396, !4397}
!4376 = !DILocalVariable(name: "filename", arg: 1, scope: !4338, file: !801, line: 46, type: !74)
!4377 = !DILocalVariable(name: "mode", arg: 2, scope: !4338, file: !801, line: 46, type: !74)
!4378 = !DILocalVariable(name: "open_direction", scope: !4338, file: !801, line: 54, type: !117)
!4379 = !DILocalVariable(name: "open_flags", scope: !4338, file: !801, line: 55, type: !117)
!4380 = !DILocalVariable(name: "open_flags_gnu", scope: !4338, file: !801, line: 57, type: !247)
!4381 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4338, file: !801, line: 59, type: !4382)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4383)
!4383 = !{!4384}
!4384 = !DISubrange(count: 81)
!4385 = !DILocalVariable(name: "p", scope: !4386, file: !801, line: 62, type: !74)
!4386 = distinct !DILexicalBlock(scope: !4338, file: !801, line: 61, column: 3)
!4387 = !DILocalVariable(name: "q", scope: !4386, file: !801, line: 64, type: !124)
!4388 = !DILocalVariable(name: "len", scope: !4389, file: !801, line: 128, type: !119)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !801, line: 127, column: 9)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !801, line: 68, column: 7)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !801, line: 67, column: 5)
!4392 = distinct !DILexicalBlock(scope: !4386, file: !801, line: 67, column: 5)
!4393 = !DILocalVariable(name: "fd", scope: !4394, file: !801, line: 199, type: !117)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !801, line: 198, column: 5)
!4395 = distinct !DILexicalBlock(scope: !4338, file: !801, line: 197, column: 7)
!4396 = !DILocalVariable(name: "fp", scope: !4394, file: !801, line: 204, type: !4341)
!4397 = !DILocalVariable(name: "saved_errno", scope: !4398, file: !801, line: 207, type: !117)
!4398 = distinct !DILexicalBlock(scope: !4399, file: !801, line: 206, column: 9)
!4399 = distinct !DILexicalBlock(scope: !4394, file: !801, line: 205, column: 11)
!4400 = distinct !DIAssignID()
!4401 = !DILocation(line: 0, scope: !4338)
!4402 = !DILocation(line: 59, column: 3, scope: !4338)
!4403 = !DILocation(line: 0, scope: !4386)
!4404 = !DILocation(line: 67, column: 5, scope: !4386)
!4405 = !DILocation(line: 54, column: 7, scope: !4338)
!4406 = !DILocation(line: 67, column: 12, scope: !4391)
!4407 = !DILocation(line: 67, column: 5, scope: !4392)
!4408 = !DILocation(line: 74, column: 19, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !801, line: 74, column: 17)
!4410 = distinct !DILexicalBlock(scope: !4390, file: !801, line: 70, column: 11)
!4411 = !DILocation(line: 74, column: 17, scope: !4410)
!4412 = !DILocation(line: 75, column: 17, scope: !4409)
!4413 = !DILocation(line: 75, column: 20, scope: !4409)
!4414 = !DILocation(line: 75, column: 15, scope: !4409)
!4415 = !DILocation(line: 80, column: 24, scope: !4410)
!4416 = !DILocation(line: 82, column: 19, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4410, file: !801, line: 82, column: 17)
!4418 = !DILocation(line: 82, column: 17, scope: !4410)
!4419 = !DILocation(line: 83, column: 17, scope: !4417)
!4420 = !DILocation(line: 83, column: 20, scope: !4417)
!4421 = !DILocation(line: 83, column: 15, scope: !4417)
!4422 = !DILocation(line: 88, column: 24, scope: !4410)
!4423 = !DILocation(line: 90, column: 19, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4410, file: !801, line: 90, column: 17)
!4425 = !DILocation(line: 90, column: 17, scope: !4410)
!4426 = !DILocation(line: 91, column: 17, scope: !4424)
!4427 = !DILocation(line: 91, column: 20, scope: !4424)
!4428 = !DILocation(line: 91, column: 15, scope: !4424)
!4429 = !DILocation(line: 100, column: 19, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4410, file: !801, line: 100, column: 17)
!4431 = !DILocation(line: 100, column: 17, scope: !4410)
!4432 = !DILocation(line: 101, column: 17, scope: !4430)
!4433 = !DILocation(line: 101, column: 20, scope: !4430)
!4434 = !DILocation(line: 101, column: 15, scope: !4430)
!4435 = !DILocation(line: 107, column: 19, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4410, file: !801, line: 107, column: 17)
!4437 = !DILocation(line: 107, column: 17, scope: !4410)
!4438 = !DILocation(line: 108, column: 17, scope: !4436)
!4439 = !DILocation(line: 108, column: 20, scope: !4436)
!4440 = !DILocation(line: 108, column: 15, scope: !4436)
!4441 = !DILocation(line: 113, column: 24, scope: !4410)
!4442 = !DILocation(line: 115, column: 13, scope: !4410)
!4443 = !DILocation(line: 117, column: 24, scope: !4410)
!4444 = !DILocation(line: 119, column: 13, scope: !4410)
!4445 = !DILocation(line: 128, column: 24, scope: !4389)
!4446 = !DILocation(line: 0, scope: !4389)
!4447 = !DILocation(line: 129, column: 48, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4389, file: !801, line: 129, column: 15)
!4449 = !DILocation(line: 129, column: 15, scope: !4389)
!4450 = !DILocalVariable(name: "__dest", arg: 1, scope: !4451, file: !1649, line: 26, type: !3619)
!4451 = distinct !DISubprogram(name: "memcpy", scope: !1649, file: !1649, line: 26, type: !3617, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4452)
!4452 = !{!4450, !4453, !4454}
!4453 = !DILocalVariable(name: "__src", arg: 2, scope: !4451, file: !1649, line: 26, type: !1042)
!4454 = !DILocalVariable(name: "__len", arg: 3, scope: !4451, file: !1649, line: 26, type: !119)
!4455 = !DILocation(line: 0, scope: !4451, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 131, column: 11, scope: !4389)
!4457 = !DILocation(line: 29, column: 10, scope: !4451, inlinedAt: !4456)
!4458 = !DILocation(line: 132, column: 13, scope: !4389)
!4459 = !DILocation(line: 135, column: 9, scope: !4390)
!4460 = !DILocation(line: 67, column: 25, scope: !4391)
!4461 = !DILocation(line: 67, column: 5, scope: !4391)
!4462 = distinct !{!4462, !4407, !4463, !942}
!4463 = !DILocation(line: 136, column: 7, scope: !4392)
!4464 = !DILocation(line: 138, column: 8, scope: !4386)
!4465 = !DILocation(line: 197, column: 7, scope: !4338)
!4466 = !DILocation(line: 199, column: 47, scope: !4394)
!4467 = !DILocation(line: 199, column: 16, scope: !4394)
!4468 = !DILocation(line: 0, scope: !4394)
!4469 = !DILocation(line: 201, column: 14, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4394, file: !801, line: 201, column: 11)
!4471 = !DILocation(line: 201, column: 11, scope: !4394)
!4472 = !DILocation(line: 204, column: 18, scope: !4394)
!4473 = !DILocation(line: 205, column: 14, scope: !4399)
!4474 = !DILocation(line: 205, column: 11, scope: !4394)
!4475 = !DILocation(line: 207, column: 29, scope: !4398)
!4476 = !DILocation(line: 0, scope: !4398)
!4477 = !DILocation(line: 208, column: 11, scope: !4398)
!4478 = !DILocation(line: 209, column: 17, scope: !4398)
!4479 = !DILocation(line: 210, column: 9, scope: !4398)
!4480 = !DILocalVariable(name: "filename", arg: 1, scope: !4481, file: !801, line: 30, type: !74)
!4481 = distinct !DISubprogram(name: "orig_fopen", scope: !801, file: !801, line: 30, type: !4339, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4482)
!4482 = !{!4480, !4483}
!4483 = !DILocalVariable(name: "mode", arg: 2, scope: !4481, file: !801, line: 30, type: !74)
!4484 = !DILocation(line: 0, scope: !4481, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 219, column: 10, scope: !4338)
!4486 = !DILocation(line: 32, column: 10, scope: !4481, inlinedAt: !4485)
!4487 = !DILocation(line: 219, column: 3, scope: !4338)
!4488 = !DILocation(line: 220, column: 1, scope: !4338)
!4489 = !DISubprogram(name: "open", scope: !1431, file: !1431, line: 181, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!117, !74, !117, null}
!4492 = !DISubprogram(name: "fdopen", scope: !354, file: !354, line: 293, type: !4493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!4341, !117, !74}
!4495 = !DISubprogram(name: "close", scope: !1287, file: !1287, line: 358, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4496 = !DISubprogram(name: "fopen", scope: !354, file: !354, line: 258, type: !4497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!4341, !889, !889}
!4499 = distinct !DISubprogram(name: "close_stream", scope: !803, file: !803, line: 55, type: !4500, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4536)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!117, !4502}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4504)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4505)
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4504, file: !264, line: 51, baseType: !117, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4504, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4504, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4504, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4504, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4504, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4504, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4504, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4504, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4504, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4504, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4504, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4504, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4504, file: !264, line: 70, baseType: !4520, size: 64, offset: 832)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4504, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4504, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4504, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4504, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4504, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4504, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4504, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4504, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4504, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4504, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4504, file: !264, line: 93, baseType: !4520, size: 64, offset: 1344)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4504, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4504, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4504, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4504, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4536 = !{!4537, !4538, !4540, !4541}
!4537 = !DILocalVariable(name: "stream", arg: 1, scope: !4499, file: !803, line: 55, type: !4502)
!4538 = !DILocalVariable(name: "some_pending", scope: !4499, file: !803, line: 57, type: !4539)
!4539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!4540 = !DILocalVariable(name: "prev_fail", scope: !4499, file: !803, line: 58, type: !4539)
!4541 = !DILocalVariable(name: "fclose_fail", scope: !4499, file: !803, line: 59, type: !4539)
!4542 = !DILocation(line: 0, scope: !4499)
!4543 = !DILocation(line: 57, column: 30, scope: !4499)
!4544 = !DILocalVariable(name: "__stream", arg: 1, scope: !4545, file: !1182, line: 135, type: !4502)
!4545 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1182, file: !1182, line: 135, type: !4500, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !802, retainedNodes: !4546)
!4546 = !{!4544}
!4547 = !DILocation(line: 0, scope: !4545, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 58, column: 27, scope: !4499)
!4549 = !DILocation(line: 137, column: 10, scope: !4545, inlinedAt: !4548)
!4550 = !{!1190, !896, i64 0}
!4551 = !DILocation(line: 58, column: 43, scope: !4499)
!4552 = !DILocation(line: 59, column: 29, scope: !4499)
!4553 = !DILocation(line: 59, column: 45, scope: !4499)
!4554 = !DILocation(line: 69, column: 17, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4499, file: !803, line: 69, column: 7)
!4556 = !DILocation(line: 57, column: 50, scope: !4499)
!4557 = !DILocation(line: 69, column: 33, scope: !4555)
!4558 = !DILocation(line: 69, column: 53, scope: !4555)
!4559 = !DILocation(line: 69, column: 59, scope: !4555)
!4560 = !DILocation(line: 69, column: 7, scope: !4499)
!4561 = !DILocation(line: 71, column: 11, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4555, file: !803, line: 70, column: 5)
!4563 = !DILocation(line: 72, column: 9, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4562, file: !803, line: 71, column: 11)
!4565 = !DILocation(line: 72, column: 15, scope: !4564)
!4566 = !DILocation(line: 77, column: 1, scope: !4499)
!4567 = !DISubprogram(name: "__fpending", scope: !4568, file: !4568, line: 75, type: !4569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4568 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!119, !4502}
!4571 = distinct !DISubprogram(name: "rpl_fclose", scope: !805, file: !805, line: 58, type: !4572, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !4608)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!117, !4574}
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4576)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4577)
!4577 = !{!4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4576, file: !264, line: 51, baseType: !117, size: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4576, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4576, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4576, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4576, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4576, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4576, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4576, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4576, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4576, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4576, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4576, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4576, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4576, file: !264, line: 70, baseType: !4592, size: 64, offset: 832)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4576, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4576, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4576, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4576, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4576, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4576, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4576, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4576, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4576, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4576, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4576, file: !264, line: 93, baseType: !4592, size: 64, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4576, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4576, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4576, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4576, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4608 = !{!4609, !4610, !4611, !4612}
!4609 = !DILocalVariable(name: "fp", arg: 1, scope: !4571, file: !805, line: 58, type: !4574)
!4610 = !DILocalVariable(name: "saved_errno", scope: !4571, file: !805, line: 60, type: !117)
!4611 = !DILocalVariable(name: "fd", scope: !4571, file: !805, line: 63, type: !117)
!4612 = !DILocalVariable(name: "result", scope: !4571, file: !805, line: 74, type: !117)
!4613 = !DILocation(line: 0, scope: !4571)
!4614 = !DILocation(line: 63, column: 12, scope: !4571)
!4615 = !DILocation(line: 64, column: 10, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4571, file: !805, line: 64, column: 7)
!4617 = !DILocation(line: 64, column: 7, scope: !4571)
!4618 = !DILocation(line: 65, column: 12, scope: !4616)
!4619 = !DILocation(line: 65, column: 5, scope: !4616)
!4620 = !DILocation(line: 70, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4571, file: !805, line: 70, column: 7)
!4622 = !DILocation(line: 70, column: 23, scope: !4621)
!4623 = !DILocation(line: 70, column: 33, scope: !4621)
!4624 = !DILocation(line: 70, column: 26, scope: !4621)
!4625 = !DILocation(line: 70, column: 59, scope: !4621)
!4626 = !DILocation(line: 71, column: 7, scope: !4621)
!4627 = !DILocation(line: 71, column: 10, scope: !4621)
!4628 = !DILocation(line: 70, column: 7, scope: !4571)
!4629 = !DILocation(line: 100, column: 12, scope: !4571)
!4630 = !DILocation(line: 105, column: 7, scope: !4571)
!4631 = !DILocation(line: 72, column: 19, scope: !4621)
!4632 = !DILocation(line: 105, column: 19, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4571, file: !805, line: 105, column: 7)
!4634 = !DILocation(line: 107, column: 13, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4633, file: !805, line: 106, column: 5)
!4636 = !DILocation(line: 109, column: 5, scope: !4635)
!4637 = !DILocation(line: 112, column: 1, scope: !4571)
!4638 = !DISubprogram(name: "fileno", scope: !354, file: !354, line: 809, type: !4572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4639 = !DISubprogram(name: "fclose", scope: !354, file: !354, line: 178, type: !4572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4640 = !DISubprogram(name: "__freading", scope: !4568, file: !4568, line: 51, type: !4572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4641 = !DISubprogram(name: "lseek", scope: !1287, file: !1287, line: 339, type: !4642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!286, !117, !286, !117}
!4644 = distinct !DISubprogram(name: "rpl_fflush", scope: !807, file: !807, line: 130, type: !4645, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4681)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!117, !4647}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4650)
!4650 = !{!4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4649, file: !264, line: 51, baseType: !117, size: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4649, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4649, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4649, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4649, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4649, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4649, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4649, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4649, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4649, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4649, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4649, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4649, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4649, file: !264, line: 70, baseType: !4665, size: 64, offset: 832)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4649, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4649, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4649, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4649, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4649, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4649, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4649, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4649, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4649, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4649, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4649, file: !264, line: 93, baseType: !4665, size: 64, offset: 1344)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4649, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4649, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4649, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4649, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4681 = !{!4682}
!4682 = !DILocalVariable(name: "stream", arg: 1, scope: !4644, file: !807, line: 130, type: !4647)
!4683 = !DILocation(line: 0, scope: !4644)
!4684 = !DILocation(line: 151, column: 14, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4644, file: !807, line: 151, column: 7)
!4686 = !DILocation(line: 151, column: 22, scope: !4685)
!4687 = !DILocation(line: 151, column: 27, scope: !4685)
!4688 = !DILocation(line: 151, column: 7, scope: !4644)
!4689 = !DILocation(line: 152, column: 12, scope: !4685)
!4690 = !DILocation(line: 152, column: 5, scope: !4685)
!4691 = !DILocalVariable(name: "fp", arg: 1, scope: !4692, file: !807, line: 42, type: !4647)
!4692 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !807, file: !807, line: 42, type: !4693, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{null, !4647}
!4695 = !{!4691}
!4696 = !DILocation(line: 0, scope: !4692, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 157, column: 3, scope: !4644)
!4698 = !DILocation(line: 44, column: 12, scope: !4699, inlinedAt: !4697)
!4699 = distinct !DILexicalBlock(scope: !4692, file: !807, line: 44, column: 7)
!4700 = !DILocation(line: 44, column: 19, scope: !4699, inlinedAt: !4697)
!4701 = !DILocation(line: 44, column: 7, scope: !4692, inlinedAt: !4697)
!4702 = !DILocation(line: 46, column: 5, scope: !4699, inlinedAt: !4697)
!4703 = !DILocation(line: 159, column: 10, scope: !4644)
!4704 = !DILocation(line: 159, column: 3, scope: !4644)
!4705 = !DILocation(line: 236, column: 1, scope: !4644)
!4706 = !DISubprogram(name: "fflush", scope: !354, file: !354, line: 230, type: !4645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4707 = distinct !DISubprogram(name: "rpl_fseeko", scope: !809, file: !809, line: 28, type: !4708, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !4745)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!117, !4710, !4744, !117}
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !4712)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !4713)
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4712, file: !264, line: 51, baseType: !117, size: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4712, file: !264, line: 54, baseType: !124, size: 64, offset: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4712, file: !264, line: 55, baseType: !124, size: 64, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4712, file: !264, line: 56, baseType: !124, size: 64, offset: 192)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4712, file: !264, line: 57, baseType: !124, size: 64, offset: 256)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4712, file: !264, line: 58, baseType: !124, size: 64, offset: 320)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4712, file: !264, line: 59, baseType: !124, size: 64, offset: 384)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4712, file: !264, line: 60, baseType: !124, size: 64, offset: 448)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4712, file: !264, line: 61, baseType: !124, size: 64, offset: 512)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4712, file: !264, line: 64, baseType: !124, size: 64, offset: 576)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4712, file: !264, line: 65, baseType: !124, size: 64, offset: 640)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4712, file: !264, line: 66, baseType: !124, size: 64, offset: 704)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4712, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4712, file: !264, line: 70, baseType: !4728, size: 64, offset: 832)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4712, file: !264, line: 72, baseType: !117, size: 32, offset: 896)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4712, file: !264, line: 73, baseType: !117, size: 32, offset: 928)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4712, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4712, file: !264, line: 77, baseType: !118, size: 16, offset: 1024)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4712, file: !264, line: 78, baseType: !291, size: 8, offset: 1040)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4712, file: !264, line: 79, baseType: !41, size: 8, offset: 1048)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4712, file: !264, line: 81, baseType: !294, size: 64, offset: 1088)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4712, file: !264, line: 89, baseType: !297, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4712, file: !264, line: 91, baseType: !299, size: 64, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4712, file: !264, line: 92, baseType: !302, size: 64, offset: 1280)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4712, file: !264, line: 93, baseType: !4728, size: 64, offset: 1344)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4712, file: !264, line: 94, baseType: !116, size: 64, offset: 1408)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4712, file: !264, line: 95, baseType: !119, size: 64, offset: 1472)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4712, file: !264, line: 96, baseType: !117, size: 32, offset: 1536)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4712, file: !264, line: 98, baseType: !309, size: 160, offset: 1568)
!4744 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !354, line: 63, baseType: !286)
!4745 = !{!4746, !4747, !4748, !4749}
!4746 = !DILocalVariable(name: "fp", arg: 1, scope: !4707, file: !809, line: 28, type: !4710)
!4747 = !DILocalVariable(name: "offset", arg: 2, scope: !4707, file: !809, line: 28, type: !4744)
!4748 = !DILocalVariable(name: "whence", arg: 3, scope: !4707, file: !809, line: 28, type: !117)
!4749 = !DILocalVariable(name: "pos", scope: !4750, file: !809, line: 123, type: !4744)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !809, line: 119, column: 5)
!4751 = distinct !DILexicalBlock(scope: !4707, file: !809, line: 55, column: 7)
!4752 = !DILocation(line: 0, scope: !4707)
!4753 = !DILocation(line: 55, column: 12, scope: !4751)
!4754 = !{!1190, !839, i64 16}
!4755 = !DILocation(line: 55, column: 33, scope: !4751)
!4756 = !{!1190, !839, i64 8}
!4757 = !DILocation(line: 55, column: 25, scope: !4751)
!4758 = !DILocation(line: 56, column: 7, scope: !4751)
!4759 = !DILocation(line: 56, column: 15, scope: !4751)
!4760 = !DILocation(line: 56, column: 37, scope: !4751)
!4761 = !{!1190, !839, i64 32}
!4762 = !DILocation(line: 56, column: 29, scope: !4751)
!4763 = !DILocation(line: 57, column: 7, scope: !4751)
!4764 = !DILocation(line: 57, column: 15, scope: !4751)
!4765 = !{!1190, !839, i64 72}
!4766 = !DILocation(line: 57, column: 29, scope: !4751)
!4767 = !DILocation(line: 55, column: 7, scope: !4707)
!4768 = !DILocation(line: 123, column: 26, scope: !4750)
!4769 = !DILocation(line: 123, column: 19, scope: !4750)
!4770 = !DILocation(line: 0, scope: !4750)
!4771 = !DILocation(line: 124, column: 15, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4750, file: !809, line: 124, column: 11)
!4773 = !DILocation(line: 124, column: 11, scope: !4750)
!4774 = !DILocation(line: 135, column: 19, scope: !4750)
!4775 = !DILocation(line: 136, column: 12, scope: !4750)
!4776 = !DILocation(line: 136, column: 20, scope: !4750)
!4777 = !{!1190, !1128, i64 144}
!4778 = !DILocation(line: 167, column: 7, scope: !4750)
!4779 = !DILocation(line: 169, column: 10, scope: !4707)
!4780 = !DILocation(line: 169, column: 3, scope: !4707)
!4781 = !DILocation(line: 170, column: 1, scope: !4707)
!4782 = !DISubprogram(name: "fseeko", scope: !354, file: !354, line: 736, type: !4783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!117, !4710, !286, !117}
!4785 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !695, file: !695, line: 100, type: !4786, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4789)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!119, !1667, !74, !119, !4788}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!4789 = !{!4790, !4791, !4792, !4793, !4794}
!4790 = !DILocalVariable(name: "pwc", arg: 1, scope: !4785, file: !695, line: 100, type: !1667)
!4791 = !DILocalVariable(name: "s", arg: 2, scope: !4785, file: !695, line: 100, type: !74)
!4792 = !DILocalVariable(name: "n", arg: 3, scope: !4785, file: !695, line: 100, type: !119)
!4793 = !DILocalVariable(name: "ps", arg: 4, scope: !4785, file: !695, line: 100, type: !4788)
!4794 = !DILocalVariable(name: "ret", scope: !4785, file: !695, line: 130, type: !119)
!4795 = !DILocation(line: 0, scope: !4785)
!4796 = !DILocation(line: 105, column: 9, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4785, file: !695, line: 105, column: 7)
!4798 = !DILocation(line: 105, column: 7, scope: !4785)
!4799 = !DILocation(line: 117, column: 10, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4785, file: !695, line: 117, column: 7)
!4801 = !DILocation(line: 117, column: 7, scope: !4785)
!4802 = !DILocation(line: 130, column: 16, scope: !4785)
!4803 = !DILocation(line: 135, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4785, file: !695, line: 135, column: 7)
!4805 = !DILocation(line: 135, column: 25, scope: !4804)
!4806 = !DILocation(line: 135, column: 30, scope: !4804)
!4807 = !DILocation(line: 135, column: 7, scope: !4785)
!4808 = !DILocalVariable(name: "ps", arg: 1, scope: !4809, file: !1640, line: 1135, type: !4788)
!4809 = distinct !DISubprogram(name: "mbszero", scope: !1640, file: !1640, line: 1135, type: !4810, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4812)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{null, !4788}
!4812 = !{!4808}
!4813 = !DILocation(line: 0, scope: !4809, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 137, column: 5, scope: !4804)
!4815 = !DILocalVariable(name: "__dest", arg: 1, scope: !4816, file: !1649, line: 57, type: !116)
!4816 = distinct !DISubprogram(name: "memset", scope: !1649, file: !1649, line: 57, type: !1650, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !698, retainedNodes: !4817)
!4817 = !{!4815, !4818, !4819}
!4818 = !DILocalVariable(name: "__ch", arg: 2, scope: !4816, file: !1649, line: 57, type: !117)
!4819 = !DILocalVariable(name: "__len", arg: 3, scope: !4816, file: !1649, line: 57, type: !119)
!4820 = !DILocation(line: 0, scope: !4816, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 1137, column: 3, scope: !4809, inlinedAt: !4814)
!4822 = !DILocation(line: 59, column: 10, scope: !4816, inlinedAt: !4821)
!4823 = !DILocation(line: 137, column: 5, scope: !4804)
!4824 = !DILocation(line: 138, column: 11, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4785, file: !695, line: 138, column: 7)
!4826 = !DILocation(line: 138, column: 7, scope: !4785)
!4827 = !DILocation(line: 139, column: 5, scope: !4825)
!4828 = !DILocation(line: 143, column: 26, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4785, file: !695, line: 143, column: 7)
!4830 = !DILocation(line: 143, column: 41, scope: !4829)
!4831 = !DILocation(line: 143, column: 7, scope: !4785)
!4832 = !DILocation(line: 145, column: 15, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !695, line: 145, column: 11)
!4834 = distinct !DILexicalBlock(scope: !4829, file: !695, line: 144, column: 5)
!4835 = !DILocation(line: 145, column: 11, scope: !4834)
!4836 = !DILocation(line: 146, column: 32, scope: !4833)
!4837 = !DILocation(line: 146, column: 16, scope: !4833)
!4838 = !DILocation(line: 146, column: 14, scope: !4833)
!4839 = !DILocation(line: 146, column: 9, scope: !4833)
!4840 = !DILocation(line: 286, column: 1, scope: !4785)
!4841 = !DISubprogram(name: "mbsinit", scope: !4842, file: !4842, line: 293, type: !4843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4842 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!117, !4845}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!4847 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !811, file: !811, line: 27, type: !3897, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4848)
!4848 = !{!4849, !4850, !4851, !4852}
!4849 = !DILocalVariable(name: "ptr", arg: 1, scope: !4847, file: !811, line: 27, type: !116)
!4850 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4847, file: !811, line: 27, type: !119)
!4851 = !DILocalVariable(name: "size", arg: 3, scope: !4847, file: !811, line: 27, type: !119)
!4852 = !DILocalVariable(name: "nbytes", scope: !4847, file: !811, line: 29, type: !119)
!4853 = !DILocation(line: 0, scope: !4847)
!4854 = !DILocation(line: 30, column: 7, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4847, file: !811, line: 30, column: 7)
!4856 = !DILocation(line: 30, column: 7, scope: !4847)
!4857 = !DILocation(line: 32, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4855, file: !811, line: 31, column: 5)
!4859 = !DILocation(line: 32, column: 13, scope: !4858)
!4860 = !DILocation(line: 33, column: 7, scope: !4858)
!4861 = !DILocalVariable(name: "ptr", arg: 1, scope: !4862, file: !3989, line: 2057, type: !116)
!4862 = distinct !DISubprogram(name: "rpl_realloc", scope: !3989, file: !3989, line: 2057, type: !3981, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4863)
!4863 = !{!4861, !4864}
!4864 = !DILocalVariable(name: "size", arg: 2, scope: !4862, file: !3989, line: 2057, type: !119)
!4865 = !DILocation(line: 0, scope: !4862, inlinedAt: !4866)
!4866 = distinct !DILocation(line: 37, column: 10, scope: !4847)
!4867 = !DILocation(line: 2059, column: 24, scope: !4862, inlinedAt: !4866)
!4868 = !DILocation(line: 2059, column: 10, scope: !4862, inlinedAt: !4866)
!4869 = !DILocation(line: 37, column: 3, scope: !4847)
!4870 = !DILocation(line: 38, column: 1, scope: !4847)
!4871 = distinct !DISubprogram(name: "hard_locale", scope: !713, file: !713, line: 28, type: !4872, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4874)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!247, !117}
!4874 = !{!4875, !4876}
!4875 = !DILocalVariable(name: "category", arg: 1, scope: !4871, file: !713, line: 28, type: !117)
!4876 = !DILocalVariable(name: "locale", scope: !4871, file: !713, line: 30, type: !4877)
!4877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4878)
!4878 = !{!4879}
!4879 = !DISubrange(count: 257)
!4880 = distinct !DIAssignID()
!4881 = !DILocation(line: 0, scope: !4871)
!4882 = !DILocation(line: 30, column: 3, scope: !4871)
!4883 = !DILocation(line: 32, column: 7, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4871, file: !713, line: 32, column: 7)
!4885 = !DILocation(line: 32, column: 7, scope: !4871)
!4886 = !DILocalVariable(name: "__s1", arg: 1, scope: !4887, file: !908, line: 1359, type: !74)
!4887 = distinct !DISubprogram(name: "streq", scope: !908, file: !908, line: 1359, type: !909, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4888)
!4888 = !{!4886, !4889}
!4889 = !DILocalVariable(name: "__s2", arg: 2, scope: !4887, file: !908, line: 1359, type: !74)
!4890 = !DILocation(line: 0, scope: !4887, inlinedAt: !4891)
!4891 = distinct !DILocation(line: 35, column: 9, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4871, file: !713, line: 35, column: 7)
!4893 = !DILocation(line: 1361, column: 11, scope: !4887, inlinedAt: !4891)
!4894 = !DILocation(line: 1361, column: 10, scope: !4887, inlinedAt: !4891)
!4895 = !DILocation(line: 35, column: 29, scope: !4892)
!4896 = !DILocation(line: 0, scope: !4887, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 35, column: 32, scope: !4892)
!4898 = !DILocation(line: 1361, column: 11, scope: !4887, inlinedAt: !4897)
!4899 = !DILocation(line: 1361, column: 10, scope: !4887, inlinedAt: !4897)
!4900 = !DILocation(line: 35, column: 7, scope: !4871)
!4901 = !DILocation(line: 46, column: 3, scope: !4871)
!4902 = !DILocation(line: 47, column: 1, scope: !4871)
!4903 = distinct !DISubprogram(name: "setlocale_null_r", scope: !815, file: !815, line: 154, type: !4904, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!117, !117, !124, !119}
!4906 = !{!4907, !4908, !4909}
!4907 = !DILocalVariable(name: "category", arg: 1, scope: !4903, file: !815, line: 154, type: !117)
!4908 = !DILocalVariable(name: "buf", arg: 2, scope: !4903, file: !815, line: 154, type: !124)
!4909 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4903, file: !815, line: 154, type: !119)
!4910 = !DILocation(line: 0, scope: !4903)
!4911 = !DILocation(line: 159, column: 10, scope: !4903)
!4912 = !DILocation(line: 159, column: 3, scope: !4903)
!4913 = distinct !DISubprogram(name: "setlocale_null", scope: !815, file: !815, line: 186, type: !4914, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4916)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!74, !117}
!4916 = !{!4917}
!4917 = !DILocalVariable(name: "category", arg: 1, scope: !4913, file: !815, line: 186, type: !117)
!4918 = !DILocation(line: 0, scope: !4913)
!4919 = !DILocation(line: 189, column: 10, scope: !4913)
!4920 = !DILocation(line: 189, column: 3, scope: !4913)
!4921 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !817, file: !817, line: 35, type: !4914, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4922)
!4922 = !{!4923, !4924}
!4923 = !DILocalVariable(name: "category", arg: 1, scope: !4921, file: !817, line: 35, type: !117)
!4924 = !DILocalVariable(name: "result", scope: !4921, file: !817, line: 37, type: !74)
!4925 = !DILocation(line: 0, scope: !4921)
!4926 = !DILocation(line: 37, column: 24, scope: !4921)
!4927 = !DILocation(line: 62, column: 3, scope: !4921)
!4928 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !817, file: !817, line: 66, type: !4904, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4929)
!4929 = !{!4930, !4931, !4932, !4933, !4934}
!4930 = !DILocalVariable(name: "category", arg: 1, scope: !4928, file: !817, line: 66, type: !117)
!4931 = !DILocalVariable(name: "buf", arg: 2, scope: !4928, file: !817, line: 66, type: !124)
!4932 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4928, file: !817, line: 66, type: !119)
!4933 = !DILocalVariable(name: "result", scope: !4928, file: !817, line: 111, type: !74)
!4934 = !DILocalVariable(name: "length", scope: !4935, file: !817, line: 125, type: !119)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !817, line: 124, column: 5)
!4936 = distinct !DILexicalBlock(scope: !4928, file: !817, line: 113, column: 7)
!4937 = !DILocation(line: 0, scope: !4928)
!4938 = !DILocation(line: 0, scope: !4921, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 111, column: 24, scope: !4928)
!4940 = !DILocation(line: 37, column: 24, scope: !4921, inlinedAt: !4939)
!4941 = !DILocation(line: 113, column: 14, scope: !4936)
!4942 = !DILocation(line: 113, column: 7, scope: !4928)
!4943 = !DILocation(line: 116, column: 19, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !817, line: 116, column: 11)
!4945 = distinct !DILexicalBlock(scope: !4936, file: !817, line: 114, column: 5)
!4946 = !DILocation(line: 116, column: 11, scope: !4945)
!4947 = !DILocation(line: 120, column: 16, scope: !4944)
!4948 = !DILocation(line: 120, column: 9, scope: !4944)
!4949 = !DILocation(line: 125, column: 23, scope: !4935)
!4950 = !DILocation(line: 0, scope: !4935)
!4951 = !DILocation(line: 126, column: 18, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4935, file: !817, line: 126, column: 11)
!4953 = !DILocation(line: 126, column: 11, scope: !4935)
!4954 = !DILocation(line: 128, column: 39, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4952, file: !817, line: 127, column: 9)
!4956 = !DILocalVariable(name: "__dest", arg: 1, scope: !4957, file: !1649, line: 26, type: !3619)
!4957 = distinct !DISubprogram(name: "memcpy", scope: !1649, file: !1649, line: 26, type: !3617, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4958)
!4958 = !{!4956, !4959, !4960}
!4959 = !DILocalVariable(name: "__src", arg: 2, scope: !4957, file: !1649, line: 26, type: !1042)
!4960 = !DILocalVariable(name: "__len", arg: 3, scope: !4957, file: !1649, line: 26, type: !119)
!4961 = !DILocation(line: 0, scope: !4957, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 128, column: 11, scope: !4955)
!4963 = !DILocation(line: 29, column: 10, scope: !4957, inlinedAt: !4962)
!4964 = !DILocation(line: 129, column: 11, scope: !4955)
!4965 = !DILocation(line: 133, column: 23, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !817, line: 133, column: 15)
!4967 = distinct !DILexicalBlock(scope: !4952, file: !817, line: 132, column: 9)
!4968 = !DILocation(line: 133, column: 15, scope: !4967)
!4969 = !DILocation(line: 138, column: 44, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4966, file: !817, line: 134, column: 13)
!4971 = !DILocation(line: 0, scope: !4957, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 138, column: 15, scope: !4970)
!4973 = !DILocation(line: 29, column: 10, scope: !4957, inlinedAt: !4972)
!4974 = !DILocation(line: 139, column: 15, scope: !4970)
!4975 = !DILocation(line: 139, column: 32, scope: !4970)
!4976 = !DILocation(line: 140, column: 13, scope: !4970)
!4977 = !DILocation(line: 0, scope: !4936)
!4978 = !DILocation(line: 145, column: 1, scope: !4928)
